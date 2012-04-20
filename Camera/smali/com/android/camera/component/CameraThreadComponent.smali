.class public abstract Lcom/android/camera/component/CameraThreadComponent;
.super Lcom/android/camera/component/CameraCompoment;
.source "CameraThreadComponent.java"


# direct methods
.method protected constructor <init>(Ljava/lang/String;ZLcom/android/camera/CameraThread;)V
    .locals 1
    .parameter "name"
    .parameter "hasHandler"
    .parameter "cameraThread"

    .prologue
    .line 17
    invoke-virtual {p3}, Lcom/android/camera/CameraThread;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/camera/component/CameraCompoment;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;Lcom/android/camera/CameraThread;)V

    .line 18
    return-void
.end method


# virtual methods
.method protected final getCamera()Landroid/hardware/Camera;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/android/camera/component/CameraThreadComponent;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    return-object v0
.end method

.method protected final getCameraController()Lcom/android/camera/CameraController;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/android/camera/component/CameraThreadComponent;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v0

    return-object v0
.end method

.method protected final getCameraMode()Lcom/android/camera/CameraMode;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/android/camera/component/CameraThreadComponent;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/CameraMode;

    return-object v0
.end method

.method protected final getCameraType()Lcom/android/camera/CameraType;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/android/camera/component/CameraThreadComponent;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/CameraType;

    return-object v0
.end method
