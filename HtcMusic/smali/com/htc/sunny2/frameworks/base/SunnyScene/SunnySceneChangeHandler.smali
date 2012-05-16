.class public Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;
.super Ljava/lang/Object;
.source "SunnySceneChangeHandler.java"

# interfaces
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IMessengerHost;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler$ISceneChangeListener;
    }
.end annotation


# static fields
.field public static final SCLOCK_ANIMATION:I = 0x516

.field public static final SCLOCK_NEW_ADAPTER:I = 0x515

.field public static final SCLOCK_UNKNOWN:I = 0x514

.field public static final SCSTATE_ADAPTER_CHECK:I = 0xa

.field public static final SCSTATE_ADAPTER_READY:I = 0x17

.field public static final SCSTATE_BIND_ADAPTER:I = 0xd

.field public static final SCSTATE_CHANGE_END:I = 0x15

.field public static final SCSTATE_CHANGE_START:I = 0xb

.field public static final SCSTATE_CREATE_ANIMATION:I = 0xe

.field public static final SCSTATE_EXIT_ANIMATION:I = 0x11

.field public static final SCSTATE_NEW_ADAPTER_UNLOCK:I = 0x16

.field public static final SCSTATE_PLAY_ANIMATION:I = 0xf

.field public static final SCSTATE_PREPARE_ANIMATION:I = 0xc

.field public static final SCSTATE_SEND_BACKGROUND:I = 0x13

.field public static final SCSTATE_SEND_FOREGROUND:I = 0x12

.field public static final SCSTATE_START_ANIMATION:I = 0x10

.field public static final SCSTATE_UNBIND_ADAPTER:I = 0x14

.field private static final TIMER_NEW_ADAPTER_UNLOCK:I = 0x4b0


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mAnimationLock:Z

.field private mBundle:Landroid/os/Bundle;

.field private mChangeListener:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler$ISceneChangeListener;

.field private mHandler:Landroid/os/Handler;

.field private mIsSceneForceClose:Z

.field private mNewAdapterLock:Z

.field private mScAnimHandler:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;

.field private mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

.field private mSceneCurrent:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

.field private mSceneNext:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-class v0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->LOG_TAG:Ljava/lang/String;

    .line 55
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    .line 56
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mChangeListener:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler$ISceneChangeListener;

    .line 57
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneCurrent:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    .line 58
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneNext:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    .line 59
    iput-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mBundle:Landroid/os/Bundle;

    .line 60
    iput-boolean v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mIsSceneForceClose:Z

    .line 61
    iput-boolean v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mNewAdapterLock:Z

    .line 62
    iput-boolean v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mAnimationLock:Z

    .line 63
    new-instance v0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;

    invoke-direct {v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mScAnimHandler:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;

    .line 537
    new-instance v0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler$1;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler$1;-><init>(Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;)V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private doSceneChange()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 182
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SunnySceneChangeHandler][doSceneChange]:..."

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneNext:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    if-eqz v0, :cond_1

    .line 186
    iput-boolean v3, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mNewAdapterLock:Z

    .line 190
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneCurrent:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    if-nez v0, :cond_0

    .line 191
    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onStateAdapterCheck()V

    .line 206
    :goto_0
    return-void

    .line 193
    :cond_0
    const/16 v0, 0xa

    invoke-virtual {p0, v0, v4, v2}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onPostMessage(ILjava/lang/Object;I)V

    goto :goto_0

    .line 197
    :cond_1
    iput-boolean v3, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mAnimationLock:Z

    .line 201
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneCurrent:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    if-nez v0, :cond_2

    .line 202
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onStateAdapterReady()V

    goto :goto_0

    .line 204
    :cond_2
    const/16 v0, 0x17

    invoke-virtual {p0, v0, v4, v2}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onPostMessage(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method private isAnimationLocked()Z
    .locals 1

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mAnimationLock:Z

    return v0
.end method

.method private isNewAdapterLocked()Z
    .locals 1

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mNewAdapterLock:Z

    return v0
.end method

.method private onCreateAnimation(Ljava/lang/Object;)V
    .locals 4
    .parameter "object"

    .prologue
    .line 362
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mScAnimHandler:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;

    invoke-virtual {v1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->getReferences()I

    move-result v0

    .line 363
    .local v0, nReferences:I
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][SunnySceneChangeHandler][onCreateAnimation]: incoming animations: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mScAnimHandler:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;

    invoke-virtual {v1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->getReferences()I

    move-result v1

    if-nez v1, :cond_1

    .line 370
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneCurrent:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneNext:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    invoke-interface {v1, v2, v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->onNotifyAnimationBegin(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;)V

    .line 374
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mScAnimHandler:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;

    invoke-virtual {v1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->getSceneChangeType()I

    move-result v1

    if-nez v1, :cond_0

    .line 375
    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onExitAnimation()V

    .line 383
    :goto_0
    return-void

    .line 377
    :cond_0
    const/16 v1, 0x11

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onPostMessage(ILjava/lang/Object;I)V

    goto :goto_0

    .line 381
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mScAnimHandler:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;

    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->createAnimation(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method private onExitAnimation()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 407
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SunnySceneChangeHandler][onExitAnimation]:... "

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mScAnimHandler:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->endAnimation()V

    .line 409
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->onNotifyAnimationEnd()V

    .line 414
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneNext:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    if-eqz v0, :cond_1

    .line 419
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mScAnimHandler:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->getSceneChangeType()I

    move-result v0

    if-nez v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SunnySceneChangeHandler][onExitAnimation]: onStateSendForeground "

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onStateSendForeground()V

    .line 434
    :goto_0
    return-void

    .line 426
    :cond_0
    const/16 v0, 0x12

    invoke-virtual {p0, v0, v3, v2}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onPostMessage(ILjava/lang/Object;I)V

    goto :goto_0

    .line 432
    :cond_1
    const/16 v0, 0x13

    invoke-virtual {p0, v0, v3, v2}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onPostMessage(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method private onPlayAnimation()V
    .locals 3

    .prologue
    .line 396
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneCurrent:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneNext:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    invoke-interface {v0, v1, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->onNotifyAnimationBegin(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;)V

    .line 397
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mScAnimHandler:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->playAnimation()V

    .line 398
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SunnySceneChangeHandler][onPlayAnimation]: "

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    return-void
.end method

.method private onPrepareAnimation(Ljava/lang/Object;)V
    .locals 8
    .parameter "object"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 295
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 296
    .local v0, nSceneChangeType:I
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][SunnySceneChangeHandler][onPrepareAnimation]: animation type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    if-nez v0, :cond_1

    .line 299
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneNext:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    check-cast v1, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;

    .line 300
    .local v1, sceneIn:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mScAnimHandler:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;

    iget-boolean v4, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mIsSceneForceClose:Z

    invoke-virtual {v3, v1, v7, v0, v4}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->prepareSceneAnimation(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;IZ)V

    .line 305
    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onStateBindAdapter()V

    .line 324
    :cond_0
    :goto_0
    return-void

    .line 309
    .end local v1           #sceneIn:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneNext:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    check-cast v1, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;

    .line 310
    .restart local v1       #sceneIn:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneCurrent:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    check-cast v2, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;

    .line 311
    .local v2, sceneOut:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mScAnimHandler:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;

    iget-boolean v4, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mIsSceneForceClose:Z

    invoke-virtual {v3, v1, v2, v0, v4}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->prepareSceneAnimation(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;IZ)V

    .line 313
    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][SunnySceneChangeHandler][onPrepareAnimation]: no of anim: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mScAnimHandler:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;

    invoke-virtual {v5}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->getReferences()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    const/4 v3, 0x1

    if-ne v3, v0, :cond_2

    .line 317
    const/16 v3, 0xd

    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mScAnimHandler:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;

    invoke-virtual {v4}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->getSceneChangeType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v3, v4, v6}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onPostMessage(ILjava/lang/Object;I)V

    goto :goto_0

    .line 319
    :cond_2
    const/4 v3, 0x2

    if-ne v3, v0, :cond_0

    .line 321
    const/16 v3, 0xe

    invoke-virtual {p0, v3, v7, v6}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onPostMessage(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method private onStartAnimation()V
    .locals 2

    .prologue
    .line 402
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mScAnimHandler:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->startAnimation()V

    .line 403
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SunnySceneChangeHandler][onStartAnimation]: "

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    return-void
.end method

.method private onStateAdapterCheck()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 209
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v1, :cond_0

    .line 211
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][SunnySceneChangeHandler][onStateAdapterCheck]: null scene control"

    invoke-static {v1, v2}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    :goto_0
    return-void

    .line 214
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneNext:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    if-nez v1, :cond_1

    .line 216
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][SunnySceneChangeHandler][onStateAdapterCheck]: null next scene"

    invoke-static {v1, v2}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 223
    :cond_1
    const/4 v0, 0x0

    .line 224
    .local v0, adapterNext:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneNext:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->adapterIdentity()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sceneAdapter(Ljava/lang/String;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    move-result-object v0

    if-nez v0, :cond_2

    .line 226
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][SunnySceneChangeHandler][onStateAdapterCheck]: onNewAdapter"

    invoke-static {v1, v2}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iput-boolean v3, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mNewAdapterLock:Z

    .line 228
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneNext:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mBundle:Landroid/os/Bundle;

    invoke-interface {v1, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onNewAdapter(Landroid/os/Bundle;)V

    .line 232
    const/16 v1, 0x16

    const/16 v2, 0x4b0

    invoke-virtual {p0, v1, v4, v2}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onPostMessage(ILjava/lang/Object;I)V

    goto :goto_0

    .line 236
    :cond_2
    iput-boolean v3, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mAnimationLock:Z

    .line 240
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneCurrent:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    if-nez v1, :cond_3

    .line 241
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onStateAdapterReady()V

    goto :goto_0

    .line 243
    :cond_3
    const/16 v1, 0x17

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v4, v2}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onPostMessage(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method private onStateBindAdapter()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 331
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneNext:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->adapterIdentity()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sceneAdapter(Ljava/lang/String;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    move-result-object v0

    .line 332
    .local v0, adapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    const/4 v1, 0x0

    .line 333
    .local v1, szException:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneNext:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    invoke-interface {v2, v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->setSecuredSetAdapter(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAdapter;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 335
    new-instance v2, Lcom/htc/sunny2/frameworks/utils/SunnyExceptionInvalidSceneAdapter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAdapter: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/htc/sunny2/frameworks/utils/SunnyExceptionInvalidSceneAdapter;-><init>(Ljava/lang/String;)V

    throw v2

    .line 339
    :cond_0
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneNext:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onBindAdapter()V

    .line 340
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneNext:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->isSecureBindAdapter()Z

    move-result v2

    if-nez v2, :cond_1

    .line 342
    new-instance v2, Lcom/htc/sunny2/frameworks/utils/SunnyExceptionSuperNotCalled;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onBindAdapter: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneNext:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/htc/sunny2/frameworks/utils/SunnyExceptionSuperNotCalled;-><init>(Ljava/lang/String;)V

    throw v2

    .line 352
    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mScAnimHandler:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;

    invoke-virtual {v2}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->getSceneChangeType()I

    move-result v2

    if-nez v2, :cond_2

    .line 353
    invoke-direct {p0, v4}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onCreateAnimation(Ljava/lang/Object;)V

    .line 359
    :goto_0
    return-void

    .line 355
    :cond_2
    const/16 v2, 0xe

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v4, v3}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onPostMessage(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method private onStateChangeStart()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 268
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SunnySceneChangeHandler][onStateChangeStart]: "

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneCurrent:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    if-nez v0, :cond_0

    .line 271
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onPrepareAnimation(Ljava/lang/Object;)V

    .line 292
    :goto_0
    return-void

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneNext:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    if-nez v0, :cond_1

    .line 275
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onPrepareAnimation(Ljava/lang/Object;)V

    goto :goto_0

    .line 279
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneNext:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneCurrent:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->getId()I

    move-result v1

    if-le v0, v1, :cond_2

    .line 281
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onPrepareAnimation(Ljava/lang/Object;)V

    .line 285
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    sget-object v1, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDepthControl$DEPTH;->INCREMENT:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDepthControl$DEPTH;

    invoke-interface {v0, v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->updateSceneDepth(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDepthControl$DEPTH;)V

    goto :goto_0

    .line 289
    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onPrepareAnimation(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private onStateSceneChangeEnd()V
    .locals 2

    .prologue
    .line 516
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SunnySceneChangeHandler][onStateSceneChangeEnd]:... "

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mChangeListener:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler$ISceneChangeListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mScAnimHandler:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;

    if-eqz v0, :cond_1

    .line 520
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mScAnimHandler:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;

    invoke-virtual {v1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->getSceneChangeType()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 521
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    sget-object v1, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDepthControl$DEPTH;->DECREMENT:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDepthControl$DEPTH;

    invoke-interface {v0, v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->updateSceneDepth(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDepthControl$DEPTH;)V

    .line 523
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mChangeListener:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler$ISceneChangeListener;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mScAnimHandler:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;

    invoke-virtual {v1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->getSceneChangeType()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler$ISceneChangeListener;->onSceneChangeEnd(I)V

    .line 525
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mAnimationLock:Z

    .line 526
    return-void
.end method

.method private onStateSendBackground()V
    .locals 7

    .prologue
    const/16 v6, 0x14

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 467
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mScAnimHandler:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneCurrent:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    if-nez v1, :cond_1

    .line 494
    :cond_0
    :goto_0
    return-void

    .line 470
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneCurrent:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v0

    .line 471
    .local v0, szSceneIdentity:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][SunnySceneChangeHandler][onStateSendBackground]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneCurrent:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mBundle:Landroid/os/Bundle;

    invoke-interface {v1, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onSendToBackground(Landroid/os/Bundle;)V

    .line 474
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneCurrent:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->isSecureSendToBackground()Z

    move-result v1

    if-nez v1, :cond_2

    .line 476
    new-instance v1, Lcom/htc/sunny2/frameworks/utils/SunnyExceptionSuperNotCalled;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSendToBackground: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/sunny2/frameworks/utils/SunnyExceptionSuperNotCalled;-><init>(Ljava/lang/String;)V

    throw v1

    .line 481
    :cond_2
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mScAnimHandler:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;

    invoke-virtual {v2}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->getSceneChangeType()I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 483
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->isSceneForceClose()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 484
    invoke-virtual {p0, v6, v5, v4}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onPostMessage(ILjava/lang/Object;I)V

    goto :goto_0

    .line 487
    :cond_3
    const/16 v1, 0x15

    invoke-virtual {p0, v1, v5, v4}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onPostMessage(ILjava/lang/Object;I)V

    goto :goto_0

    .line 490
    :cond_4
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mScAnimHandler:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;

    invoke-virtual {v2}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->getSceneChangeType()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 492
    invoke-virtual {p0, v6, v5, v4}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onPostMessage(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method private onStateSendForeground()V
    .locals 4

    .prologue
    .line 437
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mScAnimHandler:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneNext:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    if-nez v1, :cond_1

    .line 464
    :cond_0
    :goto_0
    return-void

    .line 440
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneNext:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v0

    .line 441
    .local v0, szSceneIdentity:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][SunnySceneChangeHandler][onStateSendForeground]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneNext:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mBundle:Landroid/os/Bundle;

    invoke-interface {v1, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onSendToForeground(Landroid/os/Bundle;)V

    .line 444
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneNext:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->isSecureSendToForeground()Z

    move-result v1

    if-nez v1, :cond_2

    .line 446
    new-instance v1, Lcom/htc/sunny2/frameworks/utils/SunnyExceptionSuperNotCalled;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSendToForeground: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/sunny2/frameworks/utils/SunnyExceptionSuperNotCalled;-><init>(Ljava/lang/String;)V

    throw v1

    .line 454
    :cond_2
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mScAnimHandler:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;

    invoke-virtual {v1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->getSceneChangeType()I

    move-result v1

    if-nez v1, :cond_3

    .line 457
    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onStateSceneChangeEnd()V

    goto :goto_0

    .line 461
    :cond_3
    const/16 v1, 0x13

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onPostMessage(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method private onStateUnbindAdapter()V
    .locals 4

    .prologue
    .line 497
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mScAnimHandler:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneCurrent:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    if-nez v1, :cond_1

    .line 513
    :cond_0
    :goto_0
    return-void

    .line 500
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneCurrent:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v0

    .line 501
    .local v0, szSceneIdentity:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][SunnySceneChangeHandler][onStateUnbindAdapter]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneCurrent:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onUnbindAdapter()V

    .line 504
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneCurrent:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->isSecureUnbindAdapter()Z

    move-result v1

    if-nez v1, :cond_2

    .line 506
    new-instance v1, Lcom/htc/sunny2/frameworks/utils/SunnyExceptionSuperNotCalled;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUnbindAdapter: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/sunny2/frameworks/utils/SunnyExceptionSuperNotCalled;-><init>(Ljava/lang/String;)V

    throw v1

    .line 511
    :cond_2
    const/16 v1, 0x15

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onPostMessage(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method private onStateUnlockNewAdapter()V
    .locals 2

    .prologue
    .line 529
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SunnySceneChangeHandler][onStateUnlockNewAdapter]:... "

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mNewAdapterLock:Z

    .line 532
    return-void
.end method


# virtual methods
.method public cancelSceneChange()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mChangeListener:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler$ISceneChangeListener;

    if-nez v0, :cond_0

    .line 121
    :goto_0
    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mChangeListener:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler$ISceneChangeListener;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler$ISceneChangeListener;->onSceneChangeCancelled()V

    goto :goto_0
.end method

.method public enableAnimationLock()V
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mAnimationLock:Z

    .line 171
    return-void
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getNextScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneNext:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    return-object v0
.end method

.method public getPreviousScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneCurrent:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    return-object v0
.end method

.method public isSceneForceClose()Z
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mIsSceneForceClose:Z

    return v0
.end method

.method public onMessage(Landroid/os/Message;)Z
    .locals 2
    .parameter "message"

    .prologue
    .line 557
    const/4 v0, 0x0

    .line 558
    .local v0, bResult:Z
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v1, :cond_0

    .line 608
    :goto_0
    return v0

    .line 561
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 564
    :pswitch_0
    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onStateAdapterCheck()V

    goto :goto_0

    .line 567
    :pswitch_1
    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onStateChangeStart()V

    goto :goto_0

    .line 570
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onPrepareAnimation(Ljava/lang/Object;)V

    goto :goto_0

    .line 573
    :pswitch_3
    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onStateBindAdapter()V

    goto :goto_0

    .line 576
    :pswitch_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onCreateAnimation(Ljava/lang/Object;)V

    goto :goto_0

    .line 579
    :pswitch_5
    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onPlayAnimation()V

    goto :goto_0

    .line 582
    :pswitch_6
    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onStartAnimation()V

    goto :goto_0

    .line 585
    :pswitch_7
    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onExitAnimation()V

    goto :goto_0

    .line 588
    :pswitch_8
    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onStateSendForeground()V

    goto :goto_0

    .line 591
    :pswitch_9
    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onStateSendBackground()V

    goto :goto_0

    .line 594
    :pswitch_a
    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onStateUnbindAdapter()V

    goto :goto_0

    .line 597
    :pswitch_b
    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onStateSceneChangeEnd()V

    goto :goto_0

    .line 600
    :pswitch_c
    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onStateUnlockNewAdapter()V

    goto :goto_0

    .line 603
    :pswitch_d
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onStateAdapterReady()V

    goto :goto_0

    .line 561
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public onPostMessage(ILjava/lang/Object;I)V
    .locals 4
    .parameter "nMessageID"
    .parameter "obj"
    .parameter "delayMillis"

    .prologue
    .line 613
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 614
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 616
    :cond_0
    return-void
.end method

.method public onRemoveMessage(I)V
    .locals 1
    .parameter "nMessageID"

    .prologue
    .line 620
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 621
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 622
    :cond_0
    return-void
.end method

.method public onStateAdapterReady()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 248
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SunnySceneChangeHandler][onStateAdapterReady]:... "

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iput-boolean v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mNewAdapterLock:Z

    .line 250
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mAnimationLock:Z

    .line 254
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneCurrent:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    if-nez v0, :cond_0

    .line 256
    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onStateUnlockNewAdapter()V

    .line 257
    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onStateChangeStart()V

    .line 264
    :goto_0
    return-void

    .line 261
    :cond_0
    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onRemoveMessage(I)V

    .line 262
    const/16 v0, 0xb

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onPostMessage(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method public onStateAnimationReady()V
    .locals 4

    .prologue
    .line 386
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mScAnimHandler:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;

    invoke-virtual {v1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->decrement()V

    .line 387
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mScAnimHandler:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;

    invoke-virtual {v1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->getReferences()I

    move-result v0

    .line 388
    .local v0, nReferences:I
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][SunnySceneChangeHandler][onStateAnimationReady]: waiting: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    if-nez v0, :cond_0

    .line 391
    const/16 v1, 0xf

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onPostMessage(ILjava/lang/Object;I)V

    .line 393
    :cond_0
    return-void
.end method

.method public prepareSceneChange(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;Landroid/os/Bundle;Z)Z
    .locals 2
    .parameter "sceneControl"
    .parameter "sceneCurrent"
    .parameter "sceneNext"
    .parameter "bundle"
    .parameter "bIsFoceClose"

    .prologue
    .line 132
    const/4 v0, 0x0

    .line 135
    .local v0, bResult:Z
    iput-boolean p5, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mIsSceneForceClose:Z

    .line 136
    iput-object p1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    .line 137
    iput-object p2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneCurrent:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    .line 138
    iput-object p3, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneNext:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    .line 139
    iput-object p4, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mBundle:Landroid/os/Bundle;

    .line 141
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mChangeListener:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler$ISceneChangeListener;

    if-eqz v1, :cond_0

    .line 142
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mChangeListener:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler$ISceneChangeListener;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler$ISceneChangeListener;->onSceneChangeBegin()V

    .line 144
    :cond_0
    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->doSceneChange()V

    .line 146
    const/4 v1, 0x1

    return v1
.end method

.method public reset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 150
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SunnySceneChangeHandler][reset]: "

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iput-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    .line 152
    iput-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mChangeListener:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler$ISceneChangeListener;

    .line 153
    iput-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneCurrent:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    .line 154
    iput-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneNext:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    .line 155
    iput-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mBundle:Landroid/os/Bundle;

    .line 156
    iput-boolean v3, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mIsSceneForceClose:Z

    .line 157
    iput-boolean v3, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mNewAdapterLock:Z

    .line 158
    iput-boolean v3, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mAnimationLock:Z

    .line 159
    return-void
.end method

.method public sceneChangeEnterLock()I
    .locals 3

    .prologue
    .line 90
    const/16 v0, 0x514

    .line 94
    .local v0, nLock:I
    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->isNewAdapterLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 96
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][SunnySceneChangeHandler][sceneChangeEnterLock]: NewAdapterLocked! "

    invoke-static {v1, v2}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const/16 v0, 0x515

    .line 105
    :cond_0
    :goto_0
    return v0

    .line 99
    :cond_1
    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->isAnimationLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][SunnySceneChangeHandler][sceneChangeEnterLock]: AnimationLocked! "

    invoke-static {v1, v2}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const/16 v0, 0x516

    goto :goto_0
.end method

.method public sceneChangeInProgress()Z
    .locals 2

    .prologue
    .line 109
    const/4 v0, 0x0

    .line 110
    .local v0, bResult:Z
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mChangeListener:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler$ISceneChangeListener;

    if-nez v1, :cond_0

    .line 113
    .end local v0           #bResult:Z
    :goto_0
    return v0

    .restart local v0       #bResult:Z
    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mChangeListener:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler$ISceneChangeListener;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler$ISceneChangeListener;->isSceneChanging()Z

    move-result v0

    goto :goto_0
.end method

.method public setChangeListener(Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler$ISceneChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mChangeListener:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler$ISceneChangeListener;

    .line 87
    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 547
    return-void
.end method
