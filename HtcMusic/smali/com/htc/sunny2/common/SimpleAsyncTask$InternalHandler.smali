.class Lcom/htc/sunny2/common/SimpleAsyncTask$InternalHandler;
.super Landroid/os/Handler;
.source "SimpleAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/common/SimpleAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 218
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/sunny2/common/SimpleAsyncTask$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 218
    invoke-direct {p0}, Lcom/htc/sunny2/common/SimpleAsyncTask$InternalHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 222
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/htc/sunny2/common/SimpleAsyncTask$SimpleAsyncTaskResult;

    .line 223
    .local v0, result:Lcom/htc/sunny2/common/SimpleAsyncTask$SimpleAsyncTaskResult;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 230
    :goto_0
    return-void

    .line 227
    :pswitch_0
    iget-object v1, v0, Lcom/htc/sunny2/common/SimpleAsyncTask$SimpleAsyncTaskResult;->mTask:Lcom/htc/sunny2/common/SimpleAsyncTask;

    iget-object v2, v0, Lcom/htc/sunny2/common/SimpleAsyncTask$SimpleAsyncTaskResult;->mData:[Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    #calls: Lcom/htc/sunny2/common/SimpleAsyncTask;->finish(Ljava/lang/Object;)V
    invoke-static {v1, v2}, Lcom/htc/sunny2/common/SimpleAsyncTask;->access$600(Lcom/htc/sunny2/common/SimpleAsyncTask;Ljava/lang/Object;)V

    goto :goto_0

    .line 223
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
