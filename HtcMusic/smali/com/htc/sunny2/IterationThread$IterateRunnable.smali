.class Lcom/htc/sunny2/IterationThread$IterateRunnable;
.super Ljava/lang/Object;
.source "IterationThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/IterationThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IterateRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny2/IterationThread;


# direct methods
.method private constructor <init>(Lcom/htc/sunny2/IterationThread;)V
    .locals 0
    .parameter

    .prologue
    .line 221
    iput-object p1, p0, Lcom/htc/sunny2/IterationThread$IterateRunnable;->this$0:Lcom/htc/sunny2/IterationThread;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/sunny2/IterationThread;Lcom/htc/sunny2/IterationThread$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 221
    invoke-direct {p0, p1}, Lcom/htc/sunny2/IterationThread$IterateRunnable;-><init>(Lcom/htc/sunny2/IterationThread;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 225
    iget-object v1, p0, Lcom/htc/sunny2/IterationThread$IterateRunnable;->this$0:Lcom/htc/sunny2/IterationThread;

    invoke-virtual {v1}, Lcom/htc/sunny2/IterationThread;->iterate()Z

    move-result v0

    .line 228
    .local v0, continueToRun:Z
    iget-object v1, p0, Lcom/htc/sunny2/IterationThread$IterateRunnable;->this$0:Lcom/htc/sunny2/IterationThread;

    #getter for: Lcom/htc/sunny2/IterationThread;->modeChangeLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v1}, Lcom/htc/sunny2/IterationThread;->access$100(Lcom/htc/sunny2/IterationThread;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 230
    :try_start_0
    iget-object v1, p0, Lcom/htc/sunny2/IterationThread$IterateRunnable;->this$0:Lcom/htc/sunny2/IterationThread;

    #getter for: Lcom/htc/sunny2/IterationThread;->mResumeRequest:Z
    invoke-static {v1}, Lcom/htc/sunny2/IterationThread;->access$200(Lcom/htc/sunny2/IterationThread;)Z

    move-result v1

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/IterationThread$IterateRunnable;->this$0:Lcom/htc/sunny2/IterationThread;

    #getter for: Lcom/htc/sunny2/IterationThread;->mPause:Z
    invoke-static {v1}, Lcom/htc/sunny2/IterationThread;->access$300(Lcom/htc/sunny2/IterationThread;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 231
    const/4 v0, 0x1

    .line 233
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/IterationThread$IterateRunnable;->this$0:Lcom/htc/sunny2/IterationThread;

    const/4 v2, 0x0

    #setter for: Lcom/htc/sunny2/IterationThread;->mResumeRequest:Z
    invoke-static {v1, v2}, Lcom/htc/sunny2/IterationThread;->access$202(Lcom/htc/sunny2/IterationThread;Z)Z

    .line 235
    iget-object v1, p0, Lcom/htc/sunny2/IterationThread$IterateRunnable;->this$0:Lcom/htc/sunny2/IterationThread;

    #getter for: Lcom/htc/sunny2/IterationThread;->mPause:Z
    invoke-static {v1}, Lcom/htc/sunny2/IterationThread;->access$300(Lcom/htc/sunny2/IterationThread;)Z

    move-result v1

    if-nez v1, :cond_1

    if-ne v0, v3, :cond_1

    .line 236
    iget-object v1, p0, Lcom/htc/sunny2/IterationThread$IterateRunnable;->this$0:Lcom/htc/sunny2/IterationThread;

    #getter for: Lcom/htc/sunny2/IterationThread;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/sunny2/IterationThread;->access$400(Lcom/htc/sunny2/IterationThread;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 237
    iget-object v1, p0, Lcom/htc/sunny2/IterationThread$IterateRunnable;->this$0:Lcom/htc/sunny2/IterationThread;

    const/4 v2, 0x0

    #setter for: Lcom/htc/sunny2/IterationThread;->mIsPaused:Z
    invoke-static {v1, v2}, Lcom/htc/sunny2/IterationThread;->access$502(Lcom/htc/sunny2/IterationThread;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 249
    :goto_0
    iget-object v1, p0, Lcom/htc/sunny2/IterationThread$IterateRunnable;->this$0:Lcom/htc/sunny2/IterationThread;

    #getter for: Lcom/htc/sunny2/IterationThread;->modeChangeLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v1}, Lcom/htc/sunny2/IterationThread;->access$100(Lcom/htc/sunny2/IterationThread;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 251
    return-void

    .line 240
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/htc/sunny2/IterationThread$IterateRunnable;->this$0:Lcom/htc/sunny2/IterationThread;

    #getter for: Lcom/htc/sunny2/IterationThread;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/sunny2/IterationThread;->access$400(Lcom/htc/sunny2/IterationThread;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 241
    iget-object v1, p0, Lcom/htc/sunny2/IterationThread$IterateRunnable;->this$0:Lcom/htc/sunny2/IterationThread;

    const/4 v2, 0x1

    #setter for: Lcom/htc/sunny2/IterationThread;->mPause:Z
    invoke-static {v1, v2}, Lcom/htc/sunny2/IterationThread;->access$302(Lcom/htc/sunny2/IterationThread;Z)Z

    .line 242
    iget-object v1, p0, Lcom/htc/sunny2/IterationThread$IterateRunnable;->this$0:Lcom/htc/sunny2/IterationThread;

    const/4 v2, 0x1

    #setter for: Lcom/htc/sunny2/IterationThread;->mIsPaused:Z
    invoke-static {v1, v2}, Lcom/htc/sunny2/IterationThread;->access$502(Lcom/htc/sunny2/IterationThread;Z)Z

    .line 243
    iget-object v1, p0, Lcom/htc/sunny2/IterationThread$IterateRunnable;->this$0:Lcom/htc/sunny2/IterationThread;

    #getter for: Lcom/htc/sunny2/IterationThread;->mPauseChecker:Ljava/lang/Object;
    invoke-static {v1}, Lcom/htc/sunny2/IterationThread;->access$600(Lcom/htc/sunny2/IterationThread;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 244
    :try_start_2
    iget-object v1, p0, Lcom/htc/sunny2/IterationThread$IterateRunnable;->this$0:Lcom/htc/sunny2/IterationThread;

    #getter for: Lcom/htc/sunny2/IterationThread;->mPauseChecker:Ljava/lang/Object;
    invoke-static {v1}, Lcom/htc/sunny2/IterationThread;->access$600(Lcom/htc/sunny2/IterationThread;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 245
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 249
    :catchall_1
    move-exception v1

    iget-object v2, p0, Lcom/htc/sunny2/IterationThread$IterateRunnable;->this$0:Lcom/htc/sunny2/IterationThread;

    #getter for: Lcom/htc/sunny2/IterationThread;->modeChangeLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v2}, Lcom/htc/sunny2/IterationThread;->access$100(Lcom/htc/sunny2/IterationThread;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method
