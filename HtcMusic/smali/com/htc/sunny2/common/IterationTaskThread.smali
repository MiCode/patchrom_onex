.class public Lcom/htc/sunny2/common/IterationTaskThread;
.super Lcom/htc/sunny2/IterationThread;
.source "IterationTaskThread.java"


# static fields
.field protected static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "IterationTaskThread"

.field public static final TASK_CANCEL:I = 0x4

.field public static final TASK_END:I = 0x3

.field public static final TASK_ITERATE:I = 0x2

.field public static final TASK_RESET:I = 0x5

.field public static final TASK_SETUP:I = 0x1

.field public static final TASK_UNSET:I


# instance fields
.field private final lock:Ljava/lang/Object;

.field private mBeginIdx:I

.field private mEndIdx:I

.field private mStatus:I

.field private mTask:Lcom/htc/sunny2/common/IterationTask;

.field private mTaskList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/sunny2/common/IterationTask;",
            ">;"
        }
    .end annotation
.end field

.field private mTaskToCancel:Lcom/htc/sunny2/common/IterationTask;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter "threadName"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 30
    invoke-direct {p0, p1}, Lcom/htc/sunny2/IterationThread;-><init>(Ljava/lang/String;)V

    .line 20
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/common/IterationTaskThread;->mTaskList:Ljava/util/LinkedList;

    .line 21
    iput-object v2, p0, Lcom/htc/sunny2/common/IterationTaskThread;->mTask:Lcom/htc/sunny2/common/IterationTask;

    .line 22
    iput-object v2, p0, Lcom/htc/sunny2/common/IterationTaskThread;->mTaskToCancel:Lcom/htc/sunny2/common/IterationTask;

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/common/IterationTaskThread;->mStatus:I

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/common/IterationTaskThread;->lock:Ljava/lang/Object;

    .line 26
    iput v1, p0, Lcom/htc/sunny2/common/IterationTaskThread;->mBeginIdx:I

    .line 27
    iput v1, p0, Lcom/htc/sunny2/common/IterationTaskThread;->mEndIdx:I

    .line 31
    return-void
.end method


# virtual methods
.method public addTask(Lcom/htc/sunny2/common/IterationTask;)V
    .locals 2
    .parameter "task"

    .prologue
    .line 128
    iget-object v1, p0, Lcom/htc/sunny2/common/IterationTaskThread;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/htc/sunny2/common/IterationTaskThread;->mTaskList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 132
    invoke-virtual {p0}, Lcom/htc/sunny2/common/IterationTaskThread;->resumeThread()V

    .line 133
    monitor-exit v1

    .line 134
    return-void

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public cancelAllTask()V
    .locals 5

    .prologue
    .line 144
    iget-object v3, p0, Lcom/htc/sunny2/common/IterationTaskThread;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 145
    :try_start_0
    const-string v2, "IterationTaskThread"

    const-string v4, "[IterationTaskThread][cancelAllTask]"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v2, p0, Lcom/htc/sunny2/common/IterationTaskThread;->mTaskList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 147
    iget-object v2, p0, Lcom/htc/sunny2/common/IterationTaskThread;->mTaskList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/common/IterationTask;

    .line 148
    .local v1, task:Lcom/htc/sunny2/common/IterationTask;
    if-eqz v1, :cond_0

    .line 150
    invoke-virtual {v1}, Lcom/htc/sunny2/common/IterationTask;->onCancel()V

    .line 151
    invoke-virtual {v1}, Lcom/htc/sunny2/common/IterationTask;->release()V

    goto :goto_0

    .line 157
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #task:Lcom/htc/sunny2/common/IterationTask;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 154
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/htc/sunny2/common/IterationTaskThread;->mTaskList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 156
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_2
    iget-object v2, p0, Lcom/htc/sunny2/common/IterationTaskThread;->mTask:Lcom/htc/sunny2/common/IterationTask;

    iput-object v2, p0, Lcom/htc/sunny2/common/IterationTaskThread;->mTaskToCancel:Lcom/htc/sunny2/common/IterationTask;

    .line 157
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 158
    return-void
.end method

.method public cancelTask(Lcom/htc/sunny2/common/IterationTask;)V
    .locals 2
    .parameter "task"

    .prologue
    .line 137
    iget-object v1, p0, Lcom/htc/sunny2/common/IterationTaskThread;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 139
    :try_start_0
    iput-object p1, p0, Lcom/htc/sunny2/common/IterationTaskThread;->mTaskToCancel:Lcom/htc/sunny2/common/IterationTask;

    .line 140
    monitor-exit v1

    .line 141
    return-void

    .line 140
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getTaskCount()I
    .locals 3

    .prologue
    .line 161
    const/4 v0, 0x0

    .line 162
    .local v0, count:I
    iget-object v2, p0, Lcom/htc/sunny2/common/IterationTaskThread;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 163
    :try_start_0
    iget-object v1, p0, Lcom/htc/sunny2/common/IterationTaskThread;->mTaskList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v0

    .line 164
    iget-object v1, p0, Lcom/htc/sunny2/common/IterationTaskThread;->mTask:Lcom/htc/sunny2/common/IterationTask;

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 165
    :cond_0
    monitor-exit v2

    .line 166
    return v0

    .line 165
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public declared-synchronized isInVisibleRange()Z
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 175
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/htc/sunny2/common/IterationTaskThread;->mTask:Lcom/htc/sunny2/common/IterationTask;

    iget v0, v1, Lcom/htc/sunny2/common/IterationTask;->mIdx:I

    .line 176
    .local v0, idx:I
    if-eq v0, v2, :cond_0

    iget v1, p0, Lcom/htc/sunny2/common/IterationTaskThread;->mBeginIdx:I

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/htc/sunny2/common/IterationTaskThread;->mEndIdx:I

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/htc/sunny2/common/IterationTaskThread;->mBeginIdx:I

    if-lt v0, v1, :cond_1

    iget v1, p0, Lcom/htc/sunny2/common/IterationTaskThread;->mEndIdx:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gt v0, v1, :cond_1

    .line 178
    :cond_0
    const/4 v1, 0x1

    .line 181
    :goto_0
    monitor-exit p0

    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 175
    .end local v0           #idx:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public iterate()Z
    .locals 6

    .prologue
    const/4 v5, 0x5

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 63
    iget-object v0, p0, Lcom/htc/sunny2/common/IterationTaskThread;->mTask:Lcom/htc/sunny2/common/IterationTask;

    if-nez v0, :cond_3

    .line 64
    iget-object v3, p0, Lcom/htc/sunny2/common/IterationTaskThread;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/htc/sunny2/common/IterationTaskThread;->mTaskList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    monitor-exit v3

    move v0, v1

    .line 124
    :goto_0
    return v0

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/common/IterationTaskThread;->mTaskList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/common/IterationTask;

    iput-object v0, p0, Lcom/htc/sunny2/common/IterationTaskThread;->mTask:Lcom/htc/sunny2/common/IterationTask;

    .line 82
    invoke-virtual {p0}, Lcom/htc/sunny2/common/IterationTaskThread;->isInVisibleRange()Z

    move-result v0

    if-nez v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/htc/sunny2/common/IterationTaskThread;->mTask:Lcom/htc/sunny2/common/IterationTask;

    invoke-virtual {v0}, Lcom/htc/sunny2/common/IterationTask;->onTaskCancel()V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/common/IterationTaskThread;->mTask:Lcom/htc/sunny2/common/IterationTask;

    .line 86
    monitor-exit v3

    move v0, v2

    goto :goto_0

    .line 89
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    iput v1, p0, Lcom/htc/sunny2/common/IterationTaskThread;->mStatus:I

    :cond_2
    :goto_1
    move v0, v2

    .line 124
    goto :goto_0

    .line 89
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 92
    :cond_3
    iget-object v0, p0, Lcom/htc/sunny2/common/IterationTaskThread;->mTaskToCancel:Lcom/htc/sunny2/common/IterationTask;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/sunny2/common/IterationTaskThread;->mTask:Lcom/htc/sunny2/common/IterationTask;

    iget-object v3, p0, Lcom/htc/sunny2/common/IterationTaskThread;->mTaskToCancel:Lcom/htc/sunny2/common/IterationTask;

    if-ne v0, v3, :cond_4

    .line 93
    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/sunny2/common/IterationTaskThread;->mStatus:I

    .line 94
    iput-object v4, p0, Lcom/htc/sunny2/common/IterationTaskThread;->mTaskToCancel:Lcom/htc/sunny2/common/IterationTask;

    .line 96
    :cond_4
    iget v0, p0, Lcom/htc/sunny2/common/IterationTaskThread;->mStatus:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 98
    :pswitch_0
    iget-object v0, p0, Lcom/htc/sunny2/common/IterationTaskThread;->mTask:Lcom/htc/sunny2/common/IterationTask;

    invoke-virtual {v0}, Lcom/htc/sunny2/common/IterationTask;->onTaskSetup()V

    .line 99
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/sunny2/common/IterationTaskThread;->mStatus:I

    goto :goto_1

    .line 103
    :pswitch_1
    iget-object v0, p0, Lcom/htc/sunny2/common/IterationTaskThread;->mTask:Lcom/htc/sunny2/common/IterationTask;

    invoke-virtual {v0}, Lcom/htc/sunny2/common/IterationTask;->onTaskIterate()Z

    move-result v0

    if-nez v0, :cond_2

    .line 104
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/sunny2/common/IterationTaskThread;->mStatus:I

    goto :goto_1

    .line 108
    :pswitch_2
    iget-object v0, p0, Lcom/htc/sunny2/common/IterationTaskThread;->mTask:Lcom/htc/sunny2/common/IterationTask;

    invoke-virtual {v0}, Lcom/htc/sunny2/common/IterationTask;->onTaskEnd()V

    .line 109
    iput v5, p0, Lcom/htc/sunny2/common/IterationTaskThread;->mStatus:I

    goto :goto_1

    .line 113
    :pswitch_3
    iget-object v0, p0, Lcom/htc/sunny2/common/IterationTaskThread;->mTask:Lcom/htc/sunny2/common/IterationTask;

    invoke-virtual {v0}, Lcom/htc/sunny2/common/IterationTask;->onTaskCancel()V

    .line 114
    iput v5, p0, Lcom/htc/sunny2/common/IterationTaskThread;->mStatus:I

    goto :goto_1

    .line 118
    :pswitch_4
    iput-object v4, p0, Lcom/htc/sunny2/common/IterationTaskThread;->mTask:Lcom/htc/sunny2/common/IterationTask;

    .line 119
    iput v1, p0, Lcom/htc/sunny2/common/IterationTaskThread;->mStatus:I

    goto :goto_1

    .line 96
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onThreadBegin()Z
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x1

    return v0
.end method

.method public onThreadEnd()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 43
    iget-object v2, p0, Lcom/htc/sunny2/common/IterationTaskThread;->mTask:Lcom/htc/sunny2/common/IterationTask;

    if-eqz v2, :cond_0

    .line 44
    iget-object v2, p0, Lcom/htc/sunny2/common/IterationTaskThread;->mTask:Lcom/htc/sunny2/common/IterationTask;

    invoke-virtual {v2}, Lcom/htc/sunny2/common/IterationTask;->onCancel()V

    .line 45
    iget-object v2, p0, Lcom/htc/sunny2/common/IterationTaskThread;->mTask:Lcom/htc/sunny2/common/IterationTask;

    invoke-virtual {v2}, Lcom/htc/sunny2/common/IterationTask;->release()V

    .line 46
    iput-object v3, p0, Lcom/htc/sunny2/common/IterationTaskThread;->mTask:Lcom/htc/sunny2/common/IterationTask;

    .line 48
    :cond_0
    iget-object v2, p0, Lcom/htc/sunny2/common/IterationTaskThread;->mTaskList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/common/IterationTask;

    .line 49
    .local v1, task:Lcom/htc/sunny2/common/IterationTask;
    if-eqz v1, :cond_1

    .line 51
    invoke-virtual {v1}, Lcom/htc/sunny2/common/IterationTask;->onCancel()V

    .line 52
    invoke-virtual {v1}, Lcom/htc/sunny2/common/IterationTask;->release()V

    goto :goto_0

    .line 55
    .end local v1           #task:Lcom/htc/sunny2/common/IterationTask;
    :cond_2
    iget-object v2, p0, Lcom/htc/sunny2/common/IterationTaskThread;->mTaskList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 56
    iput-object v3, p0, Lcom/htc/sunny2/common/IterationTaskThread;->mTaskToCancel:Lcom/htc/sunny2/common/IterationTask;

    .line 58
    return-void
.end method

.method public release()V
    .locals 0

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/htc/sunny2/common/IterationTaskThread;->endThread()V

    .line 192
    return-void
.end method

.method public declared-synchronized setVisibleRange(II)V
    .locals 1
    .parameter "beginIdx"
    .parameter "endIdx"

    .prologue
    .line 170
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/htc/sunny2/common/IterationTaskThread;->mBeginIdx:I

    .line 171
    iput p2, p0, Lcom/htc/sunny2/common/IterationTaskThread;->mEndIdx:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    monitor-exit p0

    return-void

    .line 170
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
