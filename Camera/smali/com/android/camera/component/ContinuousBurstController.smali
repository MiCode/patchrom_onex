.class public final Lcom/android/camera/component/ContinuousBurstController;
.super Lcom/android/camera/component/AsyncCameraThreadComponent;
.source "ContinuousBurstController.java"

# interfaces
.implements Landroid/hardware/Camera$ShutterCallback;
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/component/ContinuousBurstController$3;,
        Lcom/android/camera/component/ContinuousBurstController$SaveBurstImageTask;,
        Lcom/android/camera/component/ContinuousBurstController$CaptureState;
    }
.end annotation


# static fields
.field static final BURST_MODE_1_SHOT:I = 0x1

.field static final BURST_MODE_5_SHOTS:I = 0x2

.field static final BURST_MODE_CONTINUOUS:I = 0x3

.field static final BURST_MODE_UNDEFINED:I = 0x0

.field static final DEFAULT_MAX_PICTURE_COUNT:I = 0x14

#the value of this static final field might be set in the static constructor
.field static final DEFAULT_UNLIMITED_PICTURE_COUNT:I = 0x0

.field private static final IMAGE_QUEUE_SIZE_THRESHOLD:D = 0.667

.field private static final MAX_INTERVAL:I = 0x3e8

.field private static final MIN_INTERVAL:I = 0xc8

.field static final MSG_ENTER:I = 0x2710

.field static final MSG_EXIT:I = 0x2711

.field private static final MSG_IMAGE_SAVED:I = 0x2719

.field private static final MSG_JPEG_CALLBACK_TIMEOUT:I = 0x271b

.field private static final MSG_PHOTO_SAVE_COMPLETED:I = 0x2717

.field private static final MSG_PLAY_SHUTTER_SOUND:I = 0x2712

.field static final MSG_SET_BURST_MODE:I = 0x2714

.field static final MSG_SET_PICTURE_COUNT:I = 0x2715

.field private static final MSG_SHUTTER_CALLBACK_TIMEOUT:I = 0x271a

.field static final MSG_STOP_PLAYING_SHUTTER_SOUND:I = 0x2716

.field private static final MSG_STOP_SHUTTER_SOUND:I = 0x2713

.field private static final MSG_THUMBNAIL_IMAGE_CREATED:I = 0x2718

.field static final NAME:Ljava/lang/String; = "Continuous Burst Controller"

.field private static final PREF_MAX_PICTURE_COUNT:Ljava/lang/String; = "pref_max_conti_burst_picture_count"

#the value of this static final field might be set in the static constructor
.field private static final SHUTTER_SOUND_LENGTH:I = 0x0

.field private static final SHUTTER_SOUND_TIMER_INTERVAL:I = 0x190

.field private static final m_DcfInfo:Lcom/android/camera/io/DCFInfo;


# instance fields
.field private mAudioManager:Lcom/android/camera/IAudioManager;

.field private m_BurstMode:I

.field private m_CaptureId:J

.field private m_CaptureInterval:I

.field private m_CaptureState:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

.field private m_DisableThumbUpdateHandle:Lcom/android/camera/Handle;

.field private m_FirstJpegRawData:[B

.field private m_GotFirstPicture:Z

.field private m_HasImageSavingError:Z

.field private m_ImageDirectoryCounter:Lcom/android/camera/io/FileCounter;

.field private m_Interval:I

.field private m_IsCaptureModeChanged:Z

.field private m_IsEntered:Z

.field private m_IsFirstPicture:Z

.field private m_IsFocusingBeforeCapture:Z

.field private m_IsFocusingBeforeCaptureNeeded:Z

.field private m_IsSavingPhotos:Z

.field private m_IsSecondPictureTaken:Z

.field private m_IsShutterSoundPlayed:Z

.field private m_JpegIndex:I

.field private m_MaxPictureCount:I

.field private m_OriginalFlashMode:Lcom/android/camera/FlashMode;

.field private m_OuterDirectoryCounter:Lcom/android/camera/io/FileCounter;

.field private m_PendingTakePictureIndex:I

.field private m_PreviousSaveImageTask:Lcom/android/camera/imaging/SaveImageTask;

.field private m_ShutterIndex:I

.field private m_ShutterSoundHandle:Lcom/android/camera/Handle;

.field private m_ShutterSoundStartTime:Ljava/lang/Long;

.field private m_ShutterSoundStreamHandle:Lcom/android/camera/Handle;

.field private m_StartTime:J

.field private m_TakePictureIndex:I

.field private m_ThumbnailImageManager:Lcom/android/camera/IThumbnailImageManager;

.field private m_TotalCaptureInterval:J

.field private m_UI:Lcom/android/camera/component/ContinuousBurstUI;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 76
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isLowEndDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x190

    :goto_0
    sput v0, Lcom/android/camera/component/ContinuousBurstController;->SHUTTER_SOUND_LENGTH:I

    .line 78
    new-instance v0, Lcom/android/camera/io/DCFInfo;

    const-string v1, "BURST"

    const-string v2, ""

    const-string v3, "burst_dir_counter"

    const-string v4, "burst_file_counter"

    const/16 v5, 0x3e7

    const/16 v6, 0x1f4

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/io/DCFInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    sput-object v0, Lcom/android/camera/component/ContinuousBurstController;->m_DcfInfo:Lcom/android/camera/io/DCFInfo;

    .line 98
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isLowEndDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    const/16 v0, 0x1e

    sput v0, Lcom/android/camera/component/ContinuousBurstController;->DEFAULT_UNLIMITED_PICTURE_COUNT:I

    .line 111
    :goto_1
    return-void

    .line 76
    :cond_0
    const/16 v0, 0x12c

    goto :goto_0

    .line 102
    :cond_1
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xe1

    if-eq v0, v1, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x2d7

    if-ne v0, v1, :cond_3

    .line 105
    :cond_2
    const/16 v0, 0x3c

    sput v0, Lcom/android/camera/component/ContinuousBurstController;->DEFAULT_UNLIMITED_PICTURE_COUNT:I

    goto :goto_1

    .line 109
    :cond_3
    const/16 v0, 0x63

    sput v0, Lcom/android/camera/component/ContinuousBurstController;->DEFAULT_UNLIMITED_PICTURE_COUNT:I

    goto :goto_1
.end method

.method public constructor <init>(Lcom/android/camera/CameraThread;)V
    .locals 3
    .parameter "cameraThread"

    .prologue
    const/4 v2, 0x0

    .line 312
    const-string v0, "Continuous Burst Controller"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/camera/component/AsyncCameraThreadComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/CameraThread;)V

    .line 116
    iput v2, p0, Lcom/android/camera/component/ContinuousBurstController;->m_BurstMode:I

    .line 117
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureId:J

    .line 119
    sget-object v0, Lcom/android/camera/component/ContinuousBurstController$CaptureState;->Unavailable:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    iput-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureState:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    .line 131
    iput-boolean v2, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsFocusingBeforeCaptureNeeded:Z

    .line 135
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_MaxPictureCount:I

    .line 313
    return-void
.end method

.method static synthetic access$000()Lcom/android/camera/io/DCFInfo;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/android/camera/component/ContinuousBurstController;->m_DcfInfo:Lcom/android/camera/io/DCFInfo;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/component/ContinuousBurstController;)Lcom/android/camera/io/FileCounter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_OuterDirectoryCounter:Lcom/android/camera/io/FileCounter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/component/ContinuousBurstController;Lcom/android/camera/CameraThread;Landroid/hardware/Camera;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/camera/component/ContinuousBurstController;->takePicture(Lcom/android/camera/CameraThread;Landroid/hardware/Camera;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/component/ContinuousBurstController;)Lcom/android/camera/io/FileCounter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ImageDirectoryCounter:Lcom/android/camera/io/FileCounter;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/camera/component/ContinuousBurstController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_HasImageSavingError:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/camera/component/ContinuousBurstController;)Lcom/android/camera/component/ContinuousBurstUI;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_UI:Lcom/android/camera/component/ContinuousBurstUI;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/component/ContinuousBurstController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsFocusingBeforeCaptureNeeded:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/camera/component/ContinuousBurstController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsFocusingBeforeCapture:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/camera/component/ContinuousBurstController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsFocusingBeforeCapture:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/camera/component/ContinuousBurstController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_PendingTakePictureIndex:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/camera/component/ContinuousBurstController;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/camera/component/ContinuousBurstController;->takeNextPicture(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/camera/component/ContinuousBurstController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsEntered:Z

    return v0
.end method

.method private findNextDirectoryCounters()Z
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 335
    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->storageSlot:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/camera/io/StorageSlot;

    .line 336
    .local v7, storageSlot:Lcom/android/camera/io/StorageSlot;
    new-instance v4, Lcom/android/camera/Reference;

    invoke-direct {v4}, Lcom/android/camera/Reference;-><init>()V

    .line 337
    .local v4, outerDirCounterRef:Lcom/android/camera/Reference;,"Lcom/android/camera/Reference<Ljava/lang/Integer;>;"
    new-instance v5, Lcom/android/camera/Reference;

    invoke-direct {v5}, Lcom/android/camera/Reference;-><init>()V

    .line 338
    .local v5, imageDirCounterRef:Lcom/android/camera/Reference;,"Lcom/android/camera/Reference<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstController;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    invoke-static {v7}, Lcom/android/camera/io/DCFUtility;->getDcimPath(Lcom/android/camera/io/StorageSlot;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/camera/component/ContinuousBurstController;->m_DcfInfo:Lcom/android/camera/io/DCFInfo;

    invoke-static/range {v0 .. v5}, Lcom/android/camera/io/DCFUtility;->findNextDirAndFileCounters(Lcom/android/camera/Settings;Ljava/lang/String;Lcom/android/camera/io/DCFInfo;Lcom/android/camera/io/FileFormat;Lcom/android/camera/Reference;Lcom/android/camera/Reference;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v8

    .line 363
    :goto_0
    return v0

    .line 350
    :cond_0
    new-instance v1, Lcom/android/camera/io/FileCounter;

    iget-object v0, v4, Lcom/android/camera/Reference;->target:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/android/camera/io/FileCounter;-><init>(I)V

    iput-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_OuterDirectoryCounter:Lcom/android/camera/io/FileCounter;

    .line 351
    new-instance v1, Lcom/android/camera/io/FileCounter;

    iget-object v0, v5, Lcom/android/camera/Reference;->target:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/android/camera/io/FileCounter;-><init>(I)V

    iput-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ImageDirectoryCounter:Lcom/android/camera/io/FileCounter;

    .line 354
    sget-object v0, Lcom/android/camera/component/ContinuousBurstController;->m_DcfInfo:Lcom/android/camera/io/DCFInfo;

    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_OuterDirectoryCounter:Lcom/android/camera/io/FileCounter;

    iget-object v2, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ImageDirectoryCounter:Lcom/android/camera/io/FileCounter;

    invoke-static {v0, v7, v1, v2, v3}, Lcom/android/camera/io/DCFUtility;->getFilePath(Lcom/android/camera/io/DCFInfo;Lcom/android/camera/io/StorageSlot;Lcom/android/camera/io/FileCounter;Lcom/android/camera/io/FileCounter;Lcom/android/camera/io/FileFormat;)Ljava/lang/String;

    move-result-object v6

    .line 355
    .local v6, dirPath:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/camera/io/FileUtility;->createDirectory(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 357
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findNextDirectoryCounters() - Cannot create directory \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v8

    .line 358
    goto :goto_0

    .line 360
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findNextDirectoryCounters() - Directory : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static final isSupported(Lcom/android/camera/HTCCamera;)Z
    .locals 2
    .parameter "cameraActivity"

    .prologue
    const/4 v0, 0x0

    .line 540
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 544
    :cond_0
    :goto_0
    return v0

    .line 542
    :cond_1
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportRAWChip()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 544
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private linkToUI()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 552
    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_UI:Lcom/android/camera/component/ContinuousBurstUI;

    if-eqz v1, :cond_0

    .line 556
    :goto_0
    return v2

    .line 554
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 555
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getComponentManager()Lcom/android/camera/component/UIComponentManager;

    move-result-object v1

    const-string v3, "Continuous Burst UI"

    invoke-virtual {v1, v3}, Lcom/android/camera/component/UIComponentManager;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v1

    check-cast v1, Lcom/android/camera/component/ContinuousBurstUI;

    :goto_1
    iput-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_UI:Lcom/android/camera/component/ContinuousBurstUI;

    .line 556
    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_UI:Lcom/android/camera/component/ContinuousBurstUI;

    if-eqz v1, :cond_2

    move v1, v2

    :goto_2
    move v2, v1

    goto :goto_0

    .line 555
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 556
    :cond_2
    const/4 v1, 0x0

    goto :goto_2
.end method

.method private onBurstModeChanged(I)V
    .locals 7
    .parameter "mode"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 565
    iget-boolean v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsEntered:Z

    if-nez v0, :cond_1

    .line 608
    :cond_0
    :goto_0
    return-void

    .line 568
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onBurstModeChanged("

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, ")"

    invoke-static {v0, v2, v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 571
    iput p1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_BurstMode:I

    .line 574
    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureState:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    sget-object v2, Lcom/android/camera/component/ContinuousBurstController$CaptureState;->Capturing:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureState:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    sget-object v2, Lcom/android/camera/component/ContinuousBurstController$CaptureState;->Stopping:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    if-ne v0, v2, :cond_3

    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsShutterSoundPlayed:Z

    if-nez v0, :cond_3

    .line 578
    iget v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_BurstMode:I

    packed-switch v0, :pswitch_data_0

    .line 591
    :cond_3
    :goto_1
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_GotFirstPicture:Z

    if-eqz v0, :cond_4

    .line 593
    iput-boolean v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_GotFirstPicture:Z

    .line 594
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onBurstModeChanged() - Handle JPEG data again"

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    iget-object v2, p0, Lcom/android/camera/component/ContinuousBurstController;->m_FirstJpegRawData:[B

    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstController;->getCamera()Landroid/hardware/Camera;

    move-result-object v3

    move-object v0, p0

    move v4, v1

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/component/ContinuousBurstController;->onPictureTaken(I[BLandroid/hardware/Camera;ZLcom/android/camera/TakingPictureFailedReason;)V

    .line 596
    iput-object v5, p0, Lcom/android/camera/component/ContinuousBurstController;->m_FirstJpegRawData:[B

    .line 600
    :cond_4
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isNvidiaPlatform()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_BurstMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 602
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureState:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    sget-object v1, Lcom/android/camera/component/ContinuousBurstController$CaptureState;->Capturing:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ShutterIndex:I

    if-ne v0, v6, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsSecondPictureTaken:Z

    if-nez v0, :cond_0

    .line 604
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "onBurstModeChanged() - Start taking burst shots for nVidia platform"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    invoke-direct {p0, v6}, Lcom/android/camera/component/ContinuousBurstController;->takeNextPicture(I)V

    goto :goto_0

    .line 581
    :pswitch_1
    iget v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ShutterIndex:I

    if-ne v0, v6, :cond_3

    .line 582
    invoke-direct {p0, v1}, Lcom/android/camera/component/ContinuousBurstController;->playShutterSound(Z)V

    goto :goto_1

    .line 585
    :pswitch_2
    invoke-direct {p0, v6}, Lcom/android/camera/component/ContinuousBurstController;->playShutterSound(Z)V

    goto :goto_1

    .line 578
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private onEntered()V
    .locals 2

    .prologue
    .line 616
    iget-boolean v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsEntered:Z

    if-eqz v0, :cond_1

    .line 626
    :cond_0
    :goto_0
    return-void

    .line 620
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsEntered:Z

    .line 621
    sget-object v0, Lcom/android/camera/component/ContinuousBurstController$CaptureState;->Ready:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    invoke-direct {p0, v0}, Lcom/android/camera/component/ContinuousBurstController;->setCaptureState(Lcom/android/camera/component/ContinuousBurstController$CaptureState;)V

    .line 624
    invoke-direct {p0}, Lcom/android/camera/component/ContinuousBurstController;->linkToUI()Z

    move-result v0

    if-nez v0, :cond_0

    .line 625
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Cannot link to UI"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onExited()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 634
    iget-boolean v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsEntered:Z

    if-nez v1, :cond_1

    .line 661
    :cond_0
    :goto_0
    return-void

    .line 638
    :cond_1
    iput-boolean v3, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsEntered:Z

    .line 639
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_FirstJpegRawData:[B

    .line 640
    iput-boolean v3, p0, Lcom/android/camera/component/ContinuousBurstController;->m_GotFirstPicture:Z

    .line 641
    iput v3, p0, Lcom/android/camera/component/ContinuousBurstController;->m_BurstMode:I

    .line 642
    sget-object v1, Lcom/android/camera/component/ContinuousBurstController$CaptureState;->Unavailable:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    invoke-direct {p0, v1}, Lcom/android/camera/component/ContinuousBurstController;->setCaptureState(Lcom/android/camera/component/ContinuousBurstController$CaptureState;)V

    .line 645
    iget-boolean v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsCaptureModeChanged:Z

    if-eqz v1, :cond_0

    .line 647
    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstController;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v0

    .line 648
    .local v0, controller:Lcom/android/camera/CameraController;
    if-eqz v0, :cond_3

    .line 650
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onExited() - Set capture mode to normal"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x26

    if-ne v1, v2, :cond_2

    .line 652
    const-string v1, "capture-mode"

    const-string v2, "zsl"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    :goto_1
    invoke-virtual {v0}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    .line 659
    :goto_2
    iput-boolean v3, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsCaptureModeChanged:Z

    goto :goto_0

    .line 654
    :cond_2
    const-string v1, "capture-mode"

    const-string v2, "normal"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 658
    :cond_3
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onExited() - No camera controller to reset capture mode"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private onImageSaved(Lcom/android/camera/io/Path;)V
    .locals 9
    .parameter "filePath"

    .prologue
    .line 668
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onImageSaved(\'"

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v3, "\')"

    invoke-static {v1, v2, v0, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 671
    if-nez p1, :cond_1

    .line 694
    :goto_1
    return-void

    .line 668
    :cond_0
    const-string v0, "null"

    goto :goto_0

    .line 678
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/android/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/camera/io/FileFormat;->Jpeg:Lcom/android/camera/io/FileFormat;

    iget-object v1, v1, Lcom/android/camera/io/FileFormat;->mimeType:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/camera/imaging/ThumbnailUtility;->createThumbnailImage(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 681
    .local v8, thumb:Landroid/graphics/Bitmap;
    if-eqz v8, :cond_2

    .line 683
    new-instance v7, Lcom/android/camera/MediaInfo;

    const/4 v0, 0x0

    sget-object v1, Lcom/android/camera/io/FileFormat;->Jpeg:Lcom/android/camera/io/FileFormat;

    iget-object v1, v1, Lcom/android/camera/io/FileFormat;->mimeType:Ljava/lang/String;

    invoke-direct {v7, v0, p1, v1}, Lcom/android/camera/MediaInfo;-><init>(Landroid/net/Uri;Lcom/android/camera/io/Path;Ljava/lang/String;)V

    .line 684
    .local v7, mediaInfo:Lcom/android/camera/MediaInfo;
    const/16 v2, 0x2718

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v7, v5, v0

    const/4 v0, 0x1

    aput-object v8, v5, v0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/ContinuousBurstController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 689
    .end local v7           #mediaInfo:Lcom/android/camera/MediaInfo;
    .end local v8           #thumb:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v6

    .line 691
    .local v6, ex:Ljava/lang/Throwable;
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "onImageSaved() - Cannot create thumbnail image"

    invoke-static {v0, v1, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 687
    .end local v6           #ex:Ljava/lang/Throwable;
    .restart local v8       #thumb:Landroid/graphics/Bitmap;
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "onImageSaved() - Cannot create thumbnail image"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private onJpegTimeout(I)V
    .locals 6
    .parameter "index"

    .prologue
    .line 701
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onJpegTimeout("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    iget-wide v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureId:J

    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraThread;->getLatestCaptureID()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 706
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "onJpegTimeout() - Invalid capture ID"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    :goto_0
    return-void

    .line 709
    :cond_0
    sget-object v0, Lcom/android/camera/component/ContinuousBurstController$3;->$SwitchMap$com$android$camera$component$ContinuousBurstController$CaptureState:[I

    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureState:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    invoke-virtual {v1}, Lcom/android/camera/component/ContinuousBurstController$CaptureState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 715
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onJpegTimeout() - Invalid capture state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureState:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 720
    :pswitch_0
    const/16 v0, 0x271a

    invoke-virtual {p0, v0}, Lcom/android/camera/component/ContinuousBurstController;->removeMessages(I)V

    .line 721
    const/16 v0, 0x271b

    invoke-virtual {p0, v0}, Lcom/android/camera/component/ContinuousBurstController;->removeMessages(I)V

    .line 724
    sget-object v0, Lcom/android/camera/component/ContinuousBurstController$CaptureState;->Stopping:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    invoke-direct {p0, v0}, Lcom/android/camera/component/ContinuousBurstController;->setCaptureState(Lcom/android/camera/component/ContinuousBurstController$CaptureState;)V

    .line 725
    iput p1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_TakePictureIndex:I

    .line 726
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstController;->getCamera()Landroid/hardware/Camera;

    move-result-object v3

    const/4 v4, 0x0

    sget-object v5, Lcom/android/camera/TakingPictureFailedReason;->DriverFail:Lcom/android/camera/TakingPictureFailedReason;

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/component/ContinuousBurstController;->onPictureTaken(I[BLandroid/hardware/Camera;ZLcom/android/camera/TakingPictureFailedReason;)V

    goto :goto_0

    .line 709
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onPhotoSaveCompleted(ILjava/lang/String;Lcom/android/camera/io/Path;)V
    .locals 7
    .parameter "photoCount"
    .parameter "bucketId"
    .parameter "lastFilePath"

    .prologue
    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 734
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const/4 v0, 0x7

    new-array v2, v0, [Ljava/lang/Object;

    const-string v0, "onPhotoSaveCompleted("

    aput-object v0, v2, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v6

    const-string v0, ", "

    aput-object v0, v2, v5

    const/4 v0, 0x3

    aput-object p2, v2, v0

    const/4 v0, 0x4

    const-string v3, ", \'"

    aput-object v3, v2, v0

    const/4 v3, 0x5

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lcom/android/camera/io/Path;->getFullPath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    aput-object v0, v2, v3

    const/4 v0, 0x6

    const-string v3, "\')"

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 737
    iput-boolean v4, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsSavingPhotos:Z

    .line 740
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ThumbnailImageManager:Lcom/android/camera/IThumbnailImageManager;

    if-eqz v0, :cond_0

    .line 742
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ThumbnailImageManager:Lcom/android/camera/IThumbnailImageManager;

    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_DisableThumbUpdateHandle:Lcom/android/camera/Handle;

    invoke-interface {v0, v1}, Lcom/android/camera/IThumbnailImageManager;->enableAutoUpdate(Lcom/android/camera/Handle;)V

    .line 743
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_DisableThumbUpdateHandle:Lcom/android/camera/Handle;

    .line 747
    :cond_0
    if-le p1, v6, :cond_1

    .line 749
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_UI:Lcom/android/camera/component/ContinuousBurstUI;

    if-eqz v0, :cond_3

    .line 750
    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_UI:Lcom/android/camera/component/ContinuousBurstUI;

    const/16 v2, 0x2711

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p2, v5, v4

    aput-object p3, v5, v6

    move-object v0, p0

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/ContinuousBurstController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    .line 754
    :cond_1
    :goto_1
    return-void

    .line 734
    :cond_2
    const-string v0, ""

    goto :goto_0

    .line 752
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "onPhotoSaveCompleted() - No UI to notify"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private onPictureTaken(I[BLandroid/hardware/Camera;ZLcom/android/camera/TakingPictureFailedReason;)V
    .locals 14
    .parameter "index"
    .parameter "jpegRawData"
    .parameter "camera"
    .parameter "calledFromDriver"
    .parameter "failedReason"

    .prologue
    .line 785
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "JPEG call-back ["

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "]"

    invoke-static {v1, v2, v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 788
    if-eqz p4, :cond_1

    .line 791
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isNvidiaPlatform()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 792
    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstController;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x271b

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 795
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/camera/component/ContinuousBurstController;->m_StartTime:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureInterval:I

    .line 796
    iget-wide v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_TotalCaptureInterval:J

    iget v3, p0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureInterval:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_TotalCaptureInterval:J

    .line 797
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPictureTaken() - Average capture interval = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/camera/component/ContinuousBurstController;->m_TotalCaptureInterval:J

    add-int/lit8 v5, p1, 0x1

    int-to-long v5, v5

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v9

    .line 803
    .local v9, cameraThread:Lcom/android/camera/CameraThread;
    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureState:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    sget-object v2, Lcom/android/camera/component/ContinuousBurstController$CaptureState;->Capturing:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    if-ne v1, v2, :cond_10

    .line 805
    iget v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_BurstMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_f

    .line 806
    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_UI:Lcom/android/camera/component/ContinuousBurstUI;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_UI:Lcom/android/camera/component/ContinuousBurstUI;

    invoke-virtual {v1}, Lcom/android/camera/component/ContinuousBurstUI;->canCapture()Z

    move-result v10

    .line 812
    .local v10, isCapturing:Z
    :goto_0
    if-eqz v10, :cond_14

    .line 814
    if-eqz p2, :cond_2

    move-object/from16 v0, p2

    array-length v1, v0

    if-nez v1, :cond_11

    .line 816
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onPictureTaken() - No memory for JPEG RAW data, stop capturing"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    const/4 v10, 0x0

    .line 839
    :cond_3
    :goto_1
    iget v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_BurstMode:I

    packed-switch v1, :pswitch_data_0

    .line 889
    :cond_4
    :goto_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsFirstPicture:Z

    .line 892
    if-nez p1, :cond_6

    iget v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_BurstMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_6

    if-nez v10, :cond_5

    iget v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_TakePictureIndex:I

    if-eq p1, v1, :cond_6

    .line 894
    :cond_5
    invoke-direct {p0}, Lcom/android/camera/component/ContinuousBurstController;->findNextDirectoryCounters()Z

    move-result v1

    if-nez v1, :cond_6

    .line 896
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onPictureTaken() - Cannot find available directory counters, stop capturing"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    const/4 v10, 0x0

    .line 902
    :cond_6
    if-eqz v10, :cond_7

    .line 904
    invoke-direct {p0}, Lcom/android/camera/component/ContinuousBurstController;->updateInterval()V

    .line 905
    iget v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_Interval:I

    const/16 v2, 0x3e8

    if-le v1, v2, :cond_7

    .line 907
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPictureTaken() - Stop capturing due to interval is too long : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/component/ContinuousBurstController;->m_Interval:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    const/4 v10, 0x0

    .line 914
    :cond_7
    if-eqz p2, :cond_1c

    .line 916
    iget v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_BurstMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_8

    if-nez p1, :cond_1a

    if-nez v10, :cond_1a

    iget v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_TakePictureIndex:I

    if-ne p1, v1, :cond_1a

    .line 917
    :cond_8
    new-instance v12, Lcom/android/camera/imaging/SaveImageTask;

    move-object/from16 v0, p2

    invoke-direct {v12, v9, v0}, Lcom/android/camera/imaging/SaveImageTask;-><init>(Lcom/android/camera/CameraThread;[B)V

    .line 923
    .local v12, saveTask:Lcom/android/camera/imaging/SaveImageTask;
    :goto_3
    invoke-virtual {v9}, Lcom/android/camera/CameraThread;->getLatestCaptureID()J

    move-result-wide v1

    iput-wide v1, v12, Lcom/android/camera/imaging/SaveImageTask;->captureID:J

    .line 929
    :goto_4
    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_PreviousSaveImageTask:Lcom/android/camera/imaging/SaveImageTask;

    if-eqz v1, :cond_a

    .line 931
    if-nez v12, :cond_9

    .line 932
    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_PreviousSaveImageTask:Lcom/android/camera/imaging/SaveImageTask;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/camera/imaging/SaveImageTask;->isLastImage:Z

    .line 933
    :cond_9
    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_PreviousSaveImageTask:Lcom/android/camera/imaging/SaveImageTask;

    invoke-virtual {v9, v1}, Lcom/android/camera/CameraThread;->saveImage(Lcom/android/camera/imaging/SaveImageTask;)V

    .line 934
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_PreviousSaveImageTask:Lcom/android/camera/imaging/SaveImageTask;

    .line 938
    :cond_a
    if-eqz v12, :cond_1e

    .line 940
    if-eqz v10, :cond_1d

    .line 941
    iput-object v12, p0, Lcom/android/camera/component/ContinuousBurstController;->m_PreviousSaveImageTask:Lcom/android/camera/imaging/SaveImageTask;

    .line 957
    :cond_b
    :goto_5
    monitor-enter p0

    .line 959
    if-eqz v10, :cond_20

    .line 961
    :try_start_0
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isNvidiaPlatform()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-boolean v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsSecondPictureTaken:Z

    if-nez v1, :cond_d

    .line 962
    :cond_c
    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v1}, Lcom/android/camera/component/ContinuousBurstController;->takeNextPicture(I)V

    .line 1043
    :cond_d
    :goto_6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1044
    .end local v12           #saveTask:Lcom/android/camera/imaging/SaveImageTask;
    :goto_7
    return-void

    .line 806
    .end local v10           #isCapturing:Z
    :cond_e
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 808
    :cond_f
    const/4 v10, 0x1

    .restart local v10       #isCapturing:Z
    goto/16 :goto_0

    .line 811
    .end local v10           #isCapturing:Z
    :cond_10
    const/4 v10, 0x0

    .restart local v10       #isCapturing:Z
    goto/16 :goto_0

    .line 819
    :cond_11
    iget-boolean v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_HasImageSavingError:Z

    if-eqz v1, :cond_12

    .line 821
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onPictureTaken() - Cannot save image, stop capturing"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 824
    :cond_12
    invoke-virtual {v9}, Lcom/android/camera/CameraThread;->calculatePicturesRemaining()J

    move-result-wide v1

    const-wide/16 v3, 0x3

    cmp-long v1, v1, v3

    if-gez v1, :cond_13

    .line 826
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onPictureTaken() - Storage is full, stop capturing"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 829
    :cond_13
    iget v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_MaxPictureCount:I

    add-int/lit8 v1, v1, -0x1

    if-lt p1, v1, :cond_3

    .line 831
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPictureTaken() - This is the "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/component/ContinuousBurstController;->m_MaxPictureCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " picture, stop capturing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 835
    :cond_14
    if-eqz p2, :cond_15

    move-object/from16 v0, p2

    array-length v1, v0

    if-nez v1, :cond_3

    .line 836
    :cond_15
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onPictureTaken() - No memory for JPEG RAW data"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 842
    :pswitch_0
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onPictureTaken() - Burst mode is 1-shot, stop taking picture."

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    iget-boolean v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsFirstPicture:Z

    if-nez v1, :cond_16

    .line 844
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onPictureTaken() - Burst mode is 1-shot, but this is not the first picture."

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    :cond_16
    const/4 v10, 0x0

    .line 846
    goto/16 :goto_2

    .line 849
    :pswitch_1
    if-eqz v10, :cond_4

    .line 851
    const/4 v1, 0x4

    if-ne p1, v1, :cond_17

    .line 853
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onPictureTaken() - Burst mode is 5-shots, stop taking picture."

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 856
    :cond_17
    const/4 v1, 0x4

    if-le p1, v1, :cond_18

    .line 858
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onPictureTaken() - Burst mode is 5-shots, but we have taken more than 5 pictures."

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 863
    :cond_18
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onPictureTaken() - Start preview again"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    invoke-virtual/range {p3 .. p3}, Landroid/hardware/Camera;->startPreview()V

    goto/16 :goto_2

    .line 870
    :pswitch_2
    iget-boolean v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsFirstPicture:Z

    if-eqz v1, :cond_19

    .line 872
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onPictureTaken() - Burst mode is undefined, handle JPEG raw data later."

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_FirstJpegRawData:[B

    .line 874
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_GotFirstPicture:Z

    goto/16 :goto_7

    .line 877
    :cond_19
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onPictureTaken() - Burst mode is undefined, but this is not the first picture."

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 881
    :pswitch_3
    if-eqz v10, :cond_4

    iget-boolean v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsFirstPicture:Z

    if-eqz v1, :cond_4

    .line 884
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onPictureTaken() - Disable GC"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/htc/wrap/dalvik/system/HtcWrapVMRuntime;->disableGcForExternalAlloc(Z)V

    goto/16 :goto_2

    .line 920
    :cond_1a
    if-nez v10, :cond_1b

    iget v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_TakePictureIndex:I

    if-ne p1, v1, :cond_1b

    const/4 v11, 0x1

    .line 921
    .local v11, isLastMedia:Z
    :goto_8
    new-instance v12, Lcom/android/camera/component/ContinuousBurstController$SaveBurstImageTask;

    move-object/from16 v0, p2

    invoke-direct {v12, p0, p1, v0, v11}, Lcom/android/camera/component/ContinuousBurstController$SaveBurstImageTask;-><init>(Lcom/android/camera/component/ContinuousBurstController;I[BZ)V

    .restart local v12       #saveTask:Lcom/android/camera/imaging/SaveImageTask;
    goto/16 :goto_3

    .line 920
    .end local v11           #isLastMedia:Z
    .end local v12           #saveTask:Lcom/android/camera/imaging/SaveImageTask;
    :cond_1b
    const/4 v11, 0x0

    goto :goto_8

    .line 926
    :cond_1c
    const/4 v12, 0x0

    .restart local v12       #saveTask:Lcom/android/camera/imaging/SaveImageTask;
    goto/16 :goto_4

    .line 943
    :cond_1d
    invoke-virtual {v9, v12}, Lcom/android/camera/CameraThread;->saveImage(Lcom/android/camera/imaging/SaveImageTask;)V

    goto/16 :goto_5

    .line 945
    :cond_1e
    iget v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_BurstMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1f

    if-nez p1, :cond_b

    .line 947
    :cond_1f
    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    iget-object v13, v1, Lcom/android/camera/CameraThread;->mediaSaveFailedEvent:Lcom/android/camera/event/Event;

    new-instance v1, Lcom/android/camera/MediaEventArgs;

    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraThread;->getLatestCaptureID()J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v6, Lcom/android/camera/io/FileFormat;->Jpeg:Lcom/android/camera/io/FileFormat;

    const/4 v7, 0x1

    sget-object v8, Lcom/android/camera/MediaSaveFailedReason;->Unknown:Lcom/android/camera/MediaSaveFailedReason;

    invoke-direct/range {v1 .. v8}, Lcom/android/camera/MediaEventArgs;-><init>(JLandroid/net/Uri;Lcom/android/camera/io/Path;Lcom/android/camera/io/FileFormat;ZLcom/android/camera/MediaSaveFailedReason;)V

    invoke-virtual {v13, p0, v1}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    goto/16 :goto_5

    .line 967
    :cond_20
    :try_start_1
    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 969
    iget-boolean v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsShutterSoundPlayed:Z

    if-nez v1, :cond_22

    if-nez p1, :cond_22

    iget v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_TakePictureIndex:I

    if-ne p1, v1, :cond_22

    .line 973
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/camera/component/ContinuousBurstController;->playShutterSound(Z)V

    .line 980
    :cond_21
    :goto_9
    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureState:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    sget-object v2, Lcom/android/camera/component/ContinuousBurstController$CaptureState;->Capturing:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    if-ne v1, v2, :cond_23

    .line 982
    iget v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_TakePictureIndex:I

    if-eq p1, v1, :cond_25

    .line 984
    sget-object v1, Lcom/android/camera/component/ContinuousBurstController$CaptureState;->Stopping:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    invoke-direct {p0, v1}, Lcom/android/camera/component/ContinuousBurstController;->setCaptureState(Lcom/android/camera/component/ContinuousBurstController$CaptureState;)V

    .line 985
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onPictureTaken() - Waiting for pending pictures"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    monitor-exit p0

    goto/16 :goto_7

    .line 1043
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 975
    :cond_22
    :try_start_2
    iget-boolean v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsShutterSoundPlayed:Z

    if-eqz v1, :cond_21

    .line 976
    invoke-direct {p0}, Lcom/android/camera/component/ContinuousBurstController;->stopShutterSound()V

    goto :goto_9

    .line 989
    :cond_23
    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureState:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    sget-object v2, Lcom/android/camera/component/ContinuousBurstController$CaptureState;->Stopping:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    if-ne v1, v2, :cond_24

    .line 991
    iget v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_TakePictureIndex:I

    if-eq p1, v1, :cond_25

    .line 993
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onPictureTaken() - Waiting for pending pictures"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 994
    monitor-exit p0

    goto/16 :goto_7

    .line 999
    :cond_24
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPictureTaken() - Unexpected capture state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureState:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    monitor-exit p0

    goto/16 :goto_7

    .line 1003
    :cond_25
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onPictureTaken() - Stop capturing"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1006
    if-nez p1, :cond_26

    .line 1008
    if-eqz v12, :cond_29

    .line 1009
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/android/camera/component/ContinuousBurstController;->onPhotoSaveCompleted(ILjava/lang/String;Lcom/android/camera/io/Path;)V

    .line 1018
    :cond_26
    :goto_a
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onPictureTaken() - Enable GC"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1019
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/htc/wrap/dalvik/system/HtcWrapVMRuntime;->disableGcForExternalAlloc(Z)V

    .line 1022
    if-nez p5, :cond_2a

    .line 1023
    invoke-virtual {v9}, Lcom/android/camera/CameraThread;->endTakePicture()V

    .line 1028
    :goto_b
    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_OriginalFlashMode:Lcom/android/camera/FlashMode;

    if-eqz v1, :cond_27

    .line 1029
    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_OriginalFlashMode:Lcom/android/camera/FlashMode;

    invoke-virtual {v9, v1}, Lcom/android/camera/CameraThread;->setFlashMode(Lcom/android/camera/FlashMode;)V

    .line 1032
    :cond_27
    invoke-virtual {v9}, Lcom/android/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v1

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->mAudioManager:Lcom/android/camera/IAudioManager;

    if-eqz v1, :cond_28

    .line 1033
    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->mAudioManager:Lcom/android/camera/IAudioManager;

    invoke-interface {v1}, Lcom/android/camera/IAudioManager;->abandonAudioFocus()V

    .line 1036
    :cond_28
    sget-object v1, Lcom/android/camera/component/ContinuousBurstController$CaptureState;->Ready:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    invoke-direct {p0, v1}, Lcom/android/camera/component/ContinuousBurstController;->setCaptureState(Lcom/android/camera/component/ContinuousBurstController$CaptureState;)V

    .line 1037
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureId:J

    .line 1040
    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_UI:Lcom/android/camera/component/ContinuousBurstUI;

    if-eqz v1, :cond_d

    .line 1041
    iget-object v2, p0, Lcom/android/camera/component/ContinuousBurstController;->m_UI:Lcom/android/camera/component/ContinuousBurstUI;

    const/16 v3, 0x2710

    add-int/lit8 v4, p1, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/camera/component/ContinuousBurstController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;)Z

    goto/16 :goto_6

    .line 1012
    :cond_29
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "onPictureTaken() - No photo to save"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/android/camera/component/ContinuousBurstController;->onPhotoSaveCompleted(ILjava/lang/String;Lcom/android/camera/io/Path;)V

    goto :goto_a

    .line 1025
    :cond_2a
    move-object/from16 v0, p5

    invoke-virtual {v9, v0}, Lcom/android/camera/CameraThread;->interruptTakingPicture(Lcom/android/camera/TakingPictureFailedReason;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_b

    .line 839
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private onShutter(I)V
    .locals 9
    .parameter "index"

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 1064
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Shutter call-back ["

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "]"

    invoke-static {v0, v1, v2, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1067
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isNvidiaPlatform()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1069
    const/16 v0, 0x271a

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/component/ContinuousBurstController;->removeMessages(ILjava/lang/Object;)V

    .line 1070
    const/16 v2, 0x271b

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-wide/16 v6, 0x4e20

    move-object v0, p0

    move-object v1, p0

    move v4, v3

    invoke-virtual/range {v0 .. v8}, Lcom/android/camera/component/ContinuousBurstController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;JZ)Z

    .line 1074
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsShutterSoundPlayed:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    .line 1078
    iget v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_BurstMode:I

    packed-switch v0, :pswitch_data_0

    .line 1090
    :cond_1
    :goto_0
    :pswitch_0
    if-nez p1, :cond_2

    invoke-static {}, Lcom/android/camera/DisplayDevice;->isNvidiaPlatform()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1091
    invoke-direct {p0}, Lcom/android/camera/component/ContinuousBurstController;->setCaptureMode()V

    .line 1094
    :cond_2
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isNvidiaPlatform()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureState:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    sget-object v1, Lcom/android/camera/component/ContinuousBurstController$CaptureState;->Capturing:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    if-ne v0, v1, :cond_3

    .line 1096
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "onShutter() - Trying to take next picture for nVidia platform"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1099
    iget v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_BurstMode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    .line 1101
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShutter() - Burst mode is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/component/ContinuousBurstController;->m_BurstMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", no need to take next picture"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1122
    :cond_3
    :goto_1
    return-void

    .line 1081
    :pswitch_1
    invoke-direct {p0, v3}, Lcom/android/camera/component/ContinuousBurstController;->playShutterSound(Z)V

    goto :goto_0

    .line 1084
    :pswitch_2
    invoke-direct {p0, v8}, Lcom/android/camera/component/ContinuousBurstController;->playShutterSound(Z)V

    goto :goto_0

    .line 1106
    :cond_4
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_UI:Lcom/android/camera/component/ContinuousBurstUI;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_UI:Lcom/android/camera/component/ContinuousBurstUI;

    invoke-virtual {v0}, Lcom/android/camera/component/ContinuousBurstUI;->canCapture()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1108
    :cond_5
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "onShutter() - canCapture() = false, no need to take next picture"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1113
    :cond_6
    iget v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_MaxPictureCount:I

    add-int/lit8 v0, v0, -0x1

    if-lt p1, v0, :cond_7

    .line 1115
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "onShutter() - Max picture count reached, no need to take next picture"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1120
    :cond_7
    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/component/ContinuousBurstController;->takeNextPicture(I)V

    goto :goto_1

    .line 1078
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private onShutterTimeout(I)V
    .locals 6
    .parameter "index"

    .prologue
    .line 1129
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShutterTimeout("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1132
    iget-wide v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureId:J

    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraThread;->getLatestCaptureID()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1134
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "onShutterTimeout() - Invalid capture ID"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1154
    :goto_0
    return-void

    .line 1137
    :cond_0
    sget-object v0, Lcom/android/camera/component/ContinuousBurstController$3;->$SwitchMap$com$android$camera$component$ContinuousBurstController$CaptureState:[I

    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureState:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    invoke-virtual {v1}, Lcom/android/camera/component/ContinuousBurstController$CaptureState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1143
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShutterTimeout() - Invalid capture state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureState:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1148
    :pswitch_0
    const/16 v0, 0x271a

    invoke-virtual {p0, v0}, Lcom/android/camera/component/ContinuousBurstController;->removeMessages(I)V

    .line 1149
    const/16 v0, 0x271b

    invoke-virtual {p0, v0}, Lcom/android/camera/component/ContinuousBurstController;->removeMessages(I)V

    .line 1152
    sget-object v0, Lcom/android/camera/component/ContinuousBurstController$CaptureState;->Stopping:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    invoke-direct {p0, v0}, Lcom/android/camera/component/ContinuousBurstController;->setCaptureState(Lcom/android/camera/component/ContinuousBurstController$CaptureState;)V

    .line 1153
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstController;->getCamera()Landroid/hardware/Camera;

    move-result-object v3

    const/4 v4, 0x0

    sget-object v5, Lcom/android/camera/TakingPictureFailedReason;->DriverFail:Lcom/android/camera/TakingPictureFailedReason;

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/component/ContinuousBurstController;->onPictureTaken(I[BLandroid/hardware/Camera;ZLcom/android/camera/TakingPictureFailedReason;)V

    goto :goto_0

    .line 1137
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onThumbnailImageCreated(Lcom/android/camera/MediaInfo;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "mediaInfo"
    .parameter "thumb"

    .prologue
    .line 1161
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "onThumbnailImageCreated()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1165
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsSavingPhotos:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 1176
    if-eqz p2, :cond_0

    .line 1177
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 1179
    :cond_0
    :goto_0
    return-void

    .line 1169
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ThumbnailImageManager:Lcom/android/camera/IThumbnailImageManager;

    if-eqz v0, :cond_2

    .line 1170
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ThumbnailImageManager:Lcom/android/camera/IThumbnailImageManager;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/IThumbnailImageManager;->updateThumbnailImageDirectly(Lcom/android/camera/MediaInfo;Landroid/graphics/Bitmap;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1176
    :goto_1
    if-eqz p2, :cond_0

    .line 1177
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 1172
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "onThumbnailImageCreated() - No IThumbnailImageManager interface"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1176
    :catchall_0
    move-exception v0

    if-eqz p2, :cond_3

    .line 1177
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    throw v0
.end method

.method private playShutterSound(Z)V
    .locals 6
    .parameter "isLoop"

    .prologue
    const/4 v1, 0x0

    .line 1186
    iget-object v2, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v3, "playShutterSound("

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, ")"

    invoke-static {v2, v3, v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1187
    if-eqz p1, :cond_2

    const/4 v0, -0x1

    .line 1188
    .local v0, loopCount:I
    :goto_0
    iget-object v2, p0, Lcom/android/camera/component/ContinuousBurstController;->mAudioManager:Lcom/android/camera/IAudioManager;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ShutterSoundHandle:Lcom/android/camera/Handle;

    if-eqz v2, :cond_1

    .line 1190
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ShutterSoundStartTime:Ljava/lang/Long;

    .line 1191
    iget-object v2, p0, Lcom/android/camera/component/ContinuousBurstController;->mAudioManager:Lcom/android/camera/IAudioManager;

    iget-object v3, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ShutterSoundHandle:Lcom/android/camera/Handle;

    invoke-interface {v2, v3, v0, v1}, Lcom/android/camera/IAudioManager;->playInMemorySound(Lcom/android/camera/Handle;IZ)Lcom/android/camera/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ShutterSoundStreamHandle:Lcom/android/camera/Handle;

    .line 1192
    if-nez p1, :cond_0

    .line 1193
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ShutterSoundStreamHandle:Lcom/android/camera/Handle;

    .line 1194
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsShutterSoundPlayed:Z

    .line 1196
    :cond_1
    const/16 v1, 0x2712

    invoke-virtual {p0, v1}, Lcom/android/camera/component/ContinuousBurstController;->removeMessages(I)V

    .line 1197
    return-void

    .end local v0           #loopCount:I
    :cond_2
    move v0, v1

    .line 1187
    goto :goto_0
.end method

.method private setCaptureMode()V
    .locals 3

    .prologue
    .line 1204
    iget-boolean v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsCaptureModeChanged:Z

    if-nez v1, :cond_0

    .line 1206
    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstController;->getCameraController()Lcom/android/camera/CameraController;

    move-result-object v0

    .line 1207
    .local v0, controller:Lcom/android/camera/CameraController;
    if-eqz v0, :cond_1

    .line 1209
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "setCaptureMode() - Set capture mode to contiburst"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1210
    const-string v1, "capture-mode"

    const-string v2, "contiburst"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1211
    invoke-virtual {v0}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    .line 1212
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsCaptureModeChanged:Z

    .line 1217
    .end local v0           #controller:Lcom/android/camera/CameraController;
    :cond_0
    :goto_0
    return-void

    .line 1215
    .restart local v0       #controller:Lcom/android/camera/CameraController;
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "setCaptureMode() - No camera controller to set capture mode"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setCaptureState(Lcom/android/camera/component/ContinuousBurstController$CaptureState;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 1224
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "setCaptureState("

    const-string v2, ")"

    invoke-static {v0, v1, p1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1225
    iput-object p1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureState:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    .line 1226
    return-void
.end method

.method private stopShutterSound()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1233
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ShutterSoundStartTime:Ljava/lang/Long;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ShutterSoundStartTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    iget-object v2, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ShutterSoundStreamHandle:Lcom/android/camera/Handle;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/component/ContinuousBurstController;->stopShutterSound(JLcom/android/camera/Handle;)V

    .line 1234
    iput-object v3, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ShutterSoundStartTime:Ljava/lang/Long;

    .line 1235
    iput-object v3, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ShutterSoundStreamHandle:Lcom/android/camera/Handle;

    .line 1236
    return-void

    .line 1233
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private stopShutterSound(JLcom/android/camera/Handle;)V
    .locals 10
    .parameter "startTime"
    .parameter "streamHandle"

    .prologue
    .line 1239
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "stopShutterSound("

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, ", "

    if-eqz p3, :cond_1

    iget-object v4, p3, Lcom/android/camera/Handle;->name:Ljava/lang/String;

    :goto_0
    const-string v5, ")"

    invoke-static/range {v0 .. v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1240
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_2

    .line 1242
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v8, v0, p1

    .line 1243
    .local v8, duration:J
    sget v0, Lcom/android/camera/component/ContinuousBurstController;->SHUTTER_SOUND_LENGTH:I

    int-to-long v0, v0

    sub-long v6, v0, v8

    .line 1244
    .local v6, delayTime:J
    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-lez v0, :cond_2

    .line 1246
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopShutterSound() - Stop shutter sound after "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1247
    const/16 v2, 0x2713

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x1

    aput-object p3, v5, v0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/camera/component/ContinuousBurstController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;J)Z

    .line 1253
    .end local v6           #delayTime:J
    .end local v8           #duration:J
    :cond_0
    :goto_1
    return-void

    .line 1239
    :cond_1
    const-string v4, "null"

    goto :goto_0

    .line 1251
    :cond_2
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->mAudioManager:Lcom/android/camera/IAudioManager;

    if-eqz v0, :cond_0

    .line 1252
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->mAudioManager:Lcom/android/camera/IAudioManager;

    invoke-interface {v0, p3}, Lcom/android/camera/IAudioManager;->stopInMemorySound(Lcom/android/camera/Handle;)V

    goto :goto_1
.end method

.method private takeNextPicture(I)V
    .locals 10
    .parameter "index"

    .prologue
    const/high16 v5, 0x3f00

    const/4 v3, 0x0

    const/4 v8, 0x1

    .line 1261
    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v9

    .line 1262
    .local v9, cameraThread:Lcom/android/camera/CameraThread;
    iget-boolean v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsEntered:Z

    if-eqz v0, :cond_0

    if-ne p1, v8, :cond_0

    .line 1265
    invoke-direct {p0}, Lcom/android/camera/component/ContinuousBurstController;->setCaptureMode()V

    .line 1268
    iget v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_BurstMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1270
    iget-object v0, v9, Lcom/android/camera/CameraThread;->flashMode:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/FlashMode;

    iput-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_OriginalFlashMode:Lcom/android/camera/FlashMode;

    .line 1271
    sget-object v0, Lcom/android/camera/FlashMode;->Off:Lcom/android/camera/FlashMode;

    invoke-virtual {v9, v0}, Lcom/android/camera/CameraThread;->setFlashMode(Lcom/android/camera/FlashMode;)V

    .line 1276
    :cond_0
    if-ne p1, v8, :cond_1

    .line 1278
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "takeNextPicture() - Start preview"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1279
    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstController;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 1283
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsFocusingBeforeCaptureNeeded:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsFocusingBeforeCapture:Z

    if-nez v0, :cond_2

    .line 1285
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Focusing before taking picture ["

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "]"

    invoke-static {v0, v1, v2, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1286
    iput-boolean v8, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsFocusingBeforeCapture:Z

    .line 1287
    iput p1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_PendingTakePictureIndex:I

    .line 1288
    new-array v0, v8, [Landroid/graphics/PointF;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v5, v5}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/camera/AutoFocusMode;->BeforeCapture:Lcom/android/camera/AutoFocusMode;

    invoke-virtual {v9, v0, v1}, Lcom/android/camera/CameraThread;->autoFocus([Landroid/graphics/PointF;Lcom/android/camera/AutoFocusMode;)V

    .line 1320
    :goto_0
    return-void

    .line 1293
    :cond_2
    invoke-virtual {v9}, Lcom/android/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1295
    iget v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_BurstMode:I

    packed-switch v0, :pswitch_data_0

    .line 1308
    :cond_3
    :goto_1
    if-ne p1, v8, :cond_4

    .line 1309
    iput-boolean v8, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsSecondPictureTaken:Z

    .line 1312
    :cond_4
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isNvidiaPlatform()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1313
    const/16 v2, 0x271a

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-wide/16 v6, 0x4e20

    move-object v0, p0

    move-object v1, p0

    move v4, v3

    invoke-virtual/range {v0 .. v8}, Lcom/android/camera/component/ContinuousBurstController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;JZ)Z

    .line 1316
    :cond_5
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Take picture ["

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "]"

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1317
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_StartTime:J

    .line 1318
    iput p1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_TakePictureIndex:I

    .line 1319
    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstController;->getCamera()Landroid/hardware/Camera;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p0}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    goto :goto_0

    .line 1298
    :pswitch_0
    invoke-direct {p0, v3}, Lcom/android/camera/component/ContinuousBurstController;->playShutterSound(Z)V

    goto :goto_1

    .line 1301
    :pswitch_1
    if-ne p1, v8, :cond_3

    iget-boolean v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsShutterSoundPlayed:Z

    if-nez v0, :cond_3

    .line 1302
    invoke-direct {p0, v8}, Lcom/android/camera/component/ContinuousBurstController;->playShutterSound(Z)V

    goto :goto_1

    .line 1295
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private takePicture(Lcom/android/camera/CameraThread;Landroid/hardware/Camera;)V
    .locals 9
    .parameter "cameraThread"
    .parameter "camera"

    .prologue
    .line 1328
    invoke-virtual {p1}, Lcom/android/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->mAudioManager:Lcom/android/camera/IAudioManager;

    if-eqz v0, :cond_0

    .line 1329
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->mAudioManager:Lcom/android/camera/IAudioManager;

    invoke-interface {v0}, Lcom/android/camera/IAudioManager;->requestAudioFocus()V

    .line 1332
    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ThumbnailImageManager:Lcom/android/camera/IThumbnailImageManager;

    if-nez v0, :cond_1

    .line 1334
    const-class v0, Lcom/android/camera/IThumbnailImageManager;

    invoke-virtual {p0, v0}, Lcom/android/camera/component/ContinuousBurstController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IThumbnailImageManager;

    iput-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ThumbnailImageManager:Lcom/android/camera/IThumbnailImageManager;

    .line 1335
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ThumbnailImageManager:Lcom/android/camera/IThumbnailImageManager;

    if-nez v0, :cond_1

    .line 1336
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "takePicture() - Cannot find IThumbnailImageManager interface"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1340
    :cond_1
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ThumbnailImageManager:Lcom/android/camera/IThumbnailImageManager;

    if-eqz v0, :cond_2

    .line 1341
    iget-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ThumbnailImageManager:Lcom/android/camera/IThumbnailImageManager;

    invoke-interface {v0}, Lcom/android/camera/IThumbnailImageManager;->disableAutoUpdate()Lcom/android/camera/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_DisableThumbUpdateHandle:Lcom/android/camera/Handle;

    .line 1344
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsFirstPicture:Z

    .line 1345
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_GotFirstPicture:Z

    .line 1346
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_HasImageSavingError:Z

    .line 1347
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_TotalCaptureInterval:J

    .line 1348
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsShutterSoundPlayed:Z

    .line 1349
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsSavingPhotos:Z

    .line 1350
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_OriginalFlashMode:Lcom/android/camera/FlashMode;

    .line 1351
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsSecondPictureTaken:Z

    .line 1352
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_TakePictureIndex:I

    .line 1353
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ShutterIndex:I

    .line 1354
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_JpegIndex:I

    .line 1355
    invoke-virtual {p1}, Lcom/android/camera/CameraThread;->getLatestCaptureID()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureId:J

    .line 1356
    sget-object v0, Lcom/android/camera/component/ContinuousBurstController$CaptureState;->Capturing:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    invoke-direct {p0, v0}, Lcom/android/camera/component/ContinuousBurstController;->setCaptureState(Lcom/android/camera/component/ContinuousBurstController$CaptureState;)V

    .line 1359
    iget v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_BurstMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 1361
    invoke-direct {p0}, Lcom/android/camera/component/ContinuousBurstController;->setCaptureMode()V

    .line 1362
    iget-object v0, p1, Lcom/android/camera/CameraThread;->flashMode:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/FlashMode;

    iput-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_OriginalFlashMode:Lcom/android/camera/FlashMode;

    .line 1363
    sget-object v0, Lcom/android/camera/FlashMode;->Off:Lcom/android/camera/FlashMode;

    invoke-virtual {p1, v0}, Lcom/android/camera/CameraThread;->setFlashMode(Lcom/android/camera/FlashMode;)V

    .line 1367
    :cond_3
    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_Interval:I

    .line 1368
    invoke-direct {p0}, Lcom/android/camera/component/ContinuousBurstController;->updateInterval()V

    .line 1371
    invoke-virtual {p1}, Lcom/android/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1373
    iget v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_BurstMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 1374
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/component/ContinuousBurstController;->playShutterSound(Z)V

    .line 1380
    :cond_4
    :goto_0
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isNvidiaPlatform()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1381
    const/16 v2, 0x271a

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-wide/16 v6, 0x4e20

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v8}, Lcom/android/camera/component/ContinuousBurstController;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;JZ)Z

    .line 1384
    :cond_5
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "Take picture [0]"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1385
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_StartTime:J

    .line 1386
    const/4 v0, 0x0

    invoke-virtual {p2, p0, v0, p0}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 1387
    return-void

    .line 1376
    :cond_6
    const/16 v2, 0x2712

    const-wide/16 v3, 0x190

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/ContinuousBurstController;->sendMessage(Lcom/android/camera/component/Component;IJZ)Z

    goto :goto_0
.end method

.method private updateInterval()V
    .locals 20

    .prologue
    .line 1395
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/component/ContinuousBurstController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    .line 1396
    .local v1, cameraThread:Lcom/android/camera/CameraThread;
    new-instance v4, Lcom/android/camera/QueryEventArgs;

    invoke-direct {v4}, Lcom/android/camera/QueryEventArgs;-><init>()V

    .line 1397
    .local v4, e:Lcom/android/camera/QueryEventArgs;,"Lcom/android/camera/QueryEventArgs<Ljava/lang/Long;>;"
    iget-object v12, v1, Lcom/android/camera/CameraThread;->queryImageQueueCapacityEvent:Lcom/android/camera/event/Event;

    move-object/from16 v0, p0

    invoke-virtual {v12, v0, v4}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 1398
    invoke-virtual {v4}, Lcom/android/camera/QueryEventArgs;->hasResult()Z

    move-result v12

    if-eqz v12, :cond_1

    const-wide/16 v13, 0x0

    invoke-virtual {v4}, Lcom/android/camera/QueryEventArgs;->getResult()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    invoke-static/range {v13 .. v16}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 1401
    .local v6, maxSize:J
    :goto_0
    const-wide/16 v12, 0x0

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getImageQueueSize()J

    move-result-wide v14

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    .line 1402
    .local v8, size:J
    long-to-double v12, v8

    long-to-double v14, v6

    div-double v10, v12, v14

    .line 1404
    .local v10, sizeRatio:D
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v13, "updateInterval() - size = %d/%d (%.2f%%)"

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    const-wide/high16 v16, 0x4059

    mul-double v16, v16, v10

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1408
    const-wide v12, 0x3fe55810624dd2f2L

    cmpg-double v12, v10, v12

    if-gtz v12, :cond_2

    .line 1409
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/component/ContinuousBurstController;->m_Interval:I

    .line 1415
    .local v5, interval:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "updateInterval() - interval = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1418
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/camera/component/ContinuousBurstController;->m_Interval:I

    if-eq v5, v12, :cond_0

    .line 1420
    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/camera/component/ContinuousBurstController;->m_Interval:I

    .line 1423
    :cond_0
    return-void

    .line 1398
    .end local v5           #interval:I
    .end local v6           #maxSize:J
    .end local v8           #size:J
    .end local v10           #sizeRatio:D
    :cond_1
    const-wide v6, 0x7fffffffffffffffL

    goto :goto_0

    .line 1412
    .restart local v6       #maxSize:J
    .restart local v8       #size:J
    .restart local v10       #sizeRatio:D
    :cond_2
    const-wide v2, 0x3fd54fdf3b645a1cL

    .line 1413
    .local v2, d:D
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/camera/component/ContinuousBurstController;->m_Interval:I

    int-to-double v12, v12

    const-wide/high16 v14, 0x4069

    const-wide/high16 v16, 0x4089

    const-wide v18, 0x3fe55810624dd2f2L

    sub-double v18, v10, v18

    div-double v18, v18, v2

    mul-double v16, v16, v18

    add-double v14, v14, v16

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(DD)D

    move-result-wide v12

    double-to-int v5, v12

    .restart local v5       #interval:I
    goto :goto_1
.end method


# virtual methods
.method protected deinitializeOverride()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 322
    iput-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_UI:Lcom/android/camera/component/ContinuousBurstUI;

    .line 323
    iput-object v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ThumbnailImageManager:Lcom/android/camera/IThumbnailImageManager;

    .line 326
    invoke-super {p0}, Lcom/android/camera/component/AsyncCameraThreadComponent;->deinitializeOverride()V

    .line 327
    return-void
.end method

.method protected handleAsyncMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 372
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 380
    invoke-super {p0, p1}, Lcom/android/camera/component/AsyncCameraThreadComponent;->handleAsyncMessage(Landroid/os/Message;)V

    .line 383
    :goto_0
    return-void

    .line 375
    :pswitch_0
    const/16 v0, 0x2719

    invoke-virtual {p0, v0}, Lcom/android/camera/component/ContinuousBurstController;->removeAsyncMessages(I)V

    .line 376
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/io/Path;

    invoke-direct {p0, v0}, Lcom/android/camera/component/ContinuousBurstController;->onImageSaved(Lcom/android/camera/io/Path;)V

    goto :goto_0

    .line 372
    :pswitch_data_0
    .packed-switch 0x2719
        :pswitch_0
    .end packed-switch
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 391
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 476
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/camera/component/AsyncCameraThreadComponent;->handleMessage(Landroid/os/Message;)V

    .line 479
    :cond_0
    :goto_0
    return-void

    .line 394
    :pswitch_1
    invoke-direct {p0}, Lcom/android/camera/component/ContinuousBurstController;->onEntered()V

    goto :goto_0

    .line 398
    :pswitch_2
    invoke-direct {p0}, Lcom/android/camera/component/ContinuousBurstController;->onExited()V

    goto :goto_0

    .line 402
    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/camera/component/ContinuousBurstController;->onJpegTimeout(I)V

    goto :goto_0

    .line 407
    :pswitch_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 408
    .local v0, params:[Ljava/lang/Object;
    iget v3, p1, Landroid/os/Message;->arg1:I

    aget-object v1, v0, v2

    check-cast v1, Ljava/lang/String;

    aget-object v2, v0, v4

    check-cast v2, Lcom/android/camera/io/Path;

    invoke-direct {p0, v3, v1, v2}, Lcom/android/camera/component/ContinuousBurstController;->onPhotoSaveCompleted(ILjava/lang/String;Lcom/android/camera/io/Path;)V

    goto :goto_0

    .line 413
    .end local v0           #params:[Ljava/lang/Object;
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureState:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    sget-object v2, Lcom/android/camera/component/ContinuousBurstController$CaptureState;->Capturing:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_IsShutterSoundPlayed:Z

    if-nez v1, :cond_0

    .line 417
    iget v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_BurstMode:I

    packed-switch v1, :pswitch_data_1

    :pswitch_6
    goto :goto_0

    .line 421
    :pswitch_7
    iget-object v1, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v2, "Timeout, play burst shutter sound"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    invoke-direct {p0, v4}, Lcom/android/camera/component/ContinuousBurstController;->playShutterSound(Z)V

    goto :goto_0

    .line 429
    :pswitch_8
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v1}, Lcom/android/camera/component/ContinuousBurstController;->onBurstModeChanged(I)V

    goto :goto_0

    .line 433
    :pswitch_9
    iget v1, p1, Landroid/os/Message;->arg1:I

    iput v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_MaxPictureCount:I

    .line 434
    iget v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_MaxPictureCount:I

    if-gtz v1, :cond_1

    .line 435
    const/16 v1, 0x14

    iput v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_MaxPictureCount:I

    .line 436
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstController;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v1

    const-string v2, "pref_max_conti_burst_picture_count"

    iget v3, p0, Lcom/android/camera/component/ContinuousBurstController;->m_MaxPictureCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_0

    .line 440
    :pswitch_a
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/camera/component/ContinuousBurstController;->onShutterTimeout(I)V

    goto :goto_0

    .line 444
    :pswitch_b
    invoke-direct {p0}, Lcom/android/camera/component/ContinuousBurstController;->stopShutterSound()V

    goto :goto_0

    .line 463
    :pswitch_c
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 464
    .restart local v0       #params:[Ljava/lang/Object;
    aget-object v1, v0, v2

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aget-object v1, v0, v4

    check-cast v1, Lcom/android/camera/Handle;

    invoke-direct {p0, v2, v3, v1}, Lcom/android/camera/component/ContinuousBurstController;->stopShutterSound(JLcom/android/camera/Handle;)V

    goto/16 :goto_0

    .line 470
    .end local v0           #params:[Ljava/lang/Object;
    :pswitch_d
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 471
    .restart local v0       #params:[Ljava/lang/Object;
    aget-object v1, v0, v2

    check-cast v1, Lcom/android/camera/MediaInfo;

    aget-object v2, v0, v4

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-direct {p0, v1, v2}, Lcom/android/camera/component/ContinuousBurstController;->onThumbnailImageCreated(Lcom/android/camera/MediaInfo;Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 391
    nop

    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_c
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_4
        :pswitch_d
        :pswitch_0
        :pswitch_a
        :pswitch_3
    .end packed-switch

    .line 417
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 4

    .prologue
    const/16 v3, 0x14

    .line 488
    invoke-super {p0}, Lcom/android/camera/component/AsyncCameraThreadComponent;->initializeOverride()V

    .line 491
    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstController;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v1

    const-string v2, "pref_max_conti_burst_picture_count"

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/CameraSettings;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_MaxPictureCount:I

    .line 492
    iget v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_MaxPictureCount:I

    if-gtz v1, :cond_0

    .line 493
    iput v3, p0, Lcom/android/camera/component/ContinuousBurstController;->m_MaxPictureCount:I

    .line 496
    :cond_0
    const-class v1, Lcom/android/camera/IAudioManager;

    invoke-virtual {p0, v1}, Lcom/android/camera/component/ContinuousBurstController;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/IAudioManager;

    iput-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->mAudioManager:Lcom/android/camera/IAudioManager;

    .line 499
    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->mAudioManager:Lcom/android/camera/IAudioManager;

    if-eqz v1, :cond_1

    .line 501
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isLowEndDevice()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 502
    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->mAudioManager:Lcom/android/camera/IAudioManager;

    const v2, 0x7f060001

    invoke-interface {v1, v2}, Lcom/android/camera/IAudioManager;->loadSoundToMemory(I)Lcom/android/camera/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ShutterSoundHandle:Lcom/android/camera/Handle;

    .line 508
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    .line 509
    .local v0, cameraThread:Lcom/android/camera/CameraThread;
    iget-object v1, v0, Lcom/android/camera/CameraThread;->autoFocusFinishedEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/ContinuousBurstController$1;

    invoke-direct {v2, p0}, Lcom/android/camera/component/ContinuousBurstController$1;-><init>(Lcom/android/camera/component/ContinuousBurstController;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 521
    iget-object v1, v0, Lcom/android/camera/CameraThread;->requestTakingPictureEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/component/ContinuousBurstController$2;

    invoke-direct {v2, p0}, Lcom/android/camera/component/ContinuousBurstController$2;-><init>(Lcom/android/camera/component/ContinuousBurstController;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 533
    return-void

    .line 504
    .end local v0           #cameraThread:Lcom/android/camera/CameraThread;
    :cond_2
    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->mAudioManager:Lcom/android/camera/IAudioManager;

    const v2, 0x7f060002

    invoke-interface {v1, v2}, Lcom/android/camera/IAudioManager;->loadSoundToMemory(I)Lcom/android/camera/Handle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ShutterSoundHandle:Lcom/android/camera/Handle;

    goto :goto_0
.end method

.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 6
    .parameter "jpegRawData"
    .parameter "camera"

    .prologue
    .line 762
    iget-wide v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureId:J

    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraThread;->getLatestCaptureID()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 764
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "onPictureTaken() - Invalid capture ID, drop picture"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    :goto_0
    return-void

    .line 769
    :cond_0
    sget-object v0, Lcom/android/camera/component/ContinuousBurstController$3;->$SwitchMap$com$android$camera$component$ContinuousBurstController$CaptureState:[I

    iget-object v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureState:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    invoke-virtual {v1}, Lcom/android/camera/component/ContinuousBurstController$CaptureState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 775
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPictureTaken() - Current capture state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureState:Lcom/android/camera/component/ContinuousBurstController$CaptureState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", drop picture"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 780
    :pswitch_0
    iget v1, p0, Lcom/android/camera/component/ContinuousBurstController;->m_JpegIndex:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/component/ContinuousBurstController;->onPictureTaken(I[BLandroid/hardware/Camera;ZLcom/android/camera/TakingPictureFailedReason;)V

    .line 781
    iget v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_JpegIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_JpegIndex:I

    goto :goto_0

    .line 769
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onShutter()V
    .locals 4

    .prologue
    .line 1052
    iget-wide v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_CaptureId:J

    invoke-virtual {p0}, Lcom/android/camera/component/ContinuousBurstController;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraThread;->getLatestCaptureID()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1054
    iget-object v0, p0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v1, "onShutter() - Invalid capture ID, drop picture"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1061
    :goto_0
    return-void

    .line 1059
    :cond_0
    iget v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ShutterIndex:I

    invoke-direct {p0, v0}, Lcom/android/camera/component/ContinuousBurstController;->onShutter(I)V

    .line 1060
    iget v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ShutterIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/component/ContinuousBurstController;->m_ShutterIndex:I

    goto :goto_0
.end method
