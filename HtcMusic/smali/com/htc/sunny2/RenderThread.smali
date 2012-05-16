.class public Lcom/htc/sunny2/RenderThread;
.super Lcom/htc/sunny2/IterationThread;
.source "RenderThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/RenderThread$EventListener;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private actions:Lcom/htc/sunny2/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/sunny2/Queue",
            "<",
            "Lcom/htc/sunny2/RenderThreadAction;",
            ">;"
        }
    .end annotation
.end field

.field private actionsLocker:Ljava/util/concurrent/locks/ReentrantLock;

.field private actionsToProcess:Lcom/htc/sunny2/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/sunny2/Queue",
            "<",
            "Lcom/htc/sunny2/RenderThreadAction;",
            ">;"
        }
    .end annotation
.end field

.field private actionsToRestore:Lcom/htc/sunny2/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/sunny2/Queue",
            "<",
            "Lcom/htc/sunny2/RenderThreadAction;",
            ">;"
        }
    .end annotation
.end field

.field private currentInterruption:Lcom/htc/sunny2/RenderThreadInterruption;

.field private eventListener:Lcom/htc/sunny2/RenderThread$EventListener;

.field private events:Lcom/htc/sunny2/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/sunny2/Queue",
            "<",
            "Lcom/htc/sunny2/RenderThreadEvent;",
            ">;"
        }
    .end annotation
.end field

.field private eventsLocker:Ljava/util/concurrent/locks/ReentrantLock;

.field private eventsToProcess:Lcom/htc/sunny2/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/sunny2/Queue",
            "<",
            "Lcom/htc/sunny2/RenderThreadEvent;",
            ">;"
        }
    .end annotation
.end field

.field private forceDisableRenderingTimeMillis:J

.field public forceRender:Z

.field public forceRenderOnce:Z

.field private frameIndex:I

.field private isRenderThreadExpired:Z

.field private isRenderThreadReady:Z

.field private iterationCount:I

.field private lastPresentTimeMillis:J

.field private lastTimeRequestRenderThreadRunning:J

.field private needRenderDueToAction:Z

.field private needRenderDueToEvent:Z

.field private needRenderDueToInterruption:Z

.field private pauseRenderFlag:Z

.field private preparations:Lcom/htc/sunny2/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/sunny2/Queue",
            "<",
            "Lcom/htc/sunny2/RenderThreadPreparation;",
            ">;"
        }
    .end annotation
.end field

.field private preparationsLocker:Ljava/util/concurrent/locks/ReentrantLock;

.field private preparationsToProcess:Lcom/htc/sunny2/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/sunny2/Queue",
            "<",
            "Lcom/htc/sunny2/RenderThreadPreparation;",
            ">;"
        }
    .end annotation
.end field

.field private preparationsToRestore:Lcom/htc/sunny2/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/sunny2/Queue",
            "<",
            "Lcom/htc/sunny2/RenderThreadPreparation;",
            ">;"
        }
    .end annotation
.end field

.field private renderCount:I

.field private renderWindows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private runInterruptionLocker:Ljava/lang/Integer;

.field private taskRequestRenderThreadRunning:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/htc/sunny2/RenderThread$EventListener;)V
    .locals 5
    .parameter "threadName"
    .parameter "listener"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 80
    invoke-direct {p0, p1}, Lcom/htc/sunny2/IterationThread;-><init>(Ljava/lang/String;)V

    .line 16
    const-string v0, "SunnyRT"

    iput-object v0, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    .line 31
    iput-object v2, p0, Lcom/htc/sunny2/RenderThread;->eventListener:Lcom/htc/sunny2/RenderThread$EventListener;

    .line 33
    iput-boolean v1, p0, Lcom/htc/sunny2/RenderThread;->isRenderThreadReady:Z

    .line 34
    iput-boolean v1, p0, Lcom/htc/sunny2/RenderThread;->isRenderThreadExpired:Z

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/RenderThread;->renderWindows:Ljava/util/ArrayList;

    .line 38
    iput v1, p0, Lcom/htc/sunny2/RenderThread;->frameIndex:I

    .line 40
    iput-object v2, p0, Lcom/htc/sunny2/RenderThread;->currentInterruption:Lcom/htc/sunny2/RenderThreadInterruption;

    .line 41
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, p0, Lcom/htc/sunny2/RenderThread;->runInterruptionLocker:Ljava/lang/Integer;

    .line 43
    iput-object v2, p0, Lcom/htc/sunny2/RenderThread;->events:Lcom/htc/sunny2/Queue;

    .line 44
    iput-object v2, p0, Lcom/htc/sunny2/RenderThread;->eventsToProcess:Lcom/htc/sunny2/Queue;

    .line 45
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/RenderThread;->eventsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    .line 47
    iput-object v2, p0, Lcom/htc/sunny2/RenderThread;->actions:Lcom/htc/sunny2/Queue;

    .line 48
    iput-object v2, p0, Lcom/htc/sunny2/RenderThread;->actionsToProcess:Lcom/htc/sunny2/Queue;

    .line 49
    iput-object v2, p0, Lcom/htc/sunny2/RenderThread;->actionsToRestore:Lcom/htc/sunny2/Queue;

    .line 50
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/RenderThread;->actionsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    .line 52
    iput-object v2, p0, Lcom/htc/sunny2/RenderThread;->preparations:Lcom/htc/sunny2/Queue;

    .line 53
    iput-object v2, p0, Lcom/htc/sunny2/RenderThread;->preparationsToProcess:Lcom/htc/sunny2/Queue;

    .line 54
    iput-object v2, p0, Lcom/htc/sunny2/RenderThread;->preparationsToRestore:Lcom/htc/sunny2/Queue;

    .line 55
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/RenderThread;->preparationsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    .line 57
    iput-wide v3, p0, Lcom/htc/sunny2/RenderThread;->lastPresentTimeMillis:J

    .line 59
    iput-boolean v1, p0, Lcom/htc/sunny2/RenderThread;->needRenderDueToInterruption:Z

    .line 60
    iput-boolean v1, p0, Lcom/htc/sunny2/RenderThread;->needRenderDueToEvent:Z

    .line 61
    iput-boolean v1, p0, Lcom/htc/sunny2/RenderThread;->needRenderDueToAction:Z

    .line 62
    iput-boolean v1, p0, Lcom/htc/sunny2/RenderThread;->forceRenderOnce:Z

    .line 63
    iput-boolean v1, p0, Lcom/htc/sunny2/RenderThread;->forceRender:Z

    .line 65
    iput-boolean v1, p0, Lcom/htc/sunny2/RenderThread;->taskRequestRenderThreadRunning:Z

    .line 66
    iput-wide v3, p0, Lcom/htc/sunny2/RenderThread;->lastTimeRequestRenderThreadRunning:J

    .line 68
    iput v1, p0, Lcom/htc/sunny2/RenderThread;->iterationCount:I

    .line 69
    iput v1, p0, Lcom/htc/sunny2/RenderThread;->renderCount:I

    .line 71
    iput-boolean v1, p0, Lcom/htc/sunny2/RenderThread;->pauseRenderFlag:Z

    .line 73
    iput-wide v3, p0, Lcom/htc/sunny2/RenderThread;->forceDisableRenderingTimeMillis:J

    .line 82
    iput-object p2, p0, Lcom/htc/sunny2/RenderThread;->eventListener:Lcom/htc/sunny2/RenderThread$EventListener;

    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/sunny2/RenderThread;->lastTimeRequestRenderThreadRunning:J

    .line 85
    return-void
.end method

.method private doCancelTask(Lcom/htc/sunny2/RenderThreadTask;Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;)V
    .locals 1
    .parameter "task"
    .parameter "cancelReason"

    .prologue
    .line 954
    if-nez p1, :cond_1

    .line 965
    :cond_0
    :goto_0
    return-void

    .line 959
    :cond_1
    iget-boolean v0, p1, Lcom/htc/sunny2/RenderThreadTask;->isInRenderThreadQueue:Z

    if-eqz v0, :cond_0

    .line 961
    invoke-virtual {p1, p2}, Lcom/htc/sunny2/RenderThreadTask;->onCancelIRT(Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;)V

    .line 962
    invoke-virtual {p1}, Lcom/htc/sunny2/RenderThreadTask;->onRemovedIRT()V

    .line 963
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/htc/sunny2/RenderThreadTask;->isInRenderThreadQueue:Z

    goto :goto_0
.end method

.method private doFinishTask(Lcom/htc/sunny2/RenderThreadTask;)V
    .locals 1
    .parameter "task"

    .prologue
    .line 940
    if-nez p1, :cond_1

    .line 950
    :cond_0
    :goto_0
    return-void

    .line 945
    :cond_1
    iget-boolean v0, p1, Lcom/htc/sunny2/RenderThreadTask;->isInRenderThreadQueue:Z

    if-eqz v0, :cond_0

    .line 947
    invoke-virtual {p1}, Lcom/htc/sunny2/RenderThreadTask;->onRemovedIRT()V

    .line 948
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/htc/sunny2/RenderThreadTask;->isInRenderThreadQueue:Z

    goto :goto_0
.end method

.method private doRemoveAllTaskIRT(Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;)V
    .locals 6
    .parameter "cancelReason"

    .prologue
    const/4 v5, 0x0

    .line 971
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v4, "Clear events"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->eventsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 976
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->events:Lcom/htc/sunny2/Queue;

    if-eqz v3, :cond_0

    .line 978
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->events:Lcom/htc/sunny2/Queue;

    invoke-virtual {v3}, Lcom/htc/sunny2/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/RenderThreadEvent;

    .line 979
    .local v1, event:Lcom/htc/sunny2/RenderThreadEvent;
    if-nez v1, :cond_9

    .line 983
    .end local v1           #event:Lcom/htc/sunny2/RenderThreadEvent;
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->eventsToProcess:Lcom/htc/sunny2/Queue;

    if-eqz v3, :cond_1

    .line 985
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->eventsToProcess:Lcom/htc/sunny2/Queue;

    invoke-virtual {v3}, Lcom/htc/sunny2/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/RenderThreadEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 986
    .restart local v1       #event:Lcom/htc/sunny2/RenderThreadEvent;
    if-nez v1, :cond_b

    .line 993
    .end local v1           #event:Lcom/htc/sunny2/RenderThreadEvent;
    :cond_1
    sget-object v3, Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;->THREAD_END:Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;

    if-ne p1, v3, :cond_2

    .line 995
    iput-object v5, p0, Lcom/htc/sunny2/RenderThread;->events:Lcom/htc/sunny2/Queue;

    .line 996
    iput-object v5, p0, Lcom/htc/sunny2/RenderThread;->eventsToProcess:Lcom/htc/sunny2/Queue;

    .line 999
    :cond_2
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->eventsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1004
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v4, "Clear actions"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->actionsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1009
    :goto_2
    :try_start_1
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->actions:Lcom/htc/sunny2/Queue;

    if-eqz v3, :cond_3

    .line 1011
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->actions:Lcom/htc/sunny2/Queue;

    invoke-virtual {v3}, Lcom/htc/sunny2/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/RenderThreadAction;

    .line 1012
    .local v0, action:Lcom/htc/sunny2/RenderThreadAction;
    if-nez v0, :cond_c

    .line 1016
    .end local v0           #action:Lcom/htc/sunny2/RenderThreadAction;
    :cond_3
    :goto_3
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->actionsToProcess:Lcom/htc/sunny2/Queue;

    if-eqz v3, :cond_4

    .line 1018
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->actionsToProcess:Lcom/htc/sunny2/Queue;

    invoke-virtual {v3}, Lcom/htc/sunny2/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/RenderThreadAction;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1019
    .restart local v0       #action:Lcom/htc/sunny2/RenderThreadAction;
    if-nez v0, :cond_e

    .line 1026
    .end local v0           #action:Lcom/htc/sunny2/RenderThreadAction;
    :cond_4
    sget-object v3, Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;->THREAD_END:Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;

    if-ne p1, v3, :cond_5

    .line 1028
    iput-object v5, p0, Lcom/htc/sunny2/RenderThread;->actions:Lcom/htc/sunny2/Queue;

    .line 1029
    iput-object v5, p0, Lcom/htc/sunny2/RenderThread;->actionsToProcess:Lcom/htc/sunny2/Queue;

    .line 1030
    iput-object v5, p0, Lcom/htc/sunny2/RenderThread;->actionsToRestore:Lcom/htc/sunny2/Queue;

    .line 1033
    :cond_5
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->actionsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1038
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v4, "Clear preparations"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->preparationsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1043
    :goto_4
    :try_start_2
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->preparations:Lcom/htc/sunny2/Queue;

    if-eqz v3, :cond_6

    .line 1045
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->preparations:Lcom/htc/sunny2/Queue;

    invoke-virtual {v3}, Lcom/htc/sunny2/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/sunny2/RenderThreadPreparation;

    .line 1046
    .local v2, preparation:Lcom/htc/sunny2/RenderThreadPreparation;
    if-nez v2, :cond_f

    .line 1050
    .end local v2           #preparation:Lcom/htc/sunny2/RenderThreadPreparation;
    :cond_6
    :goto_5
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->preparationsToProcess:Lcom/htc/sunny2/Queue;

    if-eqz v3, :cond_7

    .line 1052
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->preparationsToProcess:Lcom/htc/sunny2/Queue;

    invoke-virtual {v3}, Lcom/htc/sunny2/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/sunny2/RenderThreadPreparation;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1053
    .restart local v2       #preparation:Lcom/htc/sunny2/RenderThreadPreparation;
    if-nez v2, :cond_11

    .line 1060
    .end local v2           #preparation:Lcom/htc/sunny2/RenderThreadPreparation;
    :cond_7
    sget-object v3, Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;->THREAD_END:Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;

    if-ne p1, v3, :cond_8

    .line 1062
    iput-object v5, p0, Lcom/htc/sunny2/RenderThread;->preparations:Lcom/htc/sunny2/Queue;

    .line 1063
    iput-object v5, p0, Lcom/htc/sunny2/RenderThread;->preparationsToProcess:Lcom/htc/sunny2/Queue;

    .line 1064
    iput-object v5, p0, Lcom/htc/sunny2/RenderThread;->preparationsToRestore:Lcom/htc/sunny2/Queue;

    .line 1067
    :cond_8
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->preparationsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1069
    return-void

    .line 981
    .restart local v1       #event:Lcom/htc/sunny2/RenderThreadEvent;
    :cond_9
    :try_start_3
    invoke-direct {p0, v1, p1}, Lcom/htc/sunny2/RenderThread;->doCancelTask(Lcom/htc/sunny2/RenderThreadTask;Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 993
    .end local v1           #event:Lcom/htc/sunny2/RenderThreadEvent;
    :catchall_0
    move-exception v3

    sget-object v4, Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;->THREAD_END:Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;

    if-ne p1, v4, :cond_a

    .line 995
    iput-object v5, p0, Lcom/htc/sunny2/RenderThread;->events:Lcom/htc/sunny2/Queue;

    .line 996
    iput-object v5, p0, Lcom/htc/sunny2/RenderThread;->eventsToProcess:Lcom/htc/sunny2/Queue;

    .line 999
    :cond_a
    iget-object v4, p0, Lcom/htc/sunny2/RenderThread;->eventsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 993
    throw v3

    .line 988
    .restart local v1       #event:Lcom/htc/sunny2/RenderThreadEvent;
    :cond_b
    :try_start_4
    invoke-direct {p0, v1, p1}, Lcom/htc/sunny2/RenderThread;->doCancelTask(Lcom/htc/sunny2/RenderThreadTask;Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 1014
    .end local v1           #event:Lcom/htc/sunny2/RenderThreadEvent;
    .restart local v0       #action:Lcom/htc/sunny2/RenderThreadAction;
    :cond_c
    :try_start_5
    invoke-direct {p0, v0, p1}, Lcom/htc/sunny2/RenderThread;->doCancelTask(Lcom/htc/sunny2/RenderThreadTask;Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    .line 1026
    .end local v0           #action:Lcom/htc/sunny2/RenderThreadAction;
    :catchall_1
    move-exception v3

    sget-object v4, Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;->THREAD_END:Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;

    if-ne p1, v4, :cond_d

    .line 1028
    iput-object v5, p0, Lcom/htc/sunny2/RenderThread;->actions:Lcom/htc/sunny2/Queue;

    .line 1029
    iput-object v5, p0, Lcom/htc/sunny2/RenderThread;->actionsToProcess:Lcom/htc/sunny2/Queue;

    .line 1030
    iput-object v5, p0, Lcom/htc/sunny2/RenderThread;->actionsToRestore:Lcom/htc/sunny2/Queue;

    .line 1033
    :cond_d
    iget-object v4, p0, Lcom/htc/sunny2/RenderThread;->actionsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1026
    throw v3

    .line 1021
    .restart local v0       #action:Lcom/htc/sunny2/RenderThreadAction;
    :cond_e
    :try_start_6
    invoke-direct {p0, v0, p1}, Lcom/htc/sunny2/RenderThread;->doCancelTask(Lcom/htc/sunny2/RenderThreadTask;Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_3

    .line 1048
    .end local v0           #action:Lcom/htc/sunny2/RenderThreadAction;
    .restart local v2       #preparation:Lcom/htc/sunny2/RenderThreadPreparation;
    :cond_f
    :try_start_7
    invoke-direct {p0, v2, p1}, Lcom/htc/sunny2/RenderThread;->doCancelTask(Lcom/htc/sunny2/RenderThreadTask;Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_4

    .line 1060
    .end local v2           #preparation:Lcom/htc/sunny2/RenderThreadPreparation;
    :catchall_2
    move-exception v3

    sget-object v4, Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;->THREAD_END:Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;

    if-ne p1, v4, :cond_10

    .line 1062
    iput-object v5, p0, Lcom/htc/sunny2/RenderThread;->preparations:Lcom/htc/sunny2/Queue;

    .line 1063
    iput-object v5, p0, Lcom/htc/sunny2/RenderThread;->preparationsToProcess:Lcom/htc/sunny2/Queue;

    .line 1064
    iput-object v5, p0, Lcom/htc/sunny2/RenderThread;->preparationsToRestore:Lcom/htc/sunny2/Queue;

    .line 1067
    :cond_10
    iget-object v4, p0, Lcom/htc/sunny2/RenderThread;->preparationsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1060
    throw v3

    .line 1055
    .restart local v2       #preparation:Lcom/htc/sunny2/RenderThreadPreparation;
    :cond_11
    :try_start_8
    invoke-direct {p0, v2, p1}, Lcom/htc/sunny2/RenderThread;->doCancelTask(Lcom/htc/sunny2/RenderThreadTask;Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_5
.end method

.method private processActions(IJ)Z
    .locals 9
    .parameter "frameIndex"
    .parameter "timeMillis"

    .prologue
    const/4 v4, 0x1

    .line 766
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->actions:Lcom/htc/sunny2/Queue;

    invoke-virtual {v3}, Lcom/htc/sunny2/Queue;->peek()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 768
    const/4 v3, 0x0

    .line 852
    :goto_0
    return v3

    .line 773
    :cond_0
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->actionsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 775
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->actionsToProcess:Lcom/htc/sunny2/Queue;

    iget-object v5, p0, Lcom/htc/sunny2/RenderThread;->actions:Lcom/htc/sunny2/Queue;

    invoke-virtual {v3, v5}, Lcom/htc/sunny2/Queue;->swapWith(Lcom/htc/sunny2/Queue;)V

    .line 777
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->actionsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 785
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->actionsToProcess:Lcom/htc/sunny2/Queue;

    invoke-virtual {v3}, Lcom/htc/sunny2/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/RenderThreadAction;

    .line 786
    .local v1, action:Lcom/htc/sunny2/RenderThreadAction;
    if-nez v1, :cond_3

    .line 827
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->actionsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 830
    :try_start_0
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->actions:Lcom/htc/sunny2/Queue;

    iget-object v5, p0, Lcom/htc/sunny2/RenderThread;->actionsToRestore:Lcom/htc/sunny2/Queue;

    invoke-virtual {v3, v5}, Lcom/htc/sunny2/Queue;->swapWith(Lcom/htc/sunny2/Queue;)V

    .line 834
    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->actionsToRestore:Lcom/htc/sunny2/Queue;

    invoke-virtual {v3}, Lcom/htc/sunny2/Queue;->poll()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/htc/sunny2/RenderThreadAction;

    move-object v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 835
    if-nez v1, :cond_8

    .line 849
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->actionsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move v3, v4

    .line 852
    goto :goto_0

    .line 793
    :cond_3
    iget v3, v1, Lcom/htc/sunny2/RenderThreadAction;->firstFrameIndex:I

    if-nez v3, :cond_4

    iget-wide v5, v1, Lcom/htc/sunny2/RenderThreadAction;->firstFrameTimeMillis:J

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-nez v3, :cond_4

    .line 795
    iput p1, v1, Lcom/htc/sunny2/RenderThreadAction;->firstFrameIndex:I

    .line 796
    iput-wide p2, v1, Lcom/htc/sunny2/RenderThreadAction;->firstFrameTimeMillis:J

    .line 799
    :cond_4
    invoke-virtual {v1, p1, p2, p3}, Lcom/htc/sunny2/RenderThreadAction;->onDoActionIRT(IJ)Z

    move-result v2

    .line 801
    .local v2, needRestore:Z
    iget-boolean v3, v1, Lcom/htc/sunny2/RenderThreadTask;->alwaysNeedRenderAfterProcess:Z

    if-eqz v3, :cond_5

    .line 803
    iput-boolean v4, p0, Lcom/htc/sunny2/RenderThread;->needRenderDueToAction:Z

    .line 805
    :cond_5
    iget-boolean v3, v1, Lcom/htc/sunny2/RenderThreadTask;->alwaysRequestRenderThreadRunningAfterProcess:Z

    if-eqz v3, :cond_6

    .line 807
    iput-boolean v4, p0, Lcom/htc/sunny2/RenderThread;->taskRequestRenderThreadRunning:Z

    .line 810
    :cond_6
    if-nez v2, :cond_7

    .line 812
    invoke-direct {p0, v1}, Lcom/htc/sunny2/RenderThread;->doFinishTask(Lcom/htc/sunny2/RenderThreadTask;)V

    goto :goto_1

    .line 818
    :cond_7
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->actionsToRestore:Lcom/htc/sunny2/Queue;

    invoke-virtual {v3, v1}, Lcom/htc/sunny2/Queue;->add(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 820
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v5, "Save action to restore NG"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    sget-object v3, Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;->QUEUE_OPERATION_ERROR:Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;

    invoke-direct {p0, v1, v3}, Lcom/htc/sunny2/RenderThread;->doCancelTask(Lcom/htc/sunny2/RenderThreadTask;Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;)V

    goto :goto_1

    .line 840
    .end local v2           #needRestore:Z
    :cond_8
    :try_start_1
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->actions:Lcom/htc/sunny2/Queue;

    invoke-virtual {v3, v1}, Lcom/htc/sunny2/Queue;->add(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 842
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v5, "Restore action NG."

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    sget-object v3, Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;->QUEUE_OPERATION_ERROR:Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;

    invoke-direct {p0, v1, v3}, Lcom/htc/sunny2/RenderThread;->doCancelTask(Lcom/htc/sunny2/RenderThreadTask;Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 849
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/htc/sunny2/RenderThread;->actionsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
.end method

.method private processEvents()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 723
    iget-object v2, p0, Lcom/htc/sunny2/RenderThread;->events:Lcom/htc/sunny2/Queue;

    invoke-virtual {v2}, Lcom/htc/sunny2/Queue;->peek()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 725
    const/4 v1, 0x0

    .line 759
    :cond_0
    return v1

    .line 730
    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/RenderThread;->eventsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 732
    iget-object v2, p0, Lcom/htc/sunny2/RenderThread;->eventsToProcess:Lcom/htc/sunny2/Queue;

    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->events:Lcom/htc/sunny2/Queue;

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/Queue;->swapWith(Lcom/htc/sunny2/Queue;)V

    .line 734
    iget-object v2, p0, Lcom/htc/sunny2/RenderThread;->eventsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 740
    :goto_0
    iget-object v2, p0, Lcom/htc/sunny2/RenderThread;->eventsToProcess:Lcom/htc/sunny2/Queue;

    invoke-virtual {v2}, Lcom/htc/sunny2/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/RenderThreadEvent;

    .line 741
    .local v0, event:Lcom/htc/sunny2/RenderThreadEvent;
    if-eqz v0, :cond_0

    .line 746
    invoke-virtual {v0}, Lcom/htc/sunny2/RenderThreadEvent;->onProcessEventIRT()V

    .line 747
    iget-boolean v2, v0, Lcom/htc/sunny2/RenderThreadTask;->alwaysNeedRenderAfterProcess:Z

    if-eqz v2, :cond_2

    .line 749
    iput-boolean v1, p0, Lcom/htc/sunny2/RenderThread;->needRenderDueToEvent:Z

    .line 751
    :cond_2
    iget-boolean v2, v0, Lcom/htc/sunny2/RenderThreadTask;->alwaysRequestRenderThreadRunningAfterProcess:Z

    if-eqz v2, :cond_3

    .line 753
    iput-boolean v1, p0, Lcom/htc/sunny2/RenderThread;->taskRequestRenderThreadRunning:Z

    .line 756
    :cond_3
    invoke-direct {p0, v0}, Lcom/htc/sunny2/RenderThread;->doFinishTask(Lcom/htc/sunny2/RenderThreadTask;)V

    goto :goto_0
.end method

.method private processPreparations(J)Z
    .locals 6
    .parameter "limitedTimeMillis"

    .prologue
    const/4 v4, 0x1

    .line 859
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->preparations:Lcom/htc/sunny2/Queue;

    invoke-virtual {v3}, Lcom/htc/sunny2/Queue;->peek()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 861
    const/4 v3, 0x0

    .line 935
    :goto_0
    return v3

    .line 866
    :cond_0
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->preparationsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 868
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->preparationsToProcess:Lcom/htc/sunny2/Queue;

    iget-object v5, p0, Lcom/htc/sunny2/RenderThread;->preparations:Lcom/htc/sunny2/Queue;

    invoke-virtual {v3, v5}, Lcom/htc/sunny2/Queue;->swapWith(Lcom/htc/sunny2/Queue;)V

    .line 870
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->preparationsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 878
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->preparationsToProcess:Lcom/htc/sunny2/Queue;

    invoke-virtual {v3}, Lcom/htc/sunny2/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/sunny2/RenderThreadPreparation;

    .line 879
    .local v2, preparation:Lcom/htc/sunny2/RenderThreadPreparation;
    if-nez v2, :cond_3

    .line 910
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->preparationsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 913
    :try_start_0
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->preparations:Lcom/htc/sunny2/Queue;

    iget-object v5, p0, Lcom/htc/sunny2/RenderThread;->preparationsToRestore:Lcom/htc/sunny2/Queue;

    invoke-virtual {v3, v5}, Lcom/htc/sunny2/Queue;->swapWith(Lcom/htc/sunny2/Queue;)V

    .line 917
    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->preparationsToRestore:Lcom/htc/sunny2/Queue;

    invoke-virtual {v3}, Lcom/htc/sunny2/Queue;->poll()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/htc/sunny2/RenderThreadPreparation;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 918
    if-nez v2, :cond_6

    .line 932
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->preparationsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move v3, v4

    .line 935
    goto :goto_0

    .line 886
    :cond_3
    invoke-virtual {v2, p1, p2}, Lcom/htc/sunny2/RenderThreadPreparation;->onProcessPreparationIRT(J)Z

    move-result v1

    .line 888
    .local v1, needRestore:Z
    iget-boolean v3, v2, Lcom/htc/sunny2/RenderThreadTask;->alwaysRequestRenderThreadRunningAfterProcess:Z

    if-eqz v3, :cond_4

    .line 890
    iput-boolean v4, p0, Lcom/htc/sunny2/RenderThread;->taskRequestRenderThreadRunning:Z

    .line 893
    :cond_4
    if-nez v1, :cond_5

    .line 895
    invoke-direct {p0, v2}, Lcom/htc/sunny2/RenderThread;->doFinishTask(Lcom/htc/sunny2/RenderThreadTask;)V

    goto :goto_1

    .line 901
    :cond_5
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->preparationsToRestore:Lcom/htc/sunny2/Queue;

    invoke-virtual {v3, v2}, Lcom/htc/sunny2/Queue;->add(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 903
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v5, "Save preparation to restore NG"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    sget-object v3, Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;->QUEUE_OPERATION_ERROR:Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;

    invoke-direct {p0, v2, v3}, Lcom/htc/sunny2/RenderThread;->doCancelTask(Lcom/htc/sunny2/RenderThreadTask;Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;)V

    goto :goto_1

    .line 923
    .end local v1           #needRestore:Z
    :cond_6
    :try_start_1
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->preparations:Lcom/htc/sunny2/Queue;

    invoke-virtual {v3, v2}, Lcom/htc/sunny2/Queue;->add(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 925
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v5, "Restore preparation NG."

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    sget-object v3, Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;->QUEUE_OPERATION_ERROR:Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;

    invoke-direct {p0, v2, v3}, Lcom/htc/sunny2/RenderThread;->doCancelTask(Lcom/htc/sunny2/RenderThreadTask;Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 932
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/htc/sunny2/RenderThread;->preparationsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
.end method

.method private pushAction(Lcom/htc/sunny2/RenderThreadAction;)Z
    .locals 5
    .parameter "action"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 614
    if-nez p1, :cond_0

    .line 616
    iget-object v2, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v3, "pushAction() NG - null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    :goto_0
    return v1

    .line 620
    :cond_0
    iget-boolean v3, p1, Lcom/htc/sunny2/RenderThreadTask;->isInRenderThreadQueue:Z

    if-eqz v3, :cond_1

    .line 622
    iget-object v2, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pushAction() NG - already in queue, action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/htc/sunny2/RenderThreadAction;->GetName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 628
    :cond_1
    const/4 v0, 0x0

    .line 630
    .local v0, pushOK:Z
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->actionsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 633
    :try_start_0
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->actions:Lcom/htc/sunny2/Queue;

    if-eqz v3, :cond_3

    .line 635
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->actions:Lcom/htc/sunny2/Queue;

    invoke-virtual {v3, p1}, Lcom/htc/sunny2/Queue;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 637
    if-eqz v0, :cond_2

    .line 639
    const/4 v3, 0x0

    iput v3, p1, Lcom/htc/sunny2/RenderThreadAction;->firstFrameIndex:I

    .line 640
    const-wide/16 v3, 0x0

    iput-wide v3, p1, Lcom/htc/sunny2/RenderThreadAction;->firstFrameTimeMillis:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 650
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->actionsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 653
    if-nez v0, :cond_4

    .line 655
    iget-object v2, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v3, "pushAction() NG"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 645
    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v4, "pushAction() NG - null actions"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 650
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/htc/sunny2/RenderThread;->actionsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    .line 661
    :cond_4
    iput-boolean v2, p1, Lcom/htc/sunny2/RenderThreadTask;->isInRenderThreadQueue:Z

    move v1, v2

    .line 663
    goto :goto_0
.end method

.method private pushEvent(Lcom/htc/sunny2/RenderThreadEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 564
    if-nez p1, :cond_0

    .line 566
    iget-object v2, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v3, "pushEvent() NG - null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    :goto_0
    return v1

    .line 570
    :cond_0
    iget-boolean v3, p1, Lcom/htc/sunny2/RenderThreadTask;->isInRenderThreadQueue:Z

    if-eqz v3, :cond_1

    .line 572
    iget-object v2, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v3, "pushEvent() NG - already in queue"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 578
    :cond_1
    const/4 v0, 0x0

    .line 580
    .local v0, pushOK:Z
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->eventsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 583
    :try_start_0
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->events:Lcom/htc/sunny2/Queue;

    if-eqz v3, :cond_2

    .line 585
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->events:Lcom/htc/sunny2/Queue;

    invoke-virtual {v3, p1}, Lcom/htc/sunny2/Queue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 594
    :goto_1
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->eventsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 597
    if-nez v0, :cond_3

    .line 599
    iget-object v2, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v3, "pushEvent() NG"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 589
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v4, "pushEvent() NG - events null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 594
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/htc/sunny2/RenderThread;->eventsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    .line 605
    :cond_3
    iput-boolean v2, p1, Lcom/htc/sunny2/RenderThreadTask;->isInRenderThreadQueue:Z

    move v1, v2

    .line 607
    goto :goto_0
.end method

.method private pushPreparation(Lcom/htc/sunny2/RenderThreadPreparation;)Z
    .locals 5
    .parameter "preparation"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 670
    if-nez p1, :cond_0

    .line 672
    iget-object v2, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v3, "pushPreparation() NG - null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    :goto_0
    return v1

    .line 676
    :cond_0
    iget-boolean v3, p1, Lcom/htc/sunny2/RenderThreadTask;->isInRenderThreadQueue:Z

    if-eqz v3, :cond_1

    .line 678
    iget-object v2, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v3, "pushPreparation() NG - already in queue"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 684
    :cond_1
    const/4 v0, 0x0

    .line 686
    .local v0, pushOK:Z
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->preparationsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 689
    :try_start_0
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->preparations:Lcom/htc/sunny2/Queue;

    if-eqz v3, :cond_2

    .line 691
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->preparations:Lcom/htc/sunny2/Queue;

    invoke-virtual {v3, p1}, Lcom/htc/sunny2/Queue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 700
    :goto_1
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->preparationsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 703
    if-nez v0, :cond_3

    .line 705
    iget-object v2, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v3, "pushPreparation() NG"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 695
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v4, "pushPreparation() NG - null preparations."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 700
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/htc/sunny2/RenderThread;->preparationsLocker:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    .line 711
    :cond_3
    iput-boolean v2, p1, Lcom/htc/sunny2/RenderThreadTask;->isInRenderThreadQueue:Z

    move v1, v2

    .line 713
    goto :goto_0
.end method


# virtual methods
.method public cancelForceDisableRenderingBeforeTimeMillis()V
    .locals 2

    .prologue
    .line 1269
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/sunny2/RenderThread;->forceDisableRenderingTimeMillis:J

    .line 1270
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/RenderThread;->forceRenderOnce:Z

    .line 1271
    return-void
.end method

.method public findActionInQueueIRT(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/sunny2/RenderThreadAction;
    .locals 4
    .parameter "actionHost"
    .parameter "actionName"

    .prologue
    const/4 v2, 0x0

    .line 304
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->actions:Lcom/htc/sunny2/Queue;

    if-nez v3, :cond_1

    move-object v1, v2

    .line 321
    :cond_0
    :goto_0
    return-object v1

    .line 307
    :cond_1
    new-instance v0, Lcom/htc/sunny2/RenderThread$1ActionComparator;

    invoke-direct {v0, p0, p1, p2}, Lcom/htc/sunny2/RenderThread$1ActionComparator;-><init>(Lcom/htc/sunny2/RenderThread;Ljava/lang/Object;Ljava/lang/String;)V

    .line 309
    .local v0, actionComparator:Lcom/htc/sunny2/RenderThread$1ActionComparator;
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->actions:Lcom/htc/sunny2/Queue;

    invoke-virtual {v3, v0}, Lcom/htc/sunny2/Queue;->find(Lcom/htc/sunny2/Queue$ItemComparator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/RenderThreadAction;

    .line 310
    .local v1, actionFound:Lcom/htc/sunny2/RenderThreadAction;
    if-nez v1, :cond_0

    .line 313
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->actionsToProcess:Lcom/htc/sunny2/Queue;

    invoke-virtual {v3, v0}, Lcom/htc/sunny2/Queue;->find(Lcom/htc/sunny2/Queue$ItemComparator;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #actionFound:Lcom/htc/sunny2/RenderThreadAction;
    check-cast v1, Lcom/htc/sunny2/RenderThreadAction;

    .line 314
    .restart local v1       #actionFound:Lcom/htc/sunny2/RenderThreadAction;
    if-nez v1, :cond_0

    .line 317
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->actionsToRestore:Lcom/htc/sunny2/Queue;

    invoke-virtual {v3, v0}, Lcom/htc/sunny2/Queue;->find(Lcom/htc/sunny2/Queue$ItemComparator;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #actionFound:Lcom/htc/sunny2/RenderThreadAction;
    check-cast v1, Lcom/htc/sunny2/RenderThreadAction;

    .line 318
    .restart local v1       #actionFound:Lcom/htc/sunny2/RenderThreadAction;
    if-nez v1, :cond_0

    move-object v1, v2

    .line 321
    goto :goto_0
.end method

.method public isRenderThreadReady()Z
    .locals 1

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/htc/sunny2/RenderThread;->isRenderThreadReady:Z

    return v0
.end method

.method public iterate()Z
    .locals 18

    .prologue
    .line 1079
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/htc/sunny2/RenderThread;->taskRequestRenderThreadRunning:Z

    .line 1083
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/htc/sunny2/RenderThread;->needRenderDueToInterruption:Z

    .line 1085
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/RenderThread;->currentInterruption:Lcom/htc/sunny2/RenderThreadInterruption;

    if-eqz v14, :cond_2

    .line 1087
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/RenderThread;->currentInterruption:Lcom/htc/sunny2/RenderThreadInterruption;

    invoke-virtual {v14}, Lcom/htc/sunny2/RenderThreadInterruption;->onProcessInterruptionIRT()V

    .line 1088
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/RenderThread;->currentInterruption:Lcom/htc/sunny2/RenderThreadInterruption;

    iget-boolean v14, v14, Lcom/htc/sunny2/RenderThreadTask;->alwaysNeedRenderAfterProcess:Z

    if-eqz v14, :cond_0

    .line 1090
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/htc/sunny2/RenderThread;->needRenderDueToInterruption:Z

    .line 1092
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/RenderThread;->currentInterruption:Lcom/htc/sunny2/RenderThreadInterruption;

    iget-boolean v14, v14, Lcom/htc/sunny2/RenderThreadTask;->alwaysRequestRenderThreadRunningAfterProcess:Z

    if-eqz v14, :cond_1

    .line 1094
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/htc/sunny2/RenderThread;->taskRequestRenderThreadRunning:Z

    .line 1097
    :cond_1
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/sunny2/RenderThread;->currentInterruption:Lcom/htc/sunny2/RenderThreadInterruption;

    .line 1102
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1104
    .local v1, currentFrameTimeMillis:J
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/htc/sunny2/RenderThread;->lastPresentTimeMillis:J

    const-wide/16 v16, 0x5

    add-long v14, v14, v16

    cmp-long v14, v1, v14

    if-gez v14, :cond_3

    .line 1106
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/htc/sunny2/RenderThread;->lastPresentTimeMillis:J

    .line 1111
    :cond_3
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/htc/sunny2/RenderThread;->needRenderDueToEvent:Z

    .line 1113
    invoke-direct/range {p0 .. p0}, Lcom/htc/sunny2/RenderThread;->processEvents()Z

    .line 1117
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/htc/sunny2/RenderThread;->needRenderDueToAction:Z

    .line 1119
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/sunny2/RenderThread;->frameIndex:I

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v1, v2}, Lcom/htc/sunny2/RenderThread;->processActions(IJ)Z

    .line 1123
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/sunny2/RenderThread;->needRenderDueToInterruption:Z

    if-nez v14, :cond_4

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/sunny2/RenderThread;->needRenderDueToEvent:Z

    if-nez v14, :cond_4

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/sunny2/RenderThread;->needRenderDueToAction:Z

    if-nez v14, :cond_4

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/sunny2/RenderThread;->forceRenderOnce:Z

    if-nez v14, :cond_4

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/sunny2/RenderThread;->forceRender:Z

    if-eqz v14, :cond_7

    :cond_4
    const/4 v9, 0x1

    .line 1124
    .local v9, needRender:Z
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/sunny2/RenderThread;->forceRenderOnce:Z

    .line 1126
    .local v3, hasRequestOfForceRenderOnce:Z
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/sunny2/RenderThread;->pauseRenderFlag:Z

    const/4 v15, 0x1

    if-ne v14, v15, :cond_5

    .line 1128
    const/4 v9, 0x0

    .line 1129
    const/4 v3, 0x0

    .line 1132
    :cond_5
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/htc/sunny2/RenderThread;->forceDisableRenderingTimeMillis:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-lez v14, :cond_6

    .line 1134
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/htc/sunny2/RenderThread;->forceDisableRenderingTimeMillis:J

    cmp-long v14, v1, v14

    if-gtz v14, :cond_8

    .line 1136
    const/4 v9, 0x0

    .line 1144
    :cond_6
    :goto_1
    if-eqz v9, :cond_9

    .line 1146
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/RenderThread;->renderWindows:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    .line 1147
    .local v12, w:Ljava/lang/Integer;
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 1148
    .local v13, window:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/RenderThread;->eventListener:Lcom/htc/sunny2/RenderThread$EventListener;

    invoke-interface {v14, v13}, Lcom/htc/sunny2/RenderThread$EventListener;->onRenderToWindowIRT(I)V

    .line 1149
    invoke-static {v13}, Lcom/htc/sunny2/Sunny2;->Window_RenderWithoutPresent(I)V

    goto :goto_2

    .line 1123
    .end local v3           #hasRequestOfForceRenderOnce:Z
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v9           #needRender:Z
    .end local v12           #w:Ljava/lang/Integer;
    .end local v13           #window:I
    :cond_7
    const/4 v9, 0x0

    goto :goto_0

    .line 1140
    .restart local v3       #hasRequestOfForceRenderOnce:Z
    .restart local v9       #needRender:Z
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/htc/sunny2/RenderThread;->cancelForceDisableRenderingBeforeTimeMillis()V

    goto :goto_1

    .line 1163
    :cond_9
    const-wide/16 v7, 0x0

    .line 1164
    .local v7, limitedTimeMillis:J
    if-eqz v9, :cond_a

    .line 1166
    const-wide/16 v14, 0xd

    add-long v7, v1, v14

    .line 1173
    :goto_3
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8}, Lcom/htc/sunny2/RenderThread;->processPreparations(J)Z

    .line 1177
    const/4 v4, 0x0

    .line 1179
    .local v4, hasWindowPresented:Z
    if-eqz v9, :cond_d

    .line 1181
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/RenderThread;->renderWindows:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5       #i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    .line 1182
    .restart local v12       #w:Ljava/lang/Integer;
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v14}, Lcom/htc/sunny2/Sunny2;->Window_Present(I)V

    .line 1183
    const/4 v4, 0x1

    goto :goto_4

    .line 1170
    .end local v4           #hasWindowPresented:Z
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v12           #w:Ljava/lang/Integer;
    :cond_a
    const-wide/16 v14, 0x10

    add-long v7, v1, v14

    goto :goto_3

    .line 1193
    .restart local v4       #hasWindowPresented:Z
    .restart local v5       #i$:Ljava/util/Iterator;
    :cond_b
    if-eqz v3, :cond_c

    .line 1195
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/htc/sunny2/RenderThread;->forceRenderOnce:Z

    .line 1197
    :cond_c
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/sunny2/RenderThread;->frameIndex:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/sunny2/RenderThread;->frameIndex:I

    .line 1200
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_d
    if-eqz v4, :cond_12

    .line 1202
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/sunny2/RenderThread;->renderCount:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/sunny2/RenderThread;->renderCount:I

    .line 1223
    :cond_e
    :goto_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/htc/sunny2/RenderThread;->lastPresentTimeMillis:J

    .line 1227
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/sunny2/RenderThread;->taskRequestRenderThreadRunning:Z

    if-eqz v14, :cond_f

    .line 1229
    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/htc/sunny2/RenderThread;->lastTimeRequestRenderThreadRunning:J

    .line 1232
    :cond_f
    const/4 v6, 0x1

    .line 1234
    .local v6, keepRunning:Z
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/sunny2/RenderThread;->iterationCount:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/sunny2/RenderThread;->iterationCount:I

    .line 1235
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/sunny2/RenderThread;->iterationCount:I

    rem-int/lit16 v14, v14, 0x12c

    if-nez v14, :cond_10

    .line 1238
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/sunny2/RenderThread;->renderCount:I

    .line 1240
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/htc/sunny2/RenderThread;->lastTimeRequestRenderThreadRunning:J

    const-wide/16 v16, 0x2710

    add-long v14, v14, v16

    cmp-long v14, v1, v14

    if-lez v14, :cond_10

    .line 1242
    const/4 v6, 0x0

    .line 1243
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v15, "RenderThread decides to pause."

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/htc/sunny2/RenderThread;->taskRequestRenderThreadRunning:Z

    if-nez v14, :cond_11

    .line 1251
    const/4 v6, 0x0

    .line 1252
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v15, "RenderThread: No running request."

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    :cond_11
    return v6

    .line 1206
    .end local v6           #keepRunning:Z
    :cond_12
    const-wide/16 v14, 0x10

    add-long/2addr v14, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v10, v14, v16

    .line 1207
    .local v10, sleepTime:J
    const-wide/16 v14, 0x0

    cmp-long v14, v10, v14

    if-lez v14, :cond_e

    .line 1209
    const-wide/16 v14, 0x3c

    cmp-long v14, v10, v14

    if-lez v14, :cond_13

    .line 1211
    const-wide/16 v10, 0x3c

    .line 1216
    :cond_13
    :try_start_0
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 1218
    :catch_0
    move-exception v14

    goto :goto_5
.end method

.method public onThreadBegin()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 92
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/sunny2/RenderThread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    .line 95
    :try_start_0
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/htc/sunny2/RenderThread;->setName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 100
    :goto_0
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RenderThread begin "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const/4 v1, 0x0

    .line 108
    .local v1, initFailed:Z
    :try_start_1
    new-instance v3, Lcom/htc/sunny2/Queue;

    const-string v4, "SunnyRT E"

    invoke-direct {v3, v4}, Lcom/htc/sunny2/Queue;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/htc/sunny2/RenderThread;->events:Lcom/htc/sunny2/Queue;

    .line 109
    new-instance v3, Lcom/htc/sunny2/Queue;

    const-string v4, "SunnyRT EP"

    invoke-direct {v3, v4}, Lcom/htc/sunny2/Queue;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/htc/sunny2/RenderThread;->eventsToProcess:Lcom/htc/sunny2/Queue;

    .line 111
    new-instance v3, Lcom/htc/sunny2/Queue;

    const-string v4, "SunnyRT A"

    invoke-direct {v3, v4}, Lcom/htc/sunny2/Queue;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/htc/sunny2/RenderThread;->actions:Lcom/htc/sunny2/Queue;

    .line 112
    new-instance v3, Lcom/htc/sunny2/Queue;

    const-string v4, "SunnyRT AP"

    invoke-direct {v3, v4}, Lcom/htc/sunny2/Queue;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/htc/sunny2/RenderThread;->actionsToProcess:Lcom/htc/sunny2/Queue;

    .line 113
    new-instance v3, Lcom/htc/sunny2/Queue;

    const-string v4, "SunnyRT AR"

    invoke-direct {v3, v4}, Lcom/htc/sunny2/Queue;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/htc/sunny2/RenderThread;->actionsToRestore:Lcom/htc/sunny2/Queue;

    .line 115
    new-instance v3, Lcom/htc/sunny2/Queue;

    const-string v4, "SunnyRT P"

    invoke-direct {v3, v4}, Lcom/htc/sunny2/Queue;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/htc/sunny2/RenderThread;->preparations:Lcom/htc/sunny2/Queue;

    .line 116
    new-instance v3, Lcom/htc/sunny2/Queue;

    const-string v4, "SunnyRT PP"

    invoke-direct {v3, v4}, Lcom/htc/sunny2/Queue;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/htc/sunny2/RenderThread;->preparationsToProcess:Lcom/htc/sunny2/Queue;

    .line 117
    new-instance v3, Lcom/htc/sunny2/Queue;

    const-string v4, "SunnyRT PR"

    invoke-direct {v3, v4}, Lcom/htc/sunny2/Queue;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/htc/sunny2/RenderThread;->preparationsToRestore:Lcom/htc/sunny2/Queue;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 127
    :goto_1
    if-nez v1, :cond_0

    .line 129
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->eventListener:Lcom/htc/sunny2/RenderThread$EventListener;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->eventListener:Lcom/htc/sunny2/RenderThread$EventListener;

    invoke-interface {v3}, Lcom/htc/sunny2/RenderThread$EventListener;->onRenderStartIRT()Z

    move-result v3

    if-nez v3, :cond_0

    .line 131
    const/4 v1, 0x1

    .line 132
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v4, "onThreadBegin() NG - cancel"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_0
    if-eqz v1, :cond_1

    .line 140
    iput-object v6, p0, Lcom/htc/sunny2/RenderThread;->events:Lcom/htc/sunny2/Queue;

    .line 141
    iput-object v6, p0, Lcom/htc/sunny2/RenderThread;->eventsToProcess:Lcom/htc/sunny2/Queue;

    .line 143
    iput-object v6, p0, Lcom/htc/sunny2/RenderThread;->actions:Lcom/htc/sunny2/Queue;

    .line 144
    iput-object v6, p0, Lcom/htc/sunny2/RenderThread;->actionsToProcess:Lcom/htc/sunny2/Queue;

    .line 145
    iput-object v6, p0, Lcom/htc/sunny2/RenderThread;->actionsToRestore:Lcom/htc/sunny2/Queue;

    .line 147
    iput-object v6, p0, Lcom/htc/sunny2/RenderThread;->preparations:Lcom/htc/sunny2/Queue;

    .line 148
    iput-object v6, p0, Lcom/htc/sunny2/RenderThread;->preparationsToProcess:Lcom/htc/sunny2/Queue;

    .line 149
    iput-object v6, p0, Lcom/htc/sunny2/RenderThread;->preparationsToRestore:Lcom/htc/sunny2/Queue;

    .line 151
    iput-boolean v2, p0, Lcom/htc/sunny2/RenderThread;->isRenderThreadExpired:Z

    .line 153
    const/4 v2, 0x0

    .line 160
    :goto_2
    return v2

    .line 119
    :catch_0
    move-exception v0

    .line 121
    .local v0, ex:Ljava/lang/Exception;
    const/4 v1, 0x1

    .line 122
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v4, "onThreadBegin() NG - exception"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 158
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_1
    iput-boolean v2, p0, Lcom/htc/sunny2/RenderThread;->isRenderThreadReady:Z

    goto :goto_2

    .line 97
    .end local v1           #initFailed:Z
    :catch_1
    move-exception v3

    goto/16 :goto_0
.end method

.method public onThreadEnd()V
    .locals 3

    .prologue
    .line 165
    iget-object v0, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v1, "onThreadEnd() +"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/RenderThread;->isRenderThreadExpired:Z

    .line 173
    sget-object v0, Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;->THREAD_END:Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;

    invoke-direct {p0, v0}, Lcom/htc/sunny2/RenderThread;->doRemoveAllTaskIRT(Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;)V

    .line 177
    iget-object v0, p0, Lcom/htc/sunny2/RenderThread;->eventListener:Lcom/htc/sunny2/RenderThread$EventListener;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/htc/sunny2/RenderThread;->eventListener:Lcom/htc/sunny2/RenderThread$EventListener;

    invoke-interface {v0}, Lcom/htc/sunny2/RenderThread$EventListener;->onRenderStopIRT()V

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v1, "onThreadEnd() -"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v0, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RenderThread end "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    return-void
.end method

.method public pauseRender()V
    .locals 1

    .prologue
    .line 554
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/RenderThread;->pauseRenderFlag:Z

    return-void
.end method

.method public pushActionIHT(Lcom/htc/sunny2/RenderThreadAction;)Z
    .locals 3
    .parameter "action"

    .prologue
    const/4 v0, 0x0

    .line 508
    invoke-virtual {p0}, Lcom/htc/sunny2/RenderThread;->waitForRenderThreadReady()Z

    move-result v1

    if-nez v1, :cond_0

    .line 510
    iget-object v1, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v2, "pushActionIHT() NG - render thread expired."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    :goto_0
    return v0

    .line 516
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/sunny2/RenderThread;->pushAction(Lcom/htc/sunny2/RenderThreadAction;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 518
    iget-object v1, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v2, "pushActionIHT() NG"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 524
    :cond_1
    invoke-virtual {p0}, Lcom/htc/sunny2/RenderThread;->resumeThread()V

    .line 526
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public pushActionIRT(Lcom/htc/sunny2/RenderThreadAction;)Z
    .locals 2
    .parameter "action"

    .prologue
    .line 264
    invoke-direct {p0, p1}, Lcom/htc/sunny2/RenderThread;->pushAction(Lcom/htc/sunny2/RenderThreadAction;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v1, "pushActionIRT() NG"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    const/4 v0, 0x0

    .line 270
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public pushEventIHT(Lcom/htc/sunny2/RenderThreadEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 483
    invoke-virtual {p0}, Lcom/htc/sunny2/RenderThread;->waitForRenderThreadReady()Z

    move-result v1

    if-nez v1, :cond_0

    .line 485
    iget-object v1, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v2, "pushEventIHT() NG - render thread expired."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    :goto_0
    return v0

    .line 491
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/sunny2/RenderThread;->pushEvent(Lcom/htc/sunny2/RenderThreadEvent;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 493
    iget-object v1, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v2, "pushEventIHT() NG"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 499
    :cond_1
    invoke-virtual {p0}, Lcom/htc/sunny2/RenderThread;->resumeThread()V

    .line 501
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public pushEventIRT(Lcom/htc/sunny2/RenderThreadEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 251
    iget-object v0, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pushEventIRT () "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/sunny2/RenderThreadEvent;->GetName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    invoke-direct {p0, p1}, Lcom/htc/sunny2/RenderThread;->pushEvent(Lcom/htc/sunny2/RenderThreadEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v1, "pushEventIRT() NG"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const/4 v0, 0x0

    .line 259
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public pushPreparationIHT(Lcom/htc/sunny2/RenderThreadPreparation;)Z
    .locals 3
    .parameter "preparation"

    .prologue
    const/4 v0, 0x0

    .line 533
    invoke-virtual {p0}, Lcom/htc/sunny2/RenderThread;->waitForRenderThreadReady()Z

    move-result v1

    if-nez v1, :cond_0

    .line 535
    iget-object v1, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v2, "pushPreparationIHT() NG - render thread expired."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    :goto_0
    return v0

    .line 541
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/sunny2/RenderThread;->pushPreparation(Lcom/htc/sunny2/RenderThreadPreparation;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 543
    iget-object v1, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v2, "pushPreparationIHT() NG"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 549
    :cond_1
    invoke-virtual {p0}, Lcom/htc/sunny2/RenderThread;->resumeThread()V

    .line 551
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public pushPreparationIRT(Lcom/htc/sunny2/RenderThreadPreparation;)Z
    .locals 2
    .parameter "preparation"

    .prologue
    .line 275
    invoke-direct {p0, p1}, Lcom/htc/sunny2/RenderThread;->pushPreparation(Lcom/htc/sunny2/RenderThreadPreparation;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v1, "pushPreparationIRT() NG"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    const/4 v0, 0x0

    .line 281
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public registerRenderWindowIRT(I)Z
    .locals 4
    .parameter "window"

    .prologue
    const/4 v0, 0x0

    .line 197
    iget-object v1, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerRenderWindowIRT "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    if-nez p1, :cond_0

    .line 201
    iget-object v1, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v2, "registerRenderWindow() NG - null window"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :goto_0
    return v0

    .line 205
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/RenderThread;->renderWindows:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 206
    iget-object v1, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerRenderWindow() NG - has window = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 210
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/RenderThread;->renderWindows:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 212
    iget-object v1, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v2, "registerRenderWindow() NG - add window"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 216
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public removeActionIRT(Lcom/htc/sunny2/RenderThreadAction;)Z
    .locals 3
    .parameter "action"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 326
    if-nez p1, :cond_1

    .line 345
    :cond_0
    :goto_0
    return v0

    .line 332
    :cond_1
    iget-boolean v2, p1, Lcom/htc/sunny2/RenderThreadTask;->isInRenderThreadQueue:Z

    if-eqz v2, :cond_0

    .line 337
    iget-object v2, p0, Lcom/htc/sunny2/RenderThread;->actions:Lcom/htc/sunny2/Queue;

    invoke-virtual {v2, p1}, Lcom/htc/sunny2/Queue;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eq v2, v1, :cond_2

    iget-object v2, p0, Lcom/htc/sunny2/RenderThread;->actionsToProcess:Lcom/htc/sunny2/Queue;

    invoke-virtual {v2, p1}, Lcom/htc/sunny2/Queue;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eq v2, v1, :cond_2

    iget-object v2, p0, Lcom/htc/sunny2/RenderThread;->actionsToRestore:Lcom/htc/sunny2/Queue;

    invoke-virtual {v2, p1}, Lcom/htc/sunny2/Queue;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v1, :cond_0

    .line 341
    :cond_2
    sget-object v0, Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;->MANUAL_REMOVE:Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;

    invoke-direct {p0, p1, v0}, Lcom/htc/sunny2/RenderThread;->doCancelTask(Lcom/htc/sunny2/RenderThreadTask;Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;)V

    move v0, v1

    .line 342
    goto :goto_0
.end method

.method public removeActionIRT(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 2
    .parameter "actionHost"
    .parameter "actionName"

    .prologue
    .line 350
    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/RenderThread;->findActionInQueueIRT(Ljava/lang/Object;Ljava/lang/String;)Lcom/htc/sunny2/RenderThreadAction;

    move-result-object v0

    .line 351
    .local v0, action:Lcom/htc/sunny2/RenderThreadAction;
    if-nez v0, :cond_0

    .line 353
    const/4 v1, 0x0

    .line 356
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/htc/sunny2/RenderThread;->removeActionIRT(Lcom/htc/sunny2/RenderThreadAction;)Z

    move-result v1

    goto :goto_0
.end method

.method public removeAllTaskIRT()V
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v1, "removeAllTaskIRT()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    sget-object v0, Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;->MANUAL_REMOVE:Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;

    invoke-direct {p0, v0}, Lcom/htc/sunny2/RenderThread;->doRemoveAllTaskIRT(Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;)V

    .line 247
    return-void
.end method

.method public removePreparationIRT(Lcom/htc/sunny2/RenderThreadPreparation;)Z
    .locals 3
    .parameter "preparation"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 361
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-eq v2, p0, :cond_0

    .line 362
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You can\'t call removePreparationIRT in non-RenderThread!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 365
    :cond_0
    if-nez p1, :cond_2

    .line 367
    iget-object v1, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v2, "removePreparationIRT() NG - null action"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :cond_1
    :goto_0
    return v0

    .line 371
    :cond_2
    iget-boolean v2, p1, Lcom/htc/sunny2/RenderThreadTask;->isInRenderThreadQueue:Z

    if-eqz v2, :cond_1

    .line 376
    iget-object v2, p0, Lcom/htc/sunny2/RenderThread;->preparations:Lcom/htc/sunny2/Queue;

    invoke-virtual {v2, p1}, Lcom/htc/sunny2/Queue;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eq v2, v1, :cond_3

    iget-object v2, p0, Lcom/htc/sunny2/RenderThread;->preparationsToProcess:Lcom/htc/sunny2/Queue;

    invoke-virtual {v2, p1}, Lcom/htc/sunny2/Queue;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eq v2, v1, :cond_3

    iget-object v2, p0, Lcom/htc/sunny2/RenderThread;->preparationsToRestore:Lcom/htc/sunny2/Queue;

    invoke-virtual {v2, p1}, Lcom/htc/sunny2/Queue;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v1, :cond_1

    .line 380
    :cond_3
    sget-object v2, Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;->MANUAL_REMOVE:Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;

    invoke-direct {p0, p1, v2}, Lcom/htc/sunny2/RenderThread;->doCancelTask(Lcom/htc/sunny2/RenderThreadTask;Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;)V

    .line 381
    sget-object v2, Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;->MANUAL_REMOVE:Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;

    invoke-virtual {p1, v2}, Lcom/htc/sunny2/RenderThreadPreparation;->onCancelIRT(Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;)V

    .line 382
    invoke-virtual {p1}, Lcom/htc/sunny2/RenderThreadPreparation;->onRemovedIRT()V

    .line 383
    iput-boolean v0, p1, Lcom/htc/sunny2/RenderThreadTask;->isInRenderThreadQueue:Z

    move v0, v1

    .line 385
    goto :goto_0
.end method

.method public requestForceDisableRenderingBeforeTimeMillis(J)V
    .locals 2
    .parameter "timeMillis"

    .prologue
    .line 1263
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/htc/sunny2/RenderThread;->forceDisableRenderingTimeMillis:J

    .line 1264
    return-void
.end method

.method public resumeRender()V
    .locals 1

    .prologue
    .line 555
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/RenderThread;->pauseRenderFlag:Z

    return-void
.end method

.method public runInterruptionIHT(Lcom/htc/sunny2/RenderThreadInterruption;)Z
    .locals 3
    .parameter "interruption"

    .prologue
    const/4 v0, 0x0

    .line 439
    invoke-virtual {p0}, Lcom/htc/sunny2/RenderThread;->waitForRenderThreadReady()Z

    move-result v1

    if-nez v1, :cond_0

    .line 441
    iget-object v1, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v2, "runInterruptionIHT() NG - render thread expired."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    :goto_0
    return v0

    .line 447
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/RenderThread;->currentInterruption:Lcom/htc/sunny2/RenderThreadInterruption;

    if-eqz v1, :cond_1

    .line 449
    iget-object v1, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v2, "runInterruptionIHT() NG - already has interruption."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 455
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Run interruptionIHT in RenderThread - current thread:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    iput-object p1, p0, Lcom/htc/sunny2/RenderThread;->currentInterruption:Lcom/htc/sunny2/RenderThreadInterruption;

    .line 458
    invoke-virtual {p0}, Lcom/htc/sunny2/RenderThread;->resumeThread()V

    .line 462
    iget-object v0, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wait for interruption finish. +  RenderThread:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    :goto_1
    iget-object v0, p0, Lcom/htc/sunny2/RenderThread;->currentInterruption:Lcom/htc/sunny2/RenderThreadInterruption;

    if-eqz v0, :cond_2

    .line 468
    const-wide/16 v0, 0x1

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 470
    :catch_0
    move-exception v0

    goto :goto_1

    .line 474
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wait for interruption finish. -  RenderThread:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public unregisterRenderWindowIRT(I)Z
    .locals 7
    .parameter "window"

    .prologue
    const/4 v3, 0x0

    .line 221
    iget-object v4, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unregisterRenderWindowIRT "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    if-nez p1, :cond_0

    .line 225
    iget-object v4, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v5, "unregisterRenderWindow() NG - null window"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :goto_0
    return v3

    .line 229
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v4, p0, Lcom/htc/sunny2/RenderThread;->renderWindows:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, s:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 231
    iget-object v4, p0, Lcom/htc/sunny2/RenderThread;->renderWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 232
    .local v2, w:Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, p1, :cond_1

    .line 234
    iget-object v3, p0, Lcom/htc/sunny2/RenderThread;->renderWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 235
    const/4 v3, 0x1

    goto :goto_0

    .line 229
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 239
    .end local v2           #w:Ljava/lang/Integer;
    :cond_2
    iget-object v4, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v5, "unregisterRenderWindow() NG - can not find the window"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public waitForRenderThreadReady()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 397
    iget-boolean v2, p0, Lcom/htc/sunny2/RenderThread;->isRenderThreadReady:Z

    if-ne v2, v0, :cond_0

    iget-boolean v2, p0, Lcom/htc/sunny2/RenderThread;->isRenderThreadExpired:Z

    if-nez v2, :cond_0

    .line 430
    :goto_0
    return v0

    .line 404
    :cond_0
    iget-object v2, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v3, "waitForRenderThreadReady() +"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :cond_1
    iget-boolean v2, p0, Lcom/htc/sunny2/RenderThread;->isRenderThreadReady:Z

    if-nez v2, :cond_2

    .line 410
    const-wide/16 v2, 0x1

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 415
    :goto_1
    iget-boolean v2, p0, Lcom/htc/sunny2/RenderThread;->isRenderThreadExpired:Z

    if-eqz v2, :cond_1

    .line 417
    iget-object v0, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v2, "waitForRenderThreadReady() - expired"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 418
    goto :goto_0

    .line 422
    :cond_2
    iget-boolean v2, p0, Lcom/htc/sunny2/RenderThread;->isRenderThreadExpired:Z

    if-eqz v2, :cond_3

    .line 424
    iget-object v0, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v2, "waitForRenderThreadReady() - expired"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 425
    goto :goto_0

    .line 428
    :cond_3
    iget-object v1, p0, Lcom/htc/sunny2/RenderThread;->TAG:Ljava/lang/String;

    const-string v2, "waitForRenderThreadReady() -"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 412
    :catch_0
    move-exception v2

    goto :goto_1
.end method
