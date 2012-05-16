.class Lcom/htc/sunny2/common/SimpleAsyncTask$2;
.super Lcom/htc/sunny2/common/SimpleAsyncTask$WorkerRunnable;
.source "SimpleAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny2/common/SimpleAsyncTask;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/sunny2/common/SimpleAsyncTask$WorkerRunnable",
        "<TParams;TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny2/common/SimpleAsyncTask;


# direct methods
.method constructor <init>(Lcom/htc/sunny2/common/SimpleAsyncTask;)V
    .locals 1
    .parameter

    .prologue
    .line 86
    .local p0, this:Lcom/htc/sunny2/common/SimpleAsyncTask$2;,"Lcom/htc/sunny2/common/SimpleAsyncTask.2;"
    iput-object p1, p0, Lcom/htc/sunny2/common/SimpleAsyncTask$2;->this$0:Lcom/htc/sunny2/common/SimpleAsyncTask;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/sunny2/common/SimpleAsyncTask$WorkerRunnable;-><init>(Lcom/htc/sunny2/common/SimpleAsyncTask$1;)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 89
    .local p0, this:Lcom/htc/sunny2/common/SimpleAsyncTask$2;,"Lcom/htc/sunny2/common/SimpleAsyncTask.2;"
    iget-object v0, p0, Lcom/htc/sunny2/common/SimpleAsyncTask$2;->this$0:Lcom/htc/sunny2/common/SimpleAsyncTask;

    #getter for: Lcom/htc/sunny2/common/SimpleAsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/htc/sunny2/common/SimpleAsyncTask;->access$300(Lcom/htc/sunny2/common/SimpleAsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 90
    iget-object v0, p0, Lcom/htc/sunny2/common/SimpleAsyncTask$2;->this$0:Lcom/htc/sunny2/common/SimpleAsyncTask;

    iget-object v1, p0, Lcom/htc/sunny2/common/SimpleAsyncTask$2;->this$0:Lcom/htc/sunny2/common/SimpleAsyncTask;

    iget-object v2, p0, Lcom/htc/sunny2/common/SimpleAsyncTask$WorkerRunnable;->mParams:[Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/common/SimpleAsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    #calls: Lcom/htc/sunny2/common/SimpleAsyncTask;->postResult(Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {v0, v1}, Lcom/htc/sunny2/common/SimpleAsyncTask;->access$400(Lcom/htc/sunny2/common/SimpleAsyncTask;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
