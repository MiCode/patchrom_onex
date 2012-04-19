.class public abstract Lcom/htc/opensense/social/OperationAdapter;
.super Ljava/lang/Object;
.source "OperationAdapter.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SocialNetworkOperation"


# instance fields
.field protected mDispatcher:Lcom/htc/opensense/social/SocialDispatcher;

.field protected mParams:Lcom/htc/opensense/social/OperationParams;

.field protected mSessoin:Lcom/htc/opensense/social/Auth;

.field protected mStatus:I


# direct methods
.method public constructor <init>(Lcom/htc/opensense/social/Auth;Lcom/htc/opensense/social/OperationParams;)V
    .locals 0
    .parameter "session"
    .parameter "params"

    .prologue
    .line 95
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p2, p0, Lcom/htc/opensense/social/OperationAdapter;->mParams:Lcom/htc/opensense/social/OperationParams;

    .line 97
    iput-object p1, p0, Lcom/htc/opensense/social/OperationAdapter;->mSessoin:Lcom/htc/opensense/social/Auth;

    .line 98
    return-void
.end method


# virtual methods
.method public getDispatcher()Lcom/htc/opensense/social/SocialDispatcher;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/htc/opensense/social/OperationAdapter;->mDispatcher:Lcom/htc/opensense/social/SocialDispatcher;

    return-object v0
.end method

.method public getParams()Lcom/htc/opensense/social/OperationParams;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/opensense/social/OperationAdapter;->mParams:Lcom/htc/opensense/social/OperationParams;

    return-object v0
.end method

.method public getSessoin()Lcom/htc/opensense/social/Auth;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/opensense/social/OperationAdapter;->mSessoin:Lcom/htc/opensense/social/Auth;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/htc/opensense/social/OperationAdapter;->mStatus:I

    return v0
.end method

.method protected abstract onResult(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/opensense/social/SocialException;
        }
    .end annotation
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/htc/opensense/social/OperationAdapter;->mParams:Lcom/htc/opensense/social/OperationParams;

    invoke-virtual {v0}, Lcom/htc/opensense/social/OperationParams;->recycle()V

    .line 129
    return-void
.end method

.method public setDebug(Z)V
    .locals 1
    .parameter "debug"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/htc/opensense/social/OperationAdapter;->mParams:Lcom/htc/opensense/social/OperationParams;

    iput-boolean p1, v0, Lcom/htc/opensense/social/OperationParams;->mDebug:Z

    .line 133
    return-void
.end method

.method public setDispatcher(Lcom/htc/opensense/social/SocialDispatcher;)V
    .locals 0
    .parameter "mDispatcher"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/htc/opensense/social/OperationAdapter;->mDispatcher:Lcom/htc/opensense/social/SocialDispatcher;

    .line 43
    return-void
.end method

.method public setParams(Lcom/htc/opensense/social/OperationParams;)V
    .locals 0
    .parameter "mParams"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/htc/opensense/social/OperationAdapter;->mParams:Lcom/htc/opensense/social/OperationParams;

    .line 91
    return-void
.end method

.method public setSessoin(Lcom/htc/opensense/social/Auth;)V
    .locals 0
    .parameter "mSessoin"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/htc/opensense/social/OperationAdapter;->mSessoin:Lcom/htc/opensense/social/Auth;

    .line 59
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .parameter "mStatus"

    .prologue
    .line 74
    iput p1, p0, Lcom/htc/opensense/social/OperationAdapter;->mStatus:I

    .line 75
    return-void
.end method

.method public start()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/opensense/social/SocialException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 101
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, methodName:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/opensense/social/OperationAdapter;->mDispatcher:Lcom/htc/opensense/social/SocialDispatcher;

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/util/HashMap;

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/htc/opensense/social/OperationAdapter;->mParams:Lcom/htc/opensense/social/OperationParams;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/opensense/social/OperationAdapter;->mParams:Lcom/htc/opensense/social/OperationParams;

    invoke-virtual {v2}, Lcom/htc/opensense/social/OperationParams;->getMap()Ljava/util/HashMap;

    move-result-object v2

    :goto_0
    aput-object v2, v4, v5

    iget-object v2, p0, Lcom/htc/opensense/social/OperationAdapter;->mSessoin:Lcom/htc/opensense/social/Auth;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/opensense/social/OperationAdapter;->mSessoin:Lcom/htc/opensense/social/Auth;

    invoke-virtual {v2}, Lcom/htc/opensense/social/Auth;->getAuthMap()Ljava/util/HashMap;

    move-result-object v2

    :goto_1
    aput-object v2, v4, v6

    invoke-virtual {v3, v0, v4}, Lcom/htc/opensense/social/SocialDispatcher;->runOperation(Ljava/lang/String;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 107
    .local v1, msg:Landroid/os/Message;
    iget v2, v1, Landroid/os/Message;->what:I

    iput v2, p0, Lcom/htc/opensense/social/OperationAdapter;->mStatus:I

    .line 108
    const-string v2, "SocialNetworkOperation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "what "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget v2, v1, Landroid/os/Message;->what:I

    if-ne v2, v6, :cond_2

    .line 110
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lcom/htc/opensense/social/OperationAdapter;->onResult(Ljava/lang/Object;)V

    .line 115
    return-void

    .line 102
    .end local v1           #msg:Landroid/os/Message;
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    goto :goto_1

    .line 112
    .restart local v1       #msg:Landroid/os/Message;
    :cond_2
    const-string v2, "SocialNetworkOperation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "msg.obj "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    new-instance v2, Lcom/htc/opensense/social/SocialException;

    invoke-direct {v2, v1}, Lcom/htc/opensense/social/SocialException;-><init>(Landroid/os/Message;)V

    throw v2
.end method
