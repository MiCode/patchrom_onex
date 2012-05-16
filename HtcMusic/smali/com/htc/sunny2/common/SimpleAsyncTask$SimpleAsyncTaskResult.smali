.class Lcom/htc/sunny2/common/SimpleAsyncTask$SimpleAsyncTaskResult;
.super Ljava/lang/Object;
.source "SimpleAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/common/SimpleAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimpleAsyncTaskResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final mData:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TData;"
        }
    .end annotation
.end field

.field final mTask:Lcom/htc/sunny2/common/SimpleAsyncTask;


# direct methods
.method varargs constructor <init>(Lcom/htc/sunny2/common/SimpleAsyncTask;[Ljava/lang/Object;)V
    .locals 0
    .parameter "task"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/sunny2/common/SimpleAsyncTask;",
            "[TData;)V"
        }
    .end annotation

    .prologue
    .line 242
    .local p0, this:Lcom/htc/sunny2/common/SimpleAsyncTask$SimpleAsyncTaskResult;,"Lcom/htc/sunny2/common/SimpleAsyncTask$SimpleAsyncTaskResult<TData;>;"
    .local p2, data:[Ljava/lang/Object;,"[TData;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 243
    iput-object p1, p0, Lcom/htc/sunny2/common/SimpleAsyncTask$SimpleAsyncTaskResult;->mTask:Lcom/htc/sunny2/common/SimpleAsyncTask;

    .line 244
    iput-object p2, p0, Lcom/htc/sunny2/common/SimpleAsyncTask$SimpleAsyncTaskResult;->mData:[Ljava/lang/Object;

    .line 245
    return-void
.end method
