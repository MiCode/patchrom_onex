.class public final Lcom/android/camera/effect/ColorEffectControllerBuilder;
.super Lcom/android/camera/component/CameraThreadComponentBuilder;
.source "ColorEffectControllerBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/component/CameraThreadComponentBuilder",
        "<",
        "Lcom/android/camera/effect/ColorEffectController;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    const-string v0, "Color Effect Controller"

    invoke-direct {p0, v0}, Lcom/android/camera/component/CameraThreadComponentBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    return-void
.end method


# virtual methods
.method public bridge synthetic createComponent(Lcom/android/camera/CameraThread;)Lcom/android/camera/component/Component;
    .locals 1
    .parameter "x0"

    .prologue
    .line 6
    invoke-virtual {p0, p1}, Lcom/android/camera/effect/ColorEffectControllerBuilder;->createComponent(Lcom/android/camera/CameraThread;)Lcom/android/camera/effect/ColorEffectController;

    move-result-object v0

    return-object v0
.end method

.method public createComponent(Lcom/android/camera/CameraThread;)Lcom/android/camera/effect/ColorEffectController;
    .locals 1
    .parameter "cameraThread"

    .prologue
    .line 16
    new-instance v0, Lcom/android/camera/effect/ColorEffectController;

    invoke-direct {v0, p1}, Lcom/android/camera/effect/ColorEffectController;-><init>(Lcom/android/camera/CameraThread;)V

    return-object v0
.end method
