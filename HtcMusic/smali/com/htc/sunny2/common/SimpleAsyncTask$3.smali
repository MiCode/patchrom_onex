.class Lcom/htc/sunny2/common/SimpleAsyncTask$3;
.super Ljava/util/concurrent/FutureTask;
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
        "Ljava/util/concurrent/FutureTask",
        "<TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny2/common/SimpleAsyncTask;


# direct methods
.method constructor <init>(Lcom/htc/sunny2/common/SimpleAsyncTask;Ljava/util/concurrent/Callable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 95
    .local p0, this:Lcom/htc/sunny2/common/SimpleAsyncTask$3;,"Lcom/htc/sunny2/common/SimpleAsyncTask.3;"
    .local p2, x0:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<TResult;>;"
    iput-object p1, p0, Lcom/htc/sunny2/common/SimpleAsyncTask$3;->this$0:Lcom/htc/sunny2/common/SimpleAsyncTask;

    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method protected done()V
    .locals 6

    .prologue
    .line 101
    .local p0, this:Lcom/htc/sunny2/common/SimpleAsyncTask$3;,"Lcom/htc/sunny2/common/SimpleAsyncTask.3;"
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/sunny2/common/SimpleAsyncTask$3;->get()Ljava/lang/Object;

    move-result-object v1

    .line 103
    .local v1, result:Ljava/lang/Object;,"TResult;"
    iget-object v3, p0, Lcom/htc/sunny2/common/SimpleAsyncTask$3;->this$0:Lcom/htc/sunny2/common/SimpleAsyncTask;

    #calls: Lcom/htc/sunny2/common/SimpleAsyncTask;->postResultIfNotInvoked(Ljava/lang/Object;)V
    invoke-static {v3, v1}, Lcom/htc/sunny2/common/SimpleAsyncTask;->access$500(Lcom/htc/sunny2/common/SimpleAsyncTask;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    .line 121
    .end local v1           #result:Ljava/lang/Object;,"TResult;"
    :goto_0
    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 107
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v3, "SimpleAsyncTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][SimpleAsyncTask][SimpleAsyncTask]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 109
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 111
    .local v0, e:Ljava/util/concurrent/ExecutionException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "An error occured while executing doInBackground()"

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 113
    .end local v0           #e:Ljava/util/concurrent/ExecutionException;
    :catch_2
    move-exception v0

    .line 115
    .local v0, e:Ljava/util/concurrent/CancellationException;
    iget-object v3, p0, Lcom/htc/sunny2/common/SimpleAsyncTask$3;->this$0:Lcom/htc/sunny2/common/SimpleAsyncTask;

    const/4 v4, 0x0

    #calls: Lcom/htc/sunny2/common/SimpleAsyncTask;->postResultIfNotInvoked(Ljava/lang/Object;)V
    invoke-static {v3, v4}, Lcom/htc/sunny2/common/SimpleAsyncTask;->access$500(Lcom/htc/sunny2/common/SimpleAsyncTask;Ljava/lang/Object;)V

    goto :goto_0

    .line 117
    .end local v0           #e:Ljava/util/concurrent/CancellationException;
    :catch_3
    move-exception v2

    .line 119
    .local v2, t:Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "An error occured while executing doInBackground()"

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method
