.class public Lcom/android/camera/CameraSettings$DefaultValues;
.super Ljava/lang/Object;
.source "CameraSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CameraSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultValues"
.end annotation


# static fields
.field public static final canAutoFocus:Z = true

.field public static final flashMode:Lcom/android/camera/FlashMode; = null

.field public static final isAutoEnhanceEnabled:Z = true

.field public static final isAutoFiveShotsEnabled:Z = true

.field public static final isAutoSmileCaptureEnabled:Z = false

.field public static final isContinuousBurstAutoReview:Z = true

.field public static final isContinuousBurstEnabled:Z = true

.field public static final isContinuousBurstLimited:Z = true

.field public static final isFaceDetectionEnabled:Z = true

.field public static final isGeoTaggingEnabled:Z = false

.field public static final isGridVisible:Z = false

.field public static final isObjectTrackingEnabled:Z = false

.field public static final isShutterSoundEnabled:Z = true

.field public static final isSlowMotionEnabled:Z = false

.field public static final isStereoRecordingEnabled:Z = true

.field public static final isTapCaptureEnabled:Z = false

.field public static final isVideoStabilizationEnabled:Z = true

.field public static final isWideRatioPhoto:Z = true

.field public static final recordWithAudio:Z = true

.field public static final storageSlot:Lcom/android/camera/io/StorageSlot;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/android/camera/FlashMode;->Auto:Lcom/android/camera/FlashMode;

    sput-object v0, Lcom/android/camera/CameraSettings$DefaultValues;->flashMode:Lcom/android/camera/FlashMode;

    .line 67
    invoke-static {}, Lcom/android/camera/io/StorageSlot;->hasInternalMemorySlot()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/camera/io/StorageSlot;->INTERNAL_SMALL_STORAGE:Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v0}, Lcom/android/camera/io/StorageSlot;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    invoke-static {}, Lcom/android/camera/io/StorageSlot;->getFirstInternalMemorySlot()Lcom/android/camera/io/StorageSlot;

    move-result-object v0

    sput-object v0, Lcom/android/camera/CameraSettings$DefaultValues;->storageSlot:Lcom/android/camera/io/StorageSlot;

    .line 71
    :goto_0
    return-void

    .line 70
    :cond_0
    sget-object v0, Lcom/android/camera/io/StorageSlot;->STORAGE_CARD:Lcom/android/camera/io/StorageSlot;

    sput-object v0, Lcom/android/camera/CameraSettings$DefaultValues;->storageSlot:Lcom/android/camera/io/StorageSlot;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
