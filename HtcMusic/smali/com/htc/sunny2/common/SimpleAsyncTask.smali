.class public abstract Lcom/htc/sunny2/common/SimpleAsyncTask;
.super Ljava/lang/Object;
.source "SimpleAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/common/SimpleAsyncTask$4;,
        Lcom/htc/sunny2/common/SimpleAsyncTask$SerialExecutor;,
        Lcom/htc/sunny2/common/SimpleAsyncTask$SimpleAsyncTaskResult;,
        Lcom/htc/sunny2/common/SimpleAsyncTask$WorkerRunnable;,
        Lcom/htc/sunny2/common/SimpleAsyncTask$InternalHandler;,
        Lcom/htc/sunny2/common/SimpleAsyncTask$Status;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final CORE_POOL_SIZE:I = 0x5

.field private static final KEEP_ALIVE:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "SimpleAsyncTask"

.field private static final MAXIMUM_POOL_SIZE:I = 0x80

.field private static final MESSAGE_POST_PROGRESS:I = 0x2

.field private static final MESSAGE_POST_RESULT:I = 0x1

.field public static final SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

.field public static final THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static volatile sDefaultExecutor:Ljava/util/concurrent/Executor;

.field private static final sHandler:Lcom/htc/sunny2/common/SimpleAsyncTask$InternalHandler;

.field private static final sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final mFuture:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask",
            "<TResult;>;"
        }
    .end annotation
.end field

.field private volatile mStatus:Lcom/htc/sunny2/common/SimpleAsyncTask$Status;

.field private final mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mWorker:Lcom/htc/sunny2/common/SimpleAsyncTask$WorkerRunnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/sunny2/common/SimpleAsyncTask$WorkerRunnable",
            "<TParams;TResult;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 51
    new-instance v0, Lcom/htc/sunny2/common/SimpleAsyncTask$1;

    invoke-direct {v0}, Lcom/htc/sunny2/common/SimpleAsyncTask$1;-><init>()V

    sput-object v0, Lcom/htc/sunny2/common/SimpleAsyncTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 62
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/htc/sunny2/common/SimpleAsyncTask;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    .line 63
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x5

    const/16 v2, 0x80

    const-wide/16 v3, 0x1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v6, Lcom/htc/sunny2/common/SimpleAsyncTask;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    sget-object v7, Lcom/htc/sunny2/common/SimpleAsyncTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/htc/sunny2/common/SimpleAsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 66
    new-instance v0, Lcom/htc/sunny2/common/SimpleAsyncTask$SerialExecutor;

    invoke-direct {v0, v8}, Lcom/htc/sunny2/common/SimpleAsyncTask$SerialExecutor;-><init>(Lcom/htc/sunny2/common/SimpleAsyncTask$1;)V

    sput-object v0, Lcom/htc/sunny2/common/SimpleAsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 69
    new-instance v0, Lcom/htc/sunny2/common/SimpleAsyncTask$InternalHandler;

    invoke-direct {v0, v8}, Lcom/htc/sunny2/common/SimpleAsyncTask$InternalHandler;-><init>(Lcom/htc/sunny2/common/SimpleAsyncTask$1;)V

    sput-object v0, Lcom/htc/sunny2/common/SimpleAsyncTask;->sHandler:Lcom/htc/sunny2/common/SimpleAsyncTask$InternalHandler;

    .line 70
    sget-object v0, Lcom/htc/sunny2/common/SimpleAsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    sput-object v0, Lcom/htc/sunny2/common/SimpleAsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 84
    .local p0, this:Lcom/htc/sunny2/common/SimpleAsyncTask;,"Lcom/htc/sunny2/common/SimpleAsyncTask<TParams;TResult;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 72
    sget-object v0, Lcom/htc/sunny2/common/SimpleAsyncTask$Status;->PENDING:Lcom/htc/sunny2/common/SimpleAsyncTask$Status;

    iput-object v0, p0, Lcom/htc/sunny2/common/SimpleAsyncTask;->mStatus:Lcom/htc/sunny2/common/SimpleAsyncTask$Status;

    .line 78
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/common/SimpleAsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 85
    new-instance v0, Lcom/htc/sunny2/common/SimpleAsyncTask$2;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/common/SimpleAsyncTask$2;-><init>(Lcom/htc/sunny2/common/SimpleAsyncTask;)V

    iput-object v0, p0, Lcom/htc/sunny2/common/SimpleAsyncTask;->mWorker:Lcom/htc/sunny2/common/SimpleAsyncTask$WorkerRunnable;

    .line 94
    new-instance v0, Lcom/htc/sunny2/common/SimpleAsyncTask$3;

    iget-object v1, p0, Lcom/htc/sunny2/common/SimpleAsyncTask;->mWorker:Lcom/htc/sunny2/common/SimpleAsyncTask$WorkerRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/sunny2/common/SimpleAsyncTask$3;-><init>(Lcom/htc/sunny2/common/SimpleAsyncTask;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/htc/sunny2/common/SimpleAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    .line 123
    return-void
.end method

.method static synthetic access$300(Lcom/htc/sunny2/common/SimpleAsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/htc/sunny2/common/SimpleAsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/sunny2/common/SimpleAsyncTask;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/htc/sunny2/common/SimpleAsyncTask;->postResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/sunny2/common/SimpleAsyncTask;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/htc/sunny2/common/SimpleAsyncTask;->postResultIfNotInvoked(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/sunny2/common/SimpleAsyncTask;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/htc/sunny2/common/SimpleAsyncTask;->finish(Ljava/lang/Object;)V

    return-void
.end method

.method public static execute(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "runnable"

    .prologue
    .line 190
    sget-object v0, Lcom/htc/sunny2/common/SimpleAsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 191
    return-void
.end method

.method private varargs executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/htc/sunny2/common/SimpleAsyncTask;
    .locals 2
    .parameter "exec"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "[TParams;)",
            "Lcom/htc/sunny2/common/SimpleAsyncTask",
            "<TParams;TResult;>;"
        }
    .end annotation

    .prologue
    .line 130
    .local p0, this:Lcom/htc/sunny2/common/SimpleAsyncTask;,"Lcom/htc/sunny2/common/SimpleAsyncTask<TParams;TResult;>;"
    .local p2, params:[Ljava/lang/Object;,"[TParams;"
    iget-object v0, p0, Lcom/htc/sunny2/common/SimpleAsyncTask;->mStatus:Lcom/htc/sunny2/common/SimpleAsyncTask$Status;

    sget-object v1, Lcom/htc/sunny2/common/SimpleAsyncTask$Status;->PENDING:Lcom/htc/sunny2/common/SimpleAsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 132
    sget-object v0, Lcom/htc/sunny2/common/SimpleAsyncTask$4;->$SwitchMap$com$htc$sunny2$common$SimpleAsyncTask$Status:[I

    iget-object v1, p0, Lcom/htc/sunny2/common/SimpleAsyncTask;->mStatus:Lcom/htc/sunny2/common/SimpleAsyncTask$Status;

    invoke-virtual {v1}, Lcom/htc/sunny2/common/SimpleAsyncTask$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 144
    :cond_0
    sget-object v0, Lcom/htc/sunny2/common/SimpleAsyncTask$Status;->RUNNING:Lcom/htc/sunny2/common/SimpleAsyncTask$Status;

    iput-object v0, p0, Lcom/htc/sunny2/common/SimpleAsyncTask;->mStatus:Lcom/htc/sunny2/common/SimpleAsyncTask$Status;

    .line 146
    invoke-virtual {p0}, Lcom/htc/sunny2/common/SimpleAsyncTask;->onPreExecute()V

    .line 148
    iget-object v0, p0, Lcom/htc/sunny2/common/SimpleAsyncTask;->mWorker:Lcom/htc/sunny2/common/SimpleAsyncTask$WorkerRunnable;

    iput-object p2, v0, Lcom/htc/sunny2/common/SimpleAsyncTask$WorkerRunnable;->mParams:[Ljava/lang/Object;

    .line 149
    iget-object v0, p0, Lcom/htc/sunny2/common/SimpleAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 151
    return-object p0

    .line 135
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task is already running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :pswitch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private finish(Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 210
    .local p0, this:Lcom/htc/sunny2/common/SimpleAsyncTask;,"Lcom/htc/sunny2/common/SimpleAsyncTask<TParams;TResult;>;"
    .local p1, result:Ljava/lang/Object;,"TResult;"
    invoke-virtual {p0}, Lcom/htc/sunny2/common/SimpleAsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/common/SimpleAsyncTask;->onCancelled(Ljava/lang/Object;)V

    .line 215
    :goto_0
    sget-object v0, Lcom/htc/sunny2/common/SimpleAsyncTask$Status;->FINISHED:Lcom/htc/sunny2/common/SimpleAsyncTask$Status;

    iput-object v0, p0, Lcom/htc/sunny2/common/SimpleAsyncTask;->mStatus:Lcom/htc/sunny2/common/SimpleAsyncTask$Status;

    .line 216
    return-void

    .line 213
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/common/SimpleAsyncTask;->onPostExecute(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private postResult(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)TResult;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/htc/sunny2/common/SimpleAsyncTask;,"Lcom/htc/sunny2/common/SimpleAsyncTask<TParams;TResult;>;"
    .local p1, result:Ljava/lang/Object;,"TResult;"
    const/4 v5, 0x1

    .line 204
    sget-object v1, Lcom/htc/sunny2/common/SimpleAsyncTask;->sHandler:Lcom/htc/sunny2/common/SimpleAsyncTask$InternalHandler;

    new-instance v2, Lcom/htc/sunny2/common/SimpleAsyncTask$SimpleAsyncTaskResult;

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v2, p0, v3}, Lcom/htc/sunny2/common/SimpleAsyncTask$SimpleAsyncTaskResult;-><init>(Lcom/htc/sunny2/common/SimpleAsyncTask;[Ljava/lang/Object;)V

    invoke-virtual {v1, v5, v2}, Lcom/htc/sunny2/common/SimpleAsyncTask$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 205
    .local v0, message:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 206
    return-object p1
.end method

.method private postResultIfNotInvoked(Ljava/lang/Object;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 195
    .local p0, this:Lcom/htc/sunny2/common/SimpleAsyncTask;,"Lcom/htc/sunny2/common/SimpleAsyncTask<TParams;TResult;>;"
    .local p1, result:Ljava/lang/Object;,"TResult;"
    iget-object v1, p0, Lcom/htc/sunny2/common/SimpleAsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    .line 196
    .local v0, wasTaskInvoked:Z
    if-nez v0, :cond_0

    .line 198
    invoke-direct {p0, p1}, Lcom/htc/sunny2/common/SimpleAsyncTask;->postResult(Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    :cond_0
    return-void
.end method


# virtual methods
.method public final cancel(Z)Z
    .locals 1
    .parameter "mayInterruptIfRunning"

    .prologue
    .line 177
    .local p0, this:Lcom/htc/sunny2/common/SimpleAsyncTask;,"Lcom/htc/sunny2/common/SimpleAsyncTask<TParams;TResult;>;"
    iget-object v0, p0, Lcom/htc/sunny2/common/SimpleAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method protected varargs abstract doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation
.end method

.method public final varargs execute([Ljava/lang/Object;)Lcom/htc/sunny2/common/SimpleAsyncTask;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)",
            "Lcom/htc/sunny2/common/SimpleAsyncTask",
            "<TParams;TResult;>;"
        }
    .end annotation

    .prologue
    .line 126
    .local p0, this:Lcom/htc/sunny2/common/SimpleAsyncTask;,"Lcom/htc/sunny2/common/SimpleAsyncTask<TParams;TResult;>;"
    .local p1, params:[Ljava/lang/Object;,"[TParams;"
    sget-object v0, Lcom/htc/sunny2/common/SimpleAsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {p0, v0, p1}, Lcom/htc/sunny2/common/SimpleAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/htc/sunny2/common/SimpleAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public final get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 181
    .local p0, this:Lcom/htc/sunny2/common/SimpleAsyncTask;,"Lcom/htc/sunny2/common/SimpleAsyncTask<TParams;TResult;>;"
    iget-object v0, p0, Lcom/htc/sunny2/common/SimpleAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .parameter "timeout"
    .parameter "unit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 185
    .local p0, this:Lcom/htc/sunny2/common/SimpleAsyncTask;,"Lcom/htc/sunny2/common/SimpleAsyncTask<TParams;TResult;>;"
    iget-object v0, p0, Lcom/htc/sunny2/common/SimpleAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getStatus()Lcom/htc/sunny2/common/SimpleAsyncTask$Status;
    .locals 1

    .prologue
    .line 169
    .local p0, this:Lcom/htc/sunny2/common/SimpleAsyncTask;,"Lcom/htc/sunny2/common/SimpleAsyncTask<TParams;TResult;>;"
    iget-object v0, p0, Lcom/htc/sunny2/common/SimpleAsyncTask;->mStatus:Lcom/htc/sunny2/common/SimpleAsyncTask$Status;

    return-object v0
.end method

.method public final isCancelled()Z
    .locals 1

    .prologue
    .line 173
    .local p0, this:Lcom/htc/sunny2/common/SimpleAsyncTask;,"Lcom/htc/sunny2/common/SimpleAsyncTask<TParams;TResult;>;"
    iget-object v0, p0, Lcom/htc/sunny2/common/SimpleAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->isCancelled()Z

    move-result v0

    return v0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 162
    .local p0, this:Lcom/htc/sunny2/common/SimpleAsyncTask;,"Lcom/htc/sunny2/common/SimpleAsyncTask<TParams;TResult;>;"
    return-void
.end method

.method protected onCancelled(Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 165
    .local p0, this:Lcom/htc/sunny2/common/SimpleAsyncTask;,"Lcom/htc/sunny2/common/SimpleAsyncTask<TParams;TResult;>;"
    .local p1, result:Ljava/lang/Object;,"TResult;"
    invoke-virtual {p0}, Lcom/htc/sunny2/common/SimpleAsyncTask;->onCancelled()V

    .line 166
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 161
    .local p0, this:Lcom/htc/sunny2/common/SimpleAsyncTask;,"Lcom/htc/sunny2/common/SimpleAsyncTask<TParams;TResult;>;"
    .local p1, result:Ljava/lang/Object;,"TResult;"
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 160
    .local p0, this:Lcom/htc/sunny2/common/SimpleAsyncTask;,"Lcom/htc/sunny2/common/SimpleAsyncTask<TParams;TResult;>;"
    return-void
.end method
