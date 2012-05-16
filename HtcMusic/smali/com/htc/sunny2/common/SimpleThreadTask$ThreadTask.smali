.class final Lcom/htc/sunny2/common/SimpleThreadTask$ThreadTask;
.super Ljava/lang/Object;
.source "SimpleThreadTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/common/SimpleThreadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ThreadTask"
.end annotation


# instance fields
.field private mId:I

.field private mParam:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TParams;"
        }
    .end annotation
.end field

.field private mResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TResult;"
        }
    .end annotation
.end field

.field private mStatus:Lcom/htc/sunny2/common/SimpleThreadTask$Status;

.field final synthetic this$0:Lcom/htc/sunny2/common/SimpleThreadTask;


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/common/SimpleThreadTask;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter "nId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITParams;)V"
        }
    .end annotation

    .prologue
    .line 180
    .local p0, this:Lcom/htc/sunny2/common/SimpleThreadTask$ThreadTask;,"Lcom/htc/sunny2/common/SimpleThreadTask<TParams;TResult;>.ThreadTask;"
    .local p3, params:Ljava/lang/Object;,"TParams;"
    iput-object p1, p0, Lcom/htc/sunny2/common/SimpleThreadTask$ThreadTask;->this$0:Lcom/htc/sunny2/common/SimpleThreadTask;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 175
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/common/SimpleThreadTask$ThreadTask;->mId:I

    .line 177
    sget-object v0, Lcom/htc/sunny2/common/SimpleThreadTask$Status;->PENDING:Lcom/htc/sunny2/common/SimpleThreadTask$Status;

    iput-object v0, p0, Lcom/htc/sunny2/common/SimpleThreadTask$ThreadTask;->mStatus:Lcom/htc/sunny2/common/SimpleThreadTask$Status;

    .line 181
    iput p2, p0, Lcom/htc/sunny2/common/SimpleThreadTask$ThreadTask;->mId:I

    .line 182
    iput-object p3, p0, Lcom/htc/sunny2/common/SimpleThreadTask$ThreadTask;->mParam:Ljava/lang/Object;

    .line 183
    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    .line 186
    .local p0, this:Lcom/htc/sunny2/common/SimpleThreadTask$ThreadTask;,"Lcom/htc/sunny2/common/SimpleThreadTask<TParams;TResult;>.ThreadTask;"
    iget v0, p0, Lcom/htc/sunny2/common/SimpleThreadTask$ThreadTask;->mId:I

    return v0
.end method

.method public getParams()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TParams;"
        }
    .end annotation

    .prologue
    .line 190
    .local p0, this:Lcom/htc/sunny2/common/SimpleThreadTask$ThreadTask;,"Lcom/htc/sunny2/common/SimpleThreadTask<TParams;TResult;>.ThreadTask;"
    iget-object v0, p0, Lcom/htc/sunny2/common/SimpleThreadTask$ThreadTask;->mParam:Ljava/lang/Object;

    return-object v0
.end method

.method public getResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .prologue
    .line 202
    .local p0, this:Lcom/htc/sunny2/common/SimpleThreadTask$ThreadTask;,"Lcom/htc/sunny2/common/SimpleThreadTask<TParams;TResult;>.ThreadTask;"
    iget-object v0, p0, Lcom/htc/sunny2/common/SimpleThreadTask$ThreadTask;->mResult:Ljava/lang/Object;

    return-object v0
.end method

.method public getStatus()Lcom/htc/sunny2/common/SimpleThreadTask$Status;
    .locals 1

    .prologue
    .line 194
    .local p0, this:Lcom/htc/sunny2/common/SimpleThreadTask$ThreadTask;,"Lcom/htc/sunny2/common/SimpleThreadTask<TParams;TResult;>.ThreadTask;"
    iget-object v0, p0, Lcom/htc/sunny2/common/SimpleThreadTask$ThreadTask;->mStatus:Lcom/htc/sunny2/common/SimpleThreadTask$Status;

    return-object v0
.end method

.method public setResult(Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 198
    .local p0, this:Lcom/htc/sunny2/common/SimpleThreadTask$ThreadTask;,"Lcom/htc/sunny2/common/SimpleThreadTask<TParams;TResult;>.ThreadTask;"
    .local p1, result:Ljava/lang/Object;,"TResult;"
    iput-object p1, p0, Lcom/htc/sunny2/common/SimpleThreadTask$ThreadTask;->mResult:Ljava/lang/Object;

    .line 199
    return-void
.end method
