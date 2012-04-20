.class public Lcom/android/camera/SnapboothThread;
.super Ljava/lang/Thread;
.source "SnapboothThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/SnapboothThread$MainHandler;
    }
.end annotation


# static fields
.field public static final CANCEL_CAPTURE:I = 0xa

.field private static final CAPTURE_STATE_ERROR:I = 0x4

.field private static final CAPTURE_STATE_IDLE:I = 0x0

.field private static final CAPTURE_STATE_TAKING_PICTURE:I = 0x1

.field private static final CAPTURE_STATE_WAITING_CLOSE_CAMERA:I = 0x2

.field private static final CAPTURE_STATE_WAITING_QUIT_THREAD:I = 0x3

.field public static final CLOSE_CAMERA:I = 0x2

.field public static final CREATE_INIT_THUMBNAIL:I = 0x64

.field public static final CREATE_MULTISHOT_BITMAP:I = 0x3

.field public static final DELETE_CURRENT_IMAGE:I = 0x65

.field private static final MULTI_SHOT_INTERVAL:I = 0x3e8

.field public static final QUIT_CAMERA_THREAD:I = 0x5

.field public static final RECHECK_STORAGE_STATE:I = 0x66

.field public static final SETTINGS_RELOAD:I = 0x1

.field public static final SETTINGS_REMAIN:I = 0x0

.field public static final SET_GE_BLOOM:I = 0x24

.field public static final SET_GE_BULGE:I = 0x20

.field public static final SET_GE_CONTRAST:I = 0x23

.field public static final SET_GE_DOTS:I = 0x27

.field public static final SET_GE_MIRROR:I = 0x22

.field public static final SET_GE_NONE:I = 0x1f

.field public static final SET_GE_PUCKER:I = 0x21

.field public static final SET_GE_SEPIA:I = 0x25

.field public static final SET_GE_VINTAGE:I = 0x26

.field public static final START_PREVIEW:I = 0x0

.field public static final STOP_PREVIEW:I = 0x1

.field public static final STORE_JPEG:I = 0x6

.field private static final TAG:Ljava/lang/String; = "SnapboothThread"

.field public static final TAKE_PICTURE:I = 0x4

.field public static final UPDATE_EFFECT_ORIENTATION:I = 0x67

.field public static final mCountDownSec:I = 0x960


# instance fields
.field private Camera_Mode_Height:I

.field private Camera_Mode_Width:I

.field private Camera_Preview_Height:I

.field private Camera_Preview_Width:I

.field private mCamController:Lcom/android/camera/CameraController;

.field private mCameraDevice:Landroid/hardware/Camera;

.field private mCameraToken:Ljava/lang/Object;

.field private mCaptureState:I

.field private mCurrentEffectMessage:I

.field private mCurrentShutterNum:I

.field private mErrorCallback:Landroid/hardware/Camera$ErrorCallback;

.field private mIsCapturing:Z

.field private mIsMultiShutter:Z

.field private mIsShutterSound:Z

.field private mIsTakingPicture:Z

.field private mJPEGQuality:I

.field private mJpegData:[B

.field private mJpegPictureCallback:Landroid/hardware/Camera$PictureCallback;

.field private mMultiBitmap:Landroid/graphics/Bitmap;

.field private mMultiBitmapRotation:Lcom/android/camera/rotate/UIRotation;

.field private mPreviewing:Z

.field private mRawPictureCallback:Landroid/hardware/Camera$PictureCallback;

.field private mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

.field private mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;

.field private mSnapboothHandler:Lcom/android/camera/SnapboothThread$MainHandler;

.field private mStorageCheckRunnable:Ljava/lang/Runnable;

.field private mStorageCheckThread:Ljava/lang/Thread;

.field private mStorageState:I

.field private mUIHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCSnapbooth;Landroid/os/Handler;)V
    .locals 4
    .parameter "activity"
    .parameter "handler"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 716
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 62
    iput-object v1, p0, Lcom/android/camera/SnapboothThread;->mCameraDevice:Landroid/hardware/Camera;

    .line 63
    iput-object v1, p0, Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;

    .line 66
    iput-object v1, p0, Lcom/android/camera/SnapboothThread;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;

    .line 67
    iput-object v1, p0, Lcom/android/camera/SnapboothThread;->mUIHandler:Landroid/os/Handler;

    .line 69
    iput-object v1, p0, Lcom/android/camera/SnapboothThread;->mJpegData:[B

    .line 70
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/camera/SnapboothThread;->mJPEGQuality:I

    .line 72
    iput-object v1, p0, Lcom/android/camera/SnapboothThread;->mSnapboothHandler:Lcom/android/camera/SnapboothThread$MainHandler;

    .line 74
    const/16 v0, 0x1f

    iput v0, p0, Lcom/android/camera/SnapboothThread;->mCurrentEffectMessage:I

    .line 76
    iput v2, p0, Lcom/android/camera/SnapboothThread;->mStorageState:I

    .line 79
    iput v2, p0, Lcom/android/camera/SnapboothThread;->mCaptureState:I

    .line 86
    iput-object v1, p0, Lcom/android/camera/SnapboothThread;->mMultiBitmap:Landroid/graphics/Bitmap;

    .line 87
    sget-object v0, Lcom/android/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/android/camera/rotate/UIRotation;

    iput-object v0, p0, Lcom/android/camera/SnapboothThread;->mMultiBitmapRotation:Lcom/android/camera/rotate/UIRotation;

    .line 88
    iput v3, p0, Lcom/android/camera/SnapboothThread;->mCurrentShutterNum:I

    .line 97
    iput-boolean v2, p0, Lcom/android/camera/SnapboothThread;->mPreviewing:Z

    .line 100
    iput-boolean v3, p0, Lcom/android/camera/SnapboothThread;->mIsShutterSound:Z

    .line 107
    new-instance v0, Lcom/android/camera/SnapboothThread$1;

    invoke-direct {v0, p0}, Lcom/android/camera/SnapboothThread$1;-><init>(Lcom/android/camera/SnapboothThread;)V

    iput-object v0, p0, Lcom/android/camera/SnapboothThread;->mStorageCheckRunnable:Ljava/lang/Runnable;

    .line 115
    new-instance v0, Lcom/android/camera/SnapboothThread$2;

    invoke-direct {v0, p0}, Lcom/android/camera/SnapboothThread$2;-><init>(Lcom/android/camera/SnapboothThread;)V

    iput-object v0, p0, Lcom/android/camera/SnapboothThread;->mErrorCallback:Landroid/hardware/Camera$ErrorCallback;

    .line 142
    new-instance v0, Lcom/android/camera/SnapboothThread$3;

    invoke-direct {v0, p0}, Lcom/android/camera/SnapboothThread$3;-><init>(Lcom/android/camera/SnapboothThread;)V

    iput-object v0, p0, Lcom/android/camera/SnapboothThread;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    .line 157
    new-instance v0, Lcom/android/camera/SnapboothThread$4;

    invoke-direct {v0, p0}, Lcom/android/camera/SnapboothThread$4;-><init>(Lcom/android/camera/SnapboothThread;)V

    iput-object v0, p0, Lcom/android/camera/SnapboothThread;->mRawPictureCallback:Landroid/hardware/Camera$PictureCallback;

    .line 168
    new-instance v0, Lcom/android/camera/SnapboothThread$5;

    invoke-direct {v0, p0}, Lcom/android/camera/SnapboothThread$5;-><init>(Lcom/android/camera/SnapboothThread;)V

    iput-object v0, p0, Lcom/android/camera/SnapboothThread;->mJpegPictureCallback:Landroid/hardware/Camera$PictureCallback;

    .line 717
    iput-object p1, p0, Lcom/android/camera/SnapboothThread;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;

    .line 718
    iput-object p2, p0, Lcom/android/camera/SnapboothThread;->mUIHandler:Landroid/os/Handler;

    .line 719
    return-void
.end method

.method static synthetic access$002(Lcom/android/camera/SnapboothThread;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput p1, p0, Lcom/android/camera/SnapboothThread;->mStorageState:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/HTCSnapbooth;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/SnapboothThread;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/android/camera/SnapboothThread;->cancelCapture()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/camera/SnapboothThread;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/android/camera/SnapboothThread;->endCheckStorageState()I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/camera/SnapboothThread;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/android/camera/SnapboothThread;->beginCheckStorageState()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/camera/SnapboothThread;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/android/camera/SnapboothThread;->notifyStorageState()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/camera/SnapboothThread;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mMultiBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/camera/SnapboothThread;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput-object p1, p0, Lcom/android/camera/SnapboothThread;->mMultiBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/rotate/UIRotation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mMultiBitmapRotation:Lcom/android/camera/rotate/UIRotation;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/camera/SnapboothThread;Lcom/android/camera/rotate/UIRotation;)Lcom/android/camera/rotate/UIRotation;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput-object p1, p0, Lcom/android/camera/SnapboothThread;->mMultiBitmapRotation:Lcom/android/camera/rotate/UIRotation;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/camera/SnapboothThread;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/android/camera/SnapboothThread;->capture()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/camera/SnapboothThread;[B)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/android/camera/SnapboothThread;->onFirstPreviewFrameArrived([B)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/camera/SnapboothThread;I)F
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/android/camera/SnapboothThread;->getMultiDrawLeft(I)F

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/camera/SnapboothThread;I)F
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/android/camera/SnapboothThread;->getMultiDrawTop(I)F

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/camera/SnapboothThread;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-boolean v0, p0, Lcom/android/camera/SnapboothThread;->mIsShutterSound:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/android/camera/SnapboothThread;[B)[B
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput-object p1, p0, Lcom/android/camera/SnapboothThread;->mJpegData:[B

    return-object p1
.end method

.method static synthetic access$2102(Lcom/android/camera/SnapboothThread;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput-boolean p1, p0, Lcom/android/camera/SnapboothThread;->mIsCapturing:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/camera/SnapboothThread;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget v0, p0, Lcom/android/camera/SnapboothThread;->mCurrentEffectMessage:I

    return v0
.end method

.method static synthetic access$2202(Lcom/android/camera/SnapboothThread;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput p1, p0, Lcom/android/camera/SnapboothThread;->mCurrentEffectMessage:I

    return p1
.end method

.method static synthetic access$2300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/CameraController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/SnapboothThread;)Lcom/android/camera/SnapboothThread$MainHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mSnapboothHandler:Lcom/android/camera/SnapboothThread$MainHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/SnapboothThread;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/SnapboothThread;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-boolean v0, p0, Lcom/android/camera/SnapboothThread;->mIsTakingPicture:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/camera/SnapboothThread;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput-boolean p1, p0, Lcom/android/camera/SnapboothThread;->mIsTakingPicture:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/camera/SnapboothThread;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget v0, p0, Lcom/android/camera/SnapboothThread;->mCaptureState:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/camera/SnapboothThread;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput p1, p0, Lcom/android/camera/SnapboothThread;->mCaptureState:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/camera/SnapboothThread;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-boolean v0, p0, Lcom/android/camera/SnapboothThread;->mIsMultiShutter:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/camera/SnapboothThread;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput-boolean p1, p0, Lcom/android/camera/SnapboothThread;->mIsMultiShutter:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/camera/SnapboothThread;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget v0, p0, Lcom/android/camera/SnapboothThread;->mCurrentShutterNum:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/camera/SnapboothThread;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput p1, p0, Lcom/android/camera/SnapboothThread;->mCurrentShutterNum:I

    return p1
.end method

.method static synthetic access$804(Lcom/android/camera/SnapboothThread;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget v0, p0, Lcom/android/camera/SnapboothThread;->mCurrentShutterNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/SnapboothThread;->mCurrentShutterNum:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/camera/SnapboothThread;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/android/camera/SnapboothThread;->stopPreview()V

    return-void
.end method

.method private beginCheckStorageState()V
    .locals 2

    .prologue
    .line 1112
    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mStorageCheckThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 1114
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/SnapboothThread;->mStorageState:I

    .line 1115
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/camera/SnapboothThread;->mStorageCheckRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/camera/SnapboothThread;->mStorageCheckThread:Ljava/lang/Thread;

    .line 1116
    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mStorageCheckThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1118
    :cond_0
    return-void
.end method

.method private cancelCapture()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 1084
    const-string v0, "SnapboothThread"

    const-string v1, "cancelCapture - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mSnapboothHandler:Lcom/android/camera/SnapboothThread$MainHandler;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 1088
    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mSnapboothHandler:Lcom/android/camera/SnapboothThread$MainHandler;

    invoke-static {v0, v2}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 1091
    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mMultiBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1093
    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mMultiBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1094
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/SnapboothThread;->mMultiBitmap:Landroid/graphics/Bitmap;

    .line 1098
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/SnapboothThread;->mCurrentShutterNum:I

    .line 1101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/SnapboothThread;->mIsCapturing:Z

    .line 1102
    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mUIHandler:Landroid/os/Handler;

    invoke-static {v0, v2}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 1104
    const-string v0, "SnapboothThread"

    const-string v1, "cancelCapture - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1105
    return-void
.end method

.method private capture()Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 963
    const-string v6, "SnapboothThread"

    const-string v7, "start to capture photo"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    invoke-direct {p0}, Lcom/android/camera/SnapboothThread;->endCheckStorageState()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_0

    iget-object v6, p0, Lcom/android/camera/SnapboothThread;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;

    invoke-virtual {v6}, Lcom/android/camera/HTCSnapbooth;->isServiceMode()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1008
    :goto_0
    return v4

    .line 968
    :cond_0
    iput-boolean v4, p0, Lcom/android/camera/SnapboothThread;->mPreviewing:Z

    .line 971
    iput-boolean v5, p0, Lcom/android/camera/SnapboothThread;->mIsCapturing:Z

    .line 973
    iget-object v6, p0, Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;

    iget v7, p0, Lcom/android/camera/SnapboothThread;->mJPEGQuality:I

    invoke-virtual {v6, v7}, Lcom/android/camera/CameraController;->setJpegQuality(I)V

    .line 974
    iget-object v6, p0, Lcom/android/camera/SnapboothThread;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;

    invoke-virtual {v6}, Lcom/android/camera/HTCSnapbooth;->getFreezeOrientation()I

    move-result v6

    invoke-static {v9, v6, v4}, Lcom/android/camera/rotate/UIRotation;->fromDeviceOrientation(Lcom/android/camera/rotate/UIRotation;IZ)Lcom/android/camera/rotate/UIRotation;

    move-result-object v3

    .line 975
    .local v3, rotation:Lcom/android/camera/rotate/UIRotation;
    invoke-virtual {v3}, Lcom/android/camera/rotate/UIRotation;->isLandscape()Z

    move-result v6

    if-eqz v6, :cond_1

    move v0, v4

    .line 976
    .local v0, captureRotation:I
    :goto_1
    const-string v6, "SnapboothThread"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "set rotation, mCaptureRotation = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    iget-object v6, p0, Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v6, v0}, Lcom/android/camera/CameraController;->setRotation(I)V

    .line 979
    iget-object v6, p0, Lcom/android/camera/SnapboothThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v6, v9}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 982
    invoke-static {}, Lcom/android/camera/LocationHandler;->getLocation()Landroid/location/Location;

    move-result-object v2

    .line 983
    .local v2, loc:Landroid/location/Location;
    iget-object v6, p0, Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v6, v2}, Lcom/android/camera/CameraController;->setLocation(Landroid/location/Location;)V

    .line 985
    iget-object v6, p0, Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v7, "img-timestamp"

    const-string v8, "0"

    invoke-virtual {v6, v7, v8}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    iget-object v6, p0, Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v6}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    .line 989
    const-string v6, "SnapboothThread"

    const-string v7, "Camera - takePicture"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 990
    sget-object v6, Lcom/android/camera/TIME;->ReadyTakePicture:Lcom/android/camera/TIME$Value;

    invoke-virtual {v6}, Lcom/android/camera/TIME$Value;->End()V

    .line 991
    sget-object v6, Lcom/android/camera/TIME;->ShutterCallback:Lcom/android/camera/TIME$Value;

    invoke-virtual {v6}, Lcom/android/camera/TIME$Value;->Start()V

    .line 995
    const/4 v6, 0x1

    :try_start_0
    iput-boolean v6, p0, Lcom/android/camera/SnapboothThread;->mIsTakingPicture:Z

    .line 996
    iget-object v6, p0, Lcom/android/camera/SnapboothThread;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v7, p0, Lcom/android/camera/SnapboothThread;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    iget-object v8, p0, Lcom/android/camera/SnapboothThread;->mRawPictureCallback:Landroid/hardware/Camera$PictureCallback;

    iget-object v9, p0, Lcom/android/camera/SnapboothThread;->mJpegPictureCallback:Landroid/hardware/Camera$PictureCallback;

    invoke-virtual {v6, v7, v8, v9}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v5

    .line 1008
    goto :goto_0

    .line 975
    .end local v0           #captureRotation:I
    .end local v2           #loc:Landroid/location/Location;
    :cond_1
    const/16 v0, 0x5a

    goto :goto_1

    .line 998
    .restart local v0       #captureRotation:I
    .restart local v2       #loc:Landroid/location/Location;
    :catch_0
    move-exception v1

    .line 1000
    .local v1, ex:Ljava/lang/Exception;
    iput-boolean v4, p0, Lcom/android/camera/SnapboothThread;->mIsTakingPicture:Z

    .line 1001
    const/4 v5, 0x4

    iput v5, p0, Lcom/android/camera/SnapboothThread;->mCaptureState:I

    .line 1002
    const-string v5, "SnapboothThread"

    const-string v6, "take picture exception - mCaptureState = CAPTURE_STATE_ERROR"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    const-string v5, "SnapboothThread"

    const-string v6, "take picture exception. Camera app finished"

    invoke-static {v5, v6, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1004
    iget-object v5, p0, Lcom/android/camera/SnapboothThread;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;

    invoke-virtual {v5}, Lcom/android/camera/HTCSnapbooth;->finish()V

    goto/16 :goto_0
.end method

.method private endCheckStorageState()I
    .locals 1

    .prologue
    .line 1128
    :goto_0
    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mStorageCheckThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 1132
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mStorageCheckThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1136
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/SnapboothThread;->mStorageCheckThread:Ljava/lang/Thread;

    .line 1140
    :cond_0
    iget v0, p0, Lcom/android/camera/SnapboothThread;->mStorageState:I

    if-eqz v0, :cond_1

    .line 1142
    invoke-direct {p0}, Lcom/android/camera/SnapboothThread;->notifyStorageState()V

    .line 1143
    iget v0, p0, Lcom/android/camera/SnapboothThread;->mStorageState:I

    return v0

    .line 1145
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/SnapboothThread;->beginCheckStorageState()V

    goto :goto_0

    .line 1134
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private getMultiDrawLeft(I)F
    .locals 1
    .parameter "num"

    .prologue
    .line 1058
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 1060
    :cond_0
    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mMultiBitmapRotation:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v0}, Lcom/android/camera/rotate/UIRotation;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1061
    sget v0, Lcom/android/camera/SnapboothCustomize;->CAPTURE_IMG_WIDTH:I

    int-to-float v0, v0

    .line 1065
    :goto_0
    return v0

    .line 1063
    :cond_1
    sget v0, Lcom/android/camera/SnapboothCustomize;->CAPTURE_IMG_HEIGHT:I

    int-to-float v0, v0

    goto :goto_0

    .line 1065
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getMultiDrawTop(I)F
    .locals 1
    .parameter "num"

    .prologue
    .line 1069
    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 1071
    :cond_0
    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mMultiBitmapRotation:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v0}, Lcom/android/camera/rotate/UIRotation;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1072
    sget v0, Lcom/android/camera/SnapboothCustomize;->CAPTURE_IMG_HEIGHT:I

    int-to-float v0, v0

    .line 1076
    :goto_0
    return v0

    .line 1074
    :cond_1
    sget v0, Lcom/android/camera/SnapboothCustomize;->CAPTURE_IMG_WIDTH:I

    int-to-float v0, v0

    goto :goto_0

    .line 1076
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadResolution()V
    .locals 2

    .prologue
    .line 946
    const-string v0, "SnapboothThread"

    const-string v1, "loadResolution() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    sget v0, Lcom/android/camera/SnapboothCustomize;->CAPTURE_IMG_HEIGHT:I

    iput v0, p0, Lcom/android/camera/SnapboothThread;->Camera_Mode_Width:I

    .line 949
    sget v0, Lcom/android/camera/SnapboothCustomize;->CAPTURE_IMG_WIDTH:I

    iput v0, p0, Lcom/android/camera/SnapboothThread;->Camera_Mode_Height:I

    .line 951
    sget v0, Lcom/android/camera/SnapboothCustomize;->PREVIEW_HEIGHT:I

    iput v0, p0, Lcom/android/camera/SnapboothThread;->Camera_Preview_Width:I

    .line 952
    sget v0, Lcom/android/camera/SnapboothCustomize;->PREVIEW_WIDTH:I

    iput v0, p0, Lcom/android/camera/SnapboothThread;->Camera_Preview_Height:I

    .line 954
    const-string v0, "SnapboothThread"

    const-string v1, "loadResolution() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    return-void
.end method

.method private notifyStorageState()V
    .locals 5

    .prologue
    .line 1154
    iget v0, p0, Lcom/android/camera/SnapboothThread;->mStorageState:I

    if-eqz v0, :cond_0

    .line 1155
    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x2a

    iget v2, p0, Lcom/android/camera/SnapboothThread;->mStorageState:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 1156
    :cond_0
    return-void
.end method

.method private onFirstPreviewFrameArrived([B)V
    .locals 7
    .parameter "buffer"

    .prologue
    const/4 v2, 0x0

    .line 749
    iget-boolean v0, p0, Lcom/android/camera/SnapboothThread;->mIsCapturing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mSnapboothHandler:Lcom/android/camera/SnapboothThread$MainHandler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/android/camera/SnapboothThread$MainHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 750
    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mUIHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    const/4 v4, 0x0

    const-wide/16 v5, 0x3e8

    move v3, v2

    invoke-static/range {v0 .. v6}, Lcom/android/camera/MessageHandler;->sendObtainMessageDelayed(Landroid/os/Handler;IIILjava/lang/Object;J)V

    .line 753
    :cond_0
    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 754
    return-void
.end method

.method private stopPreview()V
    .locals 2

    .prologue
    .line 915
    iget-boolean v0, p0, Lcom/android/camera/SnapboothThread;->mPreviewing:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 917
    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 918
    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mCameraDevice:Landroid/hardware/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 919
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/SnapboothThread;->mPreviewing:Z

    .line 920
    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mUIHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 921
    const-string v0, "SnapboothThread"

    const-string v1, "stopPreview"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    :cond_0
    return-void
.end method


# virtual methods
.method closeCamera()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1017
    iget-boolean v0, p0, Lcom/android/camera/SnapboothThread;->mPreviewing:Z

    if-eqz v0, :cond_0

    .line 1019
    const-string v0, "SnapboothThread"

    const-string v1, "before stopPreview"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1020
    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 1021
    iput-boolean v3, p0, Lcom/android/camera/SnapboothThread;->mPreviewing:Z

    .line 1022
    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mUIHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 1023
    const-string v0, "SnapboothThread"

    const-string v1, "after stopPreview"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1027
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/SnapboothThread;->resetJpegData()V

    .line 1030
    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    .line 1032
    const-string v0, "SnapboothThread"

    const-string v1, "before release"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1033
    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 1034
    const-string v0, "SnapboothThread"

    const-string v1, "after release"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1036
    iput-object v2, p0, Lcom/android/camera/SnapboothThread;->mCameraDevice:Landroid/hardware/Camera;

    .line 1037
    iput-object v2, p0, Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;

    .line 1039
    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mCameraToken:Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/camera/CameraToken;->releaseToken(Ljava/lang/Object;)V

    .line 1040
    iput-object v2, p0, Lcom/android/camera/SnapboothThread;->mCameraToken:Ljava/lang/Object;

    .line 1042
    iput v3, p0, Lcom/android/camera/SnapboothThread;->mCaptureState:I

    .line 1043
    const-string v0, "SnapboothThread"

    const-string v1, "close camera - mCaptureState = CAPTURE_STATE_IDLE"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1047
    const-string v0, "SnapboothThread"

    const-string v1, "Release Camera - set CameraThread.mIsLastCameraClosed to true"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1051
    :goto_0
    return-void

    .line 1050
    :cond_1
    const-string v0, "SnapboothThread"

    const-string v1, "mCameraDevice == null in closeCamera"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getCameraController()Lcom/android/camera/CameraController;
    .locals 1

    .prologue
    .line 740
    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;

    return-object v0
.end method

.method public getCurrentStorageState()I
    .locals 1

    .prologue
    .line 1163
    iget v0, p0, Lcom/android/camera/SnapboothThread;->mStorageState:I

    return v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 732
    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mSnapboothHandler:Lcom/android/camera/SnapboothThread$MainHandler;

    return-object v0
.end method

.method public getJpegData()[B
    .locals 1

    .prologue
    .line 930
    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mJpegData:[B

    return-object v0
.end method

.method public releaseSnapboothThread()V
    .locals 0

    .prologue
    .line 725
    return-void
.end method

.method public resetJpegData()V
    .locals 1

    .prologue
    .line 938
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/SnapboothThread;->mJpegData:[B

    .line 939
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 705
    const-string v0, "SnapboothThread"

    const-string v1, "*************************************** run"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 707
    new-instance v0, Lcom/android/camera/SnapboothThread$MainHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/SnapboothThread$MainHandler;-><init>(Lcom/android/camera/SnapboothThread;Lcom/android/camera/SnapboothThread$1;)V

    iput-object v0, p0, Lcom/android/camera/SnapboothThread;->mSnapboothHandler:Lcom/android/camera/SnapboothThread$MainHandler;

    .line 708
    invoke-direct {p0}, Lcom/android/camera/SnapboothThread;->beginCheckStorageState()V

    .line 709
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 710
    return-void
.end method

.method public startPreview(IZ)V
    .locals 11
    .parameter "status"
    .parameter "isCapturing"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 761
    const-string v0, "SnapboothThread"

    const-string v2, "startPreview() - start"

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    iget-boolean v0, p0, Lcom/android/camera/SnapboothThread;->mPreviewing:Z

    if-eqz v0, :cond_0

    .line 766
    const-string v0, "SnapboothThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Camera has been in Prevewing. mPreviewing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/SnapboothThread;->mPreviewing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    :goto_0
    return-void

    .line 771
    :cond_0
    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v0, :cond_2

    .line 773
    const-string v0, "SnapboothThread"

    const-string v2, "Open camera while startPreview"

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    invoke-static {}, Lcom/android/camera/CameraToken;->getToken()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/SnapboothThread;->mCameraToken:Ljava/lang/Object;

    .line 777
    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mCameraToken:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 779
    const-string v0, "SnapboothThread"

    const-string v2, "Camera is still open by another instance, open camera later"

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mSnapboothHandler:Lcom/android/camera/SnapboothThread$MainHandler;

    const-wide/16 v5, 0x64

    move v2, p1

    move v3, v1

    invoke-static/range {v0 .. v6}, Lcom/android/camera/MessageHandler;->sendObtainMessageDelayed(Landroid/os/Handler;IIILjava/lang/Object;J)V

    .line 781
    const-string v0, "SnapboothThread"

    const-string v1, "startPreview() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 790
    :cond_1
    :try_start_0
    sget-object v0, Lcom/android/camera/CameraType;->Front:Lcom/android/camera/CameraType;

    iget v0, v0, Lcom/android/camera/CameraType;->id:I

    invoke-static {v0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/SnapboothThread;->mCameraDevice:Landroid/hardware/Camera;

    .line 794
    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/android/camera/SnapboothThread;->mErrorCallback:Landroid/hardware/Camera$ErrorCallback;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 799
    const-string v0, "SnapboothThread"

    const-string v2, "StartPreview - Set CameraThread.mIsLastCameraClosed to false"

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 811
    new-instance v0, Lcom/android/camera/CameraController;

    iget-object v2, p0, Lcom/android/camera/SnapboothThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-direct {v0, v2}, Lcom/android/camera/CameraController;-><init>(Landroid/hardware/Camera;)V

    iput-object v0, p0, Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;

    .line 812
    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v0}, Lcom/android/camera/CameraController;->setSupportedList()V

    .line 816
    :cond_2
    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;

    iget-object v2, p0, Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-static {v0, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->initPrefrenceFiles(Landroid/app/Activity;Lcom/android/camera/CameraController;)Z

    .line 819
    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v2, "touch-aec"

    const-string v3, "off"

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    const-string v0, "SnapboothThread"

    const-string v2, "Disable touch aec !!!"

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v2, "enable-caf"

    const-string v3, "off"

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    const-string v0, "SnapboothThread"

    const-string v2, "Start preview - disable continue AF !!!"

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v2, "cam-mode"

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    .line 830
    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v2, "front-camera-mode"

    const-string v3, "mirror"

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v2, "sound-off"

    const-string v3, "true"

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v0}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    .line 839
    invoke-direct {p0}, Lcom/android/camera/SnapboothThread;->loadResolution()V

    .line 840
    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;

    iget v2, p0, Lcom/android/camera/SnapboothThread;->Camera_Mode_Width:I

    iget v3, p0, Lcom/android/camera/SnapboothThread;->Camera_Mode_Height:I

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/CameraController;->setPictureSizeParameter(II)V

    .line 841
    const-string v0, "SnapboothThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SetPictureSize: CAMERA MODE, Width = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/SnapboothThread;->Camera_Mode_Width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/SnapboothThread;->Camera_Mode_Height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;

    iget v2, p0, Lcom/android/camera/SnapboothThread;->Camera_Preview_Width:I

    iget v3, p0, Lcom/android/camera/SnapboothThread;->Camera_Preview_Height:I

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/CameraController;->setPreviewSizeParameter(II)V

    .line 846
    const-string v0, "SnapboothThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SetPreviewSize: CAMERA MODE, Width = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/SnapboothThread;->Camera_Preview_Width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/SnapboothThread;->Camera_Preview_Height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v2, "taking-picture-zoom"

    invoke-virtual {v0, v2}, Lcom/android/camera/CameraController;->getSettingsInfo(Ljava/lang/String;)Lcom/android/camera/CameraController$SettingInfo;

    move-result-object v10

    .line 851
    .local v10, info:Lcom/android/camera/CameraController$SettingInfo;
    sget-boolean v0, Lcom/android/camera/HTCCameraAdvanceSetting;->mIsInitZoom:Z

    if-ne v0, v5, :cond_3

    .line 854
    sput-boolean v1, Lcom/android/camera/HTCCameraAdvanceSetting;->mIsInitZoom:Z

    .line 857
    :cond_3
    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v2, "taking-picture-zoom"

    invoke-virtual {v10}, Lcom/android/camera/CameraController$SettingInfo;->getMin()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    .line 859
    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v0}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    .line 863
    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;

    invoke-virtual {v0}, Lcom/android/camera/HTCSnapbooth;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v9

    .line 865
    .local v9, holder:Landroid/view/SurfaceHolder;
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0, v9}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 872
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 878
    :goto_2
    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mCameraDevice:Landroid/hardware/Camera;

    new-instance v2, Lcom/android/camera/SnapboothThread$6;

    invoke-direct {v2, p0}, Lcom/android/camera/SnapboothThread$6;-><init>(Lcom/android/camera/SnapboothThread;)V

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 886
    iput-boolean v5, p0, Lcom/android/camera/SnapboothThread;->mPreviewing:Z

    .line 888
    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mSnapboothHandler:Lcom/android/camera/SnapboothThread$MainHandler;

    invoke-virtual {v0, v6}, Lcom/android/camera/SnapboothThread$MainHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 891
    iget-object v2, p0, Lcom/android/camera/SnapboothThread;->mUIHandler:Landroid/os/Handler;

    if-eqz p2, :cond_6

    move v0, v1

    :goto_3
    invoke-static {v2, v6, v0, v1, v4}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 900
    iget v0, p0, Lcom/android/camera/SnapboothThread;->mCurrentEffectMessage:I

    const/16 v1, 0x1f

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mSnapboothHandler:Lcom/android/camera/SnapboothThread$MainHandler;

    if-eqz v0, :cond_4

    .line 901
    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mSnapboothHandler:Lcom/android/camera/SnapboothThread$MainHandler;

    iget-object v1, p0, Lcom/android/camera/SnapboothThread;->mSnapboothHandler:Lcom/android/camera/SnapboothThread$MainHandler;

    iget v2, p0, Lcom/android/camera/SnapboothThread;->mCurrentEffectMessage:I

    invoke-virtual {v1, v2}, Lcom/android/camera/SnapboothThread$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/SnapboothThread$MainHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 904
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/SnapboothThread;->endCheckStorageState()I

    .line 907
    :cond_5
    const-string v0, "SnapboothThread"

    const-string v1, "start_preview() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 801
    .end local v9           #holder:Landroid/view/SurfaceHolder;
    .end local v10           #info:Lcom/android/camera/CameraController$SettingInfo;
    :catch_0
    move-exception v7

    .line 803
    .local v7, e:Ljava/lang/Exception;
    const-string v0, "SnapboothThread"

    const-string v1, "open camera failed"

    invoke-static {v0, v1, v7}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 804
    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mCameraToken:Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/camera/CameraToken;->releaseToken(Ljava/lang/Object;)V

    .line 805
    iput-object v4, p0, Lcom/android/camera/SnapboothThread;->mCameraToken:Ljava/lang/Object;

    .line 806
    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;

    invoke-virtual {v0}, Lcom/android/camera/HTCSnapbooth;->finish()V

    goto/16 :goto_0

    .line 866
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v9       #holder:Landroid/view/SurfaceHolder;
    .restart local v10       #info:Lcom/android/camera/CameraController$SettingInfo;
    :catch_1
    move-exception v8

    .line 867
    .local v8, ex:Ljava/io/IOException;
    const-string v0, "SnapboothThread"

    const-string v2, "mCameraDevice.setPreviewDisplay failed"

    invoke-static {v0, v2, v8}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 868
    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;

    invoke-virtual {v0}, Lcom/android/camera/HTCSnapbooth;->finish()V

    goto :goto_1

    .line 873
    .end local v8           #ex:Ljava/io/IOException;
    :catch_2
    move-exception v8

    .line 874
    .local v8, ex:Ljava/lang/Exception;
    const-string v0, "SnapboothThread"

    const-string v2, "start preview failed"

    invoke-static {v0, v2, v8}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 875
    iget-object v0, p0, Lcom/android/camera/SnapboothThread;->mSnapboothActivity:Lcom/android/camera/HTCSnapbooth;

    invoke-virtual {v0}, Lcom/android/camera/HTCSnapbooth;->finish()V

    goto :goto_2

    .line 891
    .end local v8           #ex:Ljava/lang/Exception;
    :cond_6
    const/4 v0, 0x3

    goto :goto_3
.end method
