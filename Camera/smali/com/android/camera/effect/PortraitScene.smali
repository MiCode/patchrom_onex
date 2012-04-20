.class public final Lcom/android/camera/effect/PortraitScene;
.super Lcom/android/camera/effect/SceneEffectBase;
.source "PortraitScene.java"

# interfaces
.implements Lcom/android/camera/effect/IScene;


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 1
    .parameter "cameraActivity"

    .prologue
    .line 13
    const-string v0, "portrait"

    invoke-direct {p0, v0, p1}, Lcom/android/camera/effect/SceneEffectBase;-><init>(Ljava/lang/String;Lcom/android/camera/HTCCamera;)V

    .line 14
    return-void
.end method


# virtual methods
.method protected applyEffect(Lcom/android/camera/effect/EffectBase;)V
    .locals 2
    .parameter "prevEffect"

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/android/camera/effect/PortraitScene;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 20
    .local v0, handler:Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 21
    new-instance v1, Lcom/android/camera/effect/PortraitScene$1;

    invoke-direct {v1, p0}, Lcom/android/camera/effect/PortraitScene$1;-><init>(Lcom/android/camera/effect/PortraitScene;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 33
    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/effect/SceneEffectBase;->applyEffect(Lcom/android/camera/effect/EffectBase;)V

    .line 34
    return-void
.end method

.method protected cancelEffect(Lcom/android/camera/effect/EffectBase;)V
    .locals 2
    .parameter "nextEffect"

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/android/camera/effect/PortraitScene;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 40
    .local v0, handler:Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 41
    new-instance v1, Lcom/android/camera/effect/PortraitScene$2;

    invoke-direct {v1, p0}, Lcom/android/camera/effect/PortraitScene$2;-><init>(Lcom/android/camera/effect/PortraitScene;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 52
    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/effect/SceneEffectBase;->cancelEffect(Lcom/android/camera/effect/EffectBase;)V

    .line 53
    return-void
.end method
