.class Lcom/htc/sunny2/common/SimpleAsyncTask$SerialExecutor$1;
.super Ljava/lang/Object;
.source "SimpleAsyncTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny2/common/SimpleAsyncTask$SerialExecutor;->execute(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny2/common/SimpleAsyncTask$SerialExecutor;

.field final synthetic val$r:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/htc/sunny2/common/SimpleAsyncTask$SerialExecutor;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 255
    iput-object p1, p0, Lcom/htc/sunny2/common/SimpleAsyncTask$SerialExecutor$1;->this$0:Lcom/htc/sunny2/common/SimpleAsyncTask$SerialExecutor;

    iput-object p2, p0, Lcom/htc/sunny2/common/SimpleAsyncTask$SerialExecutor$1;->val$r:Ljava/lang/Runnable;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 260
    :try_start_0
    iget-object v0, p0, Lcom/htc/sunny2/common/SimpleAsyncTask$SerialExecutor$1;->val$r:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    iget-object v0, p0, Lcom/htc/sunny2/common/SimpleAsyncTask$SerialExecutor$1;->this$0:Lcom/htc/sunny2/common/SimpleAsyncTask$SerialExecutor;

    invoke-virtual {v0}, Lcom/htc/sunny2/common/SimpleAsyncTask$SerialExecutor;->scheduleNext()V

    .line 266
    return-void

    .line 264
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/htc/sunny2/common/SimpleAsyncTask$SerialExecutor$1;->this$0:Lcom/htc/sunny2/common/SimpleAsyncTask$SerialExecutor;

    invoke-virtual {v1}, Lcom/htc/sunny2/common/SimpleAsyncTask$SerialExecutor;->scheduleNext()V

    throw v0
.end method
