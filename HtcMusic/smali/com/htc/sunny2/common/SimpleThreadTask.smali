.class public abstract Lcom/htc/sunny2/common/SimpleThreadTask;
.super Ljava/lang/Thread;
.source "SimpleThreadTask.java"

# interfaces
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IMessengerHost;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/common/SimpleThreadTask$ThreadTask;,
        Lcom/htc/sunny2/common/SimpleThreadTask$Status;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Thread;",
        "Lcom/htc/sunny2/frameworks/base/interfaces/IMessengerHost;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SimpleThreadTask"

.field private static final POST_RESULT:I = 0x1


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private final mLocker:Ljava/lang/Object;

.field private mQueue:Ljava/util/List;

.field private mRunning:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    .local p0, this:Lcom/htc/sunny2/common/SimpleThreadTask;,"Lcom/htc/sunny2/common/SimpleThreadTask<TParams;TResult;>;"
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/common/SimpleThreadTask;->mLocker:Ljava/lang/Object;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/common/SimpleThreadTask;->mQueue:Ljava/util/List;

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/common/SimpleThreadTask;->mRunning:Z

    .line 122
    new-instance v0, Lcom/htc/sunny2/common/SimpleThreadTask$1;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/common/SimpleThreadTask$1;-><init>(Lcom/htc/sunny2/common/SimpleThreadTask;)V

    iput-object v0, p0, Lcom/htc/sunny2/common/SimpleThreadTask;->mHandler:Landroid/os/Handler;

    .line 173
    return-void
.end method

.method private onPostResult(Lcom/htc/sunny2/common/SimpleThreadTask$ThreadTask;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/sunny2/common/SimpleThreadTask",
            "<TParams;TResult;>.ThreadTask;)V"
        }
    .end annotation

    .prologue
    .line 109
    .local p0, this:Lcom/htc/sunny2/common/SimpleThreadTask;,"Lcom/htc/sunny2/common/SimpleThreadTask<TParams;TResult;>;"
    .local p1, task:Lcom/htc/sunny2/common/SimpleThreadTask$ThreadTask;,"Lcom/htc/sunny2/common/SimpleThreadTask<TParams;TResult;>.ThreadTask;"
    invoke-virtual {p1}, Lcom/htc/sunny2/common/SimpleThreadTask$ThreadTask;->getResult()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/common/SimpleThreadTask;->onPostExecute(Ljava/lang/Object;)V

    .line 110
    return-void
.end method


# virtual methods
.method protected abstract doInBackground(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TParams;)TResult;"
        }
    .end annotation
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 135
    .local p0, this:Lcom/htc/sunny2/common/SimpleThreadTask;,"Lcom/htc/sunny2/common/SimpleThreadTask<TParams;TResult;>;"
    iget-object v0, p0, Lcom/htc/sunny2/common/SimpleThreadTask;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getStatus()Lcom/htc/sunny2/common/SimpleThreadTask$Status;
    .locals 3

    .prologue
    .line 95
    .local p0, this:Lcom/htc/sunny2/common/SimpleThreadTask;,"Lcom/htc/sunny2/common/SimpleThreadTask<TParams;TResult;>;"
    iget-object v2, p0, Lcom/htc/sunny2/common/SimpleThreadTask;->mLocker:Ljava/lang/Object;

    monitor-enter v2

    .line 97
    :try_start_0
    sget-object v0, Lcom/htc/sunny2/common/SimpleThreadTask$Status;->PENDING:Lcom/htc/sunny2/common/SimpleThreadTask$Status;

    .line 98
    .local v0, status:Lcom/htc/sunny2/common/SimpleThreadTask$Status;
    iget-object v1, p0, Lcom/htc/sunny2/common/SimpleThreadTask;->mQueue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 99
    sget-object v0, Lcom/htc/sunny2/common/SimpleThreadTask$Status;->FINISHED:Lcom/htc/sunny2/common/SimpleThreadTask$Status;

    .line 103
    :goto_0
    monitor-exit v2

    return-object v0

    .line 101
    :cond_0
    sget-object v0, Lcom/htc/sunny2/common/SimpleThreadTask$Status;->RUNNING:Lcom/htc/sunny2/common/SimpleThreadTask$Status;

    goto :goto_0

    .line 104
    .end local v0           #status:Lcom/htc/sunny2/common/SimpleThreadTask$Status;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected abstract onCancelled(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation
.end method

.method public onMessage(Landroid/os/Message;)Z
    .locals 2
    .parameter "message"

    .prologue
    .line 140
    .local p0, this:Lcom/htc/sunny2/common/SimpleThreadTask;,"Lcom/htc/sunny2/common/SimpleThreadTask<TParams;TResult;>;"
    const/4 v0, 0x0

    .line 142
    .local v0, bResult:Z
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 152
    :goto_0
    return v0

    .line 145
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/htc/sunny2/common/SimpleThreadTask$ThreadTask;

    invoke-direct {p0, v1}, Lcom/htc/sunny2/common/SimpleThreadTask;->onPostResult(Lcom/htc/sunny2/common/SimpleThreadTask$ThreadTask;)V

    goto :goto_0

    .line 142
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected abstract onPostExecute(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation
.end method

.method public onPostMessage(ILjava/lang/Object;I)V
    .locals 4
    .parameter "nMessageID"
    .parameter "obj"
    .parameter "delayMillis"

    .prologue
    .line 157
    .local p0, this:Lcom/htc/sunny2/common/SimpleThreadTask;,"Lcom/htc/sunny2/common/SimpleThreadTask<TParams;TResult;>;"
    iget-object v0, p0, Lcom/htc/sunny2/common/SimpleThreadTask;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/htc/sunny2/common/SimpleThreadTask;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/sunny2/common/SimpleThreadTask;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 160
    :cond_0
    return-void
.end method

.method protected abstract onPreExecute(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TParams;)V"
        }
    .end annotation
.end method

.method public onRemoveMessage(I)V
    .locals 1
    .parameter "nMessageID"

    .prologue
    .line 164
    .local p0, this:Lcom/htc/sunny2/common/SimpleThreadTask;,"Lcom/htc/sunny2/common/SimpleThreadTask<TParams;TResult;>;"
    iget-object v0, p0, Lcom/htc/sunny2/common/SimpleThreadTask;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/htc/sunny2/common/SimpleThreadTask;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 166
    :cond_0
    return-void
.end method

.method public postStop()V
    .locals 2

    .prologue
    .line 85
    .local p0, this:Lcom/htc/sunny2/common/SimpleThreadTask;,"Lcom/htc/sunny2/common/SimpleThreadTask<TParams;TResult;>;"
    iget-object v1, p0, Lcom/htc/sunny2/common/SimpleThreadTask;->mLocker:Ljava/lang/Object;

    monitor-enter v1

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/htc/sunny2/common/SimpleThreadTask;->mQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/common/SimpleThreadTask;->mRunning:Z

    .line 89
    iget-object v0, p0, Lcom/htc/sunny2/common/SimpleThreadTask;->mLocker:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 91
    monitor-exit v1

    .line 92
    return-void

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public postTask(Ljava/lang/Object;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TParams;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, this:Lcom/htc/sunny2/common/SimpleThreadTask;,"Lcom/htc/sunny2/common/SimpleThreadTask<TParams;TResult;>;"
    .local p1, params:Ljava/lang/Object;,"TParams;"
    iget-object v1, p0, Lcom/htc/sunny2/common/SimpleThreadTask;->mLocker:Ljava/lang/Object;

    monitor-enter v1

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/htc/sunny2/common/SimpleThreadTask;->mQueue:Ljava/util/List;

    new-instance v2, Lcom/htc/sunny2/common/SimpleThreadTask$ThreadTask;

    iget-object v3, p0, Lcom/htc/sunny2/common/SimpleThreadTask;->mQueue:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, p0, v3, p1}, Lcom/htc/sunny2/common/SimpleThreadTask$ThreadTask;-><init>(Lcom/htc/sunny2/common/SimpleThreadTask;ILjava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/common/SimpleThreadTask;->onPreExecute(Ljava/lang/Object;)V

    .line 79
    iget-object v0, p0, Lcom/htc/sunny2/common/SimpleThreadTask;->mLocker:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 81
    monitor-exit v1

    .line 82
    return-void

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 30
    .local p0, this:Lcom/htc/sunny2/common/SimpleThreadTask;,"Lcom/htc/sunny2/common/SimpleThreadTask<TParams;TResult;>;"
    :goto_0
    iget-boolean v1, p0, Lcom/htc/sunny2/common/SimpleThreadTask;->mRunning:Z

    if-eqz v1, :cond_2

    .line 32
    iget-object v2, p0, Lcom/htc/sunny2/common/SimpleThreadTask;->mLocker:Ljava/lang/Object;

    monitor-enter v2

    .line 36
    :try_start_0
    iget-object v1, p0, Lcom/htc/sunny2/common/SimpleThreadTask;->mQueue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 39
    iget-object v1, p0, Lcom/htc/sunny2/common/SimpleThreadTask;->mLocker:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 48
    :cond_0
    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/htc/sunny2/common/SimpleThreadTask;->mQueue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 51
    monitor-exit v2

    goto :goto_0

    .line 69
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 56
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/htc/sunny2/common/SimpleThreadTask;->mQueue:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/common/SimpleThreadTask$ThreadTask;

    .line 59
    .local v0, task:Lcom/htc/sunny2/common/SimpleThreadTask$ThreadTask;,"Lcom/htc/sunny2/common/SimpleThreadTask<TParams;TResult;>.ThreadTask;"
    invoke-virtual {v0}, Lcom/htc/sunny2/common/SimpleThreadTask$ThreadTask;->getParams()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/common/SimpleThreadTask;->doInBackground(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/common/SimpleThreadTask$ThreadTask;->setResult(Ljava/lang/Object;)V

    .line 62
    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v0, v3}, Lcom/htc/sunny2/common/SimpleThreadTask;->onPostMessage(ILjava/lang/Object;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 69
    .end local v0           #task:Lcom/htc/sunny2/common/SimpleThreadTask$ThreadTask;,"Lcom/htc/sunny2/common/SimpleThreadTask<TParams;TResult;>.ThreadTask;"
    :goto_2
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 72
    :cond_2
    return-void

    .line 65
    :catch_0
    move-exception v1

    goto :goto_2

    .line 42
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 132
    .local p0, this:Lcom/htc/sunny2/common/SimpleThreadTask;,"Lcom/htc/sunny2/common/SimpleThreadTask<TParams;TResult;>;"
    return-void
.end method
