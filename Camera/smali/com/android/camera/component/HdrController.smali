.class public final Lcom/android/camera/component/HdrController;
.super Lcom/android/camera/component/CameraThreadComponent;
.source "HdrController.java"


# static fields
.field static final MSG_ENTER_HDR:I = 0x2711

.field static final MSG_EXIT_HDR:I = 0x2712

.field static final MSG_LINK:I = 0x2710

.field public static final NAME:Ljava/lang/String; = "HDR Controller"


# instance fields
.field private m_ColorEffectController:Lcom/android/camera/effect/ColorEffectController;

.field private m_GpuEffectController:Lcom/android/camera/effect/GpuEffectController;

.field private m_HdrUI:Lcom/android/camera/component/HdrUI;

.field private m_IsEntered:Z

.field private m_SceneController:Lcom/android/camera/effect/SceneController;

.field private m_ShutterSoundHandle:Lcom/android/camera/Handle;


# direct methods
.method public constructor <init>(Lcom/android/camera/CameraThread;)V
    .locals 2
    .parameter "cameraThread"

    .prologue
    .line 53
    const-string v0, "HDR Controller"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/camera/component/CameraThreadComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/CameraThread;)V

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/HdrController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/android/camera/component/HdrController;->m_IsEntered:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/component/HdrController;Lcom/android/camera/CameraThread;Landroid/hardware/Camera;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/android/camera/component/HdrController;->takePicture(Lcom/android/camera/CameraThread;Landroid/hardware/Camera;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/component/HdrController;)Lcom/android/camera/Handle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/camera/component/HdrController;->m_ShutterSoundHandle:Lcom/android/camera/Handle;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/component/HdrController;)Lcom/android/camera/component/HdrUI;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/camera/component/HdrController;->m_HdrUI:Lcom/android/camera/component/HdrUI;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/component/HdrController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/component/HdrController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final isSupported(Lcom/android/camera/HTCCamera;)Z
    .locals 3
    .parameter "cameraActivity"

    .prologue
    const/4 v0, 0x0

    .line 87
    if-nez p0, :cond_1

    .line 93
    :cond_0
    :goto_0
    return v0

    .line 90
    :cond_1
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isTablet()Z

    move-result v1

    if-nez v1, :cond_0

    .line 93
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x50

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x95

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x96

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x97

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0xab

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0xac

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0xe3

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0xe4

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0xe5

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x31

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x32

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x7c

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private linkToOtherControllers()V
    .locals 2

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/android/camera/component/HdrController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getComponentManager()Lcom/android/camera/component/CameraThreadComponentManager;

    move-result-object v0

    .line 137
    .local v0, components:Lcom/android/camera/component/ComponentManager;
    iget-object v1, p0, Lcom/android/camera/component/HdrController;->m_ColorEffectController:Lcom/android/camera/effect/ColorEffectController;

    if-nez v1, :cond_0

    .line 138
    const-string v1, "Color Effect Controller"

    invoke-virtual {v0, v1}, Lcom/android/camera/component/CameraThreadComponentManager;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v1

    check-cast v1, Lcom/android/camera/effect/ColorEffectController;

    iput-object v1, p0, Lcom/android/camera/component/HdrController;->m_ColorEffectController:Lcom/android/camera/effect/ColorEffectController;

    .line 139
    :cond_0
    iget-object v1, p0, Lcom/android/camera/component/HdrController;->m_GpuEffectController:Lcom/android/camera/effect/GpuEffectController;

    if-nez v1, :cond_1

    .line 140
    const-string v1, "GPU Effect Controller"

    invoke-virtual {v0, v1}, Lcom/android/camera/component/CameraThreadComponentManager;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v1

    check-cast v1, Lcom/android/camera/effect/GpuEffectController;

    iput-object v1, p0, Lcom/android/camera/component/HdrController;->m_GpuEffectController:Lcom/android/camera/effect/GpuEffectController;

    .line 141
    :cond_1
    iget-object v1, p0, Lcom/android/camera/component/HdrController;->m_SceneController:Lcom/android/camera/effect/SceneController;

    if-nez v1, :cond_2

    .line 142
    const-string v1, "Scene Controller"

    invoke-virtual {v0, v1}, Lcom/android/camera/component/CameraThreadComponentManager;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v1

    check-cast v1, Lcom/android/camera/effect/SceneController;

    iput-object v1, p0, Lcom/android/camera/component/HdrController;->m_SceneController:Lcom/android/camera/effect/SceneController;

    .line 143
    :cond_2
    return-void
.end method

.method private onEnterHdr()V
    .locals 4

    .prologue
    .line 151
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/camera/component/HdrController;->m_IsEntered:Z

    .line 154
    invoke-direct {p0}, Lcom/android/camera/component/HdrController;->linkToOtherControllers()V

    .line 155
    iget-object v2, p0, Lcom/android/camera/component/HdrController;->m_ColorEffectController:Lcom/android/camera/effect/ColorEffectController;

    if-eqz v2, :cond_0

    .line 156
    iget-object v2, p0, Lcom/android/camera/component/HdrController;->m_ColorEffectController:Lcom/android/camera/effect/ColorEffectController;

    const-string v3, "none"

    invoke-virtual {v2, v3}, Lcom/android/camera/effect/ColorEffectController;->setColorEffect(Ljava/lang/String;)V

    .line 157
    :cond_0
    iget-object v2, p0, Lcom/android/camera/component/HdrController;->m_GpuEffectController:Lcom/android/camera/effect/GpuEffectController;

    if-eqz v2, :cond_1

    .line 158
    iget-object v2, p0, Lcom/android/camera/component/HdrController;->m_GpuEffectController:Lcom/android/camera/effect/GpuEffectController;

    invoke-virtual {v2}, Lcom/android/camera/effect/GpuEffectController;->clearEffect()V

    .line 159
    :cond_1
    iget-object v2, p0, Lcom/android/camera/component/HdrController;->m_SceneController:Lcom/android/camera/effect/SceneController;

    if-eqz v2, :cond_2

    .line 160
    iget-object v2, p0, Lcom/android/camera/component/HdrController;->m_SceneController:Lcom/android/camera/effect/SceneController;

    const-string v3, "auto"

    invoke-virtual {v2, v3}, Lcom/android/camera/effect/SceneController;->setScene(Ljava/lang/String;)V

    .line 163
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/component/HdrController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraThread;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v1

    .line 164
    .local v1, cameraController:Lcom/android/camera/CameraController;
    if-eqz v1, :cond_5

    .line 167
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "onEnterHdr() - Set capture mode to HDR"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string v2, "capture-mode"

    const-string v3, "hdr"

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-virtual {v1}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    .line 172
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isNvidiaPlatform()Z

    move-result v2

    if-nez v2, :cond_3

    .line 174
    invoke-virtual {p0}, Lcom/android/camera/component/HdrController;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    .line 175
    .local v0, camera:Landroid/hardware/Camera;
    if-eqz v0, :cond_4

    .line 177
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "onEnterHdr() - Restart preview"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 179
    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 187
    .end local v0           #camera:Landroid/hardware/Camera;
    :cond_3
    :goto_0
    return-void

    .line 182
    .restart local v0       #camera:Landroid/hardware/Camera;
    :cond_4
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "onEnterHdr() - Cannot restart preview because there is no camera device"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 186
    .end local v0           #camera:Landroid/hardware/Camera;
    :cond_5
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "onEnterHdr() - Cannot set capture mode to hdr because there is no camera controller"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onExitHdr()V
    .locals 4

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/android/camera/component/HdrController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraThread;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v1

    .line 196
    .local v1, cameraController:Lcom/android/camera/CameraController;
    if-eqz v1, :cond_3

    .line 199
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "onExitHdr() - Set capture mode to normal"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isNvidiaPlatform()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 201
    const-string v2, "capture-mode"

    const-string v3, "zsl"

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    :goto_0
    invoke-virtual {v1}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    .line 207
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isNvidiaPlatform()Z

    move-result v2

    if-nez v2, :cond_0

    .line 209
    invoke-virtual {p0}, Lcom/android/camera/component/HdrController;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    .line 210
    .local v0, camera:Landroid/hardware/Camera;
    if-eqz v0, :cond_2

    .line 212
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "onExitHdr() - Restart preview"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 214
    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 224
    .end local v0           #camera:Landroid/hardware/Camera;
    :cond_0
    :goto_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/camera/component/HdrController;->m_IsEntered:Z

    .line 225
    return-void

    .line 203
    :cond_1
    const-string v2, "capture-mode"

    const-string v3, "normal"

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 217
    .restart local v0       #camera:Landroid/hardware/Camera;
    :cond_2
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "onExitHdr() - Cannot restart preview because there is no camera device"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 221
    .end local v0           #camera:Landroid/hardware/Camera;
    :cond_3
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "Cannot set capture mode to normal because there is no camera controller"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private takePicture(Lcom/android/camera/CameraThread;Landroid/hardware/Camera;)V
    .locals 5
    .parameter "cameraThread"
    .parameter "camera"

    .prologue
    .line 234
    invoke-virtual {p1}, Lcom/android/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 236
    const-class v1, Lcom/android/camera/IAudioManager;

    invoke-virtual {p0, v1}, Lcom/android/camera/component/HdrController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IAudioManager;

    .line 237
    .local v0, audioManager:Lcom/android/camera/IAudioManager;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/component/HdrController;->m_ShutterSoundHandle:Lcom/android/camera/Handle;

    if-nez v1, :cond_0

    .line 238
    const v1, 0x7f060005

    invoke-interface {v0, v1}, Lcom/android/camera/IAudioManager;->loadSoundToMemory(I)Lcom/android/camera/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/component/HdrController;->m_ShutterSoundHandle:Lcom/android/camera/Handle;

    .line 244
    :cond_0
    :goto_0
    sget-object v1, Lcom/android/camera/TIME;->ShutterCallback:Lcom/android/camera/TIME$Value;

    invoke-virtual {v1}, Lcom/android/camera/TIME$Value;->Start()V

    .line 247
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "Take picture"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    new-instance v1, Lcom/android/camera/component/HdrController$2;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/camera/component/HdrController$2;-><init>(Lcom/android/camera/component/HdrController;Lcom/android/camera/CameraThread;Lcom/android/camera/IAudioManager;)V

    new-instance v2, Lcom/android/camera/component/HdrController$3;

    invoke-direct {v2, p0}, Lcom/android/camera/component/HdrController$3;-><init>(Lcom/android/camera/component/HdrController;)V

    new-instance v3, Lcom/android/camera/component/HdrController$4;

    invoke-direct {v3, p0, p1}, Lcom/android/camera/component/HdrController$4;-><init>(Lcom/android/camera/component/HdrController;Lcom/android/camera/CameraThread;)V

    new-instance v4, Lcom/android/camera/component/HdrController$5;

    invoke-direct {v4, p0, p1}, Lcom/android/camera/component/HdrController$5;-><init>(Lcom/android/camera/component/HdrController;Lcom/android/camera/CameraThread;)V

    invoke-virtual {p2, v1, v2, v3, v4}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 307
    return-void

    .line 241
    .end local v0           #audioManager:Lcom/android/camera/IAudioManager;
    :cond_1
    const/4 v0, 0x0

    .restart local v0       #audioManager:Lcom/android/camera/IAudioManager;
    goto :goto_0
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 62
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 77
    invoke-super {p0, p1}, Lcom/android/camera/component/CameraThreadComponent;->handleMessage(Landroid/os/Message;)V

    .line 80
    :goto_0
    return-void

    .line 65
    :pswitch_0
    invoke-direct {p0}, Lcom/android/camera/component/HdrController;->onEnterHdr()V

    goto :goto_0

    .line 69
    :pswitch_1
    invoke-direct {p0}, Lcom/android/camera/component/HdrController;->onExitHdr()V

    goto :goto_0

    .line 73
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/component/HdrUI;

    iput-object v0, p0, Lcom/android/camera/component/HdrController;->m_HdrUI:Lcom/android/camera/component/HdrUI;

    goto :goto_0

    .line 62
    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 3

    .prologue
    .line 114
    invoke-super {p0}, Lcom/android/camera/component/CameraThreadComponent;->initializeOverride()V

    .line 117
    invoke-virtual {p0}, Lcom/android/camera/component/HdrController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    .line 118
    .local v0, cameraThread:Lcom/android/camera/CameraThread;
    iget-object v1, v0, Lcom/android/camera/CameraThread;->requestTakingPictureEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/HdrController$1;

    invoke-direct {v2, p0}, Lcom/android/camera/component/HdrController$1;-><init>(Lcom/android/camera/component/HdrController;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 129
    return-void
.end method
