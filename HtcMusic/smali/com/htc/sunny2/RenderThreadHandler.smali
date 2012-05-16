.class public Lcom/htc/sunny2/RenderThreadHandler;
.super Lcom/htc/sunny2/RenderThreadAction;
.source "RenderThreadHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;
    }
.end annotation


# instance fields
.field private log_tag:Ljava/lang/String;

.field protected mEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;",
            ">;"
        }
    .end annotation
.end field

.field private mInProcess:Z

.field private mIsReleased:Z

.field protected mQueued:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;",
            ">;"
        }
    .end annotation
.end field

.field private mRenderThread:Lcom/htc/sunny2/RenderThread;

.field private final mThreadLocker:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunny2/RenderThread;)V
    .locals 2
    .parameter "host"
    .parameter "name"
    .parameter "thread"

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/htc/sunny2/RenderThreadAction;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    const-string v0, "RenderThreadHandler"

    iput-object v0, p0, Lcom/htc/sunny2/RenderThreadHandler;->log_tag:Ljava/lang/String;

    .line 14
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/RenderThreadHandler;->mThreadLocker:Ljava/lang/Object;

    .line 63
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/RenderThreadHandler;->mEvents:Ljava/util/List;

    .line 64
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/RenderThreadHandler;->mQueued:Ljava/util/List;

    .line 74
    invoke-virtual {p0, v1}, Lcom/htc/sunny2/RenderThreadHandler;->setAlwaysNeedRenderAfterProcess(Z)V

    .line 75
    iput-boolean v1, p0, Lcom/htc/sunny2/RenderThreadHandler;->mInProcess:Z

    .line 76
    invoke-virtual {p0, v1}, Lcom/htc/sunny2/RenderThreadHandler;->setAlwaysRequestRenderThreadRunningAfterProcess(Z)V

    .line 78
    invoke-virtual {p0, p3}, Lcom/htc/sunny2/RenderThreadHandler;->attachRenderThread(Lcom/htc/sunny2/RenderThread;)V

    .line 80
    iput-boolean v1, p0, Lcom/htc/sunny2/RenderThreadHandler;->mIsReleased:Z

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/RenderThreadHandler;->log_tag:Ljava/lang/String;

    .line 82
    return-void
.end method

.method private addMessage(Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;)V
    .locals 3
    .parameter "m"

    .prologue
    const/4 v1, 0x1

    .line 134
    iget-boolean v0, p0, Lcom/htc/sunny2/RenderThreadHandler;->mIsReleased:Z

    if-ne v1, v0, :cond_0

    .line 149
    :goto_0
    return-void

    .line 136
    :cond_0
    iput-object p0, p1, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->target:Lcom/htc/sunny2/RenderThreadHandler;

    .line 137
    iget-boolean v0, p0, Lcom/htc/sunny2/RenderThreadHandler;->mInProcess:Z

    if-nez v0, :cond_2

    .line 138
    iget-object v0, p0, Lcom/htc/sunny2/RenderThreadHandler;->mEvents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    :goto_1
    invoke-virtual {p0, v1}, Lcom/htc/sunny2/RenderThreadHandler;->setAlwaysRequestRenderThreadRunningAfterProcess(Z)V

    .line 144
    iget-object v1, p0, Lcom/htc/sunny2/RenderThreadHandler;->mThreadLocker:Ljava/lang/Object;

    monitor-enter v1

    .line 145
    :try_start_0
    iget-object v0, p0, Lcom/htc/sunny2/RenderThreadHandler;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/sunny2/RenderThreadHandler;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-eq v0, v2, :cond_1

    .line 146
    iget-object v0, p0, Lcom/htc/sunny2/RenderThreadHandler;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v0}, Lcom/htc/sunny2/RenderThread;->resumeThread()V

    .line 148
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 141
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/RenderThreadHandler;->mQueued:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private removeMessage(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;>;"
    const/4 v1, 0x1

    .line 152
    iget-boolean v0, p0, Lcom/htc/sunny2/RenderThreadHandler;->mIsReleased:Z

    if-ne v1, v0, :cond_0

    .line 162
    :goto_0
    return-void

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/RenderThreadHandler;->mEvents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 155
    iget-object v0, p0, Lcom/htc/sunny2/RenderThreadHandler;->mQueued:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 156
    invoke-virtual {p0, v1}, Lcom/htc/sunny2/RenderThreadHandler;->setAlwaysRequestRenderThreadRunningAfterProcess(Z)V

    .line 157
    iget-object v1, p0, Lcom/htc/sunny2/RenderThreadHandler;->mThreadLocker:Ljava/lang/Object;

    monitor-enter v1

    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/htc/sunny2/RenderThreadHandler;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/sunny2/RenderThreadHandler;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-eq v0, v2, :cond_1

    .line 159
    iget-object v0, p0, Lcom/htc/sunny2/RenderThreadHandler;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v0}, Lcom/htc/sunny2/RenderThread;->resumeThread()V

    .line 161
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public attachRenderThread(Lcom/htc/sunny2/RenderThread;)V
    .locals 3
    .parameter "renderThread"

    .prologue
    .line 175
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/htc/sunny2/RenderThreadHandler;->mIsReleased:Z

    if-ne v0, v1, :cond_0

    .line 176
    iget-object v0, p0, Lcom/htc/sunny2/RenderThreadHandler;->log_tag:Ljava/lang/String;

    const-string v1, "Can\'t attach RenderThread into released handler"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/RenderThreadHandler;->mThreadLocker:Ljava/lang/Object;

    monitor-enter v1

    .line 180
    :try_start_0
    iget-object v0, p0, Lcom/htc/sunny2/RenderThreadHandler;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-eq p1, v0, :cond_1

    if-nez p1, :cond_2

    :cond_1
    monitor-exit v1

    .line 199
    :goto_0
    return-void

    .line 182
    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/RenderThreadHandler;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/sunny2/RenderThreadHandler;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-eq p1, v0, :cond_3

    .line 185
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Can\'t attach to another RenderThread"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 188
    :cond_3
    :try_start_1
    iput-object p1, p0, Lcom/htc/sunny2/RenderThreadHandler;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    .line 190
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-ne v0, p1, :cond_4

    .line 191
    invoke-virtual {p1, p0}, Lcom/htc/sunny2/RenderThread;->pushActionIRT(Lcom/htc/sunny2/RenderThreadAction;)Z

    .line 197
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/RenderThreadHandler;->mIsReleased:Z

    .line 198
    monitor-exit v1

    goto :goto_0

    .line 194
    :cond_4
    invoke-virtual {p1, p0}, Lcom/htc/sunny2/RenderThread;->pushActionIHT(Lcom/htc/sunny2/RenderThreadAction;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public handleMessage(Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 166
    return-void
.end method

.method public hasMessages(I)Z
    .locals 4
    .parameter "what"

    .prologue
    .line 202
    iget-object v3, p0, Lcom/htc/sunny2/RenderThreadHandler;->mEvents:Ljava/util/List;

    monitor-enter v3

    .line 203
    :try_start_0
    iget-object v2, p0, Lcom/htc/sunny2/RenderThreadHandler;->mEvents:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;

    .line 204
    .local v1, m:Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;
    if-eqz v1, :cond_0

    .line 205
    iget v2, v1, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->what:I

    if-ne v2, p1, :cond_0

    .line 206
    const/4 v2, 0x1

    monitor-exit v3

    .line 210
    .end local v1           #m:Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;
    :goto_0
    return v2

    .line 209
    :cond_1
    monitor-exit v3

    .line 210
    const/4 v2, 0x0

    goto :goto_0

    .line 209
    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public onCancelIRT(Lcom/htc/sunny2/RenderThreadTask$CANCEL_REASON;)V
    .locals 0
    .parameter "cancelReason"

    .prologue
    .line 331
    return-void
.end method

.method public onDoActionIRT(IJ)Z
    .locals 11
    .parameter "frameIndex"
    .parameter "timeMillis"

    .prologue
    const-wide/16 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 87
    iget-object v5, p0, Lcom/htc/sunny2/RenderThreadHandler;->mEvents:Ljava/util/List;

    iget-object v6, p0, Lcom/htc/sunny2/RenderThreadHandler;->mQueued:Ljava/util/List;

    invoke-interface {v5, v8, v6}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 88
    iget-object v5, p0, Lcom/htc/sunny2/RenderThreadHandler;->mQueued:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 89
    iget-object v5, p0, Lcom/htc/sunny2/RenderThreadHandler;->mEvents:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v1

    .line 90
    .local v1, isEmpty:Z
    if-eqz v1, :cond_0

    .line 91
    invoke-virtual {p0, v8}, Lcom/htc/sunny2/RenderThreadHandler;->setAlwaysRequestRenderThreadRunningAfterProcess(Z)V

    .line 130
    :goto_0
    return v7

    .line 95
    :cond_0
    iput-boolean v7, p0, Lcom/htc/sunny2/RenderThreadHandler;->mInProcess:Z

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .local v0, deleys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;>;"
    :goto_1
    iget-object v5, p0, Lcom/htc/sunny2/RenderThreadHandler;->mEvents:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    .line 100
    iget-object v5, p0, Lcom/htc/sunny2/RenderThreadHandler;->mEvents:Ljava/util/List;

    invoke-interface {v5, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;

    .line 101
    .local v2, m:Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 102
    .local v3, time:J
    iget-wide v5, v2, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->when:J

    cmp-long v5, v5, v9

    if-gez v5, :cond_1

    .line 103
    invoke-virtual {v2}, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->recycle()V

    goto :goto_1

    .line 105
    :cond_1
    iget-object v5, v2, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->r:Ljava/lang/Runnable;

    if-eqz v5, :cond_2

    iget-wide v5, v2, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->when:J

    cmp-long v5, v5, v3

    if-gtz v5, :cond_2

    .line 107
    iget-object v5, v2, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->r:Ljava/lang/Runnable;

    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    .line 108
    iget-object v5, p0, Lcom/htc/sunny2/RenderThreadHandler;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    iput-boolean v7, v5, Lcom/htc/sunny2/RenderThread;->forceRenderOnce:Z

    .line 110
    invoke-virtual {v2}, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->recycle()V

    goto :goto_1

    .line 112
    :cond_2
    iget-wide v5, v2, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->when:J

    cmp-long v5, v5, v9

    if-eqz v5, :cond_3

    iget-wide v5, v2, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->when:J

    cmp-long v5, v5, v3

    if-gtz v5, :cond_4

    .line 114
    :cond_3
    iget-object v5, v2, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->target:Lcom/htc/sunny2/RenderThreadHandler;

    invoke-virtual {v5, v2}, Lcom/htc/sunny2/RenderThreadHandler;->handleMessage(Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;)V

    .line 115
    iget-object v5, p0, Lcom/htc/sunny2/RenderThreadHandler;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    iput-boolean v7, v5, Lcom/htc/sunny2/RenderThread;->forceRenderOnce:Z

    .line 117
    invoke-virtual {v2}, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->recycle()V

    goto :goto_1

    .line 120
    :cond_4
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 124
    .end local v2           #m:Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;
    .end local v3           #time:J
    :cond_5
    iget-object v5, p0, Lcom/htc/sunny2/RenderThreadHandler;->mEvents:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 126
    iput-boolean v8, p0, Lcom/htc/sunny2/RenderThreadHandler;->mInProcess:Z

    goto :goto_0
.end method

.method public post(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "runnable"

    .prologue
    .line 296
    invoke-static {}, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->obtain()Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;

    move-result-object v0

    .line 297
    .local v0, m:Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;
    iput-object p1, v0, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->r:Ljava/lang/Runnable;

    .line 299
    invoke-direct {p0, v0}, Lcom/htc/sunny2/RenderThreadHandler;->addMessage(Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;)V

    .line 300
    return-void
.end method

.method public postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)V
    .locals 1
    .parameter "what"
    .parameter "obj"
    .parameter "time"

    .prologue
    .line 287
    invoke-static {}, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->obtain()Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;

    move-result-object v0

    .line 288
    .local v0, m:Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;
    iput-object p1, v0, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->r:Ljava/lang/Runnable;

    .line 289
    iput-object p2, v0, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->obj:Ljava/lang/Object;

    .line 290
    iput-wide p3, v0, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->when:J

    .line 292
    invoke-direct {p0, v0}, Lcom/htc/sunny2/RenderThreadHandler;->addMessage(Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;)V

    .line 293
    return-void
.end method

.method public postDelayed(Ljava/lang/Runnable;J)V
    .locals 3
    .parameter "runnable"
    .parameter "delay"

    .prologue
    .line 303
    invoke-static {}, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->obtain()Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;

    move-result-object v0

    .line 304
    .local v0, m:Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;
    iput-object p1, v0, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->r:Ljava/lang/Runnable;

    .line 305
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    add-long/2addr v1, p2

    iput-wide v1, v0, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->when:J

    .line 307
    invoke-direct {p0, v0}, Lcom/htc/sunny2/RenderThreadHandler;->addMessage(Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;)V

    .line 308
    return-void
.end method

.method public release()V
    .locals 3

    .prologue
    .line 311
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/sunny2/RenderThreadHandler;->mIsReleased:Z

    .line 316
    :goto_0
    iget-object v1, p0, Lcom/htc/sunny2/RenderThreadHandler;->mEvents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 317
    iget-object v1, p0, Lcom/htc/sunny2/RenderThreadHandler;->mEvents:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;

    .line 318
    .local v0, m:Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;
    invoke-virtual {v0}, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->recycle()V

    goto :goto_0

    .line 324
    .end local v0           #m:Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;
    :cond_0
    iget-object v2, p0, Lcom/htc/sunny2/RenderThreadHandler;->mThreadLocker:Ljava/lang/Object;

    monitor-enter v2

    .line 325
    :try_start_0
    iget-object v1, p0, Lcom/htc/sunny2/RenderThreadHandler;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    if-eqz v1, :cond_1

    .line 326
    iget-object v1, p0, Lcom/htc/sunny2/RenderThreadHandler;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    invoke-virtual {v1, p0}, Lcom/htc/sunny2/RenderThread;->removeActionIRT(Lcom/htc/sunny2/RenderThreadAction;)Z

    .line 327
    :cond_1
    monitor-exit v2

    .line 328
    return-void

    .line 327
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeCallbacks(Ljava/lang/Runnable;)V
    .locals 5
    .parameter "runnable"

    .prologue
    .line 242
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 243
    .local v2, remove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;>;"
    iget-object v4, p0, Lcom/htc/sunny2/RenderThreadHandler;->mEvents:Ljava/util/List;

    monitor-enter v4

    .line 244
    :try_start_0
    iget-object v3, p0, Lcom/htc/sunny2/RenderThreadHandler;->mEvents:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;

    .line 245
    .local v1, m:Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;
    if-eqz v1, :cond_0

    .line 246
    iget-object v3, v1, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->target:Lcom/htc/sunny2/RenderThreadHandler;

    if-ne v3, p0, :cond_0

    iget-object v3, v1, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->r:Ljava/lang/Runnable;

    if-ne v3, p1, :cond_0

    .line 247
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    invoke-virtual {v1}, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->recycle()V

    goto :goto_0

    .line 251
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #m:Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 252
    invoke-direct {p0, v2}, Lcom/htc/sunny2/RenderThreadHandler;->removeMessage(Ljava/util/List;)V

    .line 253
    return-void
.end method

.method public removeCallbacks(Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 5
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 228
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 229
    .local v2, remove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;>;"
    iget-object v4, p0, Lcom/htc/sunny2/RenderThreadHandler;->mEvents:Ljava/util/List;

    monitor-enter v4

    .line 230
    :try_start_0
    iget-object v3, p0, Lcom/htc/sunny2/RenderThreadHandler;->mEvents:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;

    .line 231
    .local v1, m:Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;
    if-eqz v1, :cond_0

    .line 232
    iget-object v3, v1, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->target:Lcom/htc/sunny2/RenderThreadHandler;

    if-ne v3, p0, :cond_0

    iget-object v3, v1, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->r:Ljava/lang/Runnable;

    if-ne v3, p1, :cond_0

    iget-object v3, v1, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->obj:Ljava/lang/Object;

    if-ne v3, p2, :cond_0

    .line 233
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    invoke-virtual {v1}, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->recycle()V

    goto :goto_0

    .line 237
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #m:Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 238
    invoke-direct {p0, v2}, Lcom/htc/sunny2/RenderThreadHandler;->removeMessage(Ljava/util/List;)V

    .line 239
    return-void
.end method

.method public removeMessages(I)V
    .locals 5
    .parameter "what"

    .prologue
    .line 214
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 215
    .local v2, remove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;>;"
    iget-object v4, p0, Lcom/htc/sunny2/RenderThreadHandler;->mEvents:Ljava/util/List;

    monitor-enter v4

    .line 216
    :try_start_0
    iget-object v3, p0, Lcom/htc/sunny2/RenderThreadHandler;->mEvents:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;

    .line 217
    .local v1, m:Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;
    if-eqz v1, :cond_0

    .line 218
    iget-object v3, v1, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->target:Lcom/htc/sunny2/RenderThreadHandler;

    if-ne v3, p0, :cond_0

    iget v3, v1, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->what:I

    if-ne v3, p1, :cond_0

    .line 219
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    invoke-virtual {v1}, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->recycle()V

    goto :goto_0

    .line 223
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #m:Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 224
    invoke-direct {p0, v2}, Lcom/htc/sunny2/RenderThreadHandler;->removeMessage(Ljava/util/List;)V

    .line 225
    return-void
.end method

.method public sendEmptyMessage(I)V
    .locals 1
    .parameter "what"

    .prologue
    .line 256
    invoke-static {}, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->obtain()Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;

    move-result-object v0

    .line 257
    .local v0, m:Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;
    iput p1, v0, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->what:I

    .line 259
    invoke-direct {p0, v0}, Lcom/htc/sunny2/RenderThreadHandler;->addMessage(Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;)V

    .line 260
    return-void
.end method

.method public sendEmptyMessage(ILjava/lang/Object;)V
    .locals 1
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 279
    invoke-static {}, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->obtain()Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;

    move-result-object v0

    .line 280
    .local v0, m:Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;
    iput p1, v0, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->what:I

    .line 281
    iput-object p2, v0, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->obj:Ljava/lang/Object;

    .line 283
    invoke-direct {p0, v0}, Lcom/htc/sunny2/RenderThreadHandler;->addMessage(Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;)V

    .line 284
    return-void
.end method

.method public sendEmptyMessageAtTime(IJ)V
    .locals 1
    .parameter "what"
    .parameter "time"

    .prologue
    .line 271
    invoke-static {}, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->obtain()Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;

    move-result-object v0

    .line 272
    .local v0, m:Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;
    iput p1, v0, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->what:I

    .line 273
    iput-wide p2, v0, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->when:J

    .line 275
    invoke-direct {p0, v0}, Lcom/htc/sunny2/RenderThreadHandler;->addMessage(Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;)V

    .line 276
    return-void
.end method

.method public sendEmptyMessageDelayed(II)V
    .locals 5
    .parameter "what"
    .parameter "delay"

    .prologue
    .line 263
    invoke-static {}, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->obtain()Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;

    move-result-object v0

    .line 264
    .local v0, m:Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;
    iput p1, v0, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->what:I

    .line 265
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    int-to-long v3, p2

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->when:J

    .line 267
    invoke-direct {p0, v0}, Lcom/htc/sunny2/RenderThreadHandler;->addMessage(Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;)V

    .line 268
    return-void
.end method
