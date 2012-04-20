.class public final Lcom/android/camera/component/SmartShotController;
.super Lcom/android/camera/component/CameraThreadComponent;
.source "SmartShotController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/component/SmartShotController$7;,
        Lcom/android/camera/component/SmartShotController$OlaFaceDetectExtern;,
        Lcom/android/camera/component/SmartShotController$GroupPortraitImageTask;
    }
.end annotation


# static fields
.field public static final DEFAULT_SHUTTER_SOUND:I = 0x7f060004

.field public static final MSG_AUTO_SESSION_RECYCLE:I = 0x3

.field public static final MSG_ENTER_SMART_SHOT:I = 0x1

.field public static final MSG_EXIT_SMART_SHOT:I = 0x2

.field public static final NAME:Ljava/lang/String; = "Smart Shot Controller"

.field private static final m_BurstDCFInfo:Lcom/android/camera/io/DCFInfo;


# instance fields
.field private FDE:Lcom/android/camera/component/SmartShotController$OlaFaceDetectExtern;

.field autoSession:Lcom/scalado/app/rewind/AutoSession;

.field cropFacesBmp:[Landroid/graphics/Bitmap;

.field mDrawFaces:Lcom/android/camera/widget/DrawFaceAnimationView;

.field private final mJpegCallback:Landroid/hardware/Camera$PictureCallback;

.field private final mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

.field private final mRawCallback:Landroid/hardware/Camera$PictureCallback;

.field private final mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

.field private final m_AutoSessionListener:Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;

.field private m_CaptureCount:I

.field private m_ColorEffectController:Lcom/android/camera/effect/ColorEffectController;

.field private m_CurrentCaptureIndex:I

.field private final m_ExifTags:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_GpuEffectController:Lcom/android/camera/effect/GpuEffectController;

.field private m_InstanceID:J

.field private m_IsSmartShotModeEntered:Z

.field private m_SceneController:Lcom/android/camera/effect/SceneController;

.field m_Screen:Lcom/scalado/base/Image;

.field private m_SmartShotUI:Lcom/android/camera/component/SmartShotUI;

.field private final m_StoredPictureUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field m_faceRects:[Landroid/graphics/Rect;

.field m_firstSourceImage:Landroid/graphics/Bitmap;

.field m_replaceRects:[Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 78
    new-instance v0, Lcom/android/camera/io/DCFInfo;

    const-string v1, "BURST"

    const-string v2, "IMAG"

    const-string v3, "burst_dir_counter"

    const-string v4, "burst_file_counter"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/io/DCFInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/component/SmartShotController;->m_BurstDCFInfo:Lcom/android/camera/io/DCFInfo;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/CameraThread;)V
    .locals 3
    .parameter "cameraThread"

    .prologue
    const/4 v2, 0x0

    .line 207
    const-string v0, "Smart Shot Controller"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/camera/component/CameraThreadComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/CameraThread;)V

    .line 84
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/camera/component/SmartShotController;->m_CaptureCount:I

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/component/SmartShotController;->m_CurrentCaptureIndex:I

    .line 91
    iput-object v2, p0, Lcom/android/camera/component/SmartShotController;->autoSession:Lcom/scalado/app/rewind/AutoSession;

    .line 92
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/camera/component/SmartShotController;->m_ExifTags:Ljava/util/Hashtable;

    .line 94
    iput-object v2, p0, Lcom/android/camera/component/SmartShotController;->m_replaceRects:[Landroid/graphics/Rect;

    .line 95
    iput-object v2, p0, Lcom/android/camera/component/SmartShotController;->m_faceRects:[Landroid/graphics/Rect;

    .line 96
    iput-object v2, p0, Lcom/android/camera/component/SmartShotController;->cropFacesBmp:[Landroid/graphics/Bitmap;

    .line 97
    iput-object v2, p0, Lcom/android/camera/component/SmartShotController;->mDrawFaces:Lcom/android/camera/widget/DrawFaceAnimationView;

    .line 99
    iput-object v2, p0, Lcom/android/camera/component/SmartShotController;->FDE:Lcom/android/camera/component/SmartShotController$OlaFaceDetectExtern;

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/component/SmartShotController;->m_StoredPictureUris:Ljava/util/ArrayList;

    .line 343
    new-instance v0, Lcom/android/camera/component/SmartShotController$2;

    invoke-direct {v0, p0}, Lcom/android/camera/component/SmartShotController$2;-><init>(Lcom/android/camera/component/SmartShotController;)V

    iput-object v0, p0, Lcom/android/camera/component/SmartShotController;->m_AutoSessionListener:Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;

    .line 655
    new-instance v0, Lcom/android/camera/component/SmartShotController$3;

    invoke-direct {v0, p0}, Lcom/android/camera/component/SmartShotController$3;-><init>(Lcom/android/camera/component/SmartShotController;)V

    iput-object v0, p0, Lcom/android/camera/component/SmartShotController;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    .line 662
    new-instance v0, Lcom/android/camera/component/SmartShotController$4;

    invoke-direct {v0, p0}, Lcom/android/camera/component/SmartShotController$4;-><init>(Lcom/android/camera/component/SmartShotController;)V

    iput-object v0, p0, Lcom/android/camera/component/SmartShotController;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

    .line 669
    new-instance v0, Lcom/android/camera/component/SmartShotController$5;

    invoke-direct {v0, p0}, Lcom/android/camera/component/SmartShotController$5;-><init>(Lcom/android/camera/component/SmartShotController;)V

    iput-object v0, p0, Lcom/android/camera/component/SmartShotController;->mRawCallback:Landroid/hardware/Camera$PictureCallback;

    .line 676
    new-instance v0, Lcom/android/camera/component/SmartShotController$6;

    invoke-direct {v0, p0}, Lcom/android/camera/component/SmartShotController$6;-><init>(Lcom/android/camera/component/SmartShotController;)V

    iput-object v0, p0, Lcom/android/camera/component/SmartShotController;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    .line 208
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/SmartShotController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/android/camera/component/SmartShotController;->m_IsSmartShotModeEntered:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/component/SmartShotController;Lcom/android/camera/CameraThread;Landroid/hardware/Camera;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/camera/component/SmartShotController;->takePicture(Lcom/android/camera/CameraThread;Landroid/hardware/Camera;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/camera/component/SmartShotController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/camera/component/SmartShotController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/camera/component/SmartShotController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/camera/component/SmartShotController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/camera/component/SmartShotController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/camera/component/SmartShotController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/camera/component/SmartShotController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/camera/component/SmartShotController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/camera/component/SmartShotController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/camera/component/SmartShotController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/component/SmartShotController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/camera/component/SmartShotController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/component/SmartShotController;)Lcom/android/camera/component/SmartShotUI;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/component/SmartShotController;->m_SmartShotUI:Lcom/android/camera/component/SmartShotUI;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/component/SmartShotController;)Ljava/util/Hashtable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/component/SmartShotController;->m_ExifTags:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$500()Lcom/android/camera/io/DCFInfo;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/android/camera/component/SmartShotController;->m_BurstDCFInfo:Lcom/android/camera/io/DCFInfo;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/component/SmartShotController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/component/SmartShotController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/component/SmartShotController;)Lcom/android/camera/component/SmartShotController$OlaFaceDetectExtern;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/component/SmartShotController;->FDE:Lcom/android/camera/component/SmartShotController$OlaFaceDetectExtern;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/camera/component/SmartShotController;Lcom/android/camera/component/SmartShotController$OlaFaceDetectExtern;)Lcom/android/camera/component/SmartShotController$OlaFaceDetectExtern;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/camera/component/SmartShotController;->FDE:Lcom/android/camera/component/SmartShotController$OlaFaceDetectExtern;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/camera/component/SmartShotController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final isSupported(Lcom/android/camera/HTCCamera;)Z
    .locals 3
    .parameter "cameraActivity"

    .prologue
    const/4 v0, 0x0

    .line 267
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 278
    :cond_0
    :goto_0
    return v0

    .line 270
    :cond_1
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isTablet()Z

    move-result v1

    if-nez v1, :cond_0

    .line 273
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0xe3

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0xe4

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x31

    if-eq v1, v2, :cond_0

    .line 278
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private linkToOtherControllers()V
    .locals 2

    .prologue
    .line 294
    invoke-virtual {p0}, Lcom/android/camera/component/SmartShotController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getComponentManager()Lcom/android/camera/component/CameraThreadComponentManager;

    move-result-object v0

    .line 295
    .local v0, components:Lcom/android/camera/component/ComponentManager;
    iget-object v1, p0, Lcom/android/camera/component/SmartShotController;->m_ColorEffectController:Lcom/android/camera/effect/ColorEffectController;

    if-nez v1, :cond_0

    .line 296
    const-string v1, "Color Effect Controller"

    invoke-virtual {v0, v1}, Lcom/android/camera/component/CameraThreadComponentManager;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v1

    check-cast v1, Lcom/android/camera/effect/ColorEffectController;

    iput-object v1, p0, Lcom/android/camera/component/SmartShotController;->m_ColorEffectController:Lcom/android/camera/effect/ColorEffectController;

    .line 297
    :cond_0
    iget-object v1, p0, Lcom/android/camera/component/SmartShotController;->m_GpuEffectController:Lcom/android/camera/effect/GpuEffectController;

    if-nez v1, :cond_1

    .line 298
    const-string v1, "GPU Effect Controller"

    invoke-virtual {v0, v1}, Lcom/android/camera/component/CameraThreadComponentManager;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v1

    check-cast v1, Lcom/android/camera/effect/GpuEffectController;

    iput-object v1, p0, Lcom/android/camera/component/SmartShotController;->m_GpuEffectController:Lcom/android/camera/effect/GpuEffectController;

    .line 299
    :cond_1
    iget-object v1, p0, Lcom/android/camera/component/SmartShotController;->m_SceneController:Lcom/android/camera/effect/SceneController;

    if-nez v1, :cond_2

    .line 300
    const-string v1, "Scene Controller"

    invoke-virtual {v0, v1}, Lcom/android/camera/component/CameraThreadComponentManager;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v1

    check-cast v1, Lcom/android/camera/effect/SceneController;

    iput-object v1, p0, Lcom/android/camera/component/SmartShotController;->m_SceneController:Lcom/android/camera/effect/SceneController;

    .line 301
    :cond_2
    return-void
.end method

.method private linkToUI()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 876
    iget-object v1, p0, Lcom/android/camera/component/SmartShotController;->m_SmartShotUI:Lcom/android/camera/component/SmartShotUI;

    if-eqz v1, :cond_0

    .line 880
    :goto_0
    return v2

    .line 878
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/component/SmartShotController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 879
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getComponentManager()Lcom/android/camera/component/UIComponentManager;

    move-result-object v1

    const-string v3, "Smart Shot UI"

    invoke-virtual {v1, v3}, Lcom/android/camera/component/UIComponentManager;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v1

    check-cast v1, Lcom/android/camera/component/SmartShotUI;

    :goto_1
    iput-object v1, p0, Lcom/android/camera/component/SmartShotController;->m_SmartShotUI:Lcom/android/camera/component/SmartShotUI;

    .line 880
    iget-object v1, p0, Lcom/android/camera/component/SmartShotController;->m_SmartShotUI:Lcom/android/camera/component/SmartShotUI;

    if-eqz v1, :cond_2

    move v1, v2

    :goto_2
    move v2, v1

    goto :goto_0

    .line 879
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 880
    :cond_2
    const/4 v1, 0x0

    goto :goto_2
.end method

.method private onEnterSmartShotMode(J)V
    .locals 2
    .parameter "instanceID"

    .prologue
    .line 309
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/component/SmartShotController;->m_IsSmartShotModeEntered:Z

    .line 310
    iput-wide p1, p0, Lcom/android/camera/component/SmartShotController;->m_InstanceID:J

    .line 312
    invoke-direct {p0}, Lcom/android/camera/component/SmartShotController;->linkToUI()Z

    move-result v0

    if-nez v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Cannot link to UI"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/component/SmartShotController;->linkToOtherControllers()V

    .line 316
    iget-object v0, p0, Lcom/android/camera/component/SmartShotController;->m_ColorEffectController:Lcom/android/camera/effect/ColorEffectController;

    if-eqz v0, :cond_1

    .line 317
    iget-object v0, p0, Lcom/android/camera/component/SmartShotController;->m_ColorEffectController:Lcom/android/camera/effect/ColorEffectController;

    const-string v1, "none"

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/ColorEffectController;->setColorEffect(Ljava/lang/String;)V

    .line 318
    :cond_1
    iget-object v0, p0, Lcom/android/camera/component/SmartShotController;->m_GpuEffectController:Lcom/android/camera/effect/GpuEffectController;

    if-eqz v0, :cond_2

    .line 319
    iget-object v0, p0, Lcom/android/camera/component/SmartShotController;->m_GpuEffectController:Lcom/android/camera/effect/GpuEffectController;

    invoke-virtual {v0}, Lcom/android/camera/effect/GpuEffectController;->clearEffect()V

    .line 320
    :cond_2
    return-void
.end method

.method private onExitSmartShotMode()V
    .locals 4

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/android/camera/component/SmartShotController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    .line 329
    .local v1, cameraThread:Lcom/android/camera/CameraThread;
    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v0

    .line 332
    .local v0, cameraController:Lcom/android/camera/CameraController;
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x26

    if-ne v2, v3, :cond_0

    .line 333
    const-string v2, "capture-mode"

    const-string v3, "zsl"

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/camera/component/SmartShotController;->m_IsSmartShotModeEntered:Z

    .line 335
    iget-object v2, p0, Lcom/android/camera/component/SmartShotController;->autoSession:Lcom/scalado/app/rewind/AutoSession;

    if-eqz v2, :cond_1

    .line 337
    iget-object v2, p0, Lcom/android/camera/component/SmartShotController;->autoSession:Lcom/scalado/app/rewind/AutoSession;

    invoke-virtual {v2}, Lcom/scalado/app/rewind/AutoSession;->recycle()V

    .line 338
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/camera/component/SmartShotController;->autoSession:Lcom/scalado/app/rewind/AutoSession;

    .line 340
    :cond_1
    return-void
.end method

.method private takePicture(Lcom/android/camera/CameraThread;Landroid/hardware/Camera;)V
    .locals 9
    .parameter "cameraThread"
    .parameter "camera"

    .prologue
    const/4 v3, 0x0

    .line 690
    invoke-virtual {p1}, Lcom/android/camera/CameraThread;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v6

    .line 693
    .local v6, cameraController:Lcom/android/camera/CameraController;
    iput v3, p0, Lcom/android/camera/component/SmartShotController;->m_CurrentCaptureIndex:I

    .line 696
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v7

    .line 699
    .local v7, pictureSize:Landroid/hardware/Camera$Size;
    iget-object v0, p0, Lcom/android/camera/component/SmartShotController;->m_StoredPictureUris:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 702
    iget-object v1, p0, Lcom/android/camera/component/SmartShotController;->m_SmartShotUI:Lcom/android/camera/component/SmartShotUI;

    const/4 v2, 0x1

    iget-wide v4, p0, Lcom/android/camera/component/SmartShotController;->m_InstanceID:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/SmartShotController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    .line 705
    iget-object v0, p0, Lcom/android/camera/component/SmartShotController;->autoSession:Lcom/scalado/app/rewind/AutoSession;

    if-nez v0, :cond_1

    .line 707
    iget-object v0, p0, Lcom/android/camera/component/SmartShotController;->FDE:Lcom/android/camera/component/SmartShotController$OlaFaceDetectExtern;

    if-nez v0, :cond_0

    .line 708
    new-instance v0, Lcom/android/camera/component/SmartShotController$OlaFaceDetectExtern;

    invoke-direct {v0, p0}, Lcom/android/camera/component/SmartShotController$OlaFaceDetectExtern;-><init>(Lcom/android/camera/component/SmartShotController;)V

    iput-object v0, p0, Lcom/android/camera/component/SmartShotController;->FDE:Lcom/android/camera/component/SmartShotController$OlaFaceDetectExtern;

    .line 709
    :cond_0
    new-instance v0, Lcom/scalado/app/rewind/AutoSession;

    iget v1, p0, Lcom/android/camera/component/SmartShotController;->m_CaptureCount:I

    invoke-direct {v0, v1}, Lcom/scalado/app/rewind/AutoSession;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/component/SmartShotController;->autoSession:Lcom/scalado/app/rewind/AutoSession;

    .line 710
    iget-object v0, p0, Lcom/android/camera/component/SmartShotController;->autoSession:Lcom/scalado/app/rewind/AutoSession;

    iget-object v1, p0, Lcom/android/camera/component/SmartShotController;->FDE:Lcom/android/camera/component/SmartShotController$OlaFaceDetectExtern;

    invoke-virtual {v0, v1}, Lcom/scalado/app/rewind/AutoSession;->setFaceDetectEx(Lcom/scalado/app/rewind/AutoSession$FaceDetectExtern;)V

    .line 711
    iget-object v0, p0, Lcom/android/camera/component/SmartShotController;->autoSession:Lcom/scalado/app/rewind/AutoSession;

    iget-object v1, p0, Lcom/android/camera/component/SmartShotController;->m_AutoSessionListener:Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;

    invoke-virtual {v0, v1}, Lcom/scalado/app/rewind/AutoSession;->setListener(Lcom/scalado/app/rewind/AutoSession$AutoSessionListener;)V

    .line 717
    :goto_0
    iget-object v0, p1, Lcom/android/camera/CameraThread;->captureRotation:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/camera/rotate/UIRotation;

    .line 718
    .local v8, uiRotation:Lcom/android/camera/rotate/UIRotation;
    invoke-virtual {v8}, Lcom/android/camera/rotate/UIRotation;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 719
    iget-object v0, p0, Lcom/android/camera/component/SmartShotController;->autoSession:Lcom/scalado/app/rewind/AutoSession;

    new-instance v1, Lcom/scalado/base/Size;

    iget v2, v7, Landroid/hardware/Camera$Size;->width:I

    iget v3, v7, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v1, v2, v3}, Lcom/scalado/base/Size;-><init>(II)V

    sget-object v2, Lcom/scalado/base/Image$Config;->ARGB_8888:Lcom/scalado/base/Image$Config;

    invoke-virtual {v0, v1, v2}, Lcom/scalado/app/rewind/AutoSession;->setScreenConfig(Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    .line 723
    :goto_1
    iget-object v0, p0, Lcom/android/camera/component/SmartShotController;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    iget-object v1, p0, Lcom/android/camera/component/SmartShotController;->mRawCallback:Landroid/hardware/Camera$PictureCallback;

    iget-object v2, p0, Lcom/android/camera/component/SmartShotController;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

    iget-object v3, p0, Lcom/android/camera/component/SmartShotController;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 724
    return-void

    .line 715
    .end local v8           #uiRotation:Lcom/android/camera/rotate/UIRotation;
    :cond_1
    iget-object v0, p0, Lcom/android/camera/component/SmartShotController;->autoSession:Lcom/scalado/app/rewind/AutoSession;

    invoke-virtual {v0}, Lcom/scalado/app/rewind/AutoSession;->recycle()V

    goto :goto_0

    .line 721
    .restart local v8       #uiRotation:Lcom/android/camera/rotate/UIRotation;
    :cond_2
    iget-object v0, p0, Lcom/android/camera/component/SmartShotController;->autoSession:Lcom/scalado/app/rewind/AutoSession;

    new-instance v1, Lcom/scalado/base/Size;

    iget v2, v7, Landroid/hardware/Camera$Size;->height:I

    iget v3, v7, Landroid/hardware/Camera$Size;->width:I

    invoke-direct {v1, v2, v3}, Lcom/scalado/base/Size;-><init>(II)V

    sget-object v2, Lcom/scalado/base/Image$Config;->ARGB_8888:Lcom/scalado/base/Image$Config;

    invoke-virtual {v0, v1, v2}, Lcom/scalado/app/rewind/AutoSession;->setScreenConfig(Lcom/scalado/base/Size;Lcom/scalado/base/Image$Config;)V

    goto :goto_1
.end method


# virtual methods
.method public final handleCommonJpegCallback([BLandroid/hardware/Camera;)V
    .locals 22
    .parameter "jpegData"
    .parameter "camera"

    .prologue
    .line 503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "handleCommonJpegCallback() - start"

    invoke-static/range {v18 .. v19}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/component/SmartShotController;->threadAccessCheck()V

    .line 509
    sget-object v18, Lcom/android/camera/TIME;->JpegCallback:Lcom/android/camera/TIME$Value;

    invoke-virtual/range {v18 .. v18}, Lcom/android/camera/TIME$Value;->End()V

    .line 510
    sget-object v18, Lcom/android/camera/TIME;->StoreJpegImage:Lcom/android/camera/TIME$Value;

    invoke-virtual/range {v18 .. v18}, Lcom/android/camera/TIME$Value;->Start()V

    .line 513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    move-object/from16 v19, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "JPEG Callback["

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/component/SmartShotController;->m_CurrentCaptureIndex:I

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, "], JPEG-data size = "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    if-eqz p1, :cond_1

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v18, v0

    :goto_0
    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/component/SmartShotController;->m_CurrentCaptureIndex:I

    move/from16 v18, v0

    if-nez v18, :cond_3

    .line 518
    const/16 v16, 0x0

    .line 522
    .local v16, tempFile:Ljava/io/File;
    :try_start_0
    const-string v18, ".camera_temp"

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v16

    .line 523
    new-instance v13, Ljava/io/FileOutputStream;

    move-object/from16 v0, v16

    invoke-direct {v13, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 524
    .local v13, outputStream:Ljava/io/FileOutputStream;
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 525
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V

    .line 528
    new-instance v9, Landroid/media/ExifInterface;

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v9, v0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 529
    .local v9, exif:Landroid/media/ExifInterface;
    const/16 v18, 0xb

    move/from16 v0, v18

    new-array v15, v0, [Ljava/lang/String;

    const/16 v18, 0x0

    const-string v19, "DateTime"

    aput-object v19, v15, v18

    const/16 v18, 0x1

    const-string v19, "FocalLength"

    aput-object v19, v15, v18

    const/16 v18, 0x2

    const-string v19, "GPSAltitude"

    aput-object v19, v15, v18

    const/16 v18, 0x3

    const-string v19, "GPSAltitudeRef"

    aput-object v19, v15, v18

    const/16 v18, 0x4

    const-string v19, "GPSLatitude"

    aput-object v19, v15, v18

    const/16 v18, 0x5

    const-string v19, "GPSLatitudeRef"

    aput-object v19, v15, v18

    const/16 v18, 0x6

    const-string v19, "GPSLongitude"

    aput-object v19, v15, v18

    const/16 v18, 0x7

    const-string v19, "GPSLongitudeRef"

    aput-object v19, v15, v18

    const/16 v18, 0x8

    const-string v19, "Make"

    aput-object v19, v15, v18

    const/16 v18, 0x9

    const-string v19, "Model"

    aput-object v19, v15, v18

    const/16 v18, 0xa

    const-string v19, "WhiteBalance"

    aput-object v19, v15, v18

    .line 542
    .local v15, tagNames:[Ljava/lang/String;
    move-object v5, v15

    .local v5, arr$:[Ljava/lang/String;
    array-length v12, v5

    .local v12, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_1
    if-ge v10, v12, :cond_2

    aget-object v14, v5, v10

    .line 544
    .local v14, tagName:Ljava/lang/String;
    invoke-virtual {v9, v14}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 545
    .local v17, value:Ljava/lang/String;
    if-eqz v17, :cond_0

    .line 546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/SmartShotController;->m_ExifTags:Ljava/util/Hashtable;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v14, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 542
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 513
    .end local v5           #arr$:[Ljava/lang/String;
    .end local v9           #exif:Landroid/media/ExifInterface;
    .end local v10           #i$:I
    .end local v12           #len$:I
    .end local v13           #outputStream:Ljava/io/FileOutputStream;
    .end local v14           #tagName:Ljava/lang/String;
    .end local v15           #tagNames:[Ljava/lang/String;
    .end local v16           #tempFile:Ljava/io/File;
    .end local v17           #value:Ljava/lang/String;
    :cond_1
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 555
    .restart local v5       #arr$:[Ljava/lang/String;
    .restart local v9       #exif:Landroid/media/ExifInterface;
    .restart local v10       #i$:I
    .restart local v12       #len$:I
    .restart local v13       #outputStream:Ljava/io/FileOutputStream;
    .restart local v15       #tagNames:[Ljava/lang/String;
    .restart local v16       #tempFile:Ljava/io/File;
    :cond_2
    if-eqz v16, :cond_3

    .line 556
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    .line 561
    .end local v5           #arr$:[Ljava/lang/String;
    .end local v9           #exif:Landroid/media/ExifInterface;
    .end local v10           #i$:I
    .end local v12           #len$:I
    .end local v13           #outputStream:Ljava/io/FileOutputStream;
    .end local v15           #tagNames:[Ljava/lang/String;
    .end local v16           #tempFile:Ljava/io/File;
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/SmartShotController;->autoSession:Lcom/scalado/app/rewind/AutoSession;

    move-object/from16 v18, v0

    if-eqz v18, :cond_4

    .line 563
    invoke-static/range {p1 .. p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 564
    .local v6, buf:Ljava/nio/ByteBuffer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/SmartShotController;->autoSession:Lcom/scalado/app/rewind/AutoSession;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lcom/scalado/app/rewind/AutoSession;->addJpeg(Ljava/nio/ByteBuffer;)V

    .line 568
    .end local v6           #buf:Ljava/nio/ByteBuffer;
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/component/SmartShotController;->m_CurrentCaptureIndex:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/component/SmartShotController;->m_CurrentCaptureIndex:I

    .line 570
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/component/SmartShotController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v7

    .line 572
    .local v7, cameraThread:Lcom/android/camera/CameraThread;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/component/SmartShotController;->m_CurrentCaptureIndex:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/component/SmartShotController;->m_CaptureCount:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_6

    const/4 v11, 0x1

    .line 575
    .local v11, isLastPicture:Z
    :goto_3
    if-eqz v11, :cond_7

    .line 577
    invoke-virtual {v7}, Lcom/android/camera/CameraThread;->setCanStartPreview()V

    .line 578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/SmartShotController;->m_SmartShotUI:Lcom/android/camera/component/SmartShotUI;

    move-object/from16 v18, v0

    const/16 v19, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/component/SmartShotController;->sendMessage(Lcom/android/camera/component/Component;I)Z

    .line 579
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/component/SmartShotController;->m_CurrentCaptureIndex:I

    .line 582
    invoke-virtual {v7}, Lcom/android/camera/CameraThread;->endTakePicture()V

    .line 583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "getMergedImage - Start"

    invoke-static/range {v18 .. v19}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/SmartShotController;->autoSession:Lcom/scalado/app/rewind/AutoSession;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/scalado/app/rewind/AutoSession;->getMergedImage()V

    .line 585
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "getMergedImage - End"

    invoke-static/range {v18 .. v19}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "JPEG Callback end"

    invoke-static/range {v18 .. v19}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "handleCommonJpegCallback() - end"

    invoke-static/range {v18 .. v19}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    return-void

    .line 549
    .end local v7           #cameraThread:Lcom/android/camera/CameraThread;
    .end local v11           #isLastPicture:Z
    .restart local v16       #tempFile:Ljava/io/File;
    :catch_0
    move-exception v8

    .line 551
    .local v8, ex:Ljava/lang/Throwable;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "Cannot extract EXIF from first frame"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v8}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 555
    if-eqz v16, :cond_3

    .line 556
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    goto/16 :goto_2

    .line 555
    .end local v8           #ex:Ljava/lang/Throwable;
    :catchall_0
    move-exception v18

    if-eqz v16, :cond_5

    .line 556
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    :cond_5
    throw v18

    .line 572
    .end local v16           #tempFile:Ljava/io/File;
    .restart local v7       #cameraThread:Lcom/android/camera/CameraThread;
    :cond_6
    const/4 v11, 0x0

    goto :goto_3

    .line 588
    .restart local v11       #isLastPicture:Z
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/SmartShotController;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/SmartShotController;->mRawCallback:Landroid/hardware/Camera$PictureCallback;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/SmartShotController;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/component/SmartShotController;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    move-object/from16 v21, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    goto :goto_4
.end method

.method public final handleCommonPostviewCallback([BLandroid/hardware/Camera;)V
    .locals 2
    .parameter "yuvData"
    .parameter "camera"

    .prologue
    .line 599
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "handleCommonPostviewCallback() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "handleCommonPostviewCallback() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    return-void
.end method

.method public final handleCommonRawCallback([BLandroid/hardware/Camera;)V
    .locals 4
    .parameter "rawData"
    .parameter "camera"

    .prologue
    .line 608
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "handleCommonRawCallback() - start"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    invoke-virtual {p0}, Lcom/android/camera/component/SmartShotController;->threadAccessCheck()V

    .line 614
    sget-object v1, Lcom/android/camera/TIME;->RawCallback:Lcom/android/camera/TIME$Value;

    invoke-virtual {v1}, Lcom/android/camera/TIME$Value;->End()V

    .line 615
    sget-object v1, Lcom/android/camera/TIME;->JpegCallback:Lcom/android/camera/TIME$Value;

    invoke-virtual {v1}, Lcom/android/camera/TIME$Value;->Start()V

    .line 617
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Smart shot Mode - RAW Call-back, raw-data size = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_1

    array-length v1, p1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    invoke-virtual {p0}, Lcom/android/camera/component/SmartShotController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    .line 619
    .local v0, cameraThread:Lcom/android/camera/CameraThread;
    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 620
    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->playShutterSound()V

    .line 622
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "handleCommonRawCallback() - end"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    return-void

    .line 617
    .end local v0           #cameraThread:Lcom/android/camera/CameraThread;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public handleCommonShutterCallback()V
    .locals 1

    .prologue
    .line 631
    const v0, 0x7f060004

    invoke-virtual {p0, v0}, Lcom/android/camera/component/SmartShotController;->handleCommonShutterCallback(I)V

    .line 632
    return-void
.end method

.method public final handleCommonShutterCallback(I)V
    .locals 3
    .parameter "resid"

    .prologue
    .line 639
    invoke-virtual {p0}, Lcom/android/camera/component/SmartShotController;->threadAccessCheck()V

    .line 642
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "Smart shot Mode - Shutter Call-back"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    invoke-virtual {p0}, Lcom/android/camera/component/SmartShotController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    .line 644
    .local v0, cameraThread:Lcom/android/camera/CameraThread;
    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 645
    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->playShutterSound()V

    .line 648
    :cond_0
    sget-object v1, Lcom/android/camera/TIME;->ShutterCallback:Lcom/android/camera/TIME$Value;

    invoke-virtual {v1}, Lcom/android/camera/TIME$Value;->End()V

    .line 649
    sget-object v1, Lcom/android/camera/TIME;->RawCallback:Lcom/android/camera/TIME$Value;

    invoke-virtual {v1}, Lcom/android/camera/TIME$Value;->Start()V

    .line 650
    return-void
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 216
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 235
    invoke-super {p0, p1}, Lcom/android/camera/component/CameraThreadComponent;->handleMessage(Landroid/os/Message;)V

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 219
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/camera/component/SmartShotController;->onEnterSmartShotMode(J)V

    goto :goto_0

    .line 223
    :pswitch_1
    invoke-direct {p0}, Lcom/android/camera/component/SmartShotController;->onExitSmartShotMode()V

    goto :goto_0

    .line 227
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/component/SmartShotController;->autoSession:Lcom/scalado/app/rewind/AutoSession;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/android/camera/component/SmartShotController;->autoSession:Lcom/scalado/app/rewind/AutoSession;

    invoke-virtual {v0}, Lcom/scalado/app/rewind/AutoSession;->recycle()V

    .line 230
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/component/SmartShotController;->autoSession:Lcom/scalado/app/rewind/AutoSession;

    goto :goto_0

    .line 216
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 3

    .prologue
    .line 247
    invoke-super {p0}, Lcom/android/camera/component/CameraThreadComponent;->initializeOverride()V

    .line 248
    invoke-virtual {p0}, Lcom/android/camera/component/SmartShotController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    .line 249
    .local v0, cameraThread:Lcom/android/camera/CameraThread;
    iget-object v1, v0, Lcom/android/camera/CameraThread;->requestTakingPictureEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/SmartShotController$1;

    invoke-direct {v2, p0}, Lcom/android/camera/component/SmartShotController$1;-><init>(Lcom/android/camera/component/SmartShotController;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 260
    return-void
.end method

.method link(Lcom/android/camera/component/SmartShotUI;)V
    .locals 0
    .parameter "ui"

    .prologue
    .line 286
    iput-object p1, p0, Lcom/android/camera/component/SmartShotController;->m_SmartShotUI:Lcom/android/camera/component/SmartShotUI;

    .line 287
    return-void
.end method
