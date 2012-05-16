.class public Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;
.super Ljava/lang/Object;
.source "SunnySceneChangeAnimationHandler.java"

# interfaces
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IMessenger;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler$sceneAnimationListener;
    }
.end annotation


# static fields
.field public static final SCENECHANGE_NEXT:I = 0x1

.field public static final SCENECHANGE_PREVIOUS:I = 0x2

.field public static final SCENECHANGE_PREVIOUS_ADAPTER:I = 0x3

.field public static final SCENECHANGE_START:I = 0x0

.field public static final SCENECHANGE_UNKNOWN:I = -0x1


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mAnimationListener:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler$sceneAnimationListener;

.field private mAnimationReference:I

.field private mBundleIn:Landroid/os/Bundle;

.field private mBundleOut:Landroid/os/Bundle;

.field private mExistsAnimIn:Z

.field private mExistsAnimOut:Z

.field private mHandler:Landroid/os/Handler;

.field private mIsSceneForceClose:Z

.field private mSceneAnimIn:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;

.field private mSceneAnimOut:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;

.field private mSceneChangeType:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 89
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-class v0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->LOG_TAG:Ljava/lang/String;

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneChangeType:I

    .line 25
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneAnimIn:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;

    .line 26
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneAnimOut:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;

    .line 27
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mBundleIn:Landroid/os/Bundle;

    .line 28
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mBundleOut:Landroid/os/Bundle;

    .line 29
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mHandler:Landroid/os/Handler;

    .line 30
    iput v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mAnimationReference:I

    .line 31
    iput-boolean v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mIsSceneForceClose:Z

    .line 32
    new-instance v0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler$sceneAnimationListener;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler$sceneAnimationListener;-><init>(Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;)V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mAnimationListener:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler$sceneAnimationListener;

    .line 33
    iput-boolean v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mExistsAnimIn:Z

    .line 34
    iput-boolean v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mExistsAnimOut:Z

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getAnimationInState(I)I
    .locals 2
    .parameter "nSceneChangeType"

    .prologue
    .line 109
    const/4 v0, -0x1

    .line 111
    .local v0, nAnimationState:I
    if-nez p1, :cond_1

    .line 112
    const/4 v0, 0x0

    .line 118
    :cond_0
    :goto_0
    return v0

    .line 113
    :cond_1
    const/4 v1, 0x1

    if-ne v1, p1, :cond_2

    .line 114
    const/4 v0, 0x0

    goto :goto_0

    .line 115
    :cond_2
    const/4 v1, 0x2

    if-ne v1, p1, :cond_0

    .line 116
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getAnimationOutState(I)I
    .locals 2
    .parameter "nSceneChangeType"

    .prologue
    .line 122
    const/4 v0, -0x1

    .line 124
    .local v0, nAnimationState:I
    const/4 v1, 0x1

    if-ne v1, p1, :cond_2

    .line 129
    iget-boolean v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mIsSceneForceClose:Z

    if-eqz v1, :cond_1

    .line 130
    const/4 v0, 0x2

    .line 138
    :cond_0
    :goto_0
    return v0

    .line 132
    :cond_1
    const/4 v0, 0x3

    goto :goto_0

    .line 134
    :cond_2
    const/4 v1, 0x2

    if-ne v1, p1, :cond_0

    .line 136
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private increment()V
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mAnimationReference:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mAnimationReference:I

    .line 94
    return-void
.end method

.method private reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 256
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneChangeType:I

    .line 257
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneAnimIn:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;

    .line 258
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneAnimOut:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;

    .line 259
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mBundleIn:Landroid/os/Bundle;

    .line 260
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mBundleOut:Landroid/os/Bundle;

    .line 261
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mHandler:Landroid/os/Handler;

    .line 262
    invoke-virtual {p0, v1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->setHandler(Landroid/os/Handler;)V

    .line 263
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mAnimationListener:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler$sceneAnimationListener;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler$sceneAnimationListener;->reset()V

    .line 264
    iput v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mAnimationReference:I

    .line 265
    iput-boolean v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mIsSceneForceClose:Z

    .line 266
    iput-boolean v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mExistsAnimIn:Z

    .line 267
    iput-boolean v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mExistsAnimOut:Z

    .line 268
    return-void
.end method


# virtual methods
.method public createAnimation(Landroid/os/Handler;)V
    .locals 4
    .parameter "handler"

    .prologue
    const/4 v3, 0x1

    .line 175
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->setHandler(Landroid/os/Handler;)V

    .line 177
    iget v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneChangeType:I

    invoke-direct {p0, v2}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->getAnimationInState(I)I

    move-result v0

    .line 178
    .local v0, nAnimationInState:I
    iget v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneChangeType:I

    invoke-direct {p0, v2}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->getAnimationOutState(I)I

    move-result v1

    .line 180
    .local v1, nAnimationOutState:I
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneAnimOut:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mExistsAnimOut:Z

    if-ne v3, v2, :cond_0

    .line 182
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneAnimOut:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;

    invoke-interface {v2, v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;->onCreateAnimation(I)Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mBundleOut:Landroid/os/Bundle;

    .line 183
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneAnimOut:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;->isSecureAnimationCreate()Z

    move-result v2

    if-nez v2, :cond_0

    .line 185
    new-instance v2, Lcom/htc/sunny2/frameworks/utils/SunnyExceptionSuperNotCalled;

    const-string v3, "onCreateAnimation out"

    invoke-direct {v2, v3}, Lcom/htc/sunny2/frameworks/utils/SunnyExceptionSuperNotCalled;-><init>(Ljava/lang/String;)V

    throw v2

    .line 188
    :cond_0
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneAnimIn:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mExistsAnimIn:Z

    if-ne v3, v2, :cond_1

    .line 190
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneAnimIn:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;

    invoke-interface {v2, v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;->onCreateAnimation(I)Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mBundleIn:Landroid/os/Bundle;

    .line 191
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneAnimIn:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;->isSecureAnimationCreate()Z

    move-result v2

    if-nez v2, :cond_1

    .line 193
    new-instance v2, Lcom/htc/sunny2/frameworks/utils/SunnyExceptionSuperNotCalled;

    const-string v3, "onCreateAnimation in"

    invoke-direct {v2, v3}, Lcom/htc/sunny2/frameworks/utils/SunnyExceptionSuperNotCalled;-><init>(Ljava/lang/String;)V

    throw v2

    .line 197
    :cond_1
    return-void
.end method

.method public decrement()V
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mAnimationReference:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mAnimationReference:I

    .line 98
    return-void
.end method

.method public endAnimation()V
    .locals 4

    .prologue
    .line 233
    iget v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneChangeType:I

    invoke-direct {p0, v2}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->getAnimationInState(I)I

    move-result v0

    .line 234
    .local v0, nAnimationInState:I
    iget v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneChangeType:I

    invoke-direct {p0, v2}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->getAnimationOutState(I)I

    move-result v1

    .line 236
    .local v1, nAnimationOutState:I
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneAnimOut:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;

    if-eqz v2, :cond_0

    .line 238
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneAnimOut:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;

    invoke-interface {v2, v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;->onAnimationEnd(I)V

    .line 239
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneAnimOut:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;->isSecureAnimationEnd()Z

    move-result v2

    if-nez v2, :cond_0

    .line 241
    new-instance v2, Lcom/htc/sunny2/frameworks/utils/SunnyExceptionSuperNotCalled;

    const-string v3, "onAnimationEnd out"

    invoke-direct {v2, v3}, Lcom/htc/sunny2/frameworks/utils/SunnyExceptionSuperNotCalled;-><init>(Ljava/lang/String;)V

    throw v2

    .line 244
    :cond_0
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneAnimIn:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;

    if-eqz v2, :cond_1

    .line 246
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneAnimIn:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;

    invoke-interface {v2, v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;->onAnimationEnd(I)V

    .line 247
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneAnimIn:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;->isSecureAnimationEnd()Z

    move-result v2

    if-nez v2, :cond_1

    .line 249
    new-instance v2, Lcom/htc/sunny2/frameworks/utils/SunnyExceptionSuperNotCalled;

    const-string v3, "onAnimationEnd in"

    invoke-direct {v2, v3}, Lcom/htc/sunny2/frameworks/utils/SunnyExceptionSuperNotCalled;-><init>(Ljava/lang/String;)V

    throw v2

    .line 252
    :cond_1
    return-void
.end method

.method public getReferences()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mAnimationReference:I

    return v0
.end method

.method public getSceneChangeType()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneChangeType:I

    return v0
.end method

.method public onMessage(Landroid/os/Message;)Z
    .locals 1
    .parameter "message"

    .prologue
    .line 283
    const/4 v0, 0x0

    return v0
.end method

.method public onPostMessage(ILjava/lang/Object;I)V
    .locals 4
    .parameter "nMessageID"
    .parameter "obj"
    .parameter "delayMillis"

    .prologue
    .line 288
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 291
    :cond_0
    return-void
.end method

.method public onRemoveMessage(I)V
    .locals 1
    .parameter "nMessageID"

    .prologue
    .line 295
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 297
    :cond_0
    return-void
.end method

.method public playAnimation()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 200
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneAnimOut:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mExistsAnimOut:Z

    if-ne v4, v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneAnimOut:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mBundleIn:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mBundleOut:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mAnimationListener:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler$sceneAnimationListener;

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;->onPlayAnimation(Landroid/os/Bundle;Landroid/os/Bundle;Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V

    .line 203
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneAnimOut:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;->isSecureAnimationPlay()Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    new-instance v0, Lcom/htc/sunny2/frameworks/utils/SunnyExceptionSuperNotCalled;

    const-string v1, "onPlayAnimation out"

    invoke-direct {v0, v1}, Lcom/htc/sunny2/frameworks/utils/SunnyExceptionSuperNotCalled;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneAnimIn:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mExistsAnimIn:Z

    if-ne v4, v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneAnimIn:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mBundleIn:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mBundleOut:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mAnimationListener:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler$sceneAnimationListener;

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;->onPlayAnimation(Landroid/os/Bundle;Landroid/os/Bundle;Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V

    .line 211
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneAnimIn:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;->isSecureAnimationPlay()Z

    move-result v0

    if-nez v0, :cond_1

    .line 213
    new-instance v0, Lcom/htc/sunny2/frameworks/utils/SunnyExceptionSuperNotCalled;

    const-string v1, "onPlayAnimation in"

    invoke-direct {v0, v1}, Lcom/htc/sunny2/frameworks/utils/SunnyExceptionSuperNotCalled;-><init>(Ljava/lang/String;)V

    throw v0

    .line 216
    :cond_1
    return-void
.end method

.method public prepareSceneAnimation(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;IZ)V
    .locals 4
    .parameter "animIn"
    .parameter "animOut"
    .parameter "nSceneChangeType"
    .parameter "bIsForceClose"

    .prologue
    const/4 v3, 0x1

    .line 142
    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->reset()V

    .line 144
    check-cast p1, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;

    .end local p1
    iput-object p1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneAnimIn:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;

    .line 145
    check-cast p2, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;

    .end local p2
    iput-object p2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneAnimOut:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;

    .line 146
    iput p3, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneChangeType:I

    .line 147
    iput-boolean p4, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mIsSceneForceClose:Z

    .line 148
    invoke-direct {p0, p3}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->getAnimationInState(I)I

    move-result v0

    .line 149
    .local v0, nAnimationInState:I
    invoke-direct {p0, p3}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->getAnimationOutState(I)I

    move-result v1

    .line 151
    .local v1, nAnimationOutState:I
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneAnimOut:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneAnimOut:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;

    invoke-interface {v2, v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;->onPrepareAnimation(I)Z

    move-result v2

    if-ne v3, v2, :cond_1

    .line 153
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneAnimOut:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;->isSecureAnimationPrepare()Z

    move-result v2

    if-nez v2, :cond_0

    .line 155
    new-instance v2, Lcom/htc/sunny2/frameworks/utils/SunnyExceptionSuperNotCalled;

    const-string v3, "onPrepareAnimation out"

    invoke-direct {v2, v3}, Lcom/htc/sunny2/frameworks/utils/SunnyExceptionSuperNotCalled;-><init>(Ljava/lang/String;)V

    throw v2

    .line 157
    :cond_0
    iput-boolean v3, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mExistsAnimOut:Z

    .line 158
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mAnimationListener:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler$sceneAnimationListener;

    invoke-virtual {v2}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler$sceneAnimationListener;->increment()V

    .line 159
    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->increment()V

    .line 161
    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneAnimIn:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneAnimIn:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;

    invoke-interface {v2, v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;->onPrepareAnimation(I)Z

    move-result v2

    if-ne v3, v2, :cond_3

    .line 163
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneAnimIn:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;->isSecureAnimationPrepare()Z

    move-result v2

    if-nez v2, :cond_2

    .line 165
    new-instance v2, Lcom/htc/sunny2/frameworks/utils/SunnyExceptionSuperNotCalled;

    const-string v3, "onPrepareAnimation in"

    invoke-direct {v2, v3}, Lcom/htc/sunny2/frameworks/utils/SunnyExceptionSuperNotCalled;-><init>(Ljava/lang/String;)V

    throw v2

    .line 167
    :cond_2
    iput-boolean v3, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mExistsAnimIn:Z

    .line 168
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mAnimationListener:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler$sceneAnimationListener;

    invoke-virtual {v2}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler$sceneAnimationListener;->increment()V

    .line 169
    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->increment()V

    .line 172
    :cond_3
    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 277
    iput-object p1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mHandler:Landroid/os/Handler;

    .line 278
    return-void
.end method

.method public startAnimation()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 219
    iget v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneChangeType:I

    invoke-direct {p0, v2}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->getAnimationInState(I)I

    move-result v0

    .line 220
    .local v0, nAnimationInState:I
    iget v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneChangeType:I

    invoke-direct {p0, v2}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->getAnimationOutState(I)I

    move-result v1

    .line 222
    .local v1, nAnimationOutState:I
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneAnimOut:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mExistsAnimOut:Z

    if-ne v3, v2, :cond_0

    .line 224
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneAnimOut:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;

    invoke-interface {v2, v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;->onStartAnimation(I)V

    .line 226
    :cond_0
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneAnimIn:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mExistsAnimIn:Z

    if-ne v3, v2, :cond_1

    .line 228
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneAnimIn:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;

    invoke-interface {v2, v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;->onStartAnimation(I)V

    .line 230
    :cond_1
    return-void
.end method
