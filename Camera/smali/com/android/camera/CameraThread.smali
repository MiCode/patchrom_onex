.class public Lcom/android/camera/CameraThread;
.super Ljava/lang/Thread;
.source "CameraThread.java"

# interfaces
.implements Lcom/android/camera/component/IComponentOwner;
.implements Lcom/android/camera/ISettingsOwner;
.implements Lcom/android/camera/event/EventHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/CameraThread$19;,
        Lcom/android/camera/CameraThread$ErrorListener;,
        Lcom/android/camera/CameraThread$InfoListener;,
        Lcom/android/camera/CameraThread$ErrorCallback;,
        Lcom/android/camera/CameraThread$MainHandler;,
        Lcom/android/camera/CameraThread$FinalStorageCheckThread;
    }
.end annotation


# static fields
.field public static final CAMERA_DRIVER_CALLBACK_TIMEOUT:J = 0x4e20L

.field private static final CAPTURE_STATE_ERROR:I = 0x4

.field private static final CAPTURE_STATE_IDLE:I = 0x0

.field private static final CAPTURE_STATE_TAKING_PICTURE:I = 0x1

.field private static final CAPTURE_STATE_WAITING_CLOSE_CAMERA:I = 0x2

.field private static final CAPTURE_STATE_WAITING_QUIT_THREAD:I = 0x3

.field private static final CHANGE_ZOOM:I = 0x46

.field public static final CHECK_RECORD_SIZE_LIMIT:I = 0x16

.field private static final CLOSE_CAMERA:I = 0x2

.field public static final CLOSE_CAMERA_DELAYED:I = 0x18

.field private static final CLOSE_CAMERA_DELAYED_TIME:I = 0x7d0

.field public static final DEFAULT_SHUTTER_SOUND:I = 0x7f060004

.field public static final ENTER_VIDEO_MODE:I = 0xb

.field public static final EXIT_VIDEO_MODE:I = 0xc

.field public static final LOAD_SETTINGS:I = 0x1c

.field private static final OPEN_CAMERA:I = 0x3e8

.field public static final OPEN_CAMERA_ASYNC:I = 0x1

.field public static final OPEN_CAMERA_ERROR:I = 0x4

.field public static final OPEN_CAMERA_LOW_POWER:I = 0x2

.field public static final OPEN_CAMERA_NO_TOKEN:I = 0x3

.field public static final OPEN_CAMERA_SUCCEEDED:I = 0x0

.field public static final QUIT_CAMERA_THREAD:I = 0x8

.field public static final RECORDING_MESSAGE:I = 0xa

.field private static final RESET_ZOOM_VALUE:I = 0x30

.field public static final SEND_POWER_WARNING_MSG:I = 0x3b

.field public static final SETTINGS_RELOAD:I = 0x1

.field public static final SETTINGS_REMAIN:I = 0x0

.field public static final SET_BLINK_DETECTION:I = 0x3c

.field public static final SET_BRIGHTNESS_VALUE:I = 0x11

.field public static final SET_CUSTOM_EFFECT_PROP:I = 0x2c

.field public static final SET_EFFECT:I = 0x13

.field private static final SET_FLASH_MODE:I = 0x15

.field public static final SET_IMAGE_PROPERTY:I = 0x14

.field public static final SET_ISO:I = 0x12

.field public static final SET_RESOLUTION:I = 0xf

.field public static final SET_SCENE_MODE:I = 0x3a

.field public static final SET_WHITE_BALANCE:I = 0x10

.field private static final START_PREVIEW:I = 0x0

.field public static final START_PREVIEW_ASYNC:I = 0x1

.field private static final START_PREVIEW_DIRECTLY:I = 0x1

.field public static final START_PREVIEW_ERROR:I = 0x4

.field public static final START_PREVIEW_LOW_POWER:I = 0x2

.field public static final START_PREVIEW_NO_CAMERA_TOKEN:I = 0x3

.field public static final START_PREVIEW_SUCCEEDED:I = 0x0

.field public static final START_RECORDING:I = 0x9

.field public static final START_RECORDING_DELAY:I = 0x36

.field private static final START_RECORDING_DELAY_TIME:I = 0x12c

.field public static final STOP_VIDEO_RECORDING_DELAY:I = 0x2f

.field private static final TAG:Ljava/lang/String; = "CameraThread"

.field public static final TAKE_PICTURE:I = 0x7

.field public static final WAIT_SELFTIMER:I = 0x3

.field public static mEnableCAF:Z

.field public static mEnableTouchAEC:Z

.field private static final mVideoDcfInfo:Lcom/android/camera/io/DCFInfo;


# instance fields
.field private Camera_Mode_Height:I

.field private Camera_Mode_Width:I

.field private Camera_Preview_Height:I

.field private Camera_Preview_Width:I

.field public HtcCallbackReceivedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/HtcCallbackEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field private final MINIMUN_CAMERA_REMAIN_SPACE:J

.field private Video_Mode_Height:I

.field private Video_Mode_Width:I

.field public autoFocusCanceledEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public autoFocusFinishedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/AutoFocusEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public autoFocusStartedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/AutoFocusEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public autoFocusStartingEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/AutoFocusEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public cameraClosedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public cameraOpenEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/OneValueEventArgs",
            "<",
            "Landroid/hardware/Camera;",
            ">;>;"
        }
    .end annotation
.end field

.field public cameraType:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/CameraType;",
            ">;"
        }
    .end annotation
.end field

.field private canTakePicAfterFocus:Z

.field public captureRotation:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/rotate/UIRotation;",
            ">;"
        }
    .end annotation
.end field

.field public changeModeFailedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/OneValueEventArgs",
            "<",
            "Lcom/android/camera/CameraMode;",
            ">;>;"
        }
    .end annotation
.end field

.field public deletingLatestMediaEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public exitingEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public flashMode:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/FlashMode;",
            ">;"
        }
    .end annotation
.end field

.field public hasEnoughInternalDataSpace:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public hasMovingObjects:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public isEyeBlinked:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public isHdrSuggested:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public isLowlight:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public isRecording:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public isTakingPicture:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public m3DButtonStatus:I

.field private m3DFileFormat:Lcom/android/camera/io/FileFormat;

.field public m3DPreviewStatus:I

.field private mAudioManager:Lcom/android/camera/IAudioManager;

.field private mCamController:Lcom/android/camera/CameraController;

.field private mCameraActivity:Lcom/android/camera/HTCCamera;

.field private mCameraDevice:Landroid/hardware/Camera;

.field mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

.field private mCameraToken:Ljava/lang/Object;

.field private mCanSetPreviewCallback:Z

.field private mCanStartPreview:Z

.field private volatile mCaptureDuration:J

.field private volatile mCaptureStartTime:J

.field private mCaptureState:I

.field private mComponentFactory:Lcom/android/camera/component/CameraThreadComponentFactory;

.field private mComponentManager:Lcom/android/camera/component/CameraThreadComponentManager;

.field private mCurrentColorEffect:Ljava/lang/String;

.field private mEncoderType:I

.field private mErrorCallback:Lcom/android/camera/CameraThread$ErrorCallback;

.field private mErrorListener:Lcom/android/camera/CameraThread$ErrorListener;

.field private mFinalStorageCheckThread:Lcom/android/camera/CameraThread$FinalStorageCheckThread;

.field private mHtcWrapCameraDevice:Lcom/htc/wrap/android/hardware/HtcWrapCamera;

.field private mInfoListener:Lcom/android/camera/CameraThread$InfoListener;

.field private final mInitialMode:Lcom/android/camera/CameraMode;

.field private mIsFirstFrameCached:Z

.field private mIsFirstTimeToStartPreview:Z

.field private mIsOnlySetResolution:Z

.field private mIsParamsPrepared:Z

.field private mJPEGQuality:I

.field private mJPEGQualityKey:Ljava/lang/String;

.field private final mJpegCallback:Landroid/hardware/Camera$PictureCallback;

.field private mJpegData:[B

.field private mLastMediaInfo:Lcom/android/camera/MediaInfo;

.field private mLatestAutoFocusMode:Lcom/android/camera/AutoFocusMode;

.field private volatile mLatestCaptureID:J

.field private mLocation:Landroid/location/Location;

.field private mPendingMode:Lcom/android/camera/CameraMode;

.field private mPhotoTakenTime:J

.field private mPlaySoundFromCameraService:Z

.field private final mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

.field private final mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

.field private mPreviewCallbackDisableCounter:I

.field private mPreviewing:Z

.field private final mPropertyOwnerKey:Ljava/lang/Object;

.field private final mRawCallback:Landroid/hardware/Camera$PictureCallback;

.field public mRecPowerWarning:Z

.field private mRecorder:Landroid/media/MediaRecorder;

.field private mRecordingStartSoundHandle:Lcom/android/camera/Handle;

.field private mRecordingStopSoundHandle:Lcom/android/camera/Handle;

.field private mRecordingVideoFileFormat:Lcom/android/camera/io/FileFormat;

.field private mRecordingVideoFilePath:Lcom/android/camera/io/DCFPath;

.field private mSettings:Lcom/android/camera/CameraSettings;

.field private final mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

.field private mShutterSoundHandle:Lcom/android/camera/Handle;

.field public mSyncObject:Ljava/lang/Object;

.field private volatile mTaking_picture:Z

.field mUIHandler:Landroid/os/Handler;

.field private m_LatestFocusAreas:[Landroid/graphics/RectF;

.field private final m_SemaphoreRecording:Ljava/util/concurrent/Semaphore;

.field private mbCanTakePicture:Z

.field public mediaDeletedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/MediaEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public mediaSaveFailedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/MediaEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public mediaSavedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/MediaEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public mode:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/CameraMode;",
            ">;"
        }
    .end annotation
.end field

.field public postviewImageRetrievedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/imaging/RawImageEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public preparingParamsBeforePreviewStartEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/OneValueEventArgs",
            "<",
            "Lcom/android/camera/CameraController;",
            ">;>;"
        }
    .end annotation
.end field

.field public previewFrameRetrievedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/imaging/RawImageEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public previewSize:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/imaging/Size;",
            ">;"
        }
    .end annotation
.end field

.field public previewStartedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public previewStartingEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public previewStoppedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public previewStoppingEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public queryImageQueueCapacityEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/QueryEventArgs",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field public queryImageQueueSizeEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/QueryEventArgs",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field public recordingFailedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/OneValueEventArgs",
            "<",
            "Lcom/android/camera/RecordingFailedReason;",
            ">;>;"
        }
    .end annotation
.end field

.field public requestAutoFocusEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/AutoFocusEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public requestCancelAutoFocusEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/SingleHandlerEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public requestCloseCameraEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/CloseCameraRequestEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public requestDeleteLatestMediaEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/SingleHandlerEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public requestOpenCameraEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/OpenCameraRequestEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public requestSaveImageEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/imaging/SaveImageRequestEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public requestTakingPictureEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/RequestTakingPictureEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public savingImageEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/event/EventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public storageSlot:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/io/StorageSlot;",
            ">;"
        }
    .end annotation
.end field

.field public storageState:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/io/StorageState;",
            ">;"
        }
    .end annotation
.end field

.field public takingPictureFailedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/OneValueEventArgs",
            "<",
            "Lcom/android/camera/TakingPictureFailedReason;",
            ">;>;"
        }
    .end annotation
.end field

.field public videoThumbnailCreatedEvent:Lcom/android/camera/event/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/imaging/ThumbnailEventArgs;",
            ">;"
        }
    .end annotation
.end field

.field public zoomRange:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public zoomValue:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 377
    sput-boolean v0, Lcom/android/camera/CameraThread;->mEnableTouchAEC:Z

    .line 379
    sput-boolean v0, Lcom/android/camera/CameraThread;->mEnableCAF:Z

    .line 439
    new-instance v0, Lcom/android/camera/io/DCFInfo;

    const-string v1, "MEDIA"

    const-string v2, "VIDEO"

    const/4 v3, 0x0

    const-string v4, "counter_video"

    const/16 v5, 0x64

    const v6, 0x7fffffff

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/io/DCFInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    sput-object v0, Lcom/android/camera/CameraThread;->mVideoDcfInfo:Lcom/android/camera/io/DCFInfo;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;Lcom/android/camera/CameraMode;)V
    .locals 5
    .parameter "activity"
    .parameter "handler"
    .parameter "initialMode"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 2605
    const-string v0, "Camera Thread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 151
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    .line 223
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v4}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/CameraThread;->m_SemaphoreRecording:Ljava/util/concurrent/Semaphore;

    .line 372
    iput-boolean v4, p0, Lcom/android/camera/CameraThread;->mIsFirstTimeToStartPreview:Z

    .line 375
    iput-boolean v4, p0, Lcom/android/camera/CameraThread;->mIsFirstFrameCached:Z

    .line 381
    sget-object v0, Lcom/android/camera/AutoFocusMode;->Sensor:Lcom/android/camera/AutoFocusMode;

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mLatestAutoFocusMode:Lcom/android/camera/AutoFocusMode;

    .line 383
    iput-object v2, p0, Lcom/android/camera/CameraThread;->m_LatestFocusAreas:[Landroid/graphics/RectF;

    .line 385
    iput-boolean v3, p0, Lcom/android/camera/CameraThread;->mPreviewing:Z

    .line 387
    iput-boolean v3, p0, Lcom/android/camera/CameraThread;->mIsOnlySetResolution:Z

    .line 389
    iput-object v2, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    .line 396
    iput-boolean v3, p0, Lcom/android/camera/CameraThread;->mTaking_picture:Z

    .line 403
    iput-boolean v4, p0, Lcom/android/camera/CameraThread;->mCanStartPreview:Z

    .line 419
    const/16 v0, 0x55

    iput v0, p0, Lcom/android/camera/CameraThread;->mJPEGQuality:I

    .line 423
    new-instance v0, Lcom/android/camera/MediaInfo;

    invoke-direct {v0}, Lcom/android/camera/MediaInfo;-><init>()V

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mLastMediaInfo:Lcom/android/camera/MediaInfo;

    .line 426
    iput-object v2, p0, Lcom/android/camera/CameraThread;->m3DFileFormat:Lcom/android/camera/io/FileFormat;

    .line 428
    iput-object v2, p0, Lcom/android/camera/CameraThread;->mCurrentColorEffect:Ljava/lang/String;

    .line 430
    const-wide/32 v0, 0x100000

    iput-wide v0, p0, Lcom/android/camera/CameraThread;->MINIMUN_CAMERA_REMAIN_SPACE:J

    .line 435
    iput-object v2, p0, Lcom/android/camera/CameraThread;->mJpegData:[B

    .line 459
    iput v3, p0, Lcom/android/camera/CameraThread;->mCaptureState:I

    .line 462
    iput v4, p0, Lcom/android/camera/CameraThread;->m3DButtonStatus:I

    .line 463
    iput v4, p0, Lcom/android/camera/CameraThread;->m3DPreviewStatus:I

    .line 466
    iput-boolean v3, p0, Lcom/android/camera/CameraThread;->mRecPowerWarning:Z

    .line 469
    iput-boolean v3, p0, Lcom/android/camera/CameraThread;->mPlaySoundFromCameraService:Z

    .line 471
    iput-boolean v3, p0, Lcom/android/camera/CameraThread;->canTakePicAfterFocus:Z

    .line 565
    new-instance v0, Lcom/android/camera/CameraThread$1;

    invoke-direct {v0, p0}, Lcom/android/camera/CameraThread$1;-><init>(Lcom/android/camera/CameraThread;)V

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    .line 572
    new-instance v0, Lcom/android/camera/CameraThread$2;

    invoke-direct {v0, p0}, Lcom/android/camera/CameraThread$2;-><init>(Lcom/android/camera/CameraThread;)V

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

    .line 579
    new-instance v0, Lcom/android/camera/CameraThread$3;

    invoke-direct {v0, p0}, Lcom/android/camera/CameraThread$3;-><init>(Lcom/android/camera/CameraThread;)V

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mRawCallback:Landroid/hardware/Camera$PictureCallback;

    .line 586
    new-instance v0, Lcom/android/camera/CameraThread$4;

    invoke-direct {v0, p0}, Lcom/android/camera/CameraThread$4;-><init>(Lcom/android/camera/CameraThread;)V

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    .line 2600
    iput-object v2, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    .line 2602
    iput-object v2, p0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    .line 2616
    iput-object v2, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    .line 2617
    iput-object v2, p0, Lcom/android/camera/CameraThread;->mHtcWrapCameraDevice:Lcom/htc/wrap/android/hardware/HtcWrapCamera;

    .line 2621
    iput-object v2, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    .line 2623
    iput-object v2, p0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    .line 3601
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mSyncObject:Ljava/lang/Object;

    .line 3723
    new-instance v0, Lcom/android/camera/CameraThread$ErrorCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/CameraThread$ErrorCallback;-><init>(Lcom/android/camera/CameraThread;Lcom/android/camera/CameraThread$1;)V

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mErrorCallback:Lcom/android/camera/CameraThread$ErrorCallback;

    .line 3725
    new-instance v0, Lcom/android/camera/CameraThread$InfoListener;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/CameraThread$InfoListener;-><init>(Lcom/android/camera/CameraThread;Lcom/android/camera/CameraThread$1;)V

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mInfoListener:Lcom/android/camera/CameraThread$InfoListener;

    .line 3727
    new-instance v0, Lcom/android/camera/CameraThread$ErrorListener;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/CameraThread$ErrorListener;-><init>(Lcom/android/camera/CameraThread;Lcom/android/camera/CameraThread$1;)V

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mErrorListener:Lcom/android/camera/CameraThread$ErrorListener;

    .line 3729
    iput-boolean v3, p0, Lcom/android/camera/CameraThread;->mbCanTakePicture:Z

    .line 4629
    new-instance v0, Lcom/android/camera/CameraThread$11;

    invoke-direct {v0, p0}, Lcom/android/camera/CameraThread$11;-><init>(Lcom/android/camera/CameraThread;)V

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 2606
    check-cast p1, Lcom/android/camera/HTCCamera;

    .end local p1
    iput-object p1, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    .line 2607
    iput-object p2, p0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    .line 2608
    if-eqz p3, :cond_0

    .end local p3
    :goto_0
    iput-object p3, p0, Lcom/android/camera/CameraThread;->mInitialMode:Lcom/android/camera/CameraMode;

    .line 2609
    return-void

    .line 2608
    .restart local p3
    :cond_0
    sget-object p3, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    goto :goto_0
.end method

.method private NeedToApplyAMR_NB()Z
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2862
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    sget-object v5, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v2, v5, :cond_0

    move v2, v3

    .line 2872
    :goto_0
    return v2

    .line 2865
    :cond_0
    invoke-static {}, Lcom/android/camera/MovieModeHandler;->getMovieModeHandler()Lcom/android/camera/MovieModeHandler;

    move-result-object v0

    .line 2866
    .local v0, mModeHdr:Lcom/android/camera/ModeHandler;
    iget-object v5, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v2, p0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/CameraType;

    invoke-virtual {v0, v5, v2}, Lcom/android/camera/MovieModeHandler;->getCurrentResolutionSettingValue(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraType;)Lcom/android/camera/Resolution;

    move-result-object v1

    .line 2867
    .local v1, r:Lcom/android/camera/Resolution;
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    sget-object v5, Lcom/android/camera/IntentManager$RequestName;->Mms:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v2, v5}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v2

    if-eq v2, v4, :cond_1

    sget-object v2, Lcom/android/camera/Resolution;->Video_QCIF:Lcom/android/camera/Resolution;

    invoke-virtual {v1, v2}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    sget-object v2, Lcom/android/camera/DisplayDevice;->CUSTOM_MMS:Lcom/android/camera/DisplayDevice$CustomMMS;

    sget-object v5, Lcom/android/camera/DisplayDevice$CustomMMS;->Verizon:Lcom/android/camera/DisplayDevice$CustomMMS;

    if-ne v2, v5, :cond_2

    move v2, v4

    .line 2870
    goto :goto_0

    :cond_2
    move v2, v3

    .line 2872
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/camera/CameraThread;Lcom/android/camera/io/StorageState;ZJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/CameraThread;->checkStorageStateInternal(Lcom/android/camera/io/StorageState;ZJ)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/CameraThread;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mbCanTakePicture:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/camera/CameraThread;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/android/camera/CameraThread;->mIsOnlySetResolution:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/camera/CameraThread;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/android/camera/CameraThread;->mbCanTakePicture:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/camera/CameraThread;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mCanStartPreview:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/camera/CameraThread;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget v0, p0, Lcom/android/camera/CameraThread;->mCaptureState:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/camera/CameraThread;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput p1, p0, Lcom/android/camera/CameraThread;->mCaptureState:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/camera/CameraThread;Lcom/android/camera/CameraType;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/android/camera/CameraThread;->startPreviewInternal(Lcom/android/camera/CameraType;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/camera/CameraThread;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->startPreviewDirectlyInternal()I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/camera/CameraThread;Lcom/android/camera/CameraType;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/camera/CameraThread;->openCameraInternal(Lcom/android/camera/CameraType;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/camera/CameraThread;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->checkCanTakePicture()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/camera/CameraThread;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mTaking_picture:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/android/camera/CameraThread;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/android/camera/CameraThread;->mTaking_picture:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/camera/CameraThread;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->checkInternalDataSpace()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/camera/CameraThread;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->checkImageQueueState()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/camera/CameraThread;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->capture()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/camera/CameraThread;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->canTakePicAfterFocus:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/android/camera/CameraThread;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/android/camera/CameraThread;->canTakePicAfterFocus:Z

    return p1
.end method

.method static synthetic access$2206(Lcom/android/camera/CameraThread;)J
    .locals 4
    .parameter "x0"

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/android/camera/CameraThread;->mLatestCaptureID:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/camera/CameraThread;->mLatestCaptureID:J

    return-wide v0
.end method

.method static synthetic access$2300(Lcom/android/camera/CameraThread;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/camera/CameraThread;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mPlaySoundFromCameraService:Z

    return v0
.end method

.method static synthetic access$2500(Lcom/android/camera/CameraThread;)Lcom/android/camera/IAudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mAudioManager:Lcom/android/camera/IAudioManager;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/camera/CameraThread;)Lcom/android/camera/Handle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mRecordingStartSoundHandle:Lcom/android/camera/Handle;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/android/camera/CameraThread;Lcom/android/camera/Handle;)Lcom/android/camera/Handle;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/camera/CameraThread;->mRecordingStartSoundHandle:Lcom/android/camera/Handle;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/android/camera/CameraThread;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->checkCanTakeRecorder()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/camera/CameraThread;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->stopVideoRecording()V

    return-void
.end method

.method static synthetic access$2902(Lcom/android/camera/CameraThread;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/android/camera/CameraThread;->mPreviewing:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/camera/CameraThread;)Landroid/hardware/Camera;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/camera/CameraThread;)Lcom/android/camera/Handle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mRecordingStopSoundHandle:Lcom/android/camera/Handle;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/android/camera/CameraThread;Lcom/android/camera/Handle;)Lcom/android/camera/Handle;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/camera/CameraThread;->mRecordingStopSoundHandle:Lcom/android/camera/Handle;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/camera/CameraThread;Lcom/android/camera/FlashMode;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/camera/CameraThread;->setFlashModeInternal(Lcom/android/camera/FlashMode;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/camera/CameraThread;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->loadSettings()V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/camera/CameraThread;JJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/CameraThread;->stopVideoRecordingDelay(JJ)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/camera/CameraThread;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/camera/CameraThread;->resetZoomInternal(Z)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/camera/CameraThread;[B)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/camera/CameraThread;->onPreviewFrameRetrieved([B)V

    return-void
.end method

.method static synthetic access$402(Lcom/android/camera/CameraThread;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput p1, p0, Lcom/android/camera/CameraThread;->Camera_Preview_Width:I

    return p1
.end method

.method static synthetic access$4100(Lcom/android/camera/CameraThread;Lcom/android/camera/io/StorageSlot;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/camera/CameraThread;->changeStorageSlotInternal(Lcom/android/camera/io/StorageSlot;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/camera/CameraThread;Lcom/android/camera/CameraMode;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/camera/CameraThread;->changeModeInternal(Lcom/android/camera/CameraMode;)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/camera/CameraThread;Lcom/android/camera/AutoFocusEventArgs;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/camera/CameraThread;->autoFocusInternal(Lcom/android/camera/AutoFocusEventArgs;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/camera/CameraThread;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->cancelAutoFocusInternal()V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/camera/CameraThread;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/camera/CameraThread;->setFirstFrameCacheStateInternal(Z)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/camera/CameraThread;Lcom/android/camera/rotate/UIRotation;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/camera/CameraThread;->setCaptureRotationInternal(Lcom/android/camera/rotate/UIRotation;)V

    return-void
.end method

.method static synthetic access$502(Lcom/android/camera/CameraThread;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput p1, p0, Lcom/android/camera/CameraThread;->Camera_Preview_Height:I

    return p1
.end method

.method static synthetic access$602(Lcom/android/camera/CameraThread;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput p1, p0, Lcom/android/camera/CameraThread;->Camera_Mode_Width:I

    return p1
.end method

.method static synthetic access$702(Lcom/android/camera/CameraThread;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput p1, p0, Lcom/android/camera/CameraThread;->Camera_Mode_Height:I

    return p1
.end method

.method static synthetic access$802(Lcom/android/camera/CameraThread;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput p1, p0, Lcom/android/camera/CameraThread;->Video_Mode_Width:I

    return p1
.end method

.method static synthetic access$902(Lcom/android/camera/CameraThread;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput p1, p0, Lcom/android/camera/CameraThread;->Video_Mode_Height:I

    return p1
.end method

.method private autoFocusInternal(Lcom/android/camera/AutoFocusEventArgs;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 4979
    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mPreviewing:Z

    if-nez v0, :cond_0

    .line 4981
    const-string v0, "CameraThread"

    const-string v1, "autoFocus() - mPreviewing = false"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 4984
    :cond_0
    invoke-static {}, Lcom/android/camera/DisplayDevice;->hasAutoFocus()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4986
    const-string v0, "CameraThread"

    const-string v1, "autoFocus() - DisplayDevice.hasAutoFocus() = false"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 5000
    :goto_0
    return-void

    .line 4991
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CameraThread;->requestAutoFocusEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 4992
    invoke-virtual {p1}, Lcom/android/camera/AutoFocusEventArgs;->isHandled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4994
    const-string v0, "CameraThread"

    const-string v1, "autoFocus() - No handler for auto-focus"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4999
    :cond_2
    iget-object v0, p1, Lcom/android/camera/AutoFocusEventArgs;->focusMode:Lcom/android/camera/AutoFocusMode;

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mLatestAutoFocusMode:Lcom/android/camera/AutoFocusMode;

    goto :goto_0
.end method

.method private cancelAutoFocusInternal()V
    .locals 2

    .prologue
    .line 5024
    iget-boolean v1, p0, Lcom/android/camera/CameraThread;->mPreviewing:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->hasAutoFocus()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5030
    :cond_0
    :goto_0
    return-void

    .line 5028
    :cond_1
    new-instance v0, Lcom/android/camera/event/SingleHandlerEventArgs;

    invoke-direct {v0}, Lcom/android/camera/event/SingleHandlerEventArgs;-><init>()V

    .line 5029
    .local v0, e:Lcom/android/camera/event/SingleHandlerEventArgs;
    iget-object v1, p0, Lcom/android/camera/CameraThread;->requestCancelAutoFocusEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v1, p0, v0}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    goto :goto_0
.end method

.method private capture()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x1

    const/high16 v11, 0x3f00

    const/4 v10, 0x4

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 3399
    const-string v6, "CameraThread"

    const-string v7, "capture()"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3402
    const-string v6, "CameraThread"

    const-string v7, "start to capture photo"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3405
    iget-object v6, p0, Lcom/android/camera/CameraThread;->mShutterSoundHandle:Lcom/android/camera/Handle;

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/camera/CameraThread;->mAudioManager:Lcom/android/camera/IAudioManager;

    if-eqz v6, :cond_0

    .line 3406
    iget-object v6, p0, Lcom/android/camera/CameraThread;->mAudioManager:Lcom/android/camera/IAudioManager;

    const v7, 0x7f060004

    invoke-interface {v6, v7}, Lcom/android/camera/IAudioManager;->loadSoundToMemory(I)Lcom/android/camera/Handle;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/CameraThread;->mShutterSoundHandle:Lcom/android/camera/Handle;

    .line 3410
    :cond_0
    iget-boolean v6, p0, Lcom/android/camera/CameraThread;->mPreviewing:Z

    if-nez v6, :cond_4

    .line 3412
    const-string v6, "CameraThread"

    const-string v7, "Start preview to take picture"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3415
    :try_start_0
    iget-object v6, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v6}, Landroid/hardware/Camera;->startPreview()V

    .line 3416
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/camera/CameraThread;->mPreviewing:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3417
    const/4 v5, 0x1

    .line 3430
    .local v5, startPreviewDirectly:Z
    :goto_0
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportCAF()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3431
    iget-boolean v6, p0, Lcom/android/camera/CameraThread;->mIsFirstFrameCached:Z

    if-nez v6, :cond_1

    if-eqz v5, :cond_5

    .line 3432
    :cond_1
    iput-boolean v9, p0, Lcom/android/camera/CameraThread;->canTakePicAfterFocus:Z

    .line 3446
    :cond_2
    iput-boolean v9, p0, Lcom/android/camera/CameraThread;->mPreviewing:Z

    .line 3449
    iget-object v6, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    if-nez v6, :cond_7

    .line 3450
    const-string v6, "CameraThread"

    const-string v7, "take picture , mCamController is null, return"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3451
    iput v10, p0, Lcom/android/camera/CameraThread;->mCaptureState:I

    .line 3454
    iget-object v6, p0, Lcom/android/camera/CameraThread;->takingPictureFailedEvent:Lcom/android/camera/event/Event;

    new-instance v7, Lcom/android/camera/OneValueEventArgs;

    sget-object v8, Lcom/android/camera/TakingPictureFailedReason;->Unknown:Lcom/android/camera/TakingPictureFailedReason;

    invoke-direct {v7, v8}, Lcom/android/camera/OneValueEventArgs;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v6, p0, v7}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 3560
    .end local v5           #startPreviewDirectly:Z
    :cond_3
    :goto_1
    return-void

    .line 3419
    :catch_0
    move-exception v3

    .line 3421
    .local v3, ex:Ljava/lang/Throwable;
    iput v10, p0, Lcom/android/camera/CameraThread;->mCaptureState:I

    .line 3422
    const-string v6, "CameraThread"

    const-string v7, "Cannot start preview for taking picture"

    invoke-static {v6, v7, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3423
    iget-object v6, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v6}, Lcom/android/camera/HTCCamera;->finish()V

    goto :goto_1

    .line 3428
    .end local v3           #ex:Ljava/lang/Throwable;
    :cond_4
    const/4 v5, 0x0

    .restart local v5       #startPreviewDirectly:Z
    goto :goto_0

    .line 3433
    :cond_5
    iget-boolean v6, p0, Lcom/android/camera/CameraThread;->canTakePicAfterFocus:Z

    if-nez v6, :cond_2

    .line 3434
    iput-boolean v8, p0, Lcom/android/camera/CameraThread;->canTakePicAfterFocus:Z

    .line 3435
    iget-object v6, p0, Lcom/android/camera/CameraThread;->m_LatestFocusAreas:[Landroid/graphics/RectF;

    if-eqz v6, :cond_6

    .line 3438
    iget-object v6, p0, Lcom/android/camera/CameraThread;->m_LatestFocusAreas:[Landroid/graphics/RectF;

    sget-object v7, Lcom/android/camera/AutoFocusMode;->BeforeCapture:Lcom/android/camera/AutoFocusMode;

    invoke-virtual {p0, v6, v7}, Lcom/android/camera/CameraThread;->autoFocus([Landroid/graphics/RectF;Lcom/android/camera/AutoFocusMode;)V

    goto :goto_1

    .line 3441
    :cond_6
    new-array v6, v8, [Landroid/graphics/PointF;

    new-instance v7, Landroid/graphics/PointF;

    invoke-direct {v7, v11, v11}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v7, v6, v9

    sget-object v7, Lcom/android/camera/AutoFocusMode;->BeforeCapture:Lcom/android/camera/AutoFocusMode;

    invoke-virtual {p0, v6, v7}, Lcom/android/camera/CameraThread;->autoFocus([Landroid/graphics/PointF;Lcom/android/camera/AutoFocusMode;)V

    goto :goto_1

    .line 3460
    :cond_7
    iget-object v6, p0, Lcom/android/camera/CameraThread;->isRecording:Lcom/android/camera/property/Property;

    invoke-virtual {v6}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 3461
    const-string v6, "CameraThread"

    const-string v7, "Taking picture during video recording"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3464
    :cond_8
    iget-object v6, p0, Lcom/android/camera/CameraThread;->isTakingPicture:Lcom/android/camera/property/Property;

    iget-object v7, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3466
    iget-object v6, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    iget v7, p0, Lcom/android/camera/CameraThread;->mJPEGQuality:I

    invoke-virtual {v6, v7}, Lcom/android/camera/CameraController;->setJpegQuality(I)V

    .line 3468
    iget-object v6, p0, Lcom/android/camera/CameraThread;->captureRotation:Lcom/android/camera/property/Property;

    invoke-virtual {v6}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/rotate/UIRotation;

    iget v4, v6, Lcom/android/camera/rotate/UIRotation;->deviceOrientation:I

    .line 3470
    .local v4, orientation:I
    iget-object v6, p0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v6}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/CameraType;

    invoke-virtual {v6}, Lcom/android/camera/CameraType;->isFrontCamera()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 3471
    iget-object v6, p0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v6}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/CameraType;

    iget v6, v6, Lcom/android/camera/CameraType;->orientation:I

    sub-int/2addr v6, v4

    add-int/lit16 v6, v6, 0x168

    rem-int/lit16 v4, v6, 0x168

    .line 3476
    :goto_2
    iget-object v6, p0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v6}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/CameraType;

    invoke-virtual {v6}, Lcom/android/camera/CameraType;->is3DCamera()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 3478
    const-string v6, "CameraThread"

    const-string v7, "set rotation landscape while 3D photo mode"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3479
    const/4 v4, 0x0

    .line 3482
    :cond_9
    const-string v6, "CameraThread"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "set rotation, mCaptureRotation = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3484
    iget-object v6, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v6, v4}, Lcom/android/camera/CameraController;->setRotation(I)V

    .line 3487
    invoke-static {}, Lcom/android/camera/LocationHandler;->getLocation()Landroid/location/Location;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/CameraThread;->mLocation:Landroid/location/Location;

    .line 3488
    iget-object v6, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    iget-object v7, p0, Lcom/android/camera/CameraThread;->mLocation:Landroid/location/Location;

    invoke-virtual {v6, v7}, Lcom/android/camera/CameraController;->setLocation(Landroid/location/Location;)V

    .line 3490
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->isAddTimeStamp()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 3491
    iget-object v6, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v7, "img-timestamp"

    const-string v8, "1"

    invoke-virtual {v6, v7, v8}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 3492
    const-string v6, "CameraThread"

    const-string v7, "add time stamp on photo"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3499
    :goto_3
    iget-object v6, p0, Lcom/android/camera/CameraThread;->mSettings:Lcom/android/camera/CameraSettings;

    if-eqz v6, :cond_e

    iget-object v6, p0, Lcom/android/camera/CameraThread;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v6, v6, Lcom/android/camera/CameraSettings;->isAutoEnhanceEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v6}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportRAWChip()Z

    move-result v6

    if-nez v6, :cond_e

    .line 3501
    iget-object v6, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v7, "postproc-enable-imboost"

    const-string v8, "on"

    invoke-virtual {v6, v7, v8}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 3502
    iget-object v6, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v7, "postproc-enable-denoise"

    const-string v8, "on"

    invoke-virtual {v6, v7, v8}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 3511
    :goto_4
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 3512
    .local v0, currentDate:Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy:MM:dd HH:mm:ss"

    invoke-direct {v1, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 3513
    .local v1, dateFormat:Ljava/text/DateFormat;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/camera/CameraThread;->mPhotoTakenTime:J

    .line 3514
    iget-object v6, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v7, "exif-datetime"

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 3517
    iget-object v7, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v8, "review_duration"

    iget-object v6, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v6}, Lcom/android/camera/HTCCamera;->needsActionScreen()Z

    move-result v6

    if-eqz v6, :cond_f

    const-string v6, "on"

    :goto_5
    invoke-virtual {v7, v8, v6}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 3520
    iget-object v6, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v6}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    .line 3523
    const-string v6, "CameraThread"

    const-string v7, "Camera - takePicture"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3524
    sget-object v6, Lcom/android/camera/TIME;->ReadyTakePicture:Lcom/android/camera/TIME$Value;

    invoke-virtual {v6}, Lcom/android/camera/TIME$Value;->End()V

    .line 3528
    iput-boolean v9, p0, Lcom/android/camera/CameraThread;->mCanSetPreviewCallback:Z

    .line 3529
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->clearPreviewCallback()V

    .line 3532
    iput-boolean v9, p0, Lcom/android/camera/CameraThread;->mCanStartPreview:Z

    .line 3533
    iget-object v6, p0, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    sget-object v7, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    invoke-virtual {v6, v7}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 3534
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/camera/CameraThread;->mCaptureStartTime:J

    .line 3535
    :cond_a
    iget-wide v6, p0, Lcom/android/camera/CameraThread;->mLatestCaptureID:J

    add-long/2addr v6, v12

    iput-wide v6, p0, Lcom/android/camera/CameraThread;->mLatestCaptureID:J

    .line 3538
    :try_start_1
    new-instance v2, Lcom/android/camera/RequestTakingPictureEventArgs;

    iget-object v6, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v7, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-direct {v2, v6, v7}, Lcom/android/camera/RequestTakingPictureEventArgs;-><init>(Landroid/hardware/Camera;Lcom/android/camera/CameraController;)V

    .line 3539
    .local v2, e:Lcom/android/camera/RequestTakingPictureEventArgs;
    iget-object v6, p0, Lcom/android/camera/CameraThread;->requestTakingPictureEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v6, p0, v2}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 3540
    invoke-virtual {v2}, Lcom/android/camera/RequestTakingPictureEventArgs;->isHandled()Z

    move-result v6

    if-nez v6, :cond_b

    .line 3541
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->takePicture()V

    .line 3544
    :cond_b
    iget-object v6, p0, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    sget-object v7, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    invoke-virtual {v6, v7}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3545
    iget-object v6, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v6}, Lcom/android/camera/HTCCamera;->prepareActionScreen()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 3547
    .end local v2           #e:Lcom/android/camera/RequestTakingPictureEventArgs;
    :catch_1
    move-exception v3

    .line 3548
    .local v3, ex:Ljava/lang/Exception;
    iput v10, p0, Lcom/android/camera/CameraThread;->mCaptureState:I

    .line 3549
    const-string v6, "CameraThread"

    const-string v7, "take picture exception - mCaptureState = CAPTURE_STATE_ERROR"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3550
    const-string v6, "CameraThread"

    const-string v7, "take picture exception. Camera app finished"

    invoke-static {v6, v7, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3551
    iget-object v6, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v6}, Lcom/android/camera/HTCCamera;->finish()V

    .line 3554
    iget-object v6, p0, Lcom/android/camera/CameraThread;->isTakingPicture:Lcom/android/camera/property/Property;

    iget-object v7, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3555
    iget-wide v6, p0, Lcom/android/camera/CameraThread;->mLatestCaptureID:J

    sub-long/2addr v6, v12

    iput-wide v6, p0, Lcom/android/camera/CameraThread;->mLatestCaptureID:J

    .line 3558
    iget-object v6, p0, Lcom/android/camera/CameraThread;->takingPictureFailedEvent:Lcom/android/camera/event/Event;

    new-instance v7, Lcom/android/camera/OneValueEventArgs;

    sget-object v8, Lcom/android/camera/TakingPictureFailedReason;->Unknown:Lcom/android/camera/TakingPictureFailedReason;

    invoke-direct {v7, v8}, Lcom/android/camera/OneValueEventArgs;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v6, p0, v7}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    goto/16 :goto_1

    .line 3473
    .end local v0           #currentDate:Ljava/util/Date;
    .end local v1           #dateFormat:Ljava/text/DateFormat;
    .end local v3           #ex:Ljava/lang/Exception;
    :cond_c
    iget-object v6, p0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v6}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/CameraType;

    iget v6, v6, Lcom/android/camera/CameraType;->orientation:I

    add-int/2addr v6, v4

    rem-int/lit16 v4, v6, 0x168

    goto/16 :goto_2

    .line 3494
    :cond_d
    iget-object v6, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v7, "img-timestamp"

    const-string v8, "0"

    invoke-virtual {v6, v7, v8}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 3495
    const-string v6, "CameraThread"

    const-string v7, "not add time stamp on photo"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3506
    :cond_e
    iget-object v6, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v7, "postproc-enable-imboost"

    const-string v8, "off"

    invoke-virtual {v6, v7, v8}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 3507
    iget-object v6, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v7, "postproc-enable-denoise"

    const-string v8, "off"

    invoke-virtual {v6, v7, v8}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 3517
    .restart local v0       #currentDate:Ljava/util/Date;
    .restart local v1       #dateFormat:Ljava/text/DateFormat;
    :cond_f
    const-string v6, "off"

    goto/16 :goto_5
.end method

.method private changeModeInternal(Lcom/android/camera/CameraMode;)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 4892
    const-string v0, "CameraThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeMode("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") - start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4895
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mPendingMode:Lcom/android/camera/CameraMode;

    .line 4898
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 4900
    const-string v0, "CameraThread"

    const-string v1, "changeMode() - Change to same mode"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 4927
    :goto_0
    return-void

    .line 4905
    :cond_0
    sget-object v0, Lcom/android/camera/CameraThread$19;->$SwitchMap$com$android$camera$CameraMode:[I

    invoke-virtual {p1}, Lcom/android/camera/CameraMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 4920
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4923
    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mPreviewing:Z

    if-eqz v0, :cond_2

    .line 4924
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraThread;->restartPreview(I)V

    .line 4926
    :cond_2
    const-string v0, "CameraThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeMode("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") - end"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4908
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/CameraThread;->isRecording:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4909
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->stopVideoRecording()V

    goto :goto_1

    .line 4912
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/CameraThread;->isTakingPicture:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4914
    const-string v0, "CameraThread"

    const-string v1, "changeMode() - Waiting for taking picture"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 4915
    iput-object p1, p0, Lcom/android/camera/CameraThread;->mPendingMode:Lcom/android/camera/CameraMode;

    goto :goto_0

    .line 4905
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private changeStorageSlotInternal(Lcom/android/camera/io/StorageSlot;)V
    .locals 3
    .parameter "slot"

    .prologue
    .line 4786
    if-nez p1, :cond_0

    .line 4804
    :goto_0
    return-void

    .line 4790
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraThread;->isTakingPicture:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4792
    const-string v0, "CameraThread"

    const-string v1, "changeStorageSlotInternal() - taking picture"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4795
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CameraThread;->isRecording:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4797
    const-string v0, "CameraThread"

    const-string v1, "changeStorageSlotInternal() - recording"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4802
    :cond_2
    const-string v0, "CameraThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Change storage slot to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 4803
    iget-object v0, p0, Lcom/android/camera/CameraThread;->storageSlot:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private checkCanTakePicture()V
    .locals 3

    .prologue
    .line 3733
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/CameraThread;->mbCanTakePicture:Z

    .line 3734
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mFinalStorageCheckThread:Lcom/android/camera/CameraThread$FinalStorageCheckThread;

    if-eqz v0, :cond_0

    .line 3735
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mFinalStorageCheckThread:Lcom/android/camera/CameraThread$FinalStorageCheckThread;

    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->getPendingFileSize()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraThread$FinalStorageCheckThread;->checkForTakingPicture(J)V

    .line 3738
    :goto_0
    return-void

    .line 3737
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/CameraThread;->mbCanTakePicture:Z

    goto :goto_0
.end method

.method private checkCanTakeRecorder()V
    .locals 3

    .prologue
    .line 3742
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/CameraThread;->mbCanTakePicture:Z

    .line 3743
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mFinalStorageCheckThread:Lcom/android/camera/CameraThread$FinalStorageCheckThread;

    if-eqz v0, :cond_0

    .line 3744
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mFinalStorageCheckThread:Lcom/android/camera/CameraThread$FinalStorageCheckThread;

    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->getPendingFileSize()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraThread$FinalStorageCheckThread;->checkForRecording(J)V

    .line 3747
    :goto_0
    return-void

    .line 3746
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/CameraThread;->mbCanTakePicture:Z

    goto :goto_0
.end method

.method private checkImageQueueState()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 3377
    iget-boolean v5, p0, Lcom/android/camera/CameraThread;->mbCanTakePicture:Z

    if-nez v5, :cond_1

    .line 3395
    :cond_0
    :goto_0
    return-void

    .line 3381
    :cond_1
    new-instance v0, Lcom/android/camera/QueryEventArgs;

    invoke-direct {v0}, Lcom/android/camera/QueryEventArgs;-><init>()V

    .line 3382
    .local v0, e:Lcom/android/camera/QueryEventArgs;,"Lcom/android/camera/QueryEventArgs<Ljava/lang/Long;>;"
    iget-object v5, p0, Lcom/android/camera/CameraThread;->queryImageQueueCapacityEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v5, p0, v0}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 3383
    invoke-virtual {v0}, Lcom/android/camera/QueryEventArgs;->hasResult()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Lcom/android/camera/QueryEventArgs;->getResult()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 3386
    .local v1, maxSize:J
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->getImageQueueSize()J

    move-result-wide v3

    .line 3388
    .local v3, size:J
    const-string v5, "CameraThread"

    const-string v6, "checkImageQueueState() - size = %d/%d (%.2f%%)"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v13

    const/4 v8, 0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    long-to-double v9, v3

    const-wide/high16 v11, 0x4059

    mul-double/2addr v9, v11

    long-to-double v11, v1

    div-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3391
    cmp-long v5, v3, v1

    if-ltz v5, :cond_0

    .line 3393
    iput-boolean v13, p0, Lcom/android/camera/CameraThread;->mbCanTakePicture:Z

    goto :goto_0

    .line 3383
    .end local v1           #maxSize:J
    .end local v3           #size:J
    :cond_2
    const-wide v1, 0x7fffffffffffffffL

    goto :goto_1
.end method

.method private checkInternalDataSpace()V
    .locals 14

    .prologue
    const/4 v9, 0x0

    .line 3935
    const-string v8, "CameraThread"

    const-string v10, "checkInternalDataSpace()"

    invoke-static {v8, v10}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3938
    :try_start_0
    new-instance v5, Landroid/os/StatFs;

    const-string v8, "/data"

    invoke-direct {v5, v8}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 3939
    .local v5, fileStats:Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v8

    int-to-long v0, v8

    .line 3940
    .local v0, availableBlocks:J
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v8

    int-to-long v2, v8

    .line 3941
    .local v2, blockSize:J
    mul-long v6, v0, v2

    .line 3942
    .local v6, size:J
    const-string v8, "CameraThread"

    const-string v10, "checkInternalDataSpace() - internal memory : "

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-static {v8, v10, v11}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3943
    iget-object v10, p0, Lcom/android/camera/CameraThread;->hasEnoughInternalDataSpace:Lcom/android/camera/property/Property;

    iget-object v11, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    const-wide/32 v12, 0x100000

    cmp-long v8, v6, v12

    if-lez v8, :cond_0

    const/4 v8, 0x1

    :goto_0
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v10, v11, v8}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3950
    .end local v0           #availableBlocks:J
    .end local v2           #blockSize:J
    .end local v5           #fileStats:Landroid/os/StatFs;
    .end local v6           #size:J
    :goto_1
    return-void

    .restart local v0       #availableBlocks:J
    .restart local v2       #blockSize:J
    .restart local v5       #fileStats:Landroid/os/StatFs;
    .restart local v6       #size:J
    :cond_0
    move v8, v9

    .line 3943
    goto :goto_0

    .line 3945
    .end local v0           #availableBlocks:J
    .end local v2           #blockSize:J
    .end local v5           #fileStats:Landroid/os/StatFs;
    .end local v6           #size:J
    :catch_0
    move-exception v4

    .line 3947
    .local v4, ex:Ljava/lang/Exception;
    const-string v8, "CameraThread"

    const-string v10, "checkInternalDataSpace() - Error checking internal storage"

    invoke-static {v8, v10, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3948
    iget-object v8, p0, Lcom/android/camera/CameraThread;->hasEnoughInternalDataSpace:Lcom/android/camera/property/Property;

    iget-object v10, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v8, v10, v9}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private checkStorageStateInternal(Lcom/android/camera/io/StorageState;ZJ)V
    .locals 9
    .parameter "initState"
    .parameter "checkSize"
    .parameter "pendingFileSize"

    .prologue
    .line 3871
    const-string v0, "CameraThread"

    const-string v1, "checkStorageStateInternal(initState = "

    const-string v3, ", checkSize = "

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, ")"

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3874
    if-nez p1, :cond_4

    invoke-direct {p0}, Lcom/android/camera/CameraThread;->hasStorageTest()Lcom/android/camera/io/StorageState;

    move-result-object v8

    .line 3877
    .local v8, state:Lcom/android/camera/io/StorageState;
    :goto_0
    if-eqz p2, :cond_1

    .line 3880
    sget-object v0, Lcom/android/camera/io/StorageState;->OK:Lcom/android/camera/io/StorageState;

    if-ne v8, v0, :cond_0

    invoke-direct {p0, p3, p4}, Lcom/android/camera/CameraThread;->hasEnoughFreeSpace(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3881
    sget-object v8, Lcom/android/camera/io/StorageState;->Full:Lcom/android/camera/io/StorageState;

    .line 3884
    :cond_0
    sget-object v0, Lcom/android/camera/io/StorageState;->OK:Lcom/android/camera/io/StorageState;

    if-eq v8, v0, :cond_1

    .line 3886
    invoke-static {}, Lcom/android/camera/io/StorageSlot;->hasUniqueStorageSlot()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3889
    move-object v6, v8

    .line 3890
    .local v6, oldState:Lcom/android/camera/io/StorageState;
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->toggleStorageSlot()V

    .line 3891
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->hasStorageTest()Lcom/android/camera/io/StorageState;

    move-result-object v8

    .line 3894
    sget-object v0, Lcom/android/camera/io/StorageState;->OK:Lcom/android/camera/io/StorageState;

    if-ne v8, v0, :cond_6

    invoke-direct {p0, p3, p4}, Lcom/android/camera/CameraThread;->hasEnoughFreeSpace(J)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3896
    iget-object v0, p0, Lcom/android/camera/CameraThread;->storageSlot:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v0}, Lcom/android/camera/io/StorageSlot;->isInternalMemory()Z

    move-result v0

    if-eqz v0, :cond_5

    const v7, 0x7f0a01a2

    .line 3899
    .local v7, resID:I
    :goto_1
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0, v7}, Lcom/android/camera/HTCCamera;->showToast(I)V

    .line 3915
    .end local v6           #oldState:Lcom/android/camera/io/StorageState;
    .end local v7           #resID:I
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/android/camera/CameraThread;->storageState:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v1, v8}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3918
    sget-object v0, Lcom/android/camera/io/StorageState;->OK:Lcom/android/camera/io/StorageState;

    if-eq v8, v0, :cond_3

    invoke-static {}, Lcom/android/camera/DisplayDevice;->contactsNoStorage()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    sget-object v1, Lcom/android/camera/IntentManager$RequestName;->Contacts:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v0, v1}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3922
    :cond_2
    const-string v0, "CameraThread"

    const-string v1, "Storage error, cancel taking picture"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 3923
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 3927
    :cond_3
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x1e

    invoke-static {}, Lcom/android/camera/DisplayDevice;->showFocusWithoutDelay()Z

    move-result v0

    if-eqz v0, :cond_8

    const-wide/16 v0, 0x0

    :goto_3
    invoke-static {v2, v3, v0, v1}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    .line 3928
    return-void

    .end local v8           #state:Lcom/android/camera/io/StorageState;
    :cond_4
    move-object v8, p1

    .line 3874
    goto :goto_0

    .line 3896
    .restart local v6       #oldState:Lcom/android/camera/io/StorageState;
    .restart local v8       #state:Lcom/android/camera/io/StorageState;
    :cond_5
    const v7, 0x7f0a01a3

    goto :goto_1

    .line 3904
    :cond_6
    const-string v0, "CameraThread"

    const-string v1, "checkStorageStateInternal() - Storage error, switch storage slot back"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3905
    move-object v8, v6

    .line 3906
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->toggleStorageSlot()V

    goto :goto_2

    .line 3910
    .end local v6           #oldState:Lcom/android/camera/io/StorageState;
    :cond_7
    const-string v0, "CameraThread"

    const-string v1, "checkStorageStateInternal() - No storage slot to switch"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 3927
    :cond_8
    const-wide/16 v0, 0x1f4

    goto :goto_3
.end method

.method private clearPreviewCallback()V
    .locals 2

    .prologue
    .line 4709
    const-string v0, "CameraThread"

    const-string v1, "clearPreviewCallback() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4712
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 4714
    const-string v0, "CameraThread"

    const-string v1, "No camera device to clear preview call-back"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 4722
    :goto_0
    return-void

    .line 4719
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 4721
    const-string v0, "CameraThread"

    const-string v1, "clearPreviewCallback() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private disableSoundEffect()V
    .locals 2

    .prologue
    .line 5189
    const-string v0, "CameraThread"

    const-string v1, "disableSoundEffect()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 5190
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mAudioManager:Lcom/android/camera/IAudioManager;

    if-eqz v0, :cond_0

    .line 5191
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mAudioManager:Lcom/android/camera/IAudioManager;

    const-string v1, "active_ap=Camcorder;sound_effect_enable=off"

    invoke-interface {v0, v1}, Lcom/android/camera/IAudioManager;->setParameters(Ljava/lang/String;)V

    .line 5194
    :goto_0
    return-void

    .line 5193
    :cond_0
    const-string v0, "CameraThread"

    const-string v1, "disableSoundEffect() - No IAudioManager interface"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private enableSoundEffect()V
    .locals 2

    .prologue
    .line 5181
    const-string v0, "CameraThread"

    const-string v1, "enableSoundEffect()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 5182
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mAudioManager:Lcom/android/camera/IAudioManager;

    if-eqz v0, :cond_0

    .line 5183
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mAudioManager:Lcom/android/camera/IAudioManager;

    const-string v1, "active_ap=Camcorder;sound_effect_enable=on"

    invoke-interface {v0, v1}, Lcom/android/camera/IAudioManager;->setParameters(Ljava/lang/String;)V

    .line 5186
    :goto_0
    return-void

    .line 5185
    :cond_0
    const-string v0, "CameraThread"

    const-string v1, "enableSoundEffect() - No IAudioManager interface"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getJPEGQualityPreference()I
    .locals 4

    .prologue
    .line 3235
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    const-string v3, "pref_camera_capture_quality"

    invoke-static {v2, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3237
    .local v0, qualityValue:Ljava/lang/String;
    const/4 v1, 0x2

    .line 3238
    .local v1, value:I
    const-string v2, "_super"

    iput-object v2, p0, Lcom/android/camera/CameraThread;->mJPEGQualityKey:Ljava/lang/String;

    .line 3240
    if-eqz v0, :cond_0

    const-string v2, "_super"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3241
    :cond_0
    const/4 v1, 0x2

    .line 3242
    const-string v2, "_super"

    iput-object v2, p0, Lcom/android/camera/CameraThread;->mJPEGQualityKey:Ljava/lang/String;

    .line 3251
    :cond_1
    :goto_0
    invoke-static {v1}, Landroid/media/CameraProfile;->getJpegEncodingQualityParameter(I)I

    move-result v2

    return v2

    .line 3243
    :cond_2
    const-string v2, "_fine"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3244
    const/4 v1, 0x1

    .line 3245
    const-string v2, "_fine"

    iput-object v2, p0, Lcom/android/camera/CameraThread;->mJPEGQualityKey:Ljava/lang/String;

    goto :goto_0

    .line 3246
    :cond_3
    const-string v2, "_normal"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3247
    const/4 v1, 0x0

    .line 3248
    const-string v2, "_normal"

    iput-object v2, p0, Lcom/android/camera/CameraThread;->mJPEGQualityKey:Ljava/lang/String;

    goto :goto_0
.end method

.method private hasEnoughFreeSpace(J)Z
    .locals 8
    .parameter "pendingFileSize"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3833
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v1, v4, :cond_1

    .line 3834
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/CameraThread;->calculatePicturesRemaining(J)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_0

    move v1, v2

    .line 3843
    :goto_0
    return v1

    :cond_0
    move v1, v3

    .line 3834
    goto :goto_0

    .line 3837
    :cond_1
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getRecordLimitCheck()Lcom/android/camera/RecordLimitCheck;

    move-result-object v0

    .line 3838
    .local v0, limitCheck:Lcom/android/camera/RecordLimitCheck;
    if-eqz v0, :cond_3

    .line 3840
    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v1, p0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/CameraType;

    invoke-virtual {v0, v4, v1}, Lcom/android/camera/RecordLimitCheck;->setByteRate(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraType;)V

    .line 3841
    iget-object v1, p0, Lcom/android/camera/CameraThread;->storageSlot:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v0, v1, p1, p2, v3}, Lcom/android/camera/RecordLimitCheck;->remainTime(Lcom/android/camera/io/StorageSlot;JZ)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v1, v4, v6

    if-ltz v1, :cond_2

    :goto_1
    move v1, v2

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1

    :cond_3
    move v1, v3

    .line 3843
    goto :goto_0
.end method

.method private hasStorageTest()Lcom/android/camera/io/StorageState;
    .locals 5

    .prologue
    .line 3799
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/CameraThread;->storageSlot:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/io/StorageSlot;

    .line 3800
    .local v1, slot:Lcom/android/camera/io/StorageSlot;
    invoke-virtual {v1}, Lcom/android/camera/io/StorageSlot;->getState()Ljava/lang/String;

    move-result-object v2

    .line 3801
    .local v2, slotState:Ljava/lang/String;
    const-string v3, "mounted"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 3803
    const-string v3, "mounted_ro"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3804
    sget-object v3, Lcom/android/camera/io/StorageState;->ReadOnly:Lcom/android/camera/io/StorageState;

    .line 3823
    .end local v1           #slot:Lcom/android/camera/io/StorageSlot;
    .end local v2           #slotState:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 3805
    .restart local v1       #slot:Lcom/android/camera/io/StorageSlot;
    .restart local v2       #slotState:Ljava/lang/String;
    :cond_0
    const-string v3, "shared"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3806
    sget-object v3, Lcom/android/camera/io/StorageState;->Shared:Lcom/android/camera/io/StorageState;

    goto :goto_0

    .line 3808
    :cond_1
    sget-object v3, Lcom/android/camera/io/StorageState;->NoStorage:Lcom/android/camera/io/StorageState;

    goto :goto_0

    .line 3812
    :cond_2
    invoke-static {v1}, Lcom/android/camera/io/DCFUtility;->isDcimDirectoryWritable(Lcom/android/camera/io/StorageSlot;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 3813
    sget-object v3, Lcom/android/camera/io/StorageState;->ReadOnly:Lcom/android/camera/io/StorageState;

    goto :goto_0

    .line 3816
    :cond_3
    sget-object v3, Lcom/android/camera/io/StorageState;->OK:Lcom/android/camera/io/StorageState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3818
    .end local v1           #slot:Lcom/android/camera/io/StorageSlot;
    .end local v2           #slotState:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 3822
    .local v0, ex:Ljava/lang/Exception;
    const-string v3, "CameraThread"

    const-string v4, "cannot know storage state"

    invoke-static {v3, v4, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3823
    sget-object v3, Lcom/android/camera/io/StorageState;->Unknown:Lcom/android/camera/io/StorageState;

    goto :goto_0
.end method

.method private isAddTimeStamp()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 3223
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    if-ne v1, v2, :cond_1

    .line 3231
    :cond_0
    :goto_0
    return v0

    .line 3226
    :cond_1
    invoke-static {}, Lcom/android/camera/DisplayDevice;->captrueFullSize()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    sget-object v2, Lcom/android/camera/IntentManager$RequestName;->Contacts:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v1, v2}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    sget-object v2, Lcom/android/camera/IntentManager$RequestName;->Square:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v1, v2}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3231
    :cond_2
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    const-string v1, "pref_camera_timestamp"

    invoke-static {v0, v1}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method private isMMSRecording()Z
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2877
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    sget-object v5, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v2, v5, :cond_0

    move v2, v3

    .line 2886
    :goto_0
    return v2

    .line 2880
    :cond_0
    invoke-static {}, Lcom/android/camera/MovieModeHandler;->getMovieModeHandler()Lcom/android/camera/MovieModeHandler;

    move-result-object v0

    .line 2881
    .local v0, mModeHdr:Lcom/android/camera/ModeHandler;
    iget-object v5, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v2, p0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/CameraType;

    invoke-virtual {v0, v5, v2}, Lcom/android/camera/MovieModeHandler;->getCurrentResolutionSettingValue(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraType;)Lcom/android/camera/Resolution;

    move-result-object v1

    .line 2882
    .local v1, r:Lcom/android/camera/Resolution;
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    sget-object v5, Lcom/android/camera/IntentManager$RequestName;->Mms:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v2, v5}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v2

    if-eq v2, v4, :cond_1

    sget-object v2, Lcom/android/camera/Resolution;->Video_QCIF:Lcom/android/camera/Resolution;

    invoke-virtual {v1, v2}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    move v2, v4

    .line 2884
    goto :goto_0

    :cond_2
    move v2, v3

    .line 2886
    goto :goto_0
.end method

.method private loadResolution()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    .line 2895
    const-string v3, "CameraThread"

    const-string v4, "loadResolution() - start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2898
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v3, v4, :cond_6

    .line 2900
    invoke-static {}, Lcom/android/camera/PhotoModeHandler;->getPhotoModeHandler()Lcom/android/camera/PhotoModeHandler;

    move-result-object v1

    .line 2904
    .local v1, mModeHdr:Lcom/android/camera/ModeHandler;
    invoke-static {}, Lcom/android/camera/DisplayDevice;->captrueFullSize()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    sget-object v4, Lcom/android/camera/IntentManager$RequestName;->Contacts:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v3, v4}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    sget-object v4, Lcom/android/camera/IntentManager$RequestName;->Square:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v3, v4}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2908
    :cond_0
    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v3, p0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/CameraType;

    invoke-virtual {v1, v4, v3}, Lcom/android/camera/PhotoModeHandler;->getCurrentResolutionSettingValue(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraType;)Lcom/android/camera/Resolution;

    move-result-object v2

    .line 2910
    .local v2, r:Lcom/android/camera/Resolution;
    invoke-virtual {v2}, Lcom/android/camera/Resolution;->getWidth()I

    move-result v3

    iput v3, p0, Lcom/android/camera/CameraThread;->Camera_Mode_Width:I

    .line 2911
    invoke-virtual {v2}, Lcom/android/camera/Resolution;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/android/camera/CameraThread;->Camera_Mode_Height:I

    .line 2912
    sget v3, Lcom/android/camera/DisplayDevice;->CAMERA_PREVIEW_SIZE_FOR_CONTACT:I

    iput v3, p0, Lcom/android/camera/CameraThread;->Camera_Preview_Width:I

    .line 2913
    sget v3, Lcom/android/camera/DisplayDevice;->CAMERA_PREVIEW_SIZE_FOR_CONTACT:I

    iput v3, p0, Lcom/android/camera/CameraThread;->Camera_Preview_Height:I

    .line 2982
    :cond_1
    :goto_0
    const-string v3, "CameraThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mEncoderType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/CameraThread;->mEncoderType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2984
    const-string v3, "CameraThread"

    const-string v4, "loadResolution() - end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2986
    return-void

    .line 2917
    .end local v2           #r:Lcom/android/camera/Resolution;
    :cond_2
    const/4 v0, 0x0

    .line 2918
    .local v0, bWideScreen:Z
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportWideScreen2ndCamera()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/CameraType;

    invoke-virtual {v3}, Lcom/android/camera/CameraType;->isFrontCamera()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2919
    const/4 v0, 0x0

    .line 2928
    :goto_1
    iget-object v3, p0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/CameraType;

    invoke-virtual {p0, v0, v1, v3}, Lcom/android/camera/CameraThread;->updateImageRatio(ZLcom/android/camera/ModeHandler;Lcom/android/camera/CameraType;)Lcom/android/camera/Resolution;

    move-result-object v2

    .line 2930
    .restart local v2       #r:Lcom/android/camera/Resolution;
    invoke-virtual {v2}, Lcom/android/camera/Resolution;->getWidth()I

    move-result v3

    iput v3, p0, Lcom/android/camera/CameraThread;->Camera_Mode_Width:I

    .line 2931
    invoke-virtual {v2}, Lcom/android/camera/Resolution;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/android/camera/CameraThread;->Camera_Mode_Height:I

    .line 2932
    if-eqz v0, :cond_5

    .line 2933
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportWideScreen2ndCamera()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/CameraType;

    invoke-virtual {v3}, Lcom/android/camera/CameraType;->isFrontCamera()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2934
    sget v3, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_WITDH_FOR_3X_2ND:I

    iput v3, p0, Lcom/android/camera/CameraThread;->Camera_Preview_Width:I

    .line 2935
    sget v3, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_HEIGHT_FOR_3X_2ND:I

    iput v3, p0, Lcom/android/camera/CameraThread;->Camera_Preview_Height:I

    .line 2951
    :goto_2
    iget-object v3, p0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/CameraType;

    invoke-virtual {v3}, Lcom/android/camera/CameraType;->is3DCamera()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2953
    sget v3, Lcom/android/camera/DisplayDevice;->DEFAULT_3D_CAMERA_PREVIEW_WIDTH:I

    iput v3, p0, Lcom/android/camera/CameraThread;->Camera_Preview_Width:I

    .line 2954
    sget v3, Lcom/android/camera/DisplayDevice;->DEFAULT_3D_CAMERA_PREVIEW_HEIGHT:I

    iput v3, p0, Lcom/android/camera/CameraThread;->Camera_Preview_Height:I

    goto/16 :goto_0

    .line 2924
    .end local v2           #r:Lcom/android/camera/Resolution;
    :cond_3
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    const-string v4, "pref_camera_image_ratio"

    invoke-static {v3, v4}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1

    .line 2937
    .restart local v2       #r:Lcom/android/camera/Resolution;
    :cond_4
    sget v3, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_WITDH_FOR_3X:I

    iput v3, p0, Lcom/android/camera/CameraThread;->Camera_Preview_Width:I

    .line 2938
    sget v3, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_HEIGHT_FOR_3X:I

    iput v3, p0, Lcom/android/camera/CameraThread;->Camera_Preview_Height:I

    goto :goto_2

    .line 2945
    :cond_5
    sget v3, Lcom/android/camera/DisplayDevice;->CAMERA_PREVIEW_WIDTH_FOR_4x3:I

    iput v3, p0, Lcom/android/camera/CameraThread;->Camera_Preview_Width:I

    .line 2946
    sget v3, Lcom/android/camera/DisplayDevice;->CAMERA_PREVIEW_HEIGHT_FOR_4x3:I

    iput v3, p0, Lcom/android/camera/CameraThread;->Camera_Preview_Height:I

    goto :goto_2

    .line 2961
    .end local v0           #bWideScreen:Z
    .end local v1           #mModeHdr:Lcom/android/camera/ModeHandler;
    .end local v2           #r:Lcom/android/camera/Resolution;
    :cond_6
    invoke-static {}, Lcom/android/camera/MovieModeHandler;->getMovieModeHandler()Lcom/android/camera/MovieModeHandler;

    move-result-object v1

    .line 2962
    .restart local v1       #mModeHdr:Lcom/android/camera/ModeHandler;
    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v3, p0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/CameraType;

    invoke-virtual {v1, v4, v3}, Lcom/android/camera/MovieModeHandler;->getCurrentResolutionSettingValue(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraType;)Lcom/android/camera/Resolution;

    move-result-object v2

    .line 2963
    .restart local v2       #r:Lcom/android/camera/Resolution;
    invoke-virtual {v2}, Lcom/android/camera/Resolution;->getWidth()I

    move-result v3

    iput v3, p0, Lcom/android/camera/CameraThread;->Video_Mode_Width:I

    .line 2964
    invoke-virtual {v2}, Lcom/android/camera/Resolution;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/android/camera/CameraThread;->Video_Mode_Height:I

    .line 2967
    sget-object v3, Lcom/android/camera/Resolution;->Video_QCIF:Lcom/android/camera/Resolution;

    invoke-virtual {v2, v3}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    sget-object v3, Lcom/android/camera/Resolution;->Video_QCIF_Service:Lcom/android/camera/Resolution;

    invoke-virtual {v2, v3}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_7
    sget-object v3, Lcom/android/camera/DisplayDevice;->CUSTOM_MMS:Lcom/android/camera/DisplayDevice$CustomMMS;

    sget-object v4, Lcom/android/camera/DisplayDevice$CustomMMS;->Verizon:Lcom/android/camera/DisplayDevice$CustomMMS;

    if-eq v3, v4, :cond_8

    .line 2969
    const/4 v3, 0x1

    iput v3, p0, Lcom/android/camera/CameraThread;->mEncoderType:I

    goto/16 :goto_0

    .line 2970
    :cond_8
    sget-object v3, Lcom/android/camera/Resolution;->Video_720p:Lcom/android/camera/Resolution;

    invoke-virtual {v2, v3}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    sget-object v3, Lcom/android/camera/Resolution;->Video_720p_Online:Lcom/android/camera/Resolution;

    invoke-virtual {v2, v3}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 2971
    :cond_9
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportQCT8x50()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 2972
    iput v6, p0, Lcom/android/camera/CameraThread;->mEncoderType:I

    goto/16 :goto_0

    .line 2974
    :cond_a
    iput v5, p0, Lcom/android/camera/CameraThread;->mEncoderType:I

    goto/16 :goto_0

    .line 2976
    :cond_b
    invoke-static {}, Lcom/android/camera/DisplayDevice;->notSupportH264()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 2977
    iput v6, p0, Lcom/android/camera/CameraThread;->mEncoderType:I

    goto/16 :goto_0

    .line 2979
    :cond_c
    iput v5, p0, Lcom/android/camera/CameraThread;->mEncoderType:I

    goto/16 :goto_0
.end method

.method private loadSettings()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    .line 2989
    const-string v10, "CameraThread"

    const-string v11, "Start to Load Settings to Set Camera "

    invoke-static {v10, v11}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3001
    const/4 v5, 0x0

    .line 3002
    .local v5, nAlarmVolume:I
    iget-object v10, p0, Lcom/android/camera/CameraThread;->mAudioManager:Lcom/android/camera/IAudioManager;

    const/4 v11, 0x4

    invoke-interface {v10, v11}, Lcom/android/camera/IAudioManager;->getStreamVolume(I)I

    move-result v5

    .line 3003
    invoke-static {}, Lcom/android/camera/DisplayDevice;->forceSutterSound()Z

    move-result v10

    if-eqz v10, :cond_0

    if-eqz v5, :cond_5

    .line 3005
    :cond_0
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/camera/CameraThread;->mPlaySoundFromCameraService:Z

    .line 3006
    iget-object v10, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v11, "sound-off"

    const-string v12, "true"

    invoke-virtual {v10, v11, v12}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 3016
    :goto_0
    const/4 v9, 0x0

    .line 3017
    .local v9, wbValue:Ljava/lang/String;
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSpecific2ndCamera()Z

    move-result v10

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v10}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/camera/CameraType;

    invoke-virtual {v10}, Lcom/android/camera/CameraType;->isFrontCamera()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 3019
    iget-object v10, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    const-string v11, "pref_camera_white_balance_2nd"

    invoke-static {v10, v11}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3060
    :goto_1
    iget-object v10, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v10, v9}, Lcom/android/camera/CameraController;->setWhiteBalance(Ljava/lang/String;)V

    .line 3064
    const-string v10, "pref_camera_brightness"

    const-string v11, "exposure-compensation"

    const/4 v12, 0x5

    invoke-direct {p0, v10, v11, v12}, Lcom/android/camera/CameraThread;->setParameterFromBarLevel(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3073
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->getJPEGQualityPreference()I

    move-result v10

    iput v10, p0, Lcom/android/camera/CameraThread;->mJPEGQuality:I

    .line 3106
    const-string v10, "CameraThread"

    const-string v11, " Load Settings - ImageProperty "

    invoke-static {v10, v11}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3107
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->setImageProperty()V

    .line 3132
    iget-object v10, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    const-string v11, "pref_flicker_adjustment"

    invoke-static {v10, v11}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3134
    .local v2, flickerValue:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v10, v2}, Lcom/android/camera/CameraController;->setAntibanding(Ljava/lang/String;)V

    .line 3137
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportISO()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 3139
    iget-object v10, p0, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    invoke-virtual {v10}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v10

    sget-object v11, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    if-ne v10, v11, :cond_c

    .line 3142
    iget-object v10, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v11, "preview-iso"

    const-string v12, "on"

    invoke-virtual {v10, v11, v12}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 3146
    iget-object v10, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v11, "iso"

    const-string v12, "auto"

    invoke-virtual {v10, v11, v12}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 3166
    :cond_1
    :goto_2
    invoke-static {}, Lcom/android/camera/DisplayDevice;->showSceneInMenu()Z

    move-result v10

    if-ne v10, v13, :cond_2

    .line 3168
    const/4 v6, 0x0

    .line 3169
    .local v6, prev_scene:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v10}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/camera/CameraType;

    invoke-virtual {v10}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 3171
    iget-object v10, p0, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    invoke-virtual {v10}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v10

    sget-object v11, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v10, v11, :cond_10

    .line 3173
    iget-object v10, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    const-string v11, "pref_camera_scene"

    invoke-static {v10, v11}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3181
    :goto_3
    iget-object v10, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v10, v6}, Lcom/android/camera/CameraController;->setSceneMode(Ljava/lang/String;)V

    .line 3186
    .end local v6           #prev_scene:Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSmileCapture()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 3188
    iget-object v10, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    const-string v11, "pref_blink detection"

    invoke-static {v10, v11}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 3191
    .local v0, bValueBlink:Z
    iget-object v10, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    const-string v11, "pref_smile_capture"

    invoke-static {v10, v11}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 3194
    .local v1, bValueSmile:Z
    if-eqz v0, :cond_11

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportBlinkDetect()Z

    move-result v10

    if-eqz v10, :cond_11

    .line 3195
    iget-object v10, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v11, "ola-sbd-options"

    const-string v12, "103"

    invoke-virtual {v10, v11, v12}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 3206
    .end local v0           #bValueBlink:Z
    .end local v1           #bValueSmile:Z
    :cond_3
    :goto_4
    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->is3DMode()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 3208
    iget-object v10, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    const-string v11, "pref_camera_3D_file_format"

    invoke-static {v10, v11}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3209
    .local v3, format3D:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v11, "3d-file-format"

    invoke-virtual {v10, v11, v3}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 3211
    const-string v10, "mpo"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_13

    .line 3212
    sget-object v10, Lcom/android/camera/io/FileFormat;->Mpo:Lcom/android/camera/io/FileFormat;

    iput-object v10, p0, Lcom/android/camera/CameraThread;->m3DFileFormat:Lcom/android/camera/io/FileFormat;

    .line 3216
    :goto_5
    const-string v10, "CameraThread"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Set 3D file format: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3219
    .end local v3           #format3D:Ljava/lang/String;
    :cond_4
    const-string v10, "CameraThread"

    const-string v11, "End to Load Settings to Set Camera"

    invoke-static {v10, v11}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3220
    return-void

    .line 3009
    .end local v2           #flickerValue:Ljava/lang/String;
    .end local v9           #wbValue:Ljava/lang/String;
    :cond_5
    iput-boolean v13, p0, Lcom/android/camera/CameraThread;->mPlaySoundFromCameraService:Z

    goto/16 :goto_0

    .line 3022
    .restart local v9       #wbValue:Ljava/lang/String;
    :cond_6
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v10

    if-nez v10, :cond_7

    .line 3024
    iget-object v10, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    const-string v11, "pref_camera_white_balance"

    invoke-static {v10, v11}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1

    .line 3030
    :cond_7
    const/4 v7, 0x0

    .line 3031
    .local v7, scene:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v10}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v10

    if-nez v10, :cond_9

    .line 3032
    iget-object v10, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    const-string v11, "pref_camera_scene_ds"

    invoke-static {v10, v11}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3036
    :goto_6
    const/4 v8, 0x0

    .line 3037
    .local v8, sceneNum:I
    if-eqz v7, :cond_8

    const-string v10, "null"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 3038
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 3040
    :cond_8
    const/16 v10, 0x8

    if-ne v8, v10, :cond_a

    .line 3041
    iget-object v10, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    const-string v11, "pref_camera_white_balance_manual"

    invoke-static {v10, v11}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1

    .line 3034
    .end local v8           #sceneNum:I
    :cond_9
    iget-object v10, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    const-string v11, "pref_camera_scene_service_ds"

    invoke-static {v10, v11}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_6

    .line 3044
    .restart local v8       #sceneNum:I
    :cond_a
    iget-object v10, p0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v10}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/camera/CameraType;

    invoke-virtual {v10}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v10

    if-eqz v10, :cond_b

    .line 3047
    iget-object v10, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    const-string v11, "pref_camera_white_balance"

    const-string v12, "auto"

    invoke-static {v10, v11, v12}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 3048
    iget-object v10, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    const-string v11, "pref_camera_white_balance"

    invoke-static {v10, v11}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1

    .line 3053
    :cond_b
    iget-object v10, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    const-string v11, "pref_camera_white_balance_2nd"

    invoke-static {v10, v11}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1

    .line 3148
    .end local v7           #scene:Ljava/lang/String;
    .end local v8           #sceneNum:I
    .restart local v2       #flickerValue:Ljava/lang/String;
    :cond_c
    iget-object v10, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v11, "preview-iso"

    const-string v12, "off"

    invoke-virtual {v10, v11, v12}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 3151
    iget-object v10, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    const-string v11, "pref_camera_iso"

    invoke-static {v10, v11}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3154
    .local v4, isoValue:Ljava/lang/String;
    if-eqz v4, :cond_d

    const-string v10, "null"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 3155
    :cond_d
    const-string v4, "auto"

    .line 3156
    :cond_e
    iget-object v10, p0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v10}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/camera/CameraType;

    invoke-virtual {v10}, Lcom/android/camera/CameraType;->isFrontCamera()Z

    move-result v10

    if-eqz v10, :cond_f

    .line 3157
    iget-object v10, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v11, "iso"

    const-string v12, "auto"

    invoke-virtual {v10, v11, v12}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 3159
    :cond_f
    iget-object v10, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v11, "iso"

    invoke-virtual {v10, v11, v4}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 3177
    .end local v4           #isoValue:Ljava/lang/String;
    .restart local v6       #prev_scene:Ljava/lang/String;
    :cond_10
    iget-object v10, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    const-string v11, "pref_video_scene"

    invoke-static {v10, v11}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_3

    .line 3197
    .end local v6           #prev_scene:Ljava/lang/String;
    .restart local v0       #bValueBlink:Z
    .restart local v1       #bValueSmile:Z
    :cond_11
    if-eqz v1, :cond_12

    .line 3198
    iget-object v10, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v11, "ola-sbd-options"

    const-string v12, "120"

    invoke-virtual {v10, v11, v12}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 3201
    :cond_12
    iget-object v10, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v11, "ola-sbd-options"

    const-string v12, "100"

    invoke-virtual {v10, v11, v12}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 3214
    .end local v0           #bValueBlink:Z
    .end local v1           #bValueSmile:Z
    .restart local v3       #format3D:Ljava/lang/String;
    :cond_13
    sget-object v10, Lcom/android/camera/io/FileFormat;->Jps:Lcom/android/camera/io/FileFormat;

    iput-object v10, p0, Lcom/android/camera/CameraThread;->m3DFileFormat:Lcom/android/camera/io/FileFormat;

    goto/16 :goto_5
.end method

.method private onPreviewFrameRetrieved([B)V
    .locals 6
    .parameter "yuvData"

    .prologue
    .line 4645
    iget-object v1, p0, Lcom/android/camera/CameraThread;->previewSize:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/imaging/Size;

    .line 4646
    .local v0, size:Lcom/android/camera/imaging/Size;
    if-nez v0, :cond_1

    .line 4650
    :cond_0
    :goto_0
    return-void

    .line 4648
    :cond_1
    iget-object v1, p0, Lcom/android/camera/CameraThread;->previewFrameRetrievedEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v1}, Lcom/android/camera/event/Event;->hasHandlers()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4649
    iget-object v1, p0, Lcom/android/camera/CameraThread;->previewFrameRetrievedEvent:Lcom/android/camera/event/Event;

    new-instance v2, Lcom/android/camera/imaging/RawImageEventArgs;

    sget-object v3, Lcom/android/camera/imaging/PixelFormat;->Yvu420Sp:Lcom/android/camera/imaging/PixelFormat;

    iget v4, v0, Lcom/android/camera/imaging/Size;->width:I

    iget v5, v0, Lcom/android/camera/imaging/Size;->height:I

    invoke-direct {v2, p1, v3, v4, v5}, Lcom/android/camera/imaging/RawImageEventArgs;-><init>([BLcom/android/camera/imaging/PixelFormat;II)V

    invoke-virtual {v1, p0, v2}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    goto :goto_0
.end method

.method private openCameraInternal(Lcom/android/camera/CameraType;)I
    .locals 16
    .parameter "cameraType"

    .prologue
    .line 1369
    const-string v11, "CameraThread"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "openCamera("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ") - start"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1372
    move-object/from16 v0, p1

    iget-boolean v11, v0, Lcom/android/camera/CameraType;->isSupported:Z

    if-nez v11, :cond_0

    .line 1374
    const-string v11, "CameraThread"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Camera \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\' is not supported"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1375
    const/4 v11, 0x4

    .line 1520
    :goto_0
    return v11

    .line 1379
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v11, :cond_2

    .line 1381
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1382
    const/4 v11, 0x0

    goto :goto_0

    .line 1383
    :cond_1
    const-string v11, "CameraThread"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Trying to open camera \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\', but camera \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v13}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\' is already open"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1384
    const/4 v11, 0x4

    goto :goto_0

    .line 1388
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraThread;->isRecPowerWarning()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1390
    const-string v11, "CameraThread"

    const-string v12, "isRecPowerWarning(), won\'t open camera"

    invoke-static {v11, v12}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1391
    const/4 v11, 0x2

    goto :goto_0

    .line 1395
    :cond_3
    invoke-static {}, Lcom/android/camera/CameraToken;->getToken()Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/camera/CameraThread;->mCameraToken:Ljava/lang/Object;

    .line 1396
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->mCameraToken:Ljava/lang/Object;

    if-nez v11, :cond_4

    .line 1398
    const-string v11, "CameraThread"

    const-string v12, "Cannot get camera token"

    invoke-static {v11, v12}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1399
    const/4 v11, 0x3

    goto :goto_0

    .line 1403
    :cond_4
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/camera/CameraThread;->m3DButtonStatus:I

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/camera/CameraThread;->m3DPreviewStatus:I

    .line 1410
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->resetCameraFlag()V

    .line 1416
    :try_start_0
    new-instance v1, Lcom/android/camera/OpenCameraRequestEventArgs;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Lcom/android/camera/OpenCameraRequestEventArgs;-><init>(Lcom/android/camera/CameraType;)V

    .line 1417
    .local v1, e:Lcom/android/camera/OpenCameraRequestEventArgs;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->requestOpenCameraEvent:Lcom/android/camera/event/Event;

    move-object/from16 v0, p0

    invoke-virtual {v11, v0, v1}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 1420
    invoke-virtual {v1}, Lcom/android/camera/OpenCameraRequestEventArgs;->isHandled()Z

    move-result v11

    if-nez v11, :cond_9

    .line 1423
    sget-object v11, Lcom/android/camera/CameraThread$19;->$SwitchMap$com$android$camera$CameraType:[I

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/CameraType;->ordinal()I

    move-result v12

    aget v11, v11, v12

    packed-switch v11, :pswitch_data_0

    .line 1450
    const-string v11, "CameraThread"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unsupported camera type : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1451
    const/4 v11, 0x4

    goto/16 :goto_0

    .line 1428
    :pswitch_0
    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/camera/CameraType;->id:I

    invoke-static {v11}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    .line 1429
    new-instance v11, Lcom/htc/wrap/android/hardware/HtcWrapCamera;

    invoke-direct {v11}, Lcom/htc/wrap/android/hardware/HtcWrapCamera;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/camera/CameraThread;->mHtcWrapCameraDevice:Lcom/htc/wrap/android/hardware/HtcWrapCamera;

    .line 1455
    :goto_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/CameraThread;->mErrorCallback:Lcom/android/camera/CameraThread$ErrorCallback;

    invoke-virtual {v11, v12}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1473
    :cond_5
    new-instance v11, Lcom/android/camera/CameraController;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-direct {v11, v12}, Lcom/android/camera/CameraController;-><init>(Landroid/hardware/Camera;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    .line 1474
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v11}, Lcom/android/camera/CameraController;->setSupportedList()V

    .line 1477
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    move-object/from16 v0, p1

    invoke-virtual {v11, v12, v0}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1480
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v11}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/camera/CameraType;

    invoke-virtual {v11}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 1483
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v12, "taking-picture-zoom"

    invoke-virtual {v11, v12}, Lcom/android/camera/CameraController;->getSettingsInfo(Ljava/lang/String;)Lcom/android/camera/CameraController$SettingInfo;

    move-result-object v3

    .line 1484
    .local v3, info:Lcom/android/camera/CameraController$SettingInfo;
    invoke-virtual {v3}, Lcom/android/camera/CameraController$SettingInfo;->getMin()I

    move-result v5

    .line 1485
    .local v5, min:I
    invoke-virtual {v3}, Lcom/android/camera/CameraController$SettingInfo;->getMax()I

    move-result v4

    .line 1488
    .local v4, max:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->zoomRange:Lcom/android/camera/property/Property;

    invoke-virtual {v11}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/camera/Range;

    .line 1489
    .local v8, oldRange:Lcom/android/camera/Range;,"Lcom/android/camera/Range<Ljava/lang/Integer;>;"
    new-instance v6, Lcom/android/camera/Range;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-direct {v6, v11, v12}, Lcom/android/camera/Range;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1490
    .local v6, newRange:Lcom/android/camera/Range;,"Lcom/android/camera/Range<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->zoomRange:Lcom/android/camera/property/Property;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v11, v12, v6}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1493
    if-eqz v8, :cond_a

    .line 1495
    invoke-virtual {v8, v6}, Lcom/android/camera/Range;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 1497
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->zoomValue:Lcom/android/camera/property/Property;

    invoke-virtual {v11}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iget-object v11, v8, Lcom/android/camera/Range;->minimum:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    sub-int v11, v12, v11

    int-to-double v12, v11

    iget-object v11, v8, Lcom/android/camera/Range;->maximum:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v14

    iget-object v11, v8, Lcom/android/camera/Range;->minimum:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    sub-int v11, v14, v11

    int-to-double v14, v11

    div-double v9, v12, v14

    .line 1498
    .local v9, ratio:D
    iget-object v11, v6, Lcom/android/camera/Range;->maximum:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iget-object v11, v6, Lcom/android/camera/Range;->minimum:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    sub-int v11, v12, v11

    int-to-double v11, v11

    mul-double/2addr v11, v9

    double-to-int v12, v11

    iget-object v11, v6, Lcom/android/camera/Range;->minimum:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    add-int v7, v12, v11

    .line 1499
    .local v7, newZoomValue:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->zoomValue:Lcom/android/camera/property/Property;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1507
    .end local v3           #info:Lcom/android/camera/CameraController$SettingInfo;
    .end local v4           #max:I
    .end local v5           #min:I
    .end local v6           #newRange:Lcom/android/camera/Range;,"Lcom/android/camera/Range<Ljava/lang/Integer;>;"
    .end local v7           #newZoomValue:I
    .end local v8           #oldRange:Lcom/android/camera/Range;,"Lcom/android/camera/Range<Ljava/lang/Integer;>;"
    .end local v9           #ratio:D
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->cameraOpenEvent:Lcom/android/camera/event/Event;

    new-instance v12, Lcom/android/camera/OneValueEventArgs;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-direct {v12, v13}, Lcom/android/camera/OneValueEventArgs;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    invoke-virtual {v11, v0, v12}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 1510
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isNvidiaPlatform()Z

    move-result v11

    if-nez v11, :cond_b

    .line 1511
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/camera/CameraThread;->mIsParamsPrepared:Z

    .line 1519
    :goto_3
    const-string v11, "CameraThread"

    const-string v12, "openCamera() - end"

    invoke-static {v11, v12}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1520
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 1434
    :pswitch_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-static {v11}, Lcom/android/camera/component/PowerWarningController;->isSupported(Lcom/android/camera/HTCCamera;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 1436
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v11, v11, Lcom/android/camera/HTCCamera;->isLowPower:Lcom/android/camera/property/Property;

    invoke-virtual {v11}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 1438
    const-string v11, "CameraThread"

    const-string v12, "power is low in 3D mode, won\'t open camera"

    invoke-static {v11, v12}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1440
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    if-eqz v11, :cond_7

    .line 1441
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v12, 0x3b

    const-wide/16 v13, 0x64

    invoke-static {v11, v12, v13, v14}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    .line 1442
    :cond_7
    const/4 v11, 0x2

    goto/16 :goto_0

    .line 1445
    :cond_8
    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/camera/CameraType;->id:I

    invoke-static {v11}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    .line 1446
    new-instance v11, Lcom/htc/wrap/android/hardware/HtcWrapCamera;

    invoke-direct {v11}, Lcom/htc/wrap/android/hardware/HtcWrapCamera;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/camera/CameraThread;->mHtcWrapCameraDevice:Lcom/htc/wrap/android/hardware/HtcWrapCamera;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 1464
    .end local v1           #e:Lcom/android/camera/OpenCameraRequestEventArgs;
    :catch_0
    move-exception v2

    .line 1466
    .local v2, ex:Ljava/lang/Throwable;
    const-string v11, "CameraThread"

    const-string v12, "Cannot open camera device"

    invoke-static {v11, v12, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1467
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->mCameraToken:Ljava/lang/Object;

    invoke-static {v11}, Lcom/android/camera/CameraToken;->releaseToken(Ljava/lang/Object;)V

    .line 1468
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/camera/CameraThread;->mCameraToken:Ljava/lang/Object;

    .line 1469
    const/4 v11, 0x4

    goto/16 :goto_0

    .line 1459
    .end local v2           #ex:Ljava/lang/Throwable;
    .restart local v1       #e:Lcom/android/camera/OpenCameraRequestEventArgs;
    :cond_9
    :try_start_2
    invoke-virtual {v1}, Lcom/android/camera/OpenCameraRequestEventArgs;->getCamera()Landroid/hardware/Camera;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    .line 1460
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v11, :cond_5

    .line 1461
    new-instance v11, Ljava/lang/RuntimeException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/CameraThread;->requestOpenCameraEvent:Lcom/android/camera/event/Event;

    iget-object v13, v13, Lcom/android/camera/event/Event;->name:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " event is handled, but no result"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 1503
    .restart local v3       #info:Lcom/android/camera/CameraController$SettingInfo;
    .restart local v4       #max:I
    .restart local v5       #min:I
    .restart local v6       #newRange:Lcom/android/camera/Range;,"Lcom/android/camera/Range<Ljava/lang/Integer;>;"
    .restart local v8       #oldRange:Lcom/android/camera/Range;,"Lcom/android/camera/Range<Ljava/lang/Integer;>;"
    :cond_a
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->zoomValue:Lcom/android/camera/property/Property;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    iget-object v13, v6, Lcom/android/camera/Range;->minimum:Ljava/lang/Object;

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1514
    .end local v3           #info:Lcom/android/camera/CameraController$SettingInfo;
    .end local v4           #max:I
    .end local v5           #min:I
    .end local v6           #newRange:Lcom/android/camera/Range;,"Lcom/android/camera/Range<Ljava/lang/Integer;>;"
    .end local v8           #oldRange:Lcom/android/camera/Range;,"Lcom/android/camera/Range<Ljava/lang/Integer;>;"
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->setupParamsBeforeStartingPreview()V

    .line 1515
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/camera/CameraThread;->mIsParamsPrepared:Z

    goto/16 :goto_3

    .line 1423
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private releaseMediaRecorder()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2578
    const-string v1, "CameraThread"

    const-string v2, "releaseMediaRecorder()"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2579
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    if-eqz v1, :cond_0

    .line 2581
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2586
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->reset()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2591
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->release()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2596
    :goto_2
    iput-object v3, p0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    .line 2598
    :cond_0
    return-void

    .line 2582
    :catch_0
    move-exception v0

    .line 2583
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v1, "CameraThread"

    const-string v2, "mRecorder.setOnInfoListener(null - Runtime exception caught"

    invoke-static {v1, v2, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2587
    .end local v0           #ex:Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 2588
    .restart local v0       #ex:Ljava/lang/RuntimeException;
    const-string v1, "CameraThread"

    const-string v2, "mRecorder.reset() - Runtime exception caught"

    invoke-static {v1, v2, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 2592
    .end local v0           #ex:Ljava/lang/RuntimeException;
    :catch_2
    move-exception v0

    .line 2593
    .restart local v0       #ex:Ljava/lang/RuntimeException;
    const-string v1, "CameraThread"

    const-string v2, "mRecorder.release() - Runtime exception caught"

    invoke-static {v1, v2, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private resetCameraFlag()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2755
    iput-boolean v0, p0, Lcom/android/camera/CameraThread;->mIsOnlySetResolution:Z

    .line 2756
    iput-boolean v0, p0, Lcom/android/camera/CameraThread;->mTaking_picture:Z

    .line 2757
    return-void
.end method

.method private resetZoomInternal(Z)V
    .locals 5
    .parameter "toMinimum"

    .prologue
    .line 4323
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    if-nez v2, :cond_0

    .line 4354
    :goto_0
    return-void

    .line 4327
    :cond_0
    iget-object v2, p0, Lcom/android/camera/CameraThread;->zoomRange:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/Range;

    .line 4328
    .local v0, range:Lcom/android/camera/Range;,"Lcom/android/camera/Range<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/android/camera/Range;->maximum:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_2

    .line 4330
    :cond_1
    const-string v2, "CameraThread"

    const-string v3, "resetZoom() - Cannot get zoom range"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4336
    :cond_2
    if-nez p1, :cond_6

    iget-object v2, p0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/CameraType;

    invoke-virtual {v2}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->getFaceNumber()I

    move-result v2

    if-nez v2, :cond_6

    .line 4338
    iget-object v2, p0, Lcom/android/camera/CameraThread;->zoomValue:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 4339
    .local v1, zoom:I
    iget-object v2, v0, Lcom/android/camera/Range;->minimum:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 4340
    iget-object v2, v0, Lcom/android/camera/Range;->minimum:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 4348
    :cond_3
    :goto_1
    iget-boolean v2, p0, Lcom/android/camera/CameraThread;->mPreviewing:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    if-eqz v2, :cond_4

    .line 4350
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v2, v1}, Lcom/android/camera/CameraController;->setZoom(I)V

    .line 4351
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v2}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    .line 4353
    :cond_4
    iget-object v2, p0, Lcom/android/camera/CameraThread;->zoomValue:Lcom/android/camera/property/Property;

    iget-object v3, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 4341
    :cond_5
    iget-object v2, v0, Lcom/android/camera/Range;->maximum:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v1, v2, :cond_3

    .line 4342
    iget-object v2, v0, Lcom/android/camera/Range;->maximum:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1

    .line 4345
    .end local v1           #zoom:I
    :cond_6
    iget-object v2, v0, Lcom/android/camera/Range;->minimum:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .restart local v1       #zoom:I
    goto :goto_1
.end method

.method private setCaptureRotationInternal(Lcom/android/camera/rotate/UIRotation;)V
    .locals 3
    .parameter "rotation"

    .prologue
    .line 5170
    const-string v0, "CameraThread"

    const-string v1, "setCaptureRotationInternal("

    const-string v2, ")"

    invoke-static {v0, v1, p1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5171
    if-nez p1, :cond_0

    .line 5172
    sget-object p1, Lcom/android/camera/rotate/UIRotation;->Landscape:Lcom/android/camera/rotate/UIRotation;

    .line 5173
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraThread;->captureRotation:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 5174
    return-void
.end method

.method private setFirstFrameCacheStateInternal(Z)V
    .locals 4
    .parameter "isEnabled"

    .prologue
    .line 5132
    const-string v0, "CameraThread"

    const-string v1, "setFirstFrameCacheStateInternal("

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, ")"

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5135
    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mIsFirstFrameCached:Z

    if-ne v0, p1, :cond_1

    .line 5147
    :cond_0
    :goto_0
    return-void

    .line 5139
    :cond_1
    iput-boolean p1, p0, Lcom/android/camera/CameraThread;->mIsFirstFrameCached:Z

    .line 5142
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    if-eqz v0, :cond_0

    .line 5144
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v2, "cache-first-frame"

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v2, v0}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    .line 5145
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v0}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    goto :goto_0

    .line 5144
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private setFlashModeInternal(Lcom/android/camera/FlashMode;)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 5089
    iget-object v0, p0, Lcom/android/camera/CameraThread;->flashMode:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5100
    :cond_0
    :goto_0
    return-void

    .line 5093
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    if-eqz v0, :cond_0

    .line 5097
    const-string v0, "CameraThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set flash mode to : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 5098
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    iget-object v1, p1, Lcom/android/camera/FlashMode;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraController;->setFlashMode(Ljava/lang/String;)V

    .line 5099
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v0}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    goto :goto_0
.end method

.method private setHWSoundEffect(Ljava/lang/String;)V
    .locals 3
    .parameter "setting"

    .prologue
    .line 5223
    const-string v0, "CameraThread"

    const-string v1, "setHWSoundEffect("

    const-string v2, ")"

    invoke-static {v0, v1, p1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5225
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mAudioManager:Lcom/android/camera/IAudioManager;

    if-eqz v0, :cond_1

    .line 5227
    const-string v0, "active_ap=Camcorder;dolby_srs_eq="

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5228
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mAudioManager:Lcom/android/camera/IAudioManager;

    invoke-interface {v0, p1}, Lcom/android/camera/IAudioManager;->setParameters(Ljava/lang/String;)V

    .line 5234
    :goto_0
    return-void

    .line 5230
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mAudioManager:Lcom/android/camera/IAudioManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "active_ap=Camcorder;dolby_srs_eq="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/IAudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_0

    .line 5233
    :cond_1
    const-string v0, "CameraThread"

    const-string v1, "setHWSoundEffect() - No IAudioManager interface"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setImageProperty()V
    .locals 3

    .prologue
    const/4 v2, 0x5

    .line 3257
    const-string v0, "pref_camera_contrast"

    const-string v1, "contrast"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/CameraThread;->setParameterFromBarLevel(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3263
    const-string v0, "pref_camera_saturation"

    const-string v1, "saturation"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/CameraThread;->setParameterFromBarLevel(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3269
    const-string v0, "pref_camera_shaprness"

    const-string v1, "sharpness"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/CameraThread;->setParameterFromBarLevel(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3273
    return-void
.end method

.method private setParameterFromBarLevel(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .parameter "pref_key"
    .parameter "param_key"
    .parameter "level_num"

    .prologue
    .line 3277
    const/4 v1, 0x0

    .line 3278
    .local v1, info:Lcom/android/camera/CameraController$SettingInfo;
    const/4 v3, 0x0

    .line 3279
    .local v3, value:I
    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-static {v4, p1}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3281
    .local v2, level:Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v4, "null"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3283
    :try_start_0
    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, p2, v5, p3}, Lcom/android/camera/CameraController;->mapBarLevel2SettingValue(Ljava/lang/String;II)I

    move-result v3

    .line 3287
    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v4, p2, v3}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3297
    :goto_0
    return-void

    .line 3288
    :catch_0
    move-exception v0

    .line 3289
    .local v0, ex:Ljava/lang/Exception;
    const-string v4, "CameraThread"

    const-string v5, "get level failed !!!"

    invoke-static {v4, v5, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3290
    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v4, p2}, Lcom/android/camera/CameraController;->getSettingsInfo(Ljava/lang/String;)Lcom/android/camera/CameraController$SettingInfo;

    move-result-object v1

    .line 3291
    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v1}, Lcom/android/camera/CameraController$SettingInfo;->getDefault()I

    move-result v5

    invoke-virtual {v4, p2, v5}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    goto :goto_0

    .line 3294
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_0
    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v4, p2}, Lcom/android/camera/CameraController;->getSettingsInfo(Ljava/lang/String;)Lcom/android/camera/CameraController$SettingInfo;

    move-result-object v1

    .line 3295
    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v1}, Lcom/android/camera/CameraController$SettingInfo;->getDefault()I

    move-result v5

    invoke-virtual {v4, p2, v5}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private setSoundEffect(ZLcom/android/camera/rotate/UIRotation;)V
    .locals 6
    .parameter "hasEffect"
    .parameter "rotation"

    .prologue
    .line 5201
    const-string v0, "CameraThread"

    const-string v1, "setSoundEffect(hasEffect="

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, ", rotation="

    const-string v5, ")"

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5203
    if-nez p1, :cond_0

    .line 5204
    const-string v0, "Mono"

    invoke-direct {p0, v0}, Lcom/android/camera/CameraThread;->setHWSoundEffect(Ljava/lang/String;)V

    .line 5220
    :goto_0
    return-void

    .line 5207
    :cond_0
    sget-object v0, Lcom/android/camera/CameraThread$19;->$SwitchMap$com$android$camera$rotate$UIRotation:[I

    invoke-virtual {p2}, Lcom/android/camera/rotate/UIRotation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 5216
    const-string v0, "Portrait"

    invoke-direct {p0, v0}, Lcom/android/camera/CameraThread;->setHWSoundEffect(Ljava/lang/String;)V

    goto :goto_0

    .line 5210
    :pswitch_0
    const-string v0, "Landscape_Left"

    invoke-direct {p0, v0}, Lcom/android/camera/CameraThread;->setHWSoundEffect(Ljava/lang/String;)V

    goto :goto_0

    .line 5213
    :pswitch_1
    const-string v0, "Landscape_Right"

    invoke-direct {p0, v0}, Lcom/android/camera/CameraThread;->setHWSoundEffect(Ljava/lang/String;)V

    goto :goto_0

    .line 5207
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setupParamsBeforeStartingPreview()V
    .locals 14

    .prologue
    .line 1536
    const-string v11, "CameraThread"

    const-string v12, "setupParamsBeforeStartingPreview - Start"

    invoke-static {v11, v12}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1539
    iget-object v11, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v11, :cond_0

    .line 1541
    const-string v11, "CameraThread"

    const-string v12, "setupParamsBeforeStartingPreview - No camera device"

    invoke-static {v11, v12}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1718
    :goto_0
    return-void

    .line 1546
    :cond_0
    iget-object v11, p0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v11}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/CameraType;

    .line 1547
    .local v1, cameraType:Lcom/android/camera/CameraType;
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isNvidiaPlatform()Z

    move-result v11

    if-eqz v11, :cond_7

    sget-object v11, Lcom/android/camera/CameraType;->Main:Lcom/android/camera/CameraType;

    if-ne v1, v11, :cond_7

    iget-object v11, p0, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    sget-object v12, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    invoke-virtual {v11, v12}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 1551
    iget-object v11, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v12, "capture-mode"

    const-string v13, "zsl"

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1557
    :goto_1
    iget-object v11, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v12, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-static {v11, v12}, Lcom/android/camera/HTCCameraAdvanceSetting;->initPrefrenceFiles(Landroid/app/Activity;Lcom/android/camera/CameraController;)Z

    .line 1560
    iget-object v12, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    iget-object v11, p0, Lcom/android/camera/CameraThread;->flashMode:Lcom/android/camera/property/Property;

    invoke-virtual {v11}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/camera/FlashMode;

    iget-object v11, v11, Lcom/android/camera/FlashMode;->value:Ljava/lang/String;

    invoke-virtual {v12, v11}, Lcom/android/camera/CameraController;->setFlashMode(Ljava/lang/String;)V

    .line 1563
    iget-object v11, p0, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    invoke-virtual {v11}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v11

    sget-object v12, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    if-ne v11, v12, :cond_b

    .line 1566
    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->isSlowMotionMode()Z

    move-result v3

    .line 1567
    .local v3, isSlowMotion:Z
    if-nez v3, :cond_8

    .line 1569
    iget-object v11, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v12, "cam-mode"

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    .line 1580
    :goto_2
    iget-object v11, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/camera/CameraController;->setRecordingHint(Z)V

    .line 1583
    iget-object v11, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v11}, Lcom/android/camera/CameraController;->supportVideoStabilization()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1585
    if-nez v3, :cond_a

    sget-object v11, Lcom/android/camera/CameraType;->Main:Lcom/android/camera/CameraType;

    if-ne v1, v11, :cond_a

    iget-object v11, p0, Lcom/android/camera/CameraThread;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v11, v11, Lcom/android/camera/CameraSettings;->isVideoStabilizationEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v11}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_a

    const/4 v10, 0x1

    .line 1588
    .local v10, videoStabilization:Z
    :goto_3
    const-string v11, "CameraThread"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "videoStabilization"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1589
    iget-object v11, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v11, v10}, Lcom/android/camera/CameraController;->setVideoStabilization(Z)V

    .line 1593
    .end local v10           #videoStabilization:Z
    :cond_1
    iget-object v11, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v12, "cache-first-frame"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    .line 1606
    .end local v3           #isSlowMotion:Z
    :goto_4
    invoke-static {}, Lcom/android/camera/DisplayDevice;->canChangeFrameRate()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1608
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->isMMSRecording()Z

    move-result v11

    if-eqz v11, :cond_d

    .line 1609
    iget-object v11, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const/16 v12, 0x3a98

    const/16 v13, 0x3a98

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/CameraController;->setPreviewFpsRange(II)V

    .line 1615
    :cond_2
    :goto_5
    invoke-virtual {v1}, Lcom/android/camera/CameraType;->isFrontCamera()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1617
    iget-object v11, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v12, "front-camera-mode"

    const-string v13, "mirror"

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1622
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->loadResolution()V

    .line 1626
    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->isSlowMotionMode()Z

    move-result v11

    if-eqz v11, :cond_e

    .line 1628
    invoke-static {}, Lcom/android/camera/MovieModeHandler;->getMovieModeHandler()Lcom/android/camera/MovieModeHandler;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/camera/MovieModeHandler;->getSlowMotionResolution()Lcom/android/camera/imaging/Size;

    move-result-object v7

    .line 1629
    .local v7, size:Lcom/android/camera/imaging/Size;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget v12, v7, Lcom/android/camera/imaging/Size;->width:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "x"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v7, Lcom/android/camera/imaging/Size;->height:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1637
    .end local v7           #size:Lcom/android/camera/imaging/Size;
    .local v9, strResolution:Ljava/lang/String;
    :goto_6
    iget-object v11, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v12, "video-size"

    invoke-virtual {v11, v12, v9}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1638
    const-string v11, "CameraThread"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "setCameraParameter(\'video-size\',\'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\')"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1641
    new-instance v5, Lcom/android/camera/imaging/Size;

    invoke-direct {v5}, Lcom/android/camera/imaging/Size;-><init>()V

    .line 1642
    .local v5, previewSize:Lcom/android/camera/imaging/Size;
    sget-object v12, Lcom/android/camera/CameraThread$19;->$SwitchMap$com$android$camera$CameraMode:[I

    iget-object v11, p0, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    invoke-virtual {v11}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/camera/CameraMode;

    invoke-virtual {v11}, Lcom/android/camera/CameraMode;->ordinal()I

    move-result v11

    aget v11, v12, v11

    packed-switch v11, :pswitch_data_0

    .line 1689
    :goto_7
    iget v11, v5, Lcom/android/camera/imaging/Size;->width:I

    and-int/lit8 v11, v11, 0xf

    rsub-int/lit8 v8, v11, 0x10

    .line 1690
    .local v8, sizeDiff:I
    const/16 v11, 0x10

    if-ge v8, v11, :cond_4

    .line 1691
    iget v11, v5, Lcom/android/camera/imaging/Size;->width:I

    add-int/2addr v11, v8

    iput v11, v5, Lcom/android/camera/imaging/Size;->width:I

    .line 1692
    :cond_4
    iget v11, v5, Lcom/android/camera/imaging/Size;->height:I

    and-int/lit8 v11, v11, 0xf

    rsub-int/lit8 v8, v11, 0x10

    .line 1693
    const/16 v11, 0x10

    if-ge v8, v11, :cond_5

    .line 1694
    iget v11, v5, Lcom/android/camera/imaging/Size;->height:I

    add-int/2addr v11, v8

    iput v11, v5, Lcom/android/camera/imaging/Size;->height:I

    .line 1695
    :cond_5
    iget-object v11, p0, Lcom/android/camera/CameraThread;->previewSize:Lcom/android/camera/property/Property;

    iget-object v12, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v11, v12, v5}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1698
    iget-object v11, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v12, "taking-picture-zoom"

    invoke-virtual {v11, v12}, Lcom/android/camera/CameraController;->getSettingsInfo(Ljava/lang/String;)Lcom/android/camera/CameraController$SettingInfo;

    move-result-object v2

    .line 1700
    .local v2, info:Lcom/android/camera/CameraController$SettingInfo;
    sget-boolean v11, Lcom/android/camera/HTCCameraAdvanceSetting;->mIsInitZoom:Z

    const/4 v12, 0x1

    if-ne v11, v12, :cond_6

    .line 1701
    iget-object v11, p0, Lcom/android/camera/CameraThread;->zoomValue:Lcom/android/camera/property/Property;

    iget-object v12, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/android/camera/CameraController$SettingInfo;->getDefault()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1702
    const/4 v11, 0x0

    sput-boolean v11, Lcom/android/camera/HTCCameraAdvanceSetting;->mIsInitZoom:Z

    .line 1705
    :cond_6
    invoke-virtual {v1}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v11

    if-eqz v11, :cond_10

    .line 1706
    iget-object v12, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    iget-object v11, p0, Lcom/android/camera/CameraThread;->zoomValue:Lcom/android/camera/property/Property;

    invoke-virtual {v11}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v12, v11}, Lcom/android/camera/CameraController;->setZoom(I)V

    .line 1711
    :goto_8
    iget-object v11, p0, Lcom/android/camera/CameraThread;->preparingParamsBeforePreviewStartEvent:Lcom/android/camera/event/Event;

    new-instance v12, Lcom/android/camera/OneValueEventArgs;

    iget-object v13, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-direct {v12, v13}, Lcom/android/camera/OneValueEventArgs;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v11, p0, v12}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 1714
    const-string v11, "CameraThread"

    const-string v12, "setupParamsBeforeStartingPreview - Set parameters"

    invoke-static {v11, v12}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1715
    iget-object v11, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v11}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    .line 1717
    const-string v11, "CameraThread"

    const-string v12, "setupParamsBeforeStartingPreview - End"

    invoke-static {v11, v12}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1554
    .end local v2           #info:Lcom/android/camera/CameraController$SettingInfo;
    .end local v5           #previewSize:Lcom/android/camera/imaging/Size;
    .end local v8           #sizeDiff:I
    .end local v9           #strResolution:Ljava/lang/String;
    :cond_7
    iget-object v11, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v12, "capture-mode"

    const-string v13, "normal"

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1574
    .restart local v3       #isSlowMotion:Z
    :cond_8
    iget-object v11, p0, Lcom/android/camera/CameraThread;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v11, v11, Lcom/android/camera/CameraSettings;->recordWithAudio:Lcom/android/camera/property/Property;

    invoke-virtual {v11}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 1575
    .local v4, keepSound:Z
    if-eqz v4, :cond_9

    .line 1576
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->disableSoundEffect()V

    .line 1577
    :cond_9
    iget-object v11, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v12, "cam-mode"

    const/4 v13, 0x2

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 1585
    .end local v4           #keepSound:Z
    :cond_a
    const/4 v10, 0x0

    goto/16 :goto_3

    .line 1597
    .end local v3           #isSlowMotion:Z
    :cond_b
    iget-object v11, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v12, "cam-mode"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    .line 1599
    iget-object v11, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/camera/CameraController;->setRecordingHint(Z)V

    .line 1602
    iget-object v12, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v13, "cache-first-frame"

    iget-boolean v11, p0, Lcom/android/camera/CameraThread;->mIsFirstFrameCached:Z

    if-eqz v11, :cond_c

    const/4 v11, 0x1

    :goto_9
    invoke-virtual {v12, v13, v11}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    goto/16 :goto_4

    :cond_c
    const/4 v11, 0x0

    goto :goto_9

    .line 1611
    :cond_d
    iget-object v11, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const/4 v12, 0x1

    const v13, 0x30d40

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/CameraController;->setPreviewFpsRange(II)V

    goto/16 :goto_5

    .line 1633
    :cond_e
    invoke-static {}, Lcom/android/camera/MovieModeHandler;->getMovieModeHandler()Lcom/android/camera/MovieModeHandler;

    move-result-object v0

    .line 1634
    .local v0, ModeHdr:Lcom/android/camera/MovieModeHandler;
    iget-object v12, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v11, p0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v11}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/camera/CameraType;

    invoke-virtual {v0, v12, v11}, Lcom/android/camera/MovieModeHandler;->getCurrentResolutionSettingValue(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraType;)Lcom/android/camera/Resolution;

    move-result-object v6

    .line 1635
    .local v6, r:Lcom/android/camera/Resolution;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/android/camera/Resolution;->getWidth()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "x"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6}, Lcom/android/camera/Resolution;->getHeight()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .restart local v9       #strResolution:Ljava/lang/String;
    goto/16 :goto_6

    .line 1646
    .end local v0           #ModeHdr:Lcom/android/camera/MovieModeHandler;
    .end local v6           #r:Lcom/android/camera/Resolution;
    .restart local v5       #previewSize:Lcom/android/camera/imaging/Size;
    :pswitch_0
    iget-object v11, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    iget v12, p0, Lcom/android/camera/CameraThread;->Camera_Preview_Width:I

    iget v13, p0, Lcom/android/camera/CameraThread;->Camera_Preview_Height:I

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/CameraController;->setPreviewSizeParameter(II)V

    .line 1647
    const-string v11, "CameraThread"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SetPreviewSize: CAMERA MODE, Width = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/camera/CameraThread;->Camera_Preview_Width:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", Height = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/camera/CameraThread;->Camera_Preview_Height:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1649
    iget-object v11, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    iget v12, p0, Lcom/android/camera/CameraThread;->Camera_Mode_Width:I

    iget v13, p0, Lcom/android/camera/CameraThread;->Camera_Mode_Height:I

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/CameraController;->setPictureSizeParameter(II)V

    .line 1650
    const-string v11, "CameraThread"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SetPictureSize: CAMERA MODE, Width = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/camera/CameraThread;->Camera_Mode_Width:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", Height = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/camera/CameraThread;->Camera_Mode_Height:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1651
    const-string v11, "CameraThread"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Camera mode RESET_SURFACEVIEW_LAYOUT width= "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/camera/CameraThread;->Camera_Preview_Width:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", Height = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/camera/CameraThread;->Camera_Preview_Height:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1654
    iget v11, p0, Lcom/android/camera/CameraThread;->Camera_Preview_Width:I

    iput v11, v5, Lcom/android/camera/imaging/Size;->width:I

    .line 1655
    iget v11, p0, Lcom/android/camera/CameraThread;->Camera_Preview_Height:I

    iput v11, v5, Lcom/android/camera/imaging/Size;->height:I

    goto/16 :goto_7

    .line 1660
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->isSlowMotionMode()Z

    move-result v11

    if-eqz v11, :cond_f

    .line 1662
    invoke-static {}, Lcom/android/camera/MovieModeHandler;->getMovieModeHandler()Lcom/android/camera/MovieModeHandler;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/camera/MovieModeHandler;->getSlowMotionResolution()Lcom/android/camera/imaging/Size;

    move-result-object v7

    .line 1663
    .restart local v7       #size:Lcom/android/camera/imaging/Size;
    iget v11, v7, Lcom/android/camera/imaging/Size;->width:I

    iput v11, p0, Lcom/android/camera/CameraThread;->Video_Mode_Width:I

    .line 1664
    iget v11, v7, Lcom/android/camera/imaging/Size;->height:I

    iput v11, p0, Lcom/android/camera/CameraThread;->Video_Mode_Height:I

    .line 1665
    iget-object v11, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v12, "video-mode"

    const-string v13, "1"

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1666
    const-string v11, "CameraThread"

    const-string v12, "Enable slow motion mode"

    invoke-static {v11, v12}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1674
    .end local v7           #size:Lcom/android/camera/imaging/Size;
    :goto_a
    iget-object v11, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    iget v12, p0, Lcom/android/camera/CameraThread;->Video_Mode_Width:I

    iget v13, p0, Lcom/android/camera/CameraThread;->Video_Mode_Height:I

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/CameraController;->setPreviewSizeParameter(II)V

    .line 1675
    const-string v11, "CameraThread"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SetPreviewSize in start_preview: VIDEO MODE, Width = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/camera/CameraThread;->Video_Mode_Width:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", Height = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/camera/CameraThread;->Video_Mode_Height:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1679
    const-string v11, "CameraThread"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Video mode in start_preview RESET_SURFACEVIEW_LAYOUT width= "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/camera/CameraThread;->Video_Mode_Width:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", Height = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/camera/CameraThread;->Video_Mode_Height:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1682
    iget v11, p0, Lcom/android/camera/CameraThread;->Video_Mode_Width:I

    iput v11, v5, Lcom/android/camera/imaging/Size;->width:I

    .line 1683
    iget v11, p0, Lcom/android/camera/CameraThread;->Video_Mode_Height:I

    iput v11, v5, Lcom/android/camera/imaging/Size;->height:I

    goto/16 :goto_7

    .line 1670
    :cond_f
    iget-object v11, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v12, "video-mode"

    const-string v13, "0"

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1671
    const-string v11, "CameraThread"

    const-string v12, "Disable slow motion mode"

    invoke-static {v11, v12}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 1708
    .restart local v2       #info:Lcom/android/camera/CameraController$SettingInfo;
    .restart local v8       #sizeDiff:I
    :cond_10
    iget-object v11, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v2}, Lcom/android/camera/CameraController$SettingInfo;->getMin()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/android/camera/CameraController;->setZoom(I)V

    goto/16 :goto_8

    .line 1642
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setupPreviewCallback()V
    .locals 5

    .prologue
    .line 4657
    const-string v3, "CameraThread"

    const-string v4, "setupPreviewCallback() - start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4660
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v3, :cond_0

    .line 4662
    const-string v3, "CameraThread"

    const-string v4, "No camera device to setup preview call-back"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 4702
    :goto_0
    return-void

    .line 4665
    :cond_0
    iget-boolean v3, p0, Lcom/android/camera/CameraThread;->mCanSetPreviewCallback:Z

    if-nez v3, :cond_1

    .line 4667
    const-string v3, "CameraThread"

    const-string v4, "Cannot set preview call-back due to current state"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4670
    :cond_1
    iget-object v3, p0, Lcom/android/camera/CameraThread;->previewFrameRetrievedEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v3}, Lcom/android/camera/event/Event;->hasHandlers()Z

    move-result v3

    if-nez v3, :cond_2

    .line 4672
    const-string v3, "CameraThread"

    const-string v4, "setupPreviewCallback() - No handlers for receiving preview frame"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4677
    :cond_2
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 4678
    .local v0, parameters:Landroid/hardware/Camera$Parameters;
    if-nez v0, :cond_3

    .line 4680
    const-string v3, "CameraThread"

    const-string v4, "Cannot get camera parameters"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4685
    :cond_3
    iget-object v3, p0, Lcom/android/camera/CameraThread;->previewSize:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/imaging/Size;

    .line 4686
    .local v1, previewSize:Lcom/android/camera/imaging/Size;
    if-nez v1, :cond_4

    .line 4688
    const-string v3, "CameraThread"

    const-string v4, "Cannot get preview size"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4693
    :cond_4
    iget v3, v1, Lcom/android/camera/imaging/Size;->width:I

    mul-int/lit8 v3, v3, 0xc

    div-int/lit8 v2, v3, 0x8

    .line 4696
    .local v2, stride:I
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    iget v4, v1, Lcom/android/camera/imaging/Size;->height:I

    mul-int/2addr v4, v2

    new-array v4, v4, [B

    invoke-virtual {v3, v4}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 4699
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v4, p0, Lcom/android/camera/CameraThread;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v3, v4}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 4701
    const-string v3, "CameraThread"

    const-string v4, "setupPreviewCallback() - end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private startPreviewDirectlyInternal()I
    .locals 7

    .prologue
    const/4 v2, 0x4

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 1842
    const-string v3, "CameraThread"

    const-string v4, "startPreviewDirectlyInternal() - start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1845
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v3, :cond_1

    .line 1847
    const-string v1, "CameraThread"

    const-string v3, "startPreviewDirectlyInternal() - no camera"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 1928
    :cond_0
    :goto_0
    return v1

    .line 1850
    :cond_1
    iget-boolean v3, p0, Lcom/android/camera/CameraThread;->mPreviewing:Z

    if-eqz v3, :cond_2

    .line 1852
    const-string v2, "CameraThread"

    const-string v3, "startPreviewDirectlyInternal() - already previewing"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1857
    :cond_2
    iget-object v3, p0, Lcom/android/camera/CameraThread;->storageState:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/android/camera/io/StorageState;->Full:Lcom/android/camera/io/StorageState;

    if-ne v3, v4, :cond_3

    .line 1858
    iget-object v3, p0, Lcom/android/camera/CameraThread;->storageState:Lcom/android/camera/property/Property;

    iget-object v4, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v5, Lcom/android/camera/io/StorageState;->OK:Lcom/android/camera/io/StorageState;

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1861
    :cond_3
    iget-object v3, p0, Lcom/android/camera/CameraThread;->previewStartingEvent:Lcom/android/camera/event/Event;

    sget-object v4, Lcom/android/camera/event/EventArgs;->empty:Lcom/android/camera/event/EventArgs;

    invoke-virtual {v3, p0, v4}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 1866
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->getSurfaceStateSyncRoot()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1868
    :try_start_1
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->isSurfaceAvailable()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1870
    const-string v3, "CameraThread"

    const-string v5, "mCameraDevice.startPreview() - start"

    invoke-static {v3, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1871
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->startPreview()V

    .line 1872
    const-string v3, "CameraThread"

    const-string v5, "mCameraDevice.startPreview() - end"

    invoke-static {v3, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1873
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/camera/CameraThread;->mPreviewing:Z

    .line 1879
    :goto_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1889
    :cond_4
    :goto_2
    iget-boolean v3, p0, Lcom/android/camera/CameraThread;->mIsFirstTimeToStartPreview:Z

    if-eqz v3, :cond_5

    .line 1892
    iput-boolean v1, p0, Lcom/android/camera/CameraThread;->mIsFirstTimeToStartPreview:Z

    .line 1895
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mComponentFactory:Lcom/android/camera/component/CameraThreadComponentFactory;

    sget-object v4, Lcom/android/camera/component/ComponentCategory;->Normal:Lcom/android/camera/component/ComponentCategory;

    invoke-virtual {v3, v4}, Lcom/android/camera/component/CameraThreadComponentFactory;->createComponents(Lcom/android/camera/component/ComponentCategory;)I

    .line 1899
    :cond_5
    iget-boolean v3, p0, Lcom/android/camera/CameraThread;->mPreviewing:Z

    if-eqz v3, :cond_6

    .line 1900
    iget-object v3, p0, Lcom/android/camera/CameraThread;->previewStartedEvent:Lcom/android/camera/event/Event;

    sget-object v4, Lcom/android/camera/event/EventArgs;->empty:Lcom/android/camera/event/EventArgs;

    invoke-virtual {v3, p0, v4}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 1903
    :cond_6
    iget-boolean v3, p0, Lcom/android/camera/CameraThread;->mPreviewing:Z

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraThread$MainHandler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1906
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v4, 0x2d

    invoke-static {v3, v4}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 1909
    iput-boolean v6, p0, Lcom/android/camera/CameraThread;->mCanSetPreviewCallback:Z

    .line 1910
    iget v3, p0, Lcom/android/camera/CameraThread;->mPreviewCallbackDisableCounter:I

    if-gtz v3, :cond_7

    .line 1911
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->setupPreviewCallback()V

    .line 1915
    :cond_7
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mShutterSoundHandle:Lcom/android/camera/Handle;

    if-nez v3, :cond_8

    .line 1916
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mAudioManager:Lcom/android/camera/IAudioManager;

    const v4, 0x7f060004

    invoke-interface {v3, v4}, Lcom/android/camera/IAudioManager;->loadSoundToMemory(I)Lcom/android/camera/Handle;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/CameraThread;->mShutterSoundHandle:Lcom/android/camera/Handle;

    .line 1919
    :cond_8
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v3, v4, :cond_a

    .line 1921
    const-string v3, "[ANALYTIC_com.android.camera]"

    const-string v4, "[camera_preview]complete"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 1927
    :goto_3
    const-string v3, "CameraThread"

    const-string v4, "startPreviewDirectlyInternal() - end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1928
    iget-boolean v3, p0, Lcom/android/camera/CameraThread;->mPreviewing:Z

    if-nez v3, :cond_0

    move v1, v2

    goto/16 :goto_0

    .line 1877
    :cond_9
    :try_start_2
    const-string v3, "CameraThread"

    const-string v5, "startPreviewDirectlyInternal() - Surface is not available"

    invoke-static {v3, v5}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1879
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 1881
    :catch_0
    move-exception v0

    .line 1883
    .local v0, ex:Ljava/lang/Throwable;
    const-string v3, "CameraThread"

    const-string v4, "start preview failed"

    invoke-static {v3, v4, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1884
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    if-eqz v3, :cond_4

    .line 1885
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->finish()V

    goto :goto_2

    .line 1924
    .end local v0           #ex:Ljava/lang/Throwable;
    :cond_a
    const-string v3, "[ANALYTIC_com.android.camera]"

    const-string v4, "[camcorder_preview]complete"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method private startPreviewInternal(Lcom/android/camera/CameraType;I)I
    .locals 8
    .parameter "cameraType"
    .parameter "status"

    .prologue
    const/4 v2, 0x2

    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 1735
    const-string v4, "CameraThread"

    const-string v5, "startPreviewInternal() - Start"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1737
    iget-boolean v4, p0, Lcom/android/camera/CameraThread;->mPreviewing:Z

    if-ne v4, v7, :cond_0

    .line 1739
    const-string v4, "CameraThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Camera has been in Prevewing. mPreviewing="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/camera/CameraThread;->mPreviewing:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    invoke-virtual {v6}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 1815
    :goto_0
    :pswitch_0
    return v2

    .line 1744
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->isRecPowerWarning()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1746
    const-string v3, "CameraThread"

    const-string v4, "isRecPowerWarning(), won\'t start preview"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1751
    :cond_1
    iget-object v4, p0, Lcom/android/camera/CameraThread;->storageState:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lcom/android/camera/io/StorageState;->Full:Lcom/android/camera/io/StorageState;

    if-ne v4, v5, :cond_2

    .line 1752
    iget-object v4, p0, Lcom/android/camera/CameraThread;->storageState:Lcom/android/camera/property/Property;

    iget-object v5, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v6, Lcom/android/camera/io/StorageState;->OK:Lcom/android/camera/io/StorageState;

    invoke-virtual {v4, v5, v6}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1755
    :cond_2
    if-nez p1, :cond_4

    .line 1756
    iget-object v4, p0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/android/camera/CameraType;

    .line 1764
    .restart local p1
    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v4, :cond_5

    .line 1766
    invoke-virtual {p0, p1}, Lcom/android/camera/CameraThread;->openCamera(Lcom/android/camera/CameraType;)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 1775
    :pswitch_1
    const/4 v2, 0x4

    goto :goto_0

    .line 1757
    :cond_4
    iget-object v4, p0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eq p1, v4, :cond_3

    .line 1759
    const-string v4, "CameraThread"

    const-string v5, "Start preview with different camera, close previous camera first"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1760
    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->closeCamera()V

    goto :goto_1

    .line 1773
    :pswitch_2
    const/4 v2, 0x3

    goto :goto_0

    .line 1777
    :pswitch_3
    const/4 p2, 0x1

    .line 1781
    :cond_5
    iget-boolean v4, p0, Lcom/android/camera/CameraThread;->mIsParamsPrepared:Z

    if-nez v4, :cond_6

    .line 1782
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->setupParamsBeforeStartingPreview()V

    .line 1790
    :goto_2
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1791
    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v4, v3}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 1795
    :goto_3
    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v4}, Lcom/android/camera/HTCCamera;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    .line 1797
    .local v1, holder:Landroid/view/SurfaceHolder;
    :try_start_0
    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v4, v1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1804
    :goto_4
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->startPreviewDirectlyInternal()I

    move-result v2

    .line 1807
    .local v2, result:I
    iget-boolean v4, p0, Lcom/android/camera/CameraThread;->mIsOnlySetResolution:Z

    if-nez v4, :cond_8

    if-ne p2, v7, :cond_8

    .line 1808
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->loadSettings()V

    .line 1809
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v3}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    .line 1813
    :goto_5
    const-string v3, "CameraThread"

    const-string v4, "startPreviewInternal() - End"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1785
    .end local v1           #holder:Landroid/view/SurfaceHolder;
    .end local v2           #result:I
    :cond_6
    const-string v4, "CameraThread"

    const-string v5, "startPreviewInternal() - No need to setup parameters"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1786
    iput-boolean v3, p0, Lcom/android/camera/CameraThread;->mIsParamsPrepared:Z

    goto :goto_2

    .line 1793
    :cond_7
    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    const/16 v5, 0x5a

    invoke-virtual {v4, v5}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    goto :goto_3

    .line 1798
    .restart local v1       #holder:Landroid/view/SurfaceHolder;
    :catch_0
    move-exception v0

    .line 1799
    .local v0, ex:Ljava/io/IOException;
    const-string v4, "CameraThread"

    const-string v5, "mCameraDevice.setPreviewDisplay failed"

    invoke-static {v4, v5, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1800
    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v4}, Lcom/android/camera/HTCCamera;->finish()V

    goto :goto_4

    .line 1811
    .end local v0           #ex:Ljava/io/IOException;
    .restart local v2       #result:I
    :cond_8
    iput-boolean v3, p0, Lcom/android/camera/CameraThread;->mIsOnlySetResolution:Z

    goto :goto_5

    .line 1766
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private stopVideoRecording()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v2, 0x0

    .line 2032
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->cancelAutoFocusInternal()V

    .line 2035
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportStereoRecord()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2037
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-static {v0}, Lcom/android/camera/HTCCameraAdvanceSetting;->getIsRecordWithAudio(Landroid/content/Context;)Z

    move-result v10

    .line 2038
    .local v10, keepSound:Z
    if-eqz v10, :cond_0

    .line 2040
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->disableSoundEffect()V

    .line 2044
    .end local v10           #keepSound:Z
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/android/camera/CameraThread;->mCaptureStartTime:J

    sub-long/2addr v0, v3

    iput-wide v0, p0, Lcom/android/camera/CameraThread;->mCaptureDuration:J

    .line 2045
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_1

    .line 2048
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2058
    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->isRecPowerWarning()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2059
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->reconnect()V

    .line 2060
    :cond_2
    const-string v0, "CameraThread"

    const-string v1, "stop video recording : reconnect camera device"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2066
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->isRecPowerWarning()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2068
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 2073
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->restoreBackgrounddataSetting()V

    .line 2079
    :try_start_3
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mRecordingVideoFilePath:Lcom/android/camera/io/DCFPath;

    invoke-virtual {v0}, Lcom/android/camera/io/DCFPath;->getFullPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mRecordingVideoFileFormat:Lcom/android/camera/io/FileFormat;

    iget-object v1, v1, Lcom/android/camera/io/FileFormat;->mimeType:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/camera/imaging/ThumbnailUtility;->createThumbnailImage(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v11

    .line 2086
    .local v11, thumb:Landroid/graphics/Bitmap;
    :goto_3
    iget-object v0, p0, Lcom/android/camera/CameraThread;->videoThumbnailCreatedEvent:Lcom/android/camera/event/Event;

    new-instance v1, Lcom/android/camera/imaging/ThumbnailEventArgs;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/camera/CameraThread;->mRecordingVideoFilePath:Lcom/android/camera/io/DCFPath;

    invoke-direct {v1, v3, v4, v11}, Lcom/android/camera/imaging/ThumbnailEventArgs;-><init>(Landroid/net/Uri;Lcom/android/camera/io/Path;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 2087
    if-eqz v11, :cond_4

    .line 2089
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    .line 2090
    const/4 v11, 0x0

    .line 2094
    :cond_4
    iget-wide v7, p0, Lcom/android/camera/CameraThread;->mLatestCaptureID:J

    .line 2095
    .local v7, captureID:J
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    sget-object v1, Lcom/android/camera/IntentManager$RequestMode;->Main:Lcom/android/camera/IntentManager$RequestMode;

    invoke-virtual {v0, v1}, Lcom/android/camera/HTCCamera;->isRequestMode(Lcom/android/camera/IntentManager$RequestMode;)Z

    move-result v0

    if-eq v0, v12, :cond_5

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    sget-object v1, Lcom/android/camera/IntentManager$RequestName;->Album:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v0, v1}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v0

    if-ne v0, v12, :cond_9

    .line 2097
    :cond_5
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    if-eqz v0, :cond_8

    .line 2098
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v1, 0x2f

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v4, v2

    iget-wide v5, p0, Lcom/android/camera/CameraThread;->mCaptureDuration:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v4, v12

    const-wide/16 v5, 0x1f4

    move v3, v2

    invoke-static/range {v0 .. v6}, Lcom/android/camera/MessageHandler;->sendObtainMessageDelayed(Landroid/os/Handler;IIILjava/lang/Object;J)V

    .line 2108
    :goto_4
    iget-object v0, p0, Lcom/android/camera/CameraThread;->isRecording:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2111
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isNvidiaPlatform()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2113
    const-string v0, "CameraThread"

    const-string v1, "[NV] Release recording semaphore"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2114
    iget-object v0, p0, Lcom/android/camera/CameraThread;->m_SemaphoreRecording:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 2123
    :cond_6
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mAudioManager:Lcom/android/camera/IAudioManager;

    if-eqz v0, :cond_7

    .line 2124
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mAudioManager:Lcom/android/camera/IAudioManager;

    const-string v1, "CAMCORDER_MODE=OFF"

    invoke-interface {v0, v1}, Lcom/android/camera/IAudioManager;->setParameters(Ljava/lang/String;)V

    .line 2126
    :cond_7
    return-void

    .line 2049
    .end local v7           #captureID:J
    .end local v11           #thumb:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v9

    .line 2050
    .local v9, ex:Ljava/lang/RuntimeException;
    const-string v0, "CameraThread"

    const-string v1, "mRecorder.stop() - Runtime exception caught"

    invoke-static {v0, v1, v9}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 2061
    .end local v9           #ex:Ljava/lang/RuntimeException;
    :catch_1
    move-exception v9

    .line 2062
    .local v9, ex:Ljava/io/IOException;
    const-string v0, "CameraThread"

    const-string v1, "camera reconnect exception."

    invoke-static {v0, v1, v9}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 2070
    .end local v9           #ex:Ljava/io/IOException;
    :catch_2
    move-exception v9

    .line 2071
    .local v9, ex:Ljava/lang/Exception;
    const-string v0, "CameraThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stop preview exception."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2081
    .end local v9           #ex:Ljava/lang/Exception;
    :catch_3
    move-exception v9

    .line 2083
    .local v9, ex:Ljava/lang/Throwable;
    const/4 v11, 0x0

    .line 2084
    .restart local v11       #thumb:Landroid/graphics/Bitmap;
    const-string v0, "CameraThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot create video thumbnail for \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/camera/CameraThread;->mRecordingVideoFilePath:Lcom/android/camera/io/DCFPath;

    invoke-virtual {v3}, Lcom/android/camera/io/DCFPath;->getFullPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v9}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 2100
    .end local v9           #ex:Ljava/lang/Throwable;
    .restart local v7       #captureID:J
    :cond_8
    iget-wide v0, p0, Lcom/android/camera/CameraThread;->mCaptureDuration:J

    invoke-direct {p0, v7, v8, v0, v1}, Lcom/android/camera/CameraThread;->stopVideoRecordingDelay(JJ)V

    goto/16 :goto_4

    .line 2103
    :cond_9
    iget-wide v0, p0, Lcom/android/camera/CameraThread;->mCaptureDuration:J

    invoke-direct {p0, v7, v8, v0, v1}, Lcom/android/camera/CameraThread;->stopVideoRecordingDelay(JJ)V

    goto/16 :goto_4
.end method

.method private stopVideoRecordingDelay(JJ)V
    .locals 23
    .parameter "captureID"
    .parameter "duration"

    .prologue
    .line 2133
    const-string v1, "CameraThread"

    const-string v2, "stopVideoRecordingDelay() - start"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2140
    :try_start_0
    new-instance v22, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraThread;->mRecordingVideoFilePath:Lcom/android/camera/io/DCFPath;

    invoke-virtual {v1}, Lcom/android/camera/io/DCFPath;->getFullPath()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v22

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2141
    .local v22, file:Ljava/io/File;
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->lastModified()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v7

    .line 2150
    .end local v22           #file:Ljava/io/File;
    .local v7, modifiedTime:J
    :goto_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->storageSlot:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/io/StorageSlot;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecordingVideoFilePath:Lcom/android/camera/io/DCFPath;

    iget-object v3, v3, Lcom/android/camera/io/Path;->directoryPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/CameraThread;->mRecordingVideoFilePath:Lcom/android/camera/io/DCFPath;

    iget-object v4, v4, Lcom/android/camera/io/Path;->fileName:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/CameraThread;->mRecordingVideoFileFormat:Lcom/android/camera/io/FileFormat;

    const-wide/16 v10, 0x3e8

    div-long v10, p3, v10

    const-wide/16 v13, 0x3e8

    mul-long v9, v10, v13

    invoke-static/range {v1 .. v10}, Lcom/android/camera/MediaProvider;->insertVideo(Landroid/content/Context;Lcom/android/camera/io/StorageSlot;Ljava/lang/String;Ljava/lang/String;Landroid/location/Location;Lcom/android/camera/io/FileFormat;JJ)Landroid/net/Uri;

    move-result-object v12

    .line 2161
    .local v12, contentUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraThread;->mLastMediaInfo:Lcom/android/camera/MediaInfo;

    iput-object v12, v1, Lcom/android/camera/MediaInfo;->contentUri:Landroid/net/Uri;

    .line 2162
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraThread;->mLastMediaInfo:Lcom/android/camera/MediaInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mRecordingVideoFilePath:Lcom/android/camera/io/DCFPath;

    iput-object v2, v1, Lcom/android/camera/MediaInfo;->filePath:Lcom/android/camera/io/Path;

    .line 2163
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraThread;->mLastMediaInfo:Lcom/android/camera/MediaInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mRecordingVideoFileFormat:Lcom/android/camera/io/FileFormat;

    iget-object v2, v2, Lcom/android/camera/io/FileFormat;->mimeType:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/camera/MediaInfo;->mimeType:Ljava/lang/String;

    .line 2166
    new-instance v9, Lcom/android/camera/MediaEventArgs;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/CameraThread;->mRecordingVideoFilePath:Lcom/android/camera/io/DCFPath;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/CameraThread;->mRecordingVideoFileFormat:Lcom/android/camera/io/FileFormat;

    const/4 v15, 0x1

    move-wide/from16 v10, p1

    invoke-direct/range {v9 .. v15}, Lcom/android/camera/MediaEventArgs;-><init>(JLandroid/net/Uri;Lcom/android/camera/io/Path;Lcom/android/camera/io/FileFormat;Z)V

    .line 2167
    .local v9, e:Lcom/android/camera/MediaEventArgs;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraThread;->mediaSavedEvent:Lcom/android/camera/event/Event;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0, v9}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2176
    .end local v7           #modifiedTime:J
    .end local v12           #contentUri:Landroid/net/Uri;
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->releaseMediaRecorder()V

    .line 2179
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraThread;->setRecPowerWarning(Z)V

    .line 2181
    const-string v1, "CameraThread"

    const-string v2, "stopVideoRecordingDelay() - end"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2182
    return-void

    .line 2143
    .end local v9           #e:Lcom/android/camera/MediaEventArgs;
    :catch_0
    move-exception v21

    .line 2145
    .local v21, ex:Ljava/lang/Throwable;
    :try_start_2
    const-string v1, "CameraThread"

    const-string v2, "stopVideoRecordingDelay() - Cannot get video file modified time"

    move-object/from16 v0, v21

    invoke-static {v1, v2, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 2146
    const-wide/16 v7, 0x0

    .restart local v7       #modifiedTime:J
    goto :goto_0

    .line 2169
    .end local v7           #modifiedTime:J
    .end local v21           #ex:Ljava/lang/Throwable;
    :catch_1
    move-exception v21

    .line 2171
    .local v21, ex:Ljava/lang/Exception;
    const-string v1, "CameraThread"

    const-string v2, "stopVideoRecordingDelay() - create uri failed!!"

    move-object/from16 v0, v21

    invoke-static {v1, v2, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2172
    new-instance v9, Lcom/android/camera/MediaEventArgs;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mRecordingVideoFilePath:Lcom/android/camera/io/DCFPath;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mRecordingVideoFileFormat:Lcom/android/camera/io/FileFormat;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    sget-object v20, Lcom/android/camera/MediaSaveFailedReason;->Unknown:Lcom/android/camera/MediaSaveFailedReason;

    move-object v13, v9

    move-wide/from16 v14, p1

    invoke-direct/range {v13 .. v20}, Lcom/android/camera/MediaEventArgs;-><init>(JLandroid/net/Uri;Lcom/android/camera/io/Path;Lcom/android/camera/io/FileFormat;ZLcom/android/camera/MediaSaveFailedReason;)V

    .line 2173
    .restart local v9       #e:Lcom/android/camera/MediaEventArgs;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraThread;->mediaSaveFailedEvent:Lcom/android/camera/event/Event;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0, v9}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    goto :goto_1
.end method

.method private takePicture()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 595
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    sget-object v2, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 597
    sget-object v1, Lcom/android/camera/TIME;->ShutterCallback:Lcom/android/camera/TIME$Value;

    invoke-virtual {v1}, Lcom/android/camera/TIME$Value;->Start()V

    .line 598
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    iget-object v3, p0, Lcom/android/camera/CameraThread;->mRawCallback:Landroid/hardware/Camera$PictureCallback;

    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v4}, Lcom/android/camera/HTCCamera;->needsActionScreen()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

    :cond_0
    iget-object v4, p0, Lcom/android/camera/CameraThread;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 611
    :goto_0
    return-void

    .line 608
    :cond_1
    sget-object v1, Lcom/android/camera/TIME;->JpegCallback:Lcom/android/camera/TIME$Value;

    invoke-virtual {v1}, Lcom/android/camera/TIME$Value;->Start()V

    .line 609
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    invoke-virtual {v1, v0, v0, v2}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    goto :goto_0
.end method

.method private final threadAccessCheck()V
    .locals 2

    .prologue
    .line 4545
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 4546
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "cross-thread access"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4547
    :cond_0
    return-void
.end method

.method private toggleStorageSlot()V
    .locals 4

    .prologue
    .line 3969
    iget-object v1, p0, Lcom/android/camera/CameraThread;->storageSlot:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v1}, Lcom/android/camera/io/StorageSlot;->isInternalMemory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3971
    const-string v1, "CameraThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "toggleStorageSlot() - Change to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/camera/io/StorageSlot;->STORAGE_CARD:Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3972
    iget-object v1, p0, Lcom/android/camera/CameraThread;->storageSlot:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/android/camera/io/StorageSlot;->STORAGE_CARD:Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3985
    :goto_0
    return-void

    .line 3976
    :cond_0
    invoke-static {}, Lcom/android/camera/io/StorageSlot;->getFirstInternalMemorySlot()Lcom/android/camera/io/StorageSlot;

    move-result-object v0

    .line 3977
    .local v0, slot:Lcom/android/camera/io/StorageSlot;
    if-eqz v0, :cond_1

    .line 3979
    const-string v1, "CameraThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "toggleStorageSlot() - Change to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3980
    iget-object v1, p0, Lcom/android/camera/CameraThread;->storageSlot:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 3983
    :cond_1
    const-string v1, "CameraThread"

    const-string v2, "toggleStorageSlot() - no internal memory slot"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public IsEqualOrAbove720p()Z
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2846
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    sget-object v5, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v2, v5, :cond_0

    move v2, v3

    .line 2857
    :goto_0
    return v2

    .line 2849
    :cond_0
    invoke-static {}, Lcom/android/camera/MovieModeHandler;->getMovieModeHandler()Lcom/android/camera/MovieModeHandler;

    move-result-object v0

    .line 2850
    .local v0, mModeHdr:Lcom/android/camera/ModeHandler;
    iget-object v5, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v2, p0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/CameraType;

    invoke-virtual {v0, v5, v2}, Lcom/android/camera/MovieModeHandler;->getCurrentResolutionSettingValue(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraType;)Lcom/android/camera/Resolution;

    move-result-object v1

    .line 2852
    .local v1, r:Lcom/android/camera/Resolution;
    sget-object v2, Lcom/android/camera/Resolution;->Video_720p:Lcom/android/camera/Resolution;

    invoke-virtual {v1, v2}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/android/camera/Resolution;->Video_720p_Online:Lcom/android/camera/Resolution;

    invoke-virtual {v1, v2}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    move v2, v4

    .line 2853
    goto :goto_0

    .line 2854
    :cond_2
    sget-object v2, Lcom/android/camera/Resolution;->Video_1080p:Lcom/android/camera/Resolution;

    invoke-virtual {v1, v2}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/android/camera/Resolution;->Video_1080p_Online:Lcom/android/camera/Resolution;

    invoke-virtual {v1, v2}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    move v2, v4

    .line 2855
    goto :goto_0

    :cond_4
    move v2, v3

    .line 2857
    goto :goto_0
.end method

.method public final autoFocus([Landroid/graphics/PointF;Lcom/android/camera/AutoFocusMode;)V
    .locals 2
    .parameter "focusPoints"
    .parameter "focusMode"

    .prologue
    .line 4935
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 4953
    :cond_0
    :goto_0
    return-void

    .line 4939
    :cond_1
    new-instance v0, Lcom/android/camera/AutoFocusEventArgs;

    invoke-direct {v0, p1, p2}, Lcom/android/camera/AutoFocusEventArgs;-><init>([Landroid/graphics/PointF;Lcom/android/camera/AutoFocusMode;)V

    .line 4940
    .local v0, e:Lcom/android/camera/AutoFocusEventArgs;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v1, p0, :cond_2

    .line 4942
    new-instance v1, Lcom/android/camera/CameraThread$14;

    invoke-direct {v1, p0, v0}, Lcom/android/camera/CameraThread$14;-><init>(Lcom/android/camera/CameraThread;Lcom/android/camera/AutoFocusEventArgs;)V

    invoke-virtual {p0, v1}, Lcom/android/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 4952
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/camera/CameraThread;->autoFocusInternal(Lcom/android/camera/AutoFocusEventArgs;)V

    goto :goto_0
.end method

.method public final autoFocus([Landroid/graphics/RectF;Lcom/android/camera/AutoFocusMode;)V
    .locals 2
    .parameter "focusAreas"
    .parameter "focusMode"

    .prologue
    .line 4957
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 4975
    :cond_0
    :goto_0
    return-void

    .line 4961
    :cond_1
    new-instance v0, Lcom/android/camera/AutoFocusEventArgs;

    invoke-direct {v0, p1, p2}, Lcom/android/camera/AutoFocusEventArgs;-><init>([Landroid/graphics/RectF;Lcom/android/camera/AutoFocusMode;)V

    .line 4962
    .local v0, e:Lcom/android/camera/AutoFocusEventArgs;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v1, p0, :cond_2

    .line 4964
    new-instance v1, Lcom/android/camera/CameraThread$15;

    invoke-direct {v1, p0, v0}, Lcom/android/camera/CameraThread$15;-><init>(Lcom/android/camera/CameraThread;Lcom/android/camera/AutoFocusEventArgs;)V

    invoke-virtual {p0, v1}, Lcom/android/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 4974
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/camera/CameraThread;->autoFocusInternal(Lcom/android/camera/AutoFocusEventArgs;)V

    goto :goto_0
.end method

.method public final bindProperties(Lcom/android/camera/property/Property;Lcom/android/camera/property/Property;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/property/Property",
            "<*>;",
            "Lcom/android/camera/property/Property",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 5047
    .local p1, source:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<*>;"
    .local p2, target:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<*>;"
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->threadAccessCheck()V

    .line 5050
    if-nez p1, :cond_0

    .line 5052
    const-string v0, "source"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 5053
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 5055
    :cond_0
    if-nez p2, :cond_1

    .line 5057
    const-string v0, "target"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 5058
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 5060
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/android/camera/property/Property;->checkOwnerKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5062
    const-string v0, "CameraThread"

    const-string v1, "bindProperty() - Cannot bind from CameraThread\'s property"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 5063
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 5065
    :cond_2
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {p2, v0}, Lcom/android/camera/property/Property;->checkOwnerKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 5067
    const-string v0, "CameraThread"

    const-string v1, "bindProperty() - Can only bind to CameraThread\'s property"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 5068
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 5072
    :cond_3
    const-string v0, "CameraThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bind ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/camera/property/Property;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] to ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/android/camera/property/Property;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 5073
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {p2, p1, v0}, Lcom/android/camera/property/Property;->bind(Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    .line 5074
    return-void
.end method

.method public calculatePicturesRemaining()J
    .locals 2

    .prologue
    .line 3751
    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->getPendingFileSize()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/CameraThread;->calculatePicturesRemaining(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public calculatePicturesRemaining(J)J
    .locals 17
    .parameter "pendingFileSize"

    .prologue
    .line 3754
    const-string v13, "CameraThread"

    const-string v14, "calculatePicturesRemaining() - start"

    invoke-static {v13, v14}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3756
    const-wide/16 v4, 0x0

    .line 3758
    .local v4, freeshot:J
    :try_start_0
    invoke-static {}, Lcom/android/camera/PhotoModeHandler;->getPhotoModeHandler()Lcom/android/camera/PhotoModeHandler;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v13}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/camera/CameraType;

    invoke-virtual {v14, v15, v13}, Lcom/android/camera/PhotoModeHandler;->getCurrentResolutionSettingValue(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraType;)Lcom/android/camera/Resolution;

    move-result-object v8

    .line 3760
    .local v8, resolution:Lcom/android/camera/Resolution;
    invoke-static {}, Lcom/android/camera/ResolutionSize;->getInstance()Lcom/android/camera/ResolutionSize;

    move-result-object v13

    invoke-virtual {v8}, Lcom/android/camera/Resolution;->getNameResId()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/CameraThread;->mJPEGQualityKey:Ljava/lang/String;

    invoke-virtual {v13, v14, v15}, Lcom/android/camera/ResolutionSize;->getSize(ILjava/lang/String;)I

    move-result v13

    int-to-long v2, v13

    .line 3762
    .local v2, fSize:J
    const-wide/16 v13, -0x1

    cmp-long v13, v13, v2

    if-nez v13, :cond_0

    .line 3763
    const-string v13, "CameraThread"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getResolutionSize fail: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v8}, Lcom/android/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/CameraThread;->mJPEGQualityKey:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 3765
    const-wide/32 v2, 0x61a80

    .line 3770
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/CameraThread;->storageSlot:Lcom/android/camera/property/Property;

    invoke-virtual {v13}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/camera/io/StorageSlot;

    iget-object v12, v13, Lcom/android/camera/io/StorageSlot;->directoryPath:Ljava/lang/String;

    .line 3772
    .local v12, storageDirectory:Ljava/lang/String;
    new-instance v11, Landroid/os/StatFs;

    invoke-direct {v11, v12}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 3773
    .local v11, stat:Landroid/os/StatFs;
    invoke-virtual {v11}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v13

    int-to-long v13, v13

    invoke-virtual {v11}, Landroid/os/StatFs;->getBlockSize()I

    move-result v15

    int-to-long v15, v15

    mul-long/2addr v13, v15

    const-wide/32 v15, 0x100000

    sub-long/2addr v13, v15

    sub-long v9, v13, p1

    .line 3775
    .local v9, space:J
    div-long v6, v9, v2

    .line 3776
    .local v6, remaining:J
    move-wide v4, v6

    .line 3778
    const-wide/16 v13, 0x0

    cmp-long v13, v4, v13

    if-gez v13, :cond_1

    .line 3779
    const-wide/16 v4, 0x0

    .line 3781
    :cond_1
    const-string v13, "CameraThread"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "return freeshot = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3789
    .end local v2           #fSize:J
    .end local v6           #remaining:J
    .end local v8           #resolution:Lcom/android/camera/Resolution;
    .end local v9           #space:J
    .end local v11           #stat:Landroid/os/StatFs;
    .end local v12           #storageDirectory:Ljava/lang/String;
    :goto_0
    const-string v13, "CameraThread"

    const-string v14, "calculatePicturesRemaining() - end"

    invoke-static {v13, v14}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3790
    return-wide v4

    .line 3783
    :catch_0
    move-exception v1

    .line 3784
    .local v1, ex:Ljava/lang/Exception;
    const-string v13, "CameraThread"

    const-string v14, "catch - calculatePicturesRemaining with exception: "

    invoke-static {v13, v14, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3785
    const-string v13, "CameraThread"

    const-string v14, "return freeshot = -1"

    invoke-static {v13, v14}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 3786
    const-wide/16 v4, -0x1

    goto :goto_0
.end method

.method public canTakePicture()Z
    .locals 1

    .prologue
    .line 2804
    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mbCanTakePicture:Z

    return v0
.end method

.method public final cancelAutoFocus()V
    .locals 1

    .prologue
    .line 5007
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 5009
    new-instance v0, Lcom/android/camera/CameraThread$16;

    invoke-direct {v0, p0}, Lcom/android/camera/CameraThread$16;-><init>(Lcom/android/camera/CameraThread;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 5020
    :goto_0
    return-void

    .line 5019
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->cancelAutoFocusInternal()V

    goto :goto_0
.end method

.method public final cancelClosingCamera()V
    .locals 2

    .prologue
    .line 4064
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 4065
    return-void
.end method

.method public final cancelOpeningCamera()V
    .locals 2

    .prologue
    .line 1528
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 1529
    return-void
.end method

.method public final cancelStartingPreview()V
    .locals 2

    .prologue
    .line 1936
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 1937
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 1938
    return-void
.end method

.method public changeMode(Lcom/android/camera/CameraMode;)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 4877
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 4879
    new-instance v0, Lcom/android/camera/CameraThread$13;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/CameraThread$13;-><init>(Lcom/android/camera/CameraThread;Lcom/android/camera/CameraMode;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 4889
    :goto_0
    return-void

    .line 4888
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/CameraThread;->changeModeInternal(Lcom/android/camera/CameraMode;)V

    goto :goto_0
.end method

.method public changeStorageSlot(Lcom/android/camera/io/StorageSlot;)V
    .locals 2
    .parameter "slot"

    .prologue
    .line 4765
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq v0, p0, :cond_1

    .line 4767
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    if-eqz v0, :cond_0

    .line 4769
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    new-instance v1, Lcom/android/camera/CameraThread$12;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/CameraThread$12;-><init>(Lcom/android/camera/CameraThread;Lcom/android/camera/io/StorageSlot;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraThread$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 4782
    :goto_0
    return-void

    .line 4778
    :cond_0
    const-string v0, "CameraThread"

    const-string v1, "changeStorageSlot() - no camera handler"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4781
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/camera/CameraThread;->changeStorageSlotInternal(Lcom/android/camera/io/StorageSlot;)V

    goto :goto_0
.end method

.method public final changeZoom(I)V
    .locals 6
    .parameter "zoom"

    .prologue
    const/16 v5, 0x46

    .line 4361
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v2, p0, :cond_9

    .line 4363
    const-string v2, "CameraThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeZoom("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") - start sync"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4366
    iget-object v2, p0, Lcom/android/camera/CameraThread;->zoomValue:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 4367
    .local v1, oldZoom:I
    if-ne v1, p1, :cond_0

    .line 4446
    .end local v1           #oldZoom:I
    :goto_0
    return-void

    .line 4371
    .restart local v1       #oldZoom:I
    :cond_0
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    if-nez v2, :cond_2

    .line 4373
    :cond_1
    const-string v2, "CameraThread"

    const-string v3, "Camera is not open, cannot change zoom"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4379
    :cond_2
    iget-object v2, p0, Lcom/android/camera/CameraThread;->isRecording:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {}, Lcom/android/camera/DisplayDevice;->needDelayZooming()Z

    move-result v2

    if-nez v2, :cond_8

    .line 4381
    move v0, v1

    .line 4382
    .local v0, currentZoom:I
    if-ge v1, p1, :cond_6

    .line 4386
    :cond_3
    add-int/lit8 v2, v0, 0x2

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 4387
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v2, v0}, Lcom/android/camera/CameraController;->setZoom(I)V

    .line 4388
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v2}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    .line 4389
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    invoke-virtual {v2, v5}, Lcom/android/camera/CameraThread$MainHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 4391
    const-string v2, "CameraThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Pending zooming request found, stop zooming at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4432
    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/android/camera/CameraThread;->zoomValue:Lcom/android/camera/property/Property;

    iget-object v3, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4434
    const-string v2, "CameraThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeZoom("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") - end sync"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4394
    :cond_5
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 4395
    if-lt v0, p1, :cond_3

    goto :goto_1

    .line 4401
    :cond_6
    add-int/lit8 v2, v0, -0x2

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 4402
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v2, v0}, Lcom/android/camera/CameraController;->setZoom(I)V

    .line 4403
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v2}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    .line 4404
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    invoke-virtual {v2, v5}, Lcom/android/camera/CameraThread$MainHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 4406
    const-string v2, "CameraThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Pending zooming request found, stop zooming at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 4409
    :cond_7
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 4410
    if-gt v0, p1, :cond_6

    goto :goto_1

    .line 4415
    .end local v0           #currentZoom:I
    :cond_8
    move v0, p1

    .line 4416
    .restart local v0       #currentZoom:I
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v2, v0}, Lcom/android/camera/CameraController;->setZoom(I)V

    .line 4417
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v2}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    .line 4420
    invoke-static {}, Lcom/android/camera/DisplayDevice;->needDelayZooming()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4424
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 4426
    :catch_0
    move-exception v2

    goto/16 :goto_1

    .line 4436
    .end local v0           #currentZoom:I
    .end local v1           #oldZoom:I
    :cond_9
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    if-eqz v2, :cond_a

    .line 4438
    const-string v2, "CameraThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeZoom("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") - start async"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4440
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v5, p1, v3, v4}, Lcom/android/camera/MessageHandler;->sendUniqueObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 4442
    const-string v2, "CameraThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeZoom("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") - end async"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4445
    :cond_a
    const-string v2, "CameraThread"

    const-string v3, "Cannot change zoom because there is no handler"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public final checkStorageState()V
    .locals 1

    .prologue
    .line 3852
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraThread;->checkStorageState(Z)V

    .line 3853
    return-void
.end method

.method public final checkStorageState(Z)V
    .locals 3
    .parameter "checkSize"

    .prologue
    .line 3856
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 3858
    new-instance v0, Lcom/android/camera/CameraThread$8;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/CameraThread$8;-><init>(Lcom/android/camera/CameraThread;Z)V

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 3868
    :goto_0
    return-void

    .line 3867
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->getPendingFileSize()J

    move-result-wide v1

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/android/camera/CameraThread;->checkStorageStateInternal(Lcom/android/camera/io/StorageState;ZJ)V

    goto :goto_0
.end method

.method public final closeCamera()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 3990
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-eq v2, p0, :cond_0

    .line 3992
    const-string v2, "CameraThread"

    const-string v3, "Close camera from another thread"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3993
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 4060
    :goto_0
    return-void

    .line 3998
    :cond_0
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportCAF()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/camera/CameraThread;->canTakePicAfterFocus:Z

    if-eqz v2, :cond_1

    .line 4000
    const-string v2, "CameraThread"

    const-string v3, "closeCamera() - Waiting for auto-focus before capture, cancel capture"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 4001
    iput-boolean v7, p0, Lcom/android/camera/CameraThread;->canTakePicAfterFocus:Z

    .line 4002
    iput-boolean v7, p0, Lcom/android/camera/CameraThread;->mTaking_picture:Z

    .line 4003
    iget-wide v2, p0, Lcom/android/camera/CameraThread;->mLatestCaptureID:J

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/camera/CameraThread;->mLatestCaptureID:J

    .line 4004
    iget-object v2, p0, Lcom/android/camera/CameraThread;->takingPictureFailedEvent:Lcom/android/camera/event/Event;

    new-instance v3, Lcom/android/camera/OneValueEventArgs;

    sget-object v4, Lcom/android/camera/TakingPictureFailedReason;->Unknown:Lcom/android/camera/TakingPictureFailedReason;

    invoke-direct {v3, v4}, Lcom/android/camera/OneValueEventArgs;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, p0, v3}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 4007
    :cond_1
    iget-object v2, p0, Lcom/android/camera/CameraThread;->isRecording:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    if-ne v2, v3, :cond_2

    .line 4008
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->stopVideoRecording()V

    .line 4011
    :cond_2
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSharpSensor()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4012
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->cancelAutoFocusInternal()V

    .line 4014
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->stopPreview()V

    .line 4016
    iput-object v6, p0, Lcom/android/camera/CameraThread;->mCurrentColorEffect:Ljava/lang/String;

    .line 4017
    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->resetJpegData()V

    .line 4019
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v2, :cond_5

    .line 4020
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->releaseMediaRecorder()V

    .line 4021
    const-string v2, "CameraThread"

    const-string v3, "before release"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4024
    new-instance v0, Lcom/android/camera/CloseCameraRequestEventArgs;

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-direct {v0, v2}, Lcom/android/camera/CloseCameraRequestEventArgs;-><init>(Landroid/hardware/Camera;)V

    .line 4027
    .local v0, e:Lcom/android/camera/CloseCameraRequestEventArgs;
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/CameraThread;->requestCloseCameraEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v2, p0, v0}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 4035
    :goto_1
    invoke-virtual {v0}, Lcom/android/camera/CloseCameraRequestEventArgs;->isHandled()Z

    move-result v2

    if-nez v2, :cond_4

    .line 4036
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->release()V

    .line 4038
    :cond_4
    const-string v2, "CameraThread"

    const-string v3, "after release"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4039
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->resetCameraFlag()V

    .line 4040
    iput-object v6, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    .line 4041
    iput-object v6, p0, Lcom/android/camera/CameraThread;->mHtcWrapCameraDevice:Lcom/htc/wrap/android/hardware/HtcWrapCamera;

    .line 4042
    iput-object v6, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    .line 4044
    iput v7, p0, Lcom/android/camera/CameraThread;->mCaptureState:I

    .line 4045
    const-string v2, "CameraThread"

    const-string v3, "close camera - mCaptureState = CAPTURE_STATE_IDLE"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4048
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraToken:Ljava/lang/Object;

    invoke-static {v2}, Lcom/android/camera/CameraToken;->releaseToken(Ljava/lang/Object;)V

    .line 4049
    iput-object v6, p0, Lcom/android/camera/CameraThread;->mCameraToken:Ljava/lang/Object;

    .line 4052
    iget-object v2, p0, Lcom/android/camera/CameraThread;->cameraClosedEvent:Lcom/android/camera/event/Event;

    sget-object v3, Lcom/android/camera/event/EventArgs;->empty:Lcom/android/camera/event/EventArgs;

    invoke-virtual {v2, p0, v3}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 4054
    const-string v2, "CameraThread"

    const-string v3, "Release Camera"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 4059
    .end local v0           #e:Lcom/android/camera/CloseCameraRequestEventArgs;
    :goto_2
    iput-boolean v7, p0, Lcom/android/camera/CameraThread;->mIsParamsPrepared:Z

    goto/16 :goto_0

    .line 4029
    .restart local v0       #e:Lcom/android/camera/CloseCameraRequestEventArgs;
    :catch_0
    move-exception v1

    .line 4031
    .local v1, ex:Ljava/lang/Throwable;
    const-string v2, "CameraThread"

    const-string v3, "Exception was occurred while requesting close camera"

    invoke-static {v2, v3, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 4056
    .end local v0           #e:Lcom/android/camera/CloseCameraRequestEventArgs;
    .end local v1           #ex:Ljava/lang/Throwable;
    :cond_5
    const-string v2, "CameraThread"

    const-string v3, "mCameraDevice == null in close_camera"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public final continueForCheckRecording()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 5264
    const-string v0, "CameraThread"

    const-string v1, "[NV] continueForCheckRecording()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 5265
    iget-object v0, p0, Lcom/android/camera/CameraThread;->m_SemaphoreRecording:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 5266
    return-void
.end method

.method public final createPostViewImage([B)V
    .locals 9
    .parameter "postviewData"

    .prologue
    .line 4578
    iget-object v6, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v6}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 4622
    :cond_0
    :goto_0
    return-void

    .line 4582
    :cond_1
    if-nez p1, :cond_2

    .line 4584
    const-string v6, "CameraThread"

    const-string v7, "!!!!!!!! postviewData == null !!!!!!!!"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4588
    :cond_2
    const-string v6, "CameraThread"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "postviewData != null, postviewData.length = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, p1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4590
    iget-object v6, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v6}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    .line 4591
    .local v3, parameters:Landroid/hardware/Camera$Parameters;
    if-eqz v3, :cond_0

    .line 4594
    const-string v6, "postview-size"

    invoke-virtual {v3, v6}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4595
    .local v4, str:Ljava/lang/String;
    const/16 v6, 0x78

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 4596
    .local v1, nIndex:I
    const/4 v6, 0x0

    invoke-virtual {v4, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 4597
    .local v5, strTmp:Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 4598
    .local v2, nWidth:I
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 4599
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 4620
    .local v0, nHeight:I
    iget-object v6, p0, Lcom/android/camera/CameraThread;->postviewImageRetrievedEvent:Lcom/android/camera/event/Event;

    new-instance v7, Lcom/android/camera/imaging/RawImageEventArgs;

    sget-object v8, Lcom/android/camera/imaging/PixelFormat;->Yvu420Sp:Lcom/android/camera/imaging/PixelFormat;

    invoke-direct {v7, p1, v8, v2, v0}, Lcom/android/camera/imaging/RawImageEventArgs;-><init>([BLcom/android/camera/imaging/PixelFormat;II)V

    invoke-virtual {v6, p0, v7}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    goto :goto_0
.end method

.method public final deleteLatestMedia()V
    .locals 6

    .prologue
    .line 4453
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    if-ne v4, p0, :cond_1

    .line 4455
    const-string v4, "CameraThread"

    const-string v5, "deleteLatestMedia() - start sync"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4458
    iget-object v4, p0, Lcom/android/camera/CameraThread;->deletingLatestMediaEvent:Lcom/android/camera/event/Event;

    sget-object v5, Lcom/android/camera/event/EventArgs;->empty:Lcom/android/camera/event/EventArgs;

    invoke-virtual {v4, p0, v5}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 4461
    new-instance v2, Lcom/android/camera/event/SingleHandlerEventArgs;

    invoke-direct {v2}, Lcom/android/camera/event/SingleHandlerEventArgs;-><init>()V

    .line 4462
    .local v2, e:Lcom/android/camera/event/SingleHandlerEventArgs;
    iget-object v4, p0, Lcom/android/camera/CameraThread;->requestDeleteLatestMediaEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v4, p0, v2}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 4465
    invoke-virtual {v2}, Lcom/android/camera/event/SingleHandlerEventArgs;->isHandled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 4467
    const-string v4, "CameraThread"

    const-string v5, "Use default method to delete latest media"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4473
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    .line 4474
    .local v1, context:Landroid/content/Context;
    iget-object v4, p0, Lcom/android/camera/CameraThread;->mLastMediaInfo:Lcom/android/camera/MediaInfo;

    iget-object v0, v4, Lcom/android/camera/MediaInfo;->contentUri:Landroid/net/Uri;

    .line 4475
    .local v0, contentUri:Landroid/net/Uri;
    new-instance v3, Lcom/android/camera/CameraThread$9;

    const-string v4, "Default media deletion thread"

    invoke-direct {v3, p0, v4, v1, v0}, Lcom/android/camera/CameraThread$9;-><init>(Lcom/android/camera/CameraThread;Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)V

    .line 4508
    .local v3, workerThread:Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 4511
    sget-object v5, Lcom/android/camera/CameraThread$19;->$SwitchMap$com$android$camera$CameraMode:[I

    iget-object v4, p0, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/CameraMode;

    invoke-virtual {v4}, Lcom/android/camera/CameraMode;->ordinal()I

    move-result v4

    aget v4, v5, v4

    packed-switch v4, :pswitch_data_0

    .line 4522
    .end local v0           #contentUri:Landroid/net/Uri;
    .end local v1           #context:Landroid/content/Context;
    .end local v3           #workerThread:Ljava/lang/Thread;
    :cond_0
    :goto_0
    const-string v4, "CameraThread"

    const-string v5, "deleteLatestMedia() - end sync"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4538
    .end local v2           #e:Lcom/android/camera/event/SingleHandlerEventArgs;
    :goto_1
    return-void

    .line 4514
    .restart local v0       #contentUri:Landroid/net/Uri;
    .restart local v1       #context:Landroid/content/Context;
    .restart local v2       #e:Lcom/android/camera/event/SingleHandlerEventArgs;
    .restart local v3       #workerThread:Ljava/lang/Thread;
    :pswitch_0
    iget-object v4, p0, Lcom/android/camera/CameraThread;->mSettings:Lcom/android/camera/CameraSettings;

    sget-object v5, Lcom/android/camera/io/DCFInfo;->DEFAULT:Lcom/android/camera/io/DCFInfo;

    invoke-static {v4, v5}, Lcom/android/camera/io/DCFUtility;->restoreFileCounter(Lcom/android/camera/Settings;Lcom/android/camera/io/DCFInfo;)V

    goto :goto_0

    .line 4517
    :pswitch_1
    iget-object v4, p0, Lcom/android/camera/CameraThread;->mSettings:Lcom/android/camera/CameraSettings;

    sget-object v5, Lcom/android/camera/CameraThread;->mVideoDcfInfo:Lcom/android/camera/io/DCFInfo;

    invoke-static {v4, v5}, Lcom/android/camera/io/DCFUtility;->restoreFileCounter(Lcom/android/camera/Settings;Lcom/android/camera/io/DCFInfo;)V

    goto :goto_0

    .line 4524
    .end local v0           #contentUri:Landroid/net/Uri;
    .end local v1           #context:Landroid/content/Context;
    .end local v2           #e:Lcom/android/camera/event/SingleHandlerEventArgs;
    .end local v3           #workerThread:Ljava/lang/Thread;
    :cond_1
    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    if-eqz v4, :cond_2

    .line 4526
    const-string v4, "CameraThread"

    const-string v5, "deleteLatestMedia() - start async"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4527
    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    new-instance v5, Lcom/android/camera/CameraThread$10;

    invoke-direct {v5, p0}, Lcom/android/camera/CameraThread$10;-><init>(Lcom/android/camera/CameraThread;)V

    invoke-virtual {v4, v5}, Lcom/android/camera/CameraThread$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 4534
    const-string v4, "CameraThread"

    const-string v5, "deleteLatestMedia() - end async"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 4537
    :cond_2
    const-string v4, "CameraThread"

    const-string v5, "Cannot delete media because there is no handler"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 4511
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final disablePreviewCallback()V
    .locals 3

    .prologue
    .line 4749
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->threadAccessCheck()V

    .line 4752
    iget v0, p0, Lcom/android/camera/CameraThread;->mPreviewCallbackDisableCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/CameraThread;->mPreviewCallbackDisableCounter:I

    .line 4753
    const-string v0, "CameraThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disablePreviewCallback() - counter = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/CameraThread;->mPreviewCallbackDisableCounter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4756
    iget v0, p0, Lcom/android/camera/CameraThread;->mPreviewCallbackDisableCounter:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4757
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->clearPreviewCallback()V

    .line 4758
    :cond_0
    return-void
.end method

.method public final enablePreviewCallback()V
    .locals 3

    .prologue
    .line 4730
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->threadAccessCheck()V

    .line 4733
    iget v0, p0, Lcom/android/camera/CameraThread;->mPreviewCallbackDisableCounter:I

    if-gtz v0, :cond_1

    .line 4741
    :cond_0
    :goto_0
    return-void

    .line 4735
    :cond_1
    iget v0, p0, Lcom/android/camera/CameraThread;->mPreviewCallbackDisableCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/camera/CameraThread;->mPreviewCallbackDisableCounter:I

    .line 4736
    const-string v0, "CameraThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enablePreviewCallback() - counter = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/CameraThread;->mPreviewCallbackDisableCounter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4739
    iget v0, p0, Lcom/android/camera/CameraThread;->mPreviewCallbackDisableCounter:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mCanSetPreviewCallback:Z

    if-eqz v0, :cond_0

    .line 4740
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->setupPreviewCallback()V

    goto :goto_0
.end method

.method public final endTakePicture()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4144
    const-string v0, "CameraThread"

    const-string v1, "endTakePicture() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4147
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->threadAccessCheck()V

    .line 4150
    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mTaking_picture:Z

    if-nez v0, :cond_0

    .line 4152
    const-string v0, "CameraThread"

    const-string v1, "endTakePicture() - mTaking_picture == false"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 4192
    :goto_0
    return-void

    .line 4157
    :cond_0
    iput-boolean v3, p0, Lcom/android/camera/CameraThread;->mTaking_picture:Z

    .line 4158
    iput-boolean v2, p0, Lcom/android/camera/CameraThread;->mCanStartPreview:Z

    .line 4159
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    sget-object v1, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/CameraThread;->isRecording:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4161
    const-string v0, "CameraThread"

    const-string v1, "endTakePicture() - Take picture during recording, restore mPreviewing"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 4162
    iput-boolean v2, p0, Lcom/android/camera/CameraThread;->mPreviewing:Z

    .line 4166
    :cond_1
    iget v0, p0, Lcom/android/camera/CameraThread;->mCaptureState:I

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/camera/CameraThread;->mCaptureState:I

    if-eq v0, v2, :cond_4

    .line 4168
    const-string v0, "CameraThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCaptureState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/CameraThread;->mCaptureState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", sending CLOSE_CAMERA message"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 4169
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 4178
    :goto_1
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->needsActionScreen()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    sget-object v1, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4182
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 4185
    :cond_2
    iget-object v0, p0, Lcom/android/camera/CameraThread;->isTakingPicture:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4188
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mPendingMode:Lcom/android/camera/CameraMode;

    if-eqz v0, :cond_3

    .line 4189
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mPendingMode:Lcom/android/camera/CameraMode;

    invoke-direct {p0, v0}, Lcom/android/camera/CameraThread;->changeModeInternal(Lcom/android/camera/CameraMode;)V

    .line 4191
    :cond_3
    const-string v0, "CameraThread"

    const-string v1, "endTakePicture() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4173
    :cond_4
    const-string v0, "CameraThread"

    const-string v1, "reset mCaptureState to CAPTURE_STATE_IDLE"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4174
    iput v3, p0, Lcom/android/camera/CameraThread;->mCaptureState:I

    goto :goto_1
.end method

.method public final forceStopVideoRecording()V
    .locals 2

    .prologue
    .line 2013
    const-string v0, "CameraThread"

    const-string v1, "[NV] forceStopVideoRecording() - Async"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2014
    new-instance v0, Lcom/android/camera/CameraThread$7;

    invoke-direct {v0, p0}, Lcom/android/camera/CameraThread$7;-><init>(Lcom/android/camera/CameraThread;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 2027
    return-void
.end method

.method public getCamera()Landroid/hardware/Camera;
    .locals 1

    .prologue
    .line 2779
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    return-object v0
.end method

.method public final getCameraActivity()Lcom/android/camera/HTCCamera;
    .locals 1

    .prologue
    .line 2775
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    return-object v0
.end method

.method public getCameraController()Lcom/android/camera/CameraController;
    .locals 1

    .prologue
    .line 2788
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    return-object v0
.end method

.method public final getCaptureElapsedMilliseconds()J
    .locals 4

    .prologue
    .line 3598
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/camera/CameraThread;->mCaptureStartTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getCaptureHeight()I
    .locals 2

    .prologue
    .line 2829
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v0, v1, :cond_0

    .line 2830
    iget v0, p0, Lcom/android/camera/CameraThread;->Camera_Mode_Height:I

    .line 2832
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/camera/CameraThread;->Video_Mode_Height:I

    goto :goto_0
.end method

.method public getCaptureWidth()I
    .locals 2

    .prologue
    .line 2822
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v0, v1, :cond_0

    .line 2823
    iget v0, p0, Lcom/android/camera/CameraThread;->Camera_Mode_Width:I

    .line 2825
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/camera/CameraThread;->Video_Mode_Width:I

    goto :goto_0
.end method

.method public final getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;
    .locals 1
    .parameter "name"

    .prologue
    .line 4136
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mComponentManager:Lcom/android/camera/component/CameraThreadComponentManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/component/CameraThreadComponentManager;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v0

    return-object v0
.end method

.method public final getComponentFactory()Lcom/android/camera/component/CameraThreadComponentFactory;
    .locals 1

    .prologue
    .line 4120
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mComponentFactory:Lcom/android/camera/component/CameraThreadComponentFactory;

    return-object v0
.end method

.method public bridge synthetic getComponentFactory()Lcom/android/camera/component/ComponentFactory;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->getComponentFactory()Lcom/android/camera/component/CameraThreadComponentFactory;

    move-result-object v0

    return-object v0
.end method

.method public final getComponentManager()Lcom/android/camera/component/CameraThreadComponentManager;
    .locals 1

    .prologue
    .line 4128
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mComponentManager:Lcom/android/camera/component/CameraThreadComponentManager;

    return-object v0
.end method

.method public bridge synthetic getComponentManager()Lcom/android/camera/component/ComponentManager;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->getComponentManager()Lcom/android/camera/component/CameraThreadComponentManager;

    move-result-object v0

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 2792
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    return-object v0
.end method

.method public final getHtcWrapCamera()Lcom/htc/wrap/android/hardware/HtcWrapCamera;
    .locals 1

    .prologue
    .line 2784
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mHtcWrapCameraDevice:Lcom/htc/wrap/android/hardware/HtcWrapCamera;

    return-object v0
.end method

.method public final getImageQueueSize()J
    .locals 3

    .prologue
    .line 4830
    new-instance v0, Lcom/android/camera/QueryEventArgs;

    invoke-direct {v0}, Lcom/android/camera/QueryEventArgs;-><init>()V

    .line 4831
    .local v0, e:Lcom/android/camera/QueryEventArgs;,"Lcom/android/camera/QueryEventArgs<Ljava/lang/Long;>;"
    iget-object v1, p0, Lcom/android/camera/CameraThread;->queryImageQueueSizeEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v1, p0, v0}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 4832
    invoke-virtual {v0}, Lcom/android/camera/QueryEventArgs;->hasResult()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/QueryEventArgs;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public getJpegData()[B
    .locals 1

    .prologue
    .line 2766
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mJpegData:[B

    return-object v0
.end method

.method public final getLastContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 2796
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mLastMediaInfo:Lcom/android/camera/MediaInfo;

    iget-object v0, v0, Lcom/android/camera/MediaInfo;->contentUri:Landroid/net/Uri;

    return-object v0
.end method

.method public final getLastMediaInfo()Lcom/android/camera/MediaInfo;
    .locals 1

    .prologue
    .line 4554
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mLastMediaInfo:Lcom/android/camera/MediaInfo;

    invoke-virtual {v0}, Lcom/android/camera/MediaInfo;->clone()Lcom/android/camera/MediaInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getLatestCaptureID()J
    .locals 2

    .prologue
    .line 5037
    iget-wide v0, p0, Lcom/android/camera/CameraThread;->mLatestCaptureID:J

    return-wide v0
.end method

.method public final getPendingFileSize()J
    .locals 2

    .prologue
    .line 4840
    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->getImageQueueSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPreviewHeight()I
    .locals 2

    .prologue
    .line 2815
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v0, v1, :cond_0

    .line 2816
    iget v0, p0, Lcom/android/camera/CameraThread;->Camera_Preview_Height:I

    .line 2818
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/camera/CameraThread;->Video_Mode_Height:I

    goto :goto_0
.end method

.method public getPreviewWidth()I
    .locals 2

    .prologue
    .line 2808
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v0, v1, :cond_0

    .line 2809
    iget v0, p0, Lcom/android/camera/CameraThread;->Camera_Preview_Width:I

    .line 2811
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/camera/CameraThread;->Video_Mode_Width:I

    goto :goto_0
.end method

.method public getRecordingTime()J
    .locals 4

    .prologue
    .line 4559
    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->getCaptureElapsedMilliseconds()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getSettings()Lcom/android/camera/Settings;
    .locals 1

    .prologue
    .line 5108
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mSettings:Lcom/android/camera/CameraSettings;

    return-object v0
.end method

.method public final handleCommonJpegCallback([BLandroid/hardware/Camera;)V
    .locals 3
    .parameter "jpegData"
    .parameter "camera"

    .prologue
    .line 479
    const-string v1, "CameraThread"

    const-string v2, "handleCommonJpegCallback() - start"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->threadAccessCheck()V

    .line 485
    sget-object v1, Lcom/android/camera/TIME;->JpegCallback:Lcom/android/camera/TIME$Value;

    invoke-virtual {v1}, Lcom/android/camera/TIME$Value;->End()V

    .line 486
    sget-object v1, Lcom/android/camera/TIME;->StoreJpegImage:Lcom/android/camera/TIME$Value;

    invoke-virtual {v1}, Lcom/android/camera/TIME$Value;->Start()V

    .line 489
    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->endTakePicture()V

    .line 492
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    if-eqz v1, :cond_1

    .line 494
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    sget-object v2, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 496
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->isFastShotToShotMode()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->needsActionScreen()Z

    move-result v1

    if-nez v1, :cond_1

    .line 497
    :cond_0
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->completeTakingPicture()V

    .line 504
    :cond_1
    :goto_0
    new-instance v0, Lcom/android/camera/imaging/SaveImageTask;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/imaging/SaveImageTask;-><init>(Lcom/android/camera/CameraThread;[B)V

    .line 505
    .local v0, task:Lcom/android/camera/imaging/SaveImageTask;
    iget-wide v1, p0, Lcom/android/camera/CameraThread;->mLatestCaptureID:J

    iput-wide v1, v0, Lcom/android/camera/imaging/SaveImageTask;->captureID:J

    .line 506
    iget-object v1, p0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/CameraType;

    invoke-virtual {v1}, Lcom/android/camera/CameraType;->is3DCamera()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x0

    :goto_1
    iput-object v1, v0, Lcom/android/camera/imaging/SaveImageTask;->fileFormat:Lcom/android/camera/io/FileFormat;

    .line 507
    invoke-virtual {p0, v0}, Lcom/android/camera/CameraThread;->saveImage(Lcom/android/camera/imaging/SaveImageTask;)V

    .line 509
    const-string v1, "CameraThread"

    const-string v2, "handleCommonJpegCallback() - end"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    return-void

    .line 500
    .end local v0           #task:Lcom/android/camera/imaging/SaveImageTask;
    :cond_2
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->completeTakingPicture()V

    goto :goto_0

    .line 506
    .restart local v0       #task:Lcom/android/camera/imaging/SaveImageTask;
    :cond_3
    iget-object v1, p0, Lcom/android/camera/CameraThread;->m3DFileFormat:Lcom/android/camera/io/FileFormat;

    goto :goto_1
.end method

.method public final handleCommonPostviewCallback([BLandroid/hardware/Camera;)V
    .locals 2
    .parameter "yuvData"
    .parameter "camera"

    .prologue
    .line 517
    const-string v0, "CameraThread"

    const-string v1, "handleCommonPostviewCallback() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->threadAccessCheck()V

    .line 519
    invoke-virtual {p0, p1}, Lcom/android/camera/CameraThread;->createPostViewImage([B)V

    .line 520
    const-string v0, "CameraThread"

    const-string v1, "handleCommonPostviewCallback() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    return-void
.end method

.method public final handleCommonRawCallback([BLandroid/hardware/Camera;)V
    .locals 3
    .parameter "rawData"
    .parameter "camera"

    .prologue
    .line 528
    const-string v0, "CameraThread"

    const-string v1, "handleCommonRawCallback() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->threadAccessCheck()V

    .line 534
    sget-object v0, Lcom/android/camera/TIME;->RawCallback:Lcom/android/camera/TIME$Value;

    invoke-virtual {v0}, Lcom/android/camera/TIME$Value;->End()V

    .line 535
    sget-object v0, Lcom/android/camera/TIME;->JpegCallback:Lcom/android/camera/TIME$Value;

    invoke-virtual {v0}, Lcom/android/camera/TIME$Value;->Start()V

    .line 538
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isFastShotToShotMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->needsActionScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/HTCCamera;->completeTakingPicture(J)V

    .line 541
    :cond_0
    const-string v0, "CameraThread"

    const-string v1, "handleCommonRawCallback() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    return-void
.end method

.method public handleCommonShutterCallback()V
    .locals 1

    .prologue
    .line 551
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->threadAccessCheck()V

    .line 554
    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 555
    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->playShutterSound()V

    .line 558
    :cond_0
    sget-object v0, Lcom/android/camera/TIME;->ShutterCallback:Lcom/android/camera/TIME$Value;

    invoke-virtual {v0}, Lcom/android/camera/TIME$Value;->End()V

    .line 559
    sget-object v0, Lcom/android/camera/TIME;->RawCallback:Lcom/android/camera/TIME$Value;

    invoke-virtual {v0}, Lcom/android/camera/TIME$Value;->Start()V

    .line 560
    return-void
.end method

.method public final interruptTakingPicture(Lcom/android/camera/TakingPictureFailedReason;)Z
    .locals 7
    .parameter "reason"

    .prologue
    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 4199
    const-string v2, "CameraThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "interruptTakingPicture("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") - Start"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 4202
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->threadAccessCheck()V

    .line 4203
    iget-boolean v2, p0, Lcom/android/camera/CameraThread;->mTaking_picture:Z

    if-nez v2, :cond_0

    .line 4205
    const-string v1, "CameraThread"

    const-string v2, "interruptTakingPicture() - Not taking picture"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 4238
    :goto_0
    return v0

    .line 4210
    :cond_0
    if-nez p1, :cond_1

    .line 4211
    sget-object p1, Lcom/android/camera/TakingPictureFailedReason;->Unknown:Lcom/android/camera/TakingPictureFailedReason;

    .line 4214
    :cond_1
    iget-wide v2, p0, Lcom/android/camera/CameraThread;->mLatestCaptureID:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/camera/CameraThread;->mLatestCaptureID:J

    .line 4217
    iget-object v2, p0, Lcom/android/camera/CameraThread;->takingPictureFailedEvent:Lcom/android/camera/event/Event;

    new-instance v3, Lcom/android/camera/OneValueEventArgs;

    invoke-direct {v3, p1}, Lcom/android/camera/OneValueEventArgs;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, p0, v3}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 4220
    iput-boolean v0, p0, Lcom/android/camera/CameraThread;->mTaking_picture:Z

    .line 4221
    iput-boolean v1, p0, Lcom/android/camera/CameraThread;->mCanStartPreview:Z

    .line 4222
    iput-boolean v0, p0, Lcom/android/camera/CameraThread;->mPreviewing:Z

    .line 4223
    iget-object v2, p0, Lcom/android/camera/CameraThread;->isTakingPicture:Lcom/android/camera/property/Property;

    iget-object v3, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4226
    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->closeCamera()V

    .line 4227
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    invoke-virtual {v0, v6}, Lcom/android/camera/CameraThread$MainHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4228
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    invoke-virtual {v0, v6}, Lcom/android/camera/CameraThread$MainHandler;->removeMessages(I)V

    .line 4233
    :goto_1
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mPendingMode:Lcom/android/camera/CameraMode;

    if-eqz v0, :cond_2

    .line 4234
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mPendingMode:Lcom/android/camera/CameraMode;

    invoke-direct {p0, v0}, Lcom/android/camera/CameraThread;->changeModeInternal(Lcom/android/camera/CameraMode;)V

    .line 4237
    :cond_2
    const-string v0, "CameraThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "interruptTakingPicture("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") - End"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 4238
    goto :goto_0

    .line 4230
    :cond_3
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/camera/CameraThread;->startPreviewInternal(Lcom/android/camera/CameraType;I)I

    goto :goto_1
.end method

.method public final invokeAsync(Ljava/lang/Runnable;)Z
    .locals 3
    .parameter "r"

    .prologue
    const/4 v0, 0x0

    .line 4811
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    if-eqz v1, :cond_1

    .line 4813
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    invoke-virtual {v1, p1}, Lcom/android/camera/CameraThread$MainHandler;->post(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4814
    const/4 v0, 0x1

    .line 4821
    :goto_0
    return v0

    .line 4815
    :cond_0
    const-string v1, "CameraThread"

    const-string v2, "invokeAsync() - Fail to post to camera thread handler"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4820
    :cond_1
    const-string v1, "CameraThread"

    const-string v2, "invokeAsync() - No camera thread handler"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public is3DMode()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 3955
    invoke-static {}, Lcom/android/camera/DisplayDevice;->support3DCamera()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3961
    :cond_0
    :goto_0
    return v0

    .line 3958
    :cond_1
    iget v2, p0, Lcom/android/camera/CameraThread;->m3DPreviewStatus:I

    if-eq v2, v1, :cond_0

    move v0, v1

    .line 3961
    goto :goto_0
.end method

.method public is720p()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 2836
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    sget-object v4, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v2, v4, :cond_0

    .line 2842
    :goto_0
    return v3

    .line 2839
    :cond_0
    invoke-static {}, Lcom/android/camera/MovieModeHandler;->getMovieModeHandler()Lcom/android/camera/MovieModeHandler;

    move-result-object v0

    .line 2840
    .local v0, mModeHdr:Lcom/android/camera/ModeHandler;
    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v2, p0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/CameraType;

    invoke-virtual {v0, v4, v2}, Lcom/android/camera/MovieModeHandler;->getCurrentResolutionSettingValue(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraType;)Lcom/android/camera/Resolution;

    move-result-object v1

    .line 2842
    .local v1, r:Lcom/android/camera/Resolution;
    sget-object v2, Lcom/android/camera/Resolution;->Video_720p:Lcom/android/camera/Resolution;

    invoke-virtual {v1, v2}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/android/camera/Resolution;->Video_720p_Online:Lcom/android/camera/Resolution;

    invoke-virtual {v1, v2}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v2, 0x1

    :goto_1
    move v3, v2

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1
.end method

.method public isCameraTakingPicture()Z
    .locals 1

    .prologue
    .line 2800
    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mTaking_picture:Z

    return v0
.end method

.method public isPreviewing()Z
    .locals 1

    .prologue
    .line 2760
    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mPreviewing:Z

    return v0
.end method

.method public isRecPowerWarning()Z
    .locals 1

    .prologue
    .line 4565
    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mRecPowerWarning:Z

    return v0
.end method

.method public final isShutterSoundNeeded()Z
    .locals 1

    .prologue
    .line 4089
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mSettings:Lcom/android/camera/CameraSettings;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->isShutterSoundEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isAutoCaptureTask()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isSlowMotionMode()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 5241
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mSettings:Lcom/android/camera/CameraSettings;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    if-nez v1, :cond_1

    :cond_0
    move v1, v2

    .line 5245
    :goto_0
    return v1

    .line 5244
    :cond_1
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getStartMode()Lcom/android/camera/CameraStartMode;

    move-result-object v0

    .line 5245
    .local v0, startMode:Lcom/android/camera/CameraStartMode;
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportFastFrameRecording()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v1, v1, Lcom/android/camera/CameraSettings;->isSlowMotionEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    sget-object v3, Lcom/android/camera/CameraType;->Main:Lcom/android/camera/CameraType;

    invoke-virtual {v1, v3}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Lcom/android/camera/CameraStartMode;->isServiceMode:Z

    if-nez v1, :cond_2

    iget-boolean v1, v0, Lcom/android/camera/CameraStartMode;->supportsVideoMode:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public final isWaitingForTakingPicture()Z
    .locals 2

    .prologue
    .line 4255
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    if-eqz v0, :cond_0

    .line 4256
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraThread$MainHandler;->hasMessages(I)Z

    move-result v0

    .line 4257
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V
    .locals 4
    .parameter "event"
    .parameter "sender"
    .parameter "e"

    .prologue
    .line 4848
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mediaSavedEvent:Lcom/android/camera/event/Event;

    if-ne p1, v1, :cond_1

    move-object v0, p3

    .line 4850
    check-cast v0, Lcom/android/camera/MediaEventArgs;

    .line 4851
    .local v0, mediaEventArgs:Lcom/android/camera/MediaEventArgs;
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mLastMediaInfo:Lcom/android/camera/MediaInfo;

    iget-object v2, v0, Lcom/android/camera/MediaEventArgs;->contentUri:Landroid/net/Uri;

    iput-object v2, v1, Lcom/android/camera/MediaInfo;->contentUri:Landroid/net/Uri;

    .line 4852
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mLastMediaInfo:Lcom/android/camera/MediaInfo;

    iget-object v2, v0, Lcom/android/camera/MediaEventArgs;->filePath:Lcom/android/camera/io/Path;

    iput-object v2, v1, Lcom/android/camera/MediaInfo;->filePath:Lcom/android/camera/io/Path;

    .line 4853
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mLastMediaInfo:Lcom/android/camera/MediaInfo;

    iget-object v2, v0, Lcom/android/camera/MediaEventArgs;->format:Lcom/android/camera/io/FileFormat;

    iget-object v2, v2, Lcom/android/camera/io/FileFormat;->mimeType:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/camera/MediaInfo;->mimeType:Ljava/lang/String;

    .line 4870
    .end local v0           #mediaEventArgs:Lcom/android/camera/MediaEventArgs;
    .end local p3
    :cond_0
    :goto_0
    return-void

    .line 4855
    .restart local p3
    :cond_1
    iget-object v1, p0, Lcom/android/camera/CameraThread;->autoFocusFinishedEvent:Lcom/android/camera/event/Event;

    if-ne p1, v1, :cond_0

    .line 4857
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportCAF()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, p3

    .line 4860
    check-cast v1, Lcom/android/camera/AutoFocusEventArgs;

    iget-object v1, v1, Lcom/android/camera/AutoFocusEventArgs;->focusAreas:[Landroid/graphics/RectF;

    if-eqz v1, :cond_2

    .line 4861
    check-cast p3, Lcom/android/camera/AutoFocusEventArgs;

    .end local p3
    iget-object v1, p3, Lcom/android/camera/AutoFocusEventArgs;->focusAreas:[Landroid/graphics/RectF;

    check-cast v1, [Landroid/graphics/RectF;

    iput-object v1, p0, Lcom/android/camera/CameraThread;->m_LatestFocusAreas:[Landroid/graphics/RectF;

    .line 4864
    :goto_1
    const-string v1, "CameraThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onEventReceived autoFocusFinishedEvent , canTakePicAfterFocus is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/camera/CameraThread;->canTakePicAfterFocus:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4865
    iget-boolean v1, p0, Lcom/android/camera/CameraThread;->canTakePicAfterFocus:Z

    if-eqz v1, :cond_0

    .line 4866
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->capture()V

    .line 4867
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/CameraThread;->canTakePicAfterFocus:Z

    goto :goto_0

    .line 4863
    .restart local p3
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/CameraThread;->m_LatestFocusAreas:[Landroid/graphics/RectF;

    goto :goto_1
.end method

.method public final openCamera(Lcom/android/camera/CameraType;)I
    .locals 3
    .parameter "cameraType"

    .prologue
    const/4 v2, 0x0

    .line 1352
    if-nez p1, :cond_0

    .line 1354
    const-string v0, "cameraType"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 1355
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1359
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq v0, p0, :cond_1

    .line 1361
    const-string v0, "CameraThread"

    const-string v1, "Open camera from another thread"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1362
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v1, 0x3e8

    invoke-static {v0, v1, v2, v2, p1}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 1363
    const/4 v0, 0x1

    .line 1365
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/camera/CameraThread;->openCameraInternal(Lcom/android/camera/CameraType;)I

    move-result v0

    goto :goto_0
.end method

.method public final playShutterSound()V
    .locals 1

    .prologue
    .line 4097
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraThread;->playShutterSound(Z)V

    .line 4098
    return-void
.end method

.method public final playShutterSound(Z)V
    .locals 3
    .parameter "audioFocus"

    .prologue
    .line 4101
    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mPlaySoundFromCameraService:Z

    if-nez v0, :cond_0

    .line 4103
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mAudioManager:Lcom/android/camera/IAudioManager;

    if-eqz v0, :cond_2

    .line 4105
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mShutterSoundHandle:Lcom/android/camera/Handle;

    if-eqz v0, :cond_1

    .line 4106
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mAudioManager:Lcom/android/camera/IAudioManager;

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mShutterSoundHandle:Lcom/android/camera/Handle;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p1}, Lcom/android/camera/IAudioManager;->playInMemorySound(Lcom/android/camera/Handle;IZ)Lcom/android/camera/Handle;

    .line 4113
    :cond_0
    :goto_0
    return-void

    .line 4108
    :cond_1
    const-string v0, "CameraThread"

    const-string v1, "playShutterSound() - No shutter sound ID"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4111
    :cond_2
    const-string v0, "CameraThread"

    const-string v1, "playShutterSound() - No IAudioManager interface"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public releaseCameraThread()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2612
    iput-object v0, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    .line 2613
    iput-object v0, p0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    .line 2614
    return-void
.end method

.method public resetJpegData()V
    .locals 1

    .prologue
    .line 2770
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mJpegData:[B

    .line 2771
    return-void
.end method

.method public final resetZoom(Z)V
    .locals 4
    .parameter "toMinimum"

    .prologue
    const/4 v3, 0x0

    .line 4315
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 4316
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v1, 0x30

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v3, v3, v2}, Lcom/android/camera/MessageHandler;->sendUniqueObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 4319
    :goto_0
    return-void

    .line 4318
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/CameraThread;->resetZoomInternal(Z)V

    goto :goto_0
.end method

.method public final restartPreview(I)V
    .locals 3
    .parameter "status"

    .prologue
    .line 1945
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 1947
    const-string v0, "CameraThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restartPreview("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") - start sync"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1948
    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->stopPreview()V

    .line 1949
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/CameraThread;->startPreview(Lcom/android/camera/CameraType;I)I

    .line 1950
    const-string v0, "CameraThread"

    const-string v1, "restartPreview() - end sync"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1966
    :goto_0
    return-void

    .line 1952
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    if-eqz v0, :cond_1

    .line 1954
    const-string v0, "CameraThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restartPreview("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") - start async"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1955
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    new-instance v1, Lcom/android/camera/CameraThread$5;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/CameraThread$5;-><init>(Lcom/android/camera/CameraThread;I)V

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraThread$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 1962
    const-string v0, "CameraThread"

    const-string v1, "restartPreview() - end async"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1965
    :cond_1
    const-string v0, "CameraThread"

    const-string v1, "Cannot re-start preview because there is no handler for camera thread"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2627
    const-string v1, "CameraThread"

    const-string v2, "*************************************** run"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2628
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 2629
    new-instance v1, Lcom/android/camera/CameraThread$MainHandler;

    invoke-direct {v1, p0, v5}, Lcom/android/camera/CameraThread$MainHandler;-><init>(Lcom/android/camera/CameraThread;Lcom/android/camera/CameraThread$1;)V

    iput-object v1, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    .line 2632
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getThreadMonitor()Lcom/android/camera/debug/ThreadMonitor;

    move-result-object v0

    .line 2633
    .local v0, threadMonitor:Lcom/android/camera/debug/ThreadMonitor;
    if-eqz v0, :cond_0

    .line 2634
    invoke-virtual {v0}, Lcom/android/camera/debug/ThreadMonitor;->startMonitorCurrentThread()V

    .line 2637
    :cond_0
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->mSettings:Lcom/android/camera/CameraSettings;

    .line 2640
    const-string v1, "CameraThread.CameraType"

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/android/camera/CameraType;->Main:Lcom/android/camera/CameraType;

    invoke-static {v1, v2, v3}, Lcom/android/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    .line 2641
    const-string v1, "CameraThread.CaptureRotation"

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/android/camera/rotate/UIRotation;->Landscape:Lcom/android/camera/rotate/UIRotation;

    invoke-static {v1, v2, v3}, Lcom/android/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->captureRotation:Lcom/android/camera/property/Property;

    .line 2642
    const-string v1, "CameraThread.FlashMode"

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/android/camera/FlashMode;->Auto:Lcom/android/camera/FlashMode;

    invoke-static {v1, v2, v3}, Lcom/android/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->flashMode:Lcom/android/camera/property/Property;

    .line 2643
    const-string v1, "CameraThread.HasEnoughInternalDataSpace"

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v1, v2, v6}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;Z)Lcom/android/camera/property/Property;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->hasEnoughInternalDataSpace:Lcom/android/camera/property/Property;

    .line 2644
    const-string v1, "CameraThread.HasMovingObjects"

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->hasMovingObjects:Lcom/android/camera/property/Property;

    .line 2645
    const-string v1, "CameraThread.IsEyeBlinked"

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->isEyeBlinked:Lcom/android/camera/property/Property;

    .line 2646
    const-string v1, "CameraThread.IsHdrSuggested"

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->isHdrSuggested:Lcom/android/camera/property/Property;

    .line 2647
    const-string v1, "CameraThread.IsLowlight"

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->isLowlight:Lcom/android/camera/property/Property;

    .line 2648
    const-string v1, "CameraThread.IsRecording"

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->isRecording:Lcom/android/camera/property/Property;

    .line 2649
    const-string v1, "CameraThread.IsTakingPicture"

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->isTakingPicture:Lcom/android/camera/property/Property;

    .line 2650
    const-string v1, "CameraThread.Mode"

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/camera/CameraThread;->mInitialMode:Lcom/android/camera/CameraMode;

    invoke-static {v1, v2, v3}, Lcom/android/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    .line 2651
    const-string v1, "CameraThread.PreviewSize"

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v1, v6, v2, v5}, Lcom/android/camera/property/Property;->create(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->previewSize:Lcom/android/camera/property/Property;

    .line 2652
    const-string v1, "CameraThread.StorageSlot"

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/android/camera/io/StorageSlot;->STORAGE_CARD:Lcom/android/camera/io/StorageSlot;

    invoke-static {v1, v2, v3}, Lcom/android/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->storageSlot:Lcom/android/camera/property/Property;

    .line 2653
    const-string v1, "CameraThread.StorageState"

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v4, Lcom/android/camera/io/StorageState;->OK:Lcom/android/camera/io/StorageState;

    invoke-static {v1, v2, v3, v4}, Lcom/android/camera/property/Property;->create(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->storageState:Lcom/android/camera/property/Property;

    .line 2654
    const-string v1, "CameraThread.ZoomRange"

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v1, v6, v2, v5}, Lcom/android/camera/property/Property;->create(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->zoomRange:Lcom/android/camera/property/Property;

    .line 2655
    const-string v1, "CameraThread.ZoomValue"

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->zoomValue:Lcom/android/camera/property/Property;

    .line 2658
    const-string v1, "CameraThread.AutoFocusCanceled"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->autoFocusCanceledEvent:Lcom/android/camera/event/Event;

    .line 2659
    const-string v1, "CameraThread.AutoFocusFinished"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->autoFocusFinishedEvent:Lcom/android/camera/event/Event;

    .line 2660
    const-string v1, "CameraThread.AutoFocusStarted"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->autoFocusStartedEvent:Lcom/android/camera/event/Event;

    .line 2661
    const-string v1, "CameraThread.AutoFocusStarting"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->autoFocusStartingEvent:Lcom/android/camera/event/Event;

    .line 2662
    const-string v1, "CameraThread.CameraClosed"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->cameraClosedEvent:Lcom/android/camera/event/Event;

    .line 2663
    const-string v1, "CameraThread.CameraOpen"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->cameraOpenEvent:Lcom/android/camera/event/Event;

    .line 2664
    const-string v1, "CameraThread.ChangeModeFailed"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->changeModeFailedEvent:Lcom/android/camera/event/Event;

    .line 2665
    const-string v1, "CameraThread.DeletingLatestMedia"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->deletingLatestMediaEvent:Lcom/android/camera/event/Event;

    .line 2666
    const-string v1, "CameraThread.Exiting"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->exitingEvent:Lcom/android/camera/event/Event;

    .line 2667
    const-string v1, "CameraThread.HtcCallbackReceived"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->HtcCallbackReceivedEvent:Lcom/android/camera/event/Event;

    .line 2668
    const-string v1, "CameraThread.MediaDeleted"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->mediaDeletedEvent:Lcom/android/camera/event/Event;

    .line 2669
    const-string v1, "CameraThread.MediaSaved"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->mediaSavedEvent:Lcom/android/camera/event/Event;

    .line 2670
    const-string v1, "CameraThread.MediaSaveFailed"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->mediaSaveFailedEvent:Lcom/android/camera/event/Event;

    .line 2671
    const-string v1, "CameraThread.PostviewImageRetrieved"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->postviewImageRetrievedEvent:Lcom/android/camera/event/Event;

    .line 2672
    const-string v1, "CameraThread.PreparingParamsBeforePreviewStart"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->preparingParamsBeforePreviewStartEvent:Lcom/android/camera/event/Event;

    .line 2673
    const-string v1, "CameraThread.PreviewFrameRetrieved"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->previewFrameRetrievedEvent:Lcom/android/camera/event/Event;

    .line 2674
    const-string v1, "CameraThread.PreviewStarted"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->previewStartedEvent:Lcom/android/camera/event/Event;

    .line 2675
    const-string v1, "CameraThread.PreviewStarting"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->previewStartingEvent:Lcom/android/camera/event/Event;

    .line 2676
    const-string v1, "CameraThread.PreviewStopped"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->previewStoppedEvent:Lcom/android/camera/event/Event;

    .line 2677
    const-string v1, "CameraThread.PreviewStopping"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->previewStoppingEvent:Lcom/android/camera/event/Event;

    .line 2678
    const-string v1, "CameraThread.QueryImageQueueCapacity"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->queryImageQueueCapacityEvent:Lcom/android/camera/event/Event;

    .line 2679
    const-string v1, "CameraThread.QueryImageQueueSize"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->queryImageQueueSizeEvent:Lcom/android/camera/event/Event;

    .line 2680
    const-string v1, "CameraThread.RecordingFailed"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->recordingFailedEvent:Lcom/android/camera/event/Event;

    .line 2681
    const-string v1, "CameraThread.RequestAutoFocus"

    sget-object v2, Lcom/android/camera/event/EventMode;->SingleHandler:Lcom/android/camera/event/EventMode;

    invoke-static {p0, v1, v2}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;Lcom/android/camera/event/EventMode;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->requestAutoFocusEvent:Lcom/android/camera/event/Event;

    .line 2682
    const-string v1, "CameraThread.RequestCancelAutoFocus"

    sget-object v2, Lcom/android/camera/event/EventMode;->SingleHandler:Lcom/android/camera/event/EventMode;

    invoke-static {p0, v1, v2}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;Lcom/android/camera/event/EventMode;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->requestCancelAutoFocusEvent:Lcom/android/camera/event/Event;

    .line 2683
    const-string v1, "CameraThread.RequestCloseCamera"

    sget-object v2, Lcom/android/camera/event/EventMode;->SingleHandler:Lcom/android/camera/event/EventMode;

    invoke-static {p0, v1, v2}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;Lcom/android/camera/event/EventMode;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->requestCloseCameraEvent:Lcom/android/camera/event/Event;

    .line 2684
    const-string v1, "CameraThread.RequestDeleteLatestMedia"

    sget-object v2, Lcom/android/camera/event/EventMode;->SingleHandler:Lcom/android/camera/event/EventMode;

    invoke-static {p0, v1, v2}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;Lcom/android/camera/event/EventMode;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->requestDeleteLatestMediaEvent:Lcom/android/camera/event/Event;

    .line 2685
    const-string v1, "CameraThread.RequestOpenCamera"

    sget-object v2, Lcom/android/camera/event/EventMode;->SingleHandler:Lcom/android/camera/event/EventMode;

    invoke-static {p0, v1, v2}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;Lcom/android/camera/event/EventMode;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->requestOpenCameraEvent:Lcom/android/camera/event/Event;

    .line 2686
    const-string v1, "CameraThread.RequestSaveImage"

    sget-object v2, Lcom/android/camera/event/EventMode;->SingleHandler:Lcom/android/camera/event/EventMode;

    invoke-static {p0, v1, v2}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;Lcom/android/camera/event/EventMode;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->requestSaveImageEvent:Lcom/android/camera/event/Event;

    .line 2687
    const-string v1, "CameraThread.RequestTakingPicture"

    sget-object v2, Lcom/android/camera/event/EventMode;->SingleHandler:Lcom/android/camera/event/EventMode;

    invoke-static {p0, v1, v2}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;Lcom/android/camera/event/EventMode;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->requestTakingPictureEvent:Lcom/android/camera/event/Event;

    .line 2688
    const-string v1, "CameraThread.SavingImage"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->savingImageEvent:Lcom/android/camera/event/Event;

    .line 2689
    const-string v1, "CameraThread.TakingPictureFailed"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->takingPictureFailedEvent:Lcom/android/camera/event/Event;

    .line 2690
    const-string v1, "CameraThread.VideoThumbnailCreated"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->videoThumbnailCreatedEvent:Lcom/android/camera/event/Event;

    .line 2693
    iget-object v1, p0, Lcom/android/camera/CameraThread;->isRecording:Lcom/android/camera/property/Property;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->enableLogs(I)V

    .line 2694
    iget-object v1, p0, Lcom/android/camera/CameraThread;->previewFrameRetrievedEvent:Lcom/android/camera/event/Event;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->disableLogs(I)V

    .line 2697
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mediaSavedEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v1, p0}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 2698
    iget-object v1, p0, Lcom/android/camera/CameraThread;->autoFocusFinishedEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v1, p0}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 2701
    new-instance v1, Lcom/android/camera/component/CameraThreadComponentFactory;

    invoke-direct {v1, p0}, Lcom/android/camera/component/CameraThreadComponentFactory;-><init>(Lcom/android/camera/CameraThread;)V

    iput-object v1, p0, Lcom/android/camera/CameraThread;->mComponentFactory:Lcom/android/camera/component/CameraThreadComponentFactory;

    .line 2702
    new-instance v1, Lcom/android/camera/component/CameraThreadComponentManager;

    invoke-direct {v1, p0}, Lcom/android/camera/component/CameraThreadComponentManager;-><init>(Lcom/android/camera/CameraThread;)V

    iput-object v1, p0, Lcom/android/camera/CameraThread;->mComponentManager:Lcom/android/camera/component/CameraThreadComponentManager;

    .line 2703
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mComponentFactory:Lcom/android/camera/component/CameraThreadComponentFactory;

    sget-object v2, Lcom/android/camera/component/ComponentCategory;->Realtime:Lcom/android/camera/component/ComponentCategory;

    invoke-virtual {v1, v2}, Lcom/android/camera/component/CameraThreadComponentFactory;->createComponents(Lcom/android/camera/component/ComponentCategory;)I

    .line 2706
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mComponentManager:Lcom/android/camera/component/CameraThreadComponentManager;

    invoke-virtual {v1, v6}, Lcom/android/camera/component/CameraThreadComponentManager;->enableAutoInitialization(Z)V

    .line 2709
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mComponentManager:Lcom/android/camera/component/CameraThreadComponentManager;

    const-class v2, Lcom/android/camera/IAudioManager;

    invoke-virtual {v1, v2}, Lcom/android/camera/component/CameraThreadComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/IAudioManager;

    iput-object v1, p0, Lcom/android/camera/CameraThread;->mAudioManager:Lcom/android/camera/IAudioManager;

    .line 2712
    new-instance v1, Lcom/android/camera/CameraThread$FinalStorageCheckThread;

    invoke-direct {v1, p0}, Lcom/android/camera/CameraThread$FinalStorageCheckThread;-><init>(Lcom/android/camera/CameraThread;)V

    iput-object v1, p0, Lcom/android/camera/CameraThread;->mFinalStorageCheckThread:Lcom/android/camera/CameraThread$FinalStorageCheckThread;

    .line 2713
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mFinalStorageCheckThread:Lcom/android/camera/CameraThread$FinalStorageCheckThread;

    invoke-virtual {v1}, Lcom/android/camera/CameraThread$FinalStorageCheckThread;->start()V

    .line 2716
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    if-eqz v1, :cond_3

    .line 2718
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v2, 0x2776

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2719
    const-string v1, "CameraThread"

    const-string v2, "Cannot notify UI that camera thread is running, because message cannot be sent"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 2725
    :cond_1
    :goto_0
    sget-object v1, Lcom/android/camera/CameraType;->Main:Lcom/android/camera/CameraType;

    invoke-virtual {p0, v1}, Lcom/android/camera/CameraThread;->openCamera(Lcom/android/camera/CameraType;)I

    .line 2727
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 2730
    iget-object v1, p0, Lcom/android/camera/CameraThread;->exitingEvent:Lcom/android/camera/event/Event;

    sget-object v2, Lcom/android/camera/event/EventArgs;->empty:Lcom/android/camera/event/EventArgs;

    invoke-virtual {v1, p0, v2}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 2733
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mComponentManager:Lcom/android/camera/component/CameraThreadComponentManager;

    invoke-virtual {v1}, Lcom/android/camera/component/CameraThreadComponentManager;->removeComponents()V

    .line 2736
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v1}, Lcom/android/camera/property/Property;->destroyAllProperties(Ljava/lang/Object;)V

    .line 2739
    invoke-static {p0}, Lcom/android/camera/event/Event;->destroyAllEvents(Ljava/lang/Object;)V

    .line 2742
    if-eqz v0, :cond_2

    .line 2743
    invoke-virtual {v0}, Lcom/android/camera/debug/ThreadMonitor;->stopMonitorCurrentThread()V

    .line 2746
    :cond_2
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mFinalStorageCheckThread:Lcom/android/camera/CameraThread$FinalStorageCheckThread;

    invoke-virtual {v1}, Lcom/android/camera/CameraThread$FinalStorageCheckThread;->exit()V

    .line 2747
    iput-object v5, p0, Lcom/android/camera/CameraThread;->mFinalStorageCheckThread:Lcom/android/camera/CameraThread$FinalStorageCheckThread;

    .line 2750
    iput-object v5, p0, Lcom/android/camera/CameraThread;->mAudioManager:Lcom/android/camera/IAudioManager;

    .line 2751
    return-void

    .line 2722
    :cond_3
    const-string v1, "CameraThread"

    const-string v2, "Cannot notify UI that camera thread is running, because there is no UI handler"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final saveImage(Lcom/android/camera/imaging/SaveImageTask;)V
    .locals 9
    .parameter "task"

    .prologue
    const/4 v3, 0x0

    .line 4266
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->threadAccessCheck()V

    .line 4269
    if-nez p1, :cond_0

    .line 4271
    const-string v1, "task"

    invoke-static {v1}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 4272
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 4276
    :cond_0
    iget-object v1, p1, Lcom/android/camera/imaging/SaveImageTask;->gpsLocation:Landroid/location/Location;

    if-nez v1, :cond_1

    .line 4277
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mLocation:Landroid/location/Location;

    iput-object v1, p1, Lcom/android/camera/imaging/SaveImageTask;->gpsLocation:Landroid/location/Location;

    .line 4278
    :cond_1
    iget-object v1, p1, Lcom/android/camera/imaging/SaveImageTask;->storageSlot:Lcom/android/camera/io/StorageSlot;

    if-nez v1, :cond_2

    .line 4279
    iget-object v1, p0, Lcom/android/camera/CameraThread;->storageSlot:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/io/StorageSlot;

    iput-object v1, p1, Lcom/android/camera/imaging/SaveImageTask;->storageSlot:Lcom/android/camera/io/StorageSlot;

    .line 4280
    :cond_2
    iget-wide v1, p1, Lcom/android/camera/imaging/SaveImageTask;->takenDateTime:J

    const-wide/16 v4, 0x0

    cmp-long v1, v1, v4

    if-nez v1, :cond_3

    .line 4281
    iget-wide v1, p0, Lcom/android/camera/CameraThread;->mPhotoTakenTime:J

    iput-wide v1, p1, Lcom/android/camera/imaging/SaveImageTask;->takenDateTime:J

    .line 4284
    :cond_3
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getStartMode()Lcom/android/camera/CameraStartMode;

    move-result-object v1

    sget-object v2, Lcom/android/camera/CameraStartMode;->SquarePhoto:Lcom/android/camera/CameraStartMode;

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getStartMode()Lcom/android/camera/CameraStartMode;

    move-result-object v1

    sget-object v2, Lcom/android/camera/CameraStartMode;->ContactsPhoto:Lcom/android/camera/CameraStartMode;

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getStartMode()Lcom/android/camera/CameraStartMode;

    move-result-object v1

    sget-object v2, Lcom/android/camera/CameraStartMode;->GenericServiceCamera:Lcom/android/camera/CameraStartMode;

    if-eq v1, v2, :cond_4

    invoke-static {}, Lcom/android/camera/IntentManager;->getSaveUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 4290
    :cond_4
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/camera/imaging/SaveImageTask;->getJpegRawData(Z)[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->mJpegData:[B

    .line 4296
    :goto_0
    iget-object v1, p0, Lcom/android/camera/CameraThread;->savingImageEvent:Lcom/android/camera/event/Event;

    sget-object v2, Lcom/android/camera/event/EventArgs;->empty:Lcom/android/camera/event/EventArgs;

    invoke-virtual {v1, p0, v2}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 4299
    new-instance v8, Lcom/android/camera/imaging/SaveImageRequestEventArgs;

    invoke-direct {v8, p1}, Lcom/android/camera/imaging/SaveImageRequestEventArgs;-><init>(Lcom/android/camera/imaging/SaveImageTask;)V

    .line 4300
    .local v8, requestEventArgs:Lcom/android/camera/imaging/SaveImageRequestEventArgs;
    iget-object v1, p0, Lcom/android/camera/CameraThread;->requestSaveImageEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v1, p0, v8}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 4303
    invoke-virtual {v8}, Lcom/android/camera/imaging/SaveImageRequestEventArgs;->isHandled()Z

    move-result v1

    if-nez v1, :cond_5

    .line 4305
    new-instance v0, Lcom/android/camera/MediaEventArgs;

    iget-wide v1, p1, Lcom/android/camera/imaging/SaveImageTask;->captureID:J

    iget-boolean v6, p1, Lcom/android/camera/imaging/SaveImageTask;->isLastImage:Z

    sget-object v7, Lcom/android/camera/MediaSaveFailedReason;->Unknown:Lcom/android/camera/MediaSaveFailedReason;

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/MediaEventArgs;-><init>(JLandroid/net/Uri;Lcom/android/camera/io/Path;Lcom/android/camera/io/FileFormat;ZLcom/android/camera/MediaSaveFailedReason;)V

    .line 4306
    .local v0, mediaEventArgs:Lcom/android/camera/MediaEventArgs;
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mediaSaveFailedEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v1, p0, v0}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 4308
    .end local v0           #mediaEventArgs:Lcom/android/camera/MediaEventArgs;
    :cond_5
    return-void

    .line 4293
    .end local v8           #requestEventArgs:Lcom/android/camera/imaging/SaveImageRequestEventArgs;
    :cond_6
    iput-object v3, p0, Lcom/android/camera/CameraThread;->mJpegData:[B

    goto :goto_0
.end method

.method public final setCanStartPreview()V
    .locals 1

    .prologue
    .line 4246
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->threadAccessCheck()V

    .line 4247
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/CameraThread;->mCanStartPreview:Z

    .line 4248
    return-void
.end method

.method public final setCaptureRotation(Lcom/android/camera/rotate/UIRotation;)V
    .locals 1
    .parameter "rotation"

    .prologue
    .line 5154
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 5156
    new-instance v0, Lcom/android/camera/CameraThread$18;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/CameraThread$18;-><init>(Lcom/android/camera/CameraThread;Lcom/android/camera/rotate/UIRotation;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 5167
    :goto_0
    return-void

    .line 5166
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/CameraThread;->setCaptureRotationInternal(Lcom/android/camera/rotate/UIRotation;)V

    goto :goto_0
.end method

.method public setColorEffect(Ljava/lang/String;)V
    .locals 1
    .parameter "effect"

    .prologue
    .line 4072
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->threadAccessCheck()V

    .line 4074
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    if-nez v0, :cond_1

    .line 4082
    :cond_0
    :goto_0
    return-void

    .line 4077
    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCurrentColorEffect:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4079
    :cond_2
    iput-object p1, p0, Lcom/android/camera/CameraThread;->mCurrentColorEffect:Ljava/lang/String;

    .line 4080
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraController;->setColorEffect(Ljava/lang/String;)V

    .line 4081
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v0}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    goto :goto_0
.end method

.method public final setFirstFrameCacheState(Z)V
    .locals 1
    .parameter "isEnabled"

    .prologue
    .line 5116
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 5118
    new-instance v0, Lcom/android/camera/CameraThread$17;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/CameraThread$17;-><init>(Lcom/android/camera/CameraThread;Z)V

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 5129
    :goto_0
    return-void

    .line 5128
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/CameraThread;->setFirstFrameCacheStateInternal(Z)V

    goto :goto_0
.end method

.method public setFlashMode(Lcom/android/camera/FlashMode;)V
    .locals 3
    .parameter "mode"

    .prologue
    const/4 v2, 0x0

    .line 5081
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 5082
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v1, 0x15

    invoke-static {v0, v1, v2, v2, p1}, Lcom/android/camera/MessageHandler;->sendUniqueObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 5085
    :goto_0
    return-void

    .line 5084
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/CameraThread;->setFlashModeInternal(Lcom/android/camera/FlashMode;)V

    goto :goto_0
.end method

.method public setRecPowerWarning(Z)V
    .locals 3
    .parameter "flag"

    .prologue
    .line 4569
    const-string v0, "CameraThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set mRecPowerWarning "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 4570
    iput-boolean p1, p0, Lcom/android/camera/CameraThread;->mRecPowerWarning:Z

    .line 4571
    return-void
.end method

.method public startPreview(Lcom/android/camera/CameraType;I)I
    .locals 3
    .parameter "cameraType"
    .parameter "status"

    .prologue
    const/4 v2, 0x0

    .line 1725
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 1727
    const-string v0, "CameraThread"

    const-string v1, "Start preview from another thread"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1728
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    invoke-static {v0, v2, p2, v2, p1}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 1729
    const/4 v0, 0x1

    .line 1731
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/camera/CameraThread;->startPreviewInternal(Lcom/android/camera/CameraType;I)I

    move-result v0

    goto :goto_0
.end method

.method public final startPreviewDirectly()I
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1824
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 1825
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->startPreviewDirectlyInternal()I

    move-result v0

    .line 1837
    :goto_0
    return v0

    .line 1827
    :cond_0
    const-string v1, "CameraThread"

    const-string v2, "startPreviewDirectly() from another thread"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1829
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    if-eqz v1, :cond_1

    .line 1831
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    invoke-virtual {v1, v0}, Lcom/android/camera/CameraThread$MainHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1836
    :cond_1
    const-string v0, "CameraThread"

    const-string v1, "No camera handler to start preview directly"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1837
    const/4 v0, 0x4

    goto :goto_0
.end method

.method startVideoRecording()V
    .locals 29

    .prologue
    .line 2185
    const-string v3, "CameraThread"

    const-string v5, "startVideoRecording() - start"

    invoke-static {v3, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2188
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v5, 0x2f

    invoke-virtual {v3, v5}, Lcom/android/camera/CameraThread$MainHandler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2189
    const-string v3, "CameraThread"

    const-string v5, "start recording before stop recoding delay"

    invoke-static {v3, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2190
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v5, 0x2f

    invoke-static {v3, v5}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 2191
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/camera/CameraThread;->mLatestCaptureID:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/camera/CameraThread;->mCaptureDuration:J

    move-wide/from16 v25, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v25

    invoke-direct {v0, v5, v6, v1, v2}, Lcom/android/camera/CameraThread;->stopVideoRecordingDelay(JJ)V

    .line 2194
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    if-eqz v3, :cond_1

    .line 2195
    const-string v3, "CameraThread"

    const-string v5, "mRecorder != null in start video recording"

    invoke-static {v3, v5}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 2196
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->releaseMediaRecorder()V

    .line 2199
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    if-nez v3, :cond_2

    .line 2200
    new-instance v3, Landroid/media/MediaRecorder;

    invoke-direct {v3}, Landroid/media/MediaRecorder;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    .line 2206
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v3, :cond_3

    .line 2207
    const-string v3, "CameraThread"

    const-string v5, "mCameraDevice is null in start video recording"

    invoke-static {v3, v5}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 2575
    :goto_0
    return-void

    .line 2211
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mLatestAutoFocusMode:Lcom/android/camera/AutoFocusMode;

    sget-object v5, Lcom/android/camera/AutoFocusMode;->Touch:Lcom/android/camera/AutoFocusMode;

    if-eq v3, v5, :cond_4

    .line 2213
    const-string v3, "CameraThread"

    const-string v5, "Start recording and not touch focus - enable continue AF !!!"

    invoke-static {v3, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2214
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v5, "enable-caf"

    const-string v6, "on"

    invoke-virtual {v3, v5, v6}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2216
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v3}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    .line 2217
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/camera/CameraThread;->mEnableCAF:Z

    .line 2221
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mAudioManager:Lcom/android/camera/IAudioManager;

    if-eqz v3, :cond_5

    .line 2222
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mAudioManager:Lcom/android/camera/IAudioManager;

    const-string v5, "CAMCORDER_MODE=ON"

    invoke-interface {v3, v5}, Lcom/android/camera/IAudioManager;->setParameters(Ljava/lang/String;)V

    .line 2226
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->isPowerWarning()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2228
    const-string v3, "CameraThread"

    const-string v5, "Won\'t access mCameraDevice due to PowerWarning"

    invoke-static {v3, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2233
    :cond_6
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/camera/CameraThread;->mCanSetPreviewCallback:Z

    .line 2234
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->clearPreviewCallback()V

    .line 2236
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->unlock()V

    .line 2237
    const-string v3, "CameraThread"

    const-string v5, "start video recording: unlock camera"

    invoke-static {v3, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2238
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v3, v5}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    .line 2240
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->captureRotation:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/rotate/UIRotation;

    iget v0, v3, Lcom/android/camera/rotate/UIRotation;->deviceOrientation:I

    move/from16 v22, v0

    .line 2241
    .local v22, orientation:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/CameraType;

    iget v0, v3, Lcom/android/camera/CameraType;->orientation:I

    move/from16 v24, v0

    .line 2242
    .local v24, sensorOrientation:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/CameraType;

    invoke-virtual {v3}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 2243
    add-int v22, v22, v24

    .line 2247
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/CameraType;

    invoke-virtual {v3}, Lcom/android/camera/CameraType;->is3DCamera()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2249
    const-string v3, "CameraThread"

    const-string v5, "set rotation landscape while 3D video mode"

    invoke-static {v3, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2250
    const/16 v22, 0x0

    .line 2253
    :cond_7
    move/from16 v0, v22

    rem-int/lit16 v0, v0, 0x168

    move/from16 v22, v0

    .line 2255
    const-string v3, "CameraThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "set rotation, mCaptureRotation = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2256
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportCamcorderRotate()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-static {}, Lcom/android/camera/MovieModeHandler;->getMovieModeHandler()Lcom/android/camera/MovieModeHandler;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/CameraType;

    invoke-virtual {v5, v6, v3}, Lcom/android/camera/MovieModeHandler;->IsLockMMSVideoInLandscape(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraType;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraThread;->isSlowMotionMode()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2262
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    .line 2265
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v15

    .line 2267
    .local v15, holder:Landroid/view/SurfaceHolder;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    invoke-interface {v15}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/media/MediaRecorder;->setPreviewDisplay(Landroid/view/Surface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2275
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraThread;->isSlowMotionMode()Z

    move-result v17

    .line 2277
    .local v17, isSlowMotion:Z
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportStereoRecord()Z

    move-result v3

    if-eqz v3, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v3, v3, Lcom/android/camera/CameraSettings;->isStereoRecordingEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_10

    const/16 v18, 0x1

    .line 2278
    .local v18, isStereoRecording:Z
    :goto_2
    if-nez v17, :cond_11

    .line 2279
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-static {v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->getIsRecordWithAudio(Landroid/content/Context;)Z

    move-result v19

    .line 2282
    .local v19, keepSound:Z
    :goto_3
    if-eqz v19, :cond_b

    .line 2285
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportStereoRecord()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 2287
    if-eqz v18, :cond_12

    .line 2289
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->captureRotation:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/rotate/UIRotation;

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v3}, Lcom/android/camera/CameraThread;->setSoundEffect(ZLcom/android/camera/rotate/UIRotation;)V

    .line 2290
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->enableSoundEffect()V

    .line 2291
    const-string v3, "CameraThread"

    const-string v5, "startVideoRecording() - Enable stereo recording"

    invoke-static {v3, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2300
    :cond_a
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 2302
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 2304
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportOnlyMP4VideoFormat()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->isMMSRecording()Z

    move-result v3

    if-nez v3, :cond_13

    .line 2306
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 2310
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/CameraType;

    invoke-virtual {v3}, Lcom/android/camera/CameraType;->is3DCamera()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 2311
    sget-object v3, Lcom/android/camera/io/FileFormat;->Mpeg4For3D:Lcom/android/camera/io/FileFormat;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/CameraThread;->mRecordingVideoFileFormat:Lcom/android/camera/io/FileFormat;

    .line 2327
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->storageSlot:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/io/StorageSlot;

    invoke-static {v3}, Lcom/android/camera/io/DCFUtility;->getDcimPath(Lcom/android/camera/io/StorageSlot;)Ljava/lang/String;

    move-result-object v4

    .line 2328
    .local v4, dcimPath:Ljava/lang/String;
    new-instance v7, Lcom/android/camera/Reference;

    invoke-direct {v7}, Lcom/android/camera/Reference;-><init>()V

    .line 2329
    .local v7, dirCounterRef:Lcom/android/camera/Reference;,"Lcom/android/camera/Reference<Ljava/lang/Integer;>;"
    new-instance v8, Lcom/android/camera/Reference;

    invoke-direct {v8}, Lcom/android/camera/Reference;-><init>()V

    .line 2330
    .local v8, fileCounterRef:Lcom/android/camera/Reference;,"Lcom/android/camera/Reference<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v3

    sget-object v5, Lcom/android/camera/CameraThread;->mVideoDcfInfo:Lcom/android/camera/io/DCFInfo;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/CameraThread;->mRecordingVideoFileFormat:Lcom/android/camera/io/FileFormat;

    invoke-static/range {v3 .. v8}, Lcom/android/camera/io/DCFUtility;->findNextDirAndFileCounters(Lcom/android/camera/Settings;Ljava/lang/String;Lcom/android/camera/io/DCFInfo;Lcom/android/camera/io/FileFormat;Lcom/android/camera/Reference;Lcom/android/camera/Reference;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 2338
    const-string v3, "CameraThread"

    const-string v5, "Cannot find available video file location, please check the storage card"

    invoke-static {v3, v5}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 2339
    const-string v3, "CameraThread"

    const-string v5, "Camera app finished"

    invoke-static {v3, v5}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 2340
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->releaseMediaRecorder()V

    .line 2341
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->finish()V

    .line 2343
    :cond_c
    new-instance v10, Lcom/android/camera/io/FileCounter;

    iget-object v3, v7, Lcom/android/camera/Reference;->target:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v10, v3}, Lcom/android/camera/io/FileCounter;-><init>(I)V

    .line 2344
    .local v10, dirCounter:Lcom/android/camera/io/FileCounter;
    new-instance v14, Lcom/android/camera/io/FileCounter;

    iget-object v3, v8, Lcom/android/camera/Reference;->target:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v14, v3}, Lcom/android/camera/io/FileCounter;-><init>(I)V

    .line 2345
    .local v14, fileCounter:Lcom/android/camera/io/FileCounter;
    new-instance v3, Lcom/android/camera/io/DCFPath;

    sget-object v5, Lcom/android/camera/CameraThread;->mVideoDcfInfo:Lcom/android/camera/io/DCFInfo;

    invoke-static {v5, v10}, Lcom/android/camera/io/DCFUtility;->getDirectoryName(Lcom/android/camera/io/DCFInfo;Lcom/android/camera/io/FileCounter;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/io/Path;->combine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/camera/CameraThread;->mVideoDcfInfo:Lcom/android/camera/io/DCFInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mRecordingVideoFileFormat:Lcom/android/camera/io/FileFormat;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-static {v6, v14, v0}, Lcom/android/camera/io/DCFUtility;->getFileName(Lcom/android/camera/io/DCFInfo;Lcom/android/camera/io/FileCounter;Lcom/android/camera/io/FileFormat;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6, v10, v14}, Lcom/android/camera/io/DCFPath;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/camera/io/FileCounter;Lcom/android/camera/io/FileCounter;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/CameraThread;->mRecordingVideoFilePath:Lcom/android/camera/io/DCFPath;

    .line 2351
    const-string v3, "CameraThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Save video: directory name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/CameraThread;->mRecordingVideoFilePath:Lcom/android/camera/io/DCFPath;

    iget-object v6, v6, Lcom/android/camera/io/Path;->directoryPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",  file name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/CameraThread;->mRecordingVideoFilePath:Lcom/android/camera/io/DCFPath;

    iget-object v6, v6, Lcom/android/camera/io/Path;->fileName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2353
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CameraThread;->mRecordingVideoFilePath:Lcom/android/camera/io/DCFPath;

    invoke-virtual {v5}, Lcom/android/camera/io/DCFPath;->getFullPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 2355
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->getRecordLimitCheck()Lcom/android/camera/RecordLimitCheck;

    move-result-object v20

    .line 2356
    .local v20, limit:Lcom/android/camera/RecordLimitCheck;
    if-eqz v20, :cond_16

    .line 2358
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecordingVideoFilePath:Lcom/android/camera/io/DCFPath;

    invoke-virtual {v3}, Lcom/android/camera/io/DCFPath;->getFullPath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/android/camera/RecordLimitCheck;->setFilePath(Ljava/lang/String;)V

    .line 2359
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->storageSlot:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/io/StorageSlot;

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/android/camera/RecordLimitCheck;->calculateRemainSpace(Lcom/android/camera/io/StorageSlot;)V

    .line 2367
    :try_start_1
    invoke-virtual/range {v20 .. v20}, Lcom/android/camera/RecordLimitCheck;->getVideoBitrate()I

    move-result v9

    .line 2368
    .local v9, bitrate:I
    const-string v3, "CameraThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "set encode bitrate: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2369
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3, v9}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 2376
    .end local v9           #bitrate:I
    :goto_7
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual/range {v20 .. v20}, Lcom/android/camera/RecordLimitCheck;->getMaxSeconds()I

    move-result v5

    mul-int/lit16 v5, v5, 0x3e8

    invoke-virtual {v3, v5}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 2377
    const/4 v3, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/android/camera/RecordLimitCheck;->setUseTimeOut_API(Z)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3

    .line 2383
    :goto_8
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual/range {v20 .. v20}, Lcom/android/camera/RecordLimitCheck;->getMaxBytes()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_4

    .line 2396
    :goto_9
    const/16 v16, 0x0

    .line 2397
    .local v16, iValFR:I
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->isMMSRecording()Z

    move-result v3

    if-eqz v3, :cond_17

    sget-object v3, Lcom/android/camera/DisplayDevice;->CUSTOM_MMS:Lcom/android/camera/DisplayDevice$CustomMMS;

    sget-object v5, Lcom/android/camera/DisplayDevice$CustomMMS;->Verizon:Lcom/android/camera/DisplayDevice$CustomMMS;

    if-ne v3, v5, :cond_17

    .line 2398
    const/16 v16, 0xf

    .line 2405
    :goto_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 2406
    const-string v3, "CameraThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setVideoFrameRate:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2409
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/CameraThread;->Video_Mode_Width:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/camera/CameraThread;->Video_Mode_Height:I

    invoke-virtual {v3, v5, v6}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 2410
    const-string v3, "CameraThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setVideoSize: width = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/camera/CameraThread;->Video_Mode_Width:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "height = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/camera/CameraThread;->Video_Mode_Height:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2415
    if-nez v17, :cond_19

    .line 2416
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/CameraThread;->mEncoderType:I

    invoke-virtual {v3, v5}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    .line 2421
    :goto_b
    if-eqz v19, :cond_e

    .line 2424
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraThread;->IsEqualOrAbove720p()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 2425
    invoke-static {}, Lcom/android/camera/DisplayDevice;->support128kBitrate()Z

    move-result v3

    const/4 v5, 0x1

    if-eq v3, v5, :cond_1a

    .line 2426
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const/16 v5, 0x7d00

    invoke-virtual {v3, v5}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 2427
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const/16 v5, 0x1f40

    invoke-virtual {v3, v5}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 2457
    :cond_d
    :goto_c
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->NeedToApplyAMR_NB()Z

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_21

    .line 2459
    const-string v3, "CameraThread"

    const-string v5, "AMR_NB"

    invoke-static {v3, v5}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 2460
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 2477
    :cond_e
    :goto_d
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 2497
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/android/camera/CameraThread;->mCaptureStartTime:J

    .line 2498
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/camera/CameraThread;->mLatestCaptureID:J

    const-wide/16 v25, 0x1

    add-long v5, v5, v25

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/android/camera/CameraThread;->mLatestCaptureID:J

    .line 2518
    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CameraThread;->mInfoListener:Lcom/android/camera/CameraThread$InfoListener;

    invoke-virtual {v3, v5}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 2519
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CameraThread;->mErrorListener:Lcom/android/camera/CameraThread$ErrorListener;

    invoke-virtual {v3, v5}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 2521
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->getSurfaceStateSyncRoot()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 2524
    :try_start_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->isSurfaceAvailable()Z

    move-result v3

    if-nez v3, :cond_23

    .line 2526
    const-string v3, "CameraThread"

    const-string v6, "startVideoRecording() - Preview surface is unavailable"

    invoke-static {v3, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 2527
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/camera/CameraThread;->mLatestCaptureID:J

    move-wide/from16 v25, v0

    const-wide/16 v27, 0x1

    sub-long v25, v25, v27

    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/camera/CameraThread;->mLatestCaptureID:J

    .line 2528
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->releaseMediaRecorder()V

    .line 2529
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->recordingFailedEvent:Lcom/android/camera/event/Event;

    new-instance v6, Lcom/android/camera/OneValueEventArgs;

    sget-object v25, Lcom/android/camera/RecordingFailedReason;->Unknown:Lcom/android/camera/RecordingFailedReason;

    move-object/from16 v0, v25

    invoke-direct {v6, v0}, Lcom/android/camera/OneValueEventArgs;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    invoke-virtual {v3, v0, v6}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 2530
    monitor-exit v5

    goto/16 :goto_0

    .line 2537
    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v3
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 2546
    :catch_0
    move-exception v12

    .line 2547
    .local v12, ex:Ljava/lang/Exception;
    const-string v3, "CameraThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "recorder start failed for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/CameraThread;->mRecordingVideoFilePath:Lcom/android/camera/io/DCFPath;

    invoke-virtual {v6}, Lcom/android/camera/io/DCFPath;->getFullPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 2548
    const-string v3, "CameraThread"

    const-string v5, "Camera app finished"

    invoke-static {v3, v5, v12}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2549
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/camera/CameraThread;->mLatestCaptureID:J

    const-wide/16 v25, 0x1

    sub-long v5, v5, v25

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/android/camera/CameraThread;->mLatestCaptureID:J

    .line 2550
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->releaseMediaRecorder()V

    .line 2551
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->finish()V

    goto/16 :goto_0

    .line 2245
    .end local v4           #dcimPath:Ljava/lang/String;
    .end local v7           #dirCounterRef:Lcom/android/camera/Reference;,"Lcom/android/camera/Reference<Ljava/lang/Integer;>;"
    .end local v8           #fileCounterRef:Lcom/android/camera/Reference;,"Lcom/android/camera/Reference<Ljava/lang/Integer;>;"
    .end local v10           #dirCounter:Lcom/android/camera/io/FileCounter;
    .end local v12           #ex:Ljava/lang/Exception;
    .end local v14           #fileCounter:Lcom/android/camera/io/FileCounter;
    .end local v15           #holder:Landroid/view/SurfaceHolder;
    .end local v16           #iValFR:I
    .end local v17           #isSlowMotion:Z
    .end local v18           #isStereoRecording:Z
    .end local v19           #keepSound:Z
    .end local v20           #limit:Lcom/android/camera/RecordLimitCheck;
    :cond_f
    sub-int v22, v24, v22

    goto/16 :goto_1

    .line 2268
    .restart local v15       #holder:Landroid/view/SurfaceHolder;
    :catch_1
    move-exception v12

    .line 2269
    .restart local v12       #ex:Ljava/lang/Exception;
    const-string v3, "CameraThread"

    const-string v5, "setPreviewDisplay failed, Camera app finished"

    invoke-static {v3, v5, v12}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2270
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->releaseMediaRecorder()V

    .line 2271
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->finish()V

    goto/16 :goto_0

    .line 2277
    .end local v12           #ex:Ljava/lang/Exception;
    .restart local v17       #isSlowMotion:Z
    :cond_10
    const/16 v18, 0x0

    goto/16 :goto_2

    .line 2281
    .restart local v18       #isStereoRecording:Z
    :cond_11
    const/16 v19, 0x0

    .restart local v19       #keepSound:Z
    goto/16 :goto_3

    .line 2295
    :cond_12
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->captureRotation:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/rotate/UIRotation;

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v3}, Lcom/android/camera/CameraThread;->setSoundEffect(ZLcom/android/camera/rotate/UIRotation;)V

    .line 2296
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->enableSoundEffect()V

    .line 2297
    const-string v3, "CameraThread"

    const-string v5, "startVideoRecording() - Disable stereo recording"

    invoke-static {v3, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 2308
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    goto/16 :goto_5

    .line 2312
    :cond_14
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportOnlyMP4VideoFormat()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->isMMSRecording()Z

    move-result v3

    if-nez v3, :cond_15

    .line 2313
    sget-object v3, Lcom/android/camera/io/FileFormat;->Mpeg4:Lcom/android/camera/io/FileFormat;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/CameraThread;->mRecordingVideoFileFormat:Lcom/android/camera/io/FileFormat;

    goto/16 :goto_6

    .line 2315
    :cond_15
    sget-object v3, Lcom/android/camera/io/FileFormat;->ThreeGPP:Lcom/android/camera/io/FileFormat;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/CameraThread;->mRecordingVideoFileFormat:Lcom/android/camera/io/FileFormat;

    goto/16 :goto_6

    .line 2370
    .restart local v4       #dcimPath:Ljava/lang/String;
    .restart local v7       #dirCounterRef:Lcom/android/camera/Reference;,"Lcom/android/camera/Reference<Ljava/lang/Integer;>;"
    .restart local v8       #fileCounterRef:Lcom/android/camera/Reference;,"Lcom/android/camera/Reference<Ljava/lang/Integer;>;"
    .restart local v10       #dirCounter:Lcom/android/camera/io/FileCounter;
    .restart local v14       #fileCounter:Lcom/android/camera/io/FileCounter;
    .restart local v20       #limit:Lcom/android/camera/RecordLimitCheck;
    :catch_2
    move-exception v13

    .line 2371
    .local v13, exception:Ljava/lang/Exception;
    const-string v3, "CameraThread"

    const-string v5, "mRecorder.setParameters() failed"

    invoke-static {v3, v5, v13}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .line 2378
    .end local v13           #exception:Ljava/lang/Exception;
    :catch_3
    move-exception v13

    .line 2379
    .local v13, exception:Ljava/lang/RuntimeException;
    const-string v3, "CameraThread"

    const-string v5, "mRecorder.setMaxDuration() failed - only use ui message to check time out"

    invoke-static {v3, v5}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 2380
    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/android/camera/RecordLimitCheck;->setUseTimeOut_API(Z)V

    goto/16 :goto_8

    .line 2384
    .end local v13           #exception:Ljava/lang/RuntimeException;
    :catch_4
    move-exception v13

    .line 2389
    .restart local v13       #exception:Ljava/lang/RuntimeException;
    const-string v3, "CameraThread"

    const-string v5, "mRecorder.setMaxFileSize() failed - use message to check file size"

    invoke-static {v3, v5}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 2390
    invoke-virtual/range {v20 .. v20}, Lcom/android/camera/RecordLimitCheck;->restartCheckFile()V

    goto/16 :goto_9

    .line 2393
    .end local v13           #exception:Ljava/lang/RuntimeException;
    :cond_16
    const-string v3, "CameraThread"

    const-string v5, "RecordLimitCheck is null !!!"

    invoke-static {v3, v5}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 2400
    .restart local v16       #iValFR:I
    :cond_17
    if-eqz v17, :cond_18

    .line 2401
    const/16 v16, 0x78

    goto/16 :goto_a

    .line 2403
    :cond_18
    const/16 v16, 0x1e

    goto/16 :goto_a

    .line 2418
    :cond_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    goto/16 :goto_b

    .line 2429
    :cond_1a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const v5, 0x1f400

    invoke-virtual {v3, v5}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 2430
    invoke-static {}, Lcom/android/camera/DisplayDevice;->needForce48KAudioSamplingRate()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 2431
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const v5, 0xbb80

    invoke-virtual {v3, v5}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 2434
    :goto_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/camera/HTCCamera;->setBackgroundDataSetting(Z)V

    goto/16 :goto_c

    .line 2433
    :cond_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const v5, 0xac44

    invoke-virtual {v3, v5}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    goto :goto_e

    .line 2438
    :cond_1c
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->NeedToApplyAMR_NB()Z

    move-result v3

    if-nez v3, :cond_d

    .line 2440
    invoke-static {}, Lcom/android/camera/MovieModeHandler;->getMovieModeHandler()Lcom/android/camera/MovieModeHandler;

    move-result-object v21

    .line 2441
    .local v21, mModeHdr:Lcom/android/camera/ModeHandler;
    if-eqz v21, :cond_1f

    .line 2443
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/CameraType;

    move-object/from16 v0, v21

    invoke-virtual {v0, v5, v3}, Lcom/android/camera/MovieModeHandler;->getCurrentResolutionSettingValue(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraType;)Lcom/android/camera/Resolution;

    move-result-object v23

    .line 2444
    .local v23, r:Lcom/android/camera/Resolution;
    sget-object v3, Lcom/android/camera/Resolution;->Video_QHD:Lcom/android/camera/Resolution;

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1d

    sget-object v3, Lcom/android/camera/Resolution;->Video_WVGA:Lcom/android/camera/Resolution;

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 2445
    :cond_1d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const v5, 0x17700

    invoke-virtual {v3, v5}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 2451
    .end local v23           #r:Lcom/android/camera/Resolution;
    :goto_f
    invoke-static {}, Lcom/android/camera/DisplayDevice;->needForce48KAudioSamplingRate()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 2452
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const v5, 0xbb80

    invoke-virtual {v3, v5}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    goto/16 :goto_c

    .line 2447
    .restart local v23       #r:Lcom/android/camera/Resolution;
    :cond_1e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const v5, 0xfa00

    invoke-virtual {v3, v5}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    goto :goto_f

    .line 2450
    .end local v23           #r:Lcom/android/camera/Resolution;
    :cond_1f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const v5, 0xfa00

    invoke-virtual {v3, v5}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    goto :goto_f

    .line 2454
    :cond_20
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const v5, 0xac44

    invoke-virtual {v3, v5}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    goto/16 :goto_c

    .line 2462
    .end local v21           #mModeHdr:Lcom/android/camera/ModeHandler;
    :cond_21
    const-string v3, "CameraThread"

    const-string v5, "AAC"

    invoke-static {v3, v5}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 2464
    if-eqz v18, :cond_22

    .line 2466
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    .line 2472
    :goto_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    goto/16 :goto_d

    .line 2470
    :cond_22
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    goto :goto_10

    .line 2478
    :catch_5
    move-exception v12

    .line 2479
    .restart local v12       #ex:Ljava/lang/Exception;
    const-string v3, "CameraThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "recorder prepare failed for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/CameraThread;->mRecordingVideoFilePath:Lcom/android/camera/io/DCFPath;

    invoke-virtual {v6}, Lcom/android/camera/io/DCFPath;->getFullPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 2480
    const-string v3, "CameraThread"

    const-string v5, "Camera app finished"

    invoke-static {v3, v5, v12}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2481
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->restoreBackgrounddataSetting()V

    .line 2482
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->releaseMediaRecorder()V

    .line 2483
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->finish()V

    goto/16 :goto_0

    .line 2534
    .end local v12           #ex:Ljava/lang/Exception;
    :cond_23
    :try_start_8
    const-string v3, "CameraThread"

    const-string v6, "startVideoRecording() - MediaRecorder.start() - Start"

    invoke-static {v3, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2535
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->start()V

    .line 2536
    const-string v3, "CameraThread"

    const-string v6, "startVideoRecording() - MediaRecorder.start() - End"

    invoke-static {v3, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2537
    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 2541
    :try_start_9
    const-string v3, "[ANALYTIC_com.android.camera]"

    const-string v5, "[record_video]complete"

    invoke-static {v3, v5}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 2544
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->prepareActionScreen()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 2555
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v3

    const-string v5, "counter_video"

    iget v6, v14, Lcom/android/camera/io/FileCounter;->mainCounter:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/android/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 2558
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->isRecording:Lcom/android/camera/property/Property;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2561
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isNvidiaPlatform()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 2565
    :try_start_a
    const-string v3, "CameraThread"

    const-string v5, "[NV] Acquire recording semaphore"

    invoke-static {v3, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2566
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->m_SemaphoreRecording:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_6

    .line 2574
    :cond_24
    :goto_11
    const-string v3, "CameraThread"

    const-string v5, "startVideoRecording() - end"

    invoke-static {v3, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2568
    :catch_6
    move-exception v11

    .line 2570
    .local v11, e:Ljava/lang/InterruptedException;
    const-string v3, "CameraThread"

    const-string v5, "[NV] Error acquiring recording semaphore"

    invoke-static {v3, v5, v11}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_11
.end method

.method public final stopPreview()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1973
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-ne v0, p0, :cond_1

    .line 1975
    const-string v0, "CameraThread"

    const-string v1, "stopPreview() - start sync"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1976
    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mPreviewing:Z

    if-eqz v0, :cond_0

    .line 1979
    iput-boolean v2, p0, Lcom/android/camera/CameraThread;->mCanSetPreviewCallback:Z

    .line 1980
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->clearPreviewCallback()V

    .line 1983
    iget-object v0, p0, Lcom/android/camera/CameraThread;->previewStoppingEvent:Lcom/android/camera/event/Event;

    sget-object v1, Lcom/android/camera/event/EventArgs;->empty:Lcom/android/camera/event/EventArgs;

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 1986
    const-string v0, "CameraThread"

    const-string v1, "before stopPreview"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1987
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 1988
    const-string v0, "CameraThread"

    const-string v1, "after stopPreview"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1990
    iget-object v0, p0, Lcom/android/camera/CameraThread;->previewStoppedEvent:Lcom/android/camera/event/Event;

    sget-object v1, Lcom/android/camera/event/EventArgs;->empty:Lcom/android/camera/event/EventArgs;

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 1991
    iput-boolean v2, p0, Lcom/android/camera/CameraThread;->mPreviewing:Z

    .line 1993
    :cond_0
    const-string v0, "CameraThread"

    const-string v1, "stopPreview() - end sync"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2009
    :goto_0
    return-void

    .line 1995
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    if-eqz v0, :cond_2

    .line 1997
    const-string v0, "CameraThread"

    const-string v1, "stopPreview() - start async"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1998
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    new-instance v1, Lcom/android/camera/CameraThread$6;

    invoke-direct {v1, p0}, Lcom/android/camera/CameraThread$6;-><init>(Lcom/android/camera/CameraThread;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraThread$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 2005
    const-string v0, "CameraThread"

    const-string v1, "stopPreview() - end async"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2008
    :cond_2
    const-string v0, "CameraThread"

    const-string v1, "Cannot stop preview because there is no handler for camera thread"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateImageRatio(ZLcom/android/camera/ModeHandler;Lcom/android/camera/CameraType;)Lcom/android/camera/Resolution;
    .locals 12
    .parameter "bWideScreen"
    .parameter "mModeHdr"
    .parameter "cameraType"

    .prologue
    .line 3301
    iget-object v9, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {p2, v9, p3}, Lcom/android/camera/ModeHandler;->getCurrentResolutionSettingValue(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraType;)Lcom/android/camera/Resolution;

    move-result-object v5

    .line 3302
    .local v5, r:Lcom/android/camera/Resolution;
    invoke-static {}, Lcom/android/camera/DisplayDevice;->captrueFullSize()Z

    move-result v9

    if-nez v9, :cond_1

    iget-object v9, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    sget-object v10, Lcom/android/camera/IntentManager$RequestName;->Contacts:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v9, v10}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    sget-object v10, Lcom/android/camera/IntentManager$RequestName;->Square:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v9, v10}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 3305
    :cond_0
    const-string v9, "CameraThread"

    const-string v10, "Contacts request - directly get CONTACT_STYLE resolution"

    invoke-static {v9, v10}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3368
    .end local v5           #r:Lcom/android/camera/Resolution;
    :goto_0
    return-object v5

    .line 3309
    .restart local v5       #r:Lcom/android/camera/Resolution;
    :cond_1
    invoke-virtual {v5}, Lcom/android/camera/Resolution;->isWideRatio()Z

    move-result v9

    if-eq p1, v9, :cond_2

    iget-object v9, p0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v9}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/camera/CameraType;

    invoke-virtual {v9}, Lcom/android/camera/CameraType;->is3DCamera()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 3310
    :cond_2
    const-string v9, "CameraThread"

    const-string v10, "not need to update image ratio"

    invoke-static {v9, v10}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3314
    :cond_3
    const-string v9, "CameraThread"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateImageRatio - Current Resolution: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3315
    iget-object v9, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {p2, v9, p3}, Lcom/android/camera/ModeHandler;->getResolutionMenuItem(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraType;)Ljava/util/LinkedList;

    move-result-object v7

    .line 3316
    .local v7, resoItems:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/camera/ResolutionMenuItem;>;"
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 3317
    .local v1, WideItems:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/camera/ResolutionMenuItem;>;"
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 3319
    .local v0, OriginalItems:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/camera/ResolutionMenuItem;>;"
    new-instance v8, Ljava/util/TreeSet;

    invoke-direct {v8}, Ljava/util/TreeSet;-><init>()V

    .line 3320
    .local v8, sortedSet:Ljava/util/TreeSet;,"Ljava/util/TreeSet<Lcom/android/camera/ResolutionMenuItem;>;"
    invoke-virtual {v8, v7}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 3321
    invoke-virtual {v8}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 3323
    .local v3, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/camera/ResolutionMenuItem;>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 3324
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/ResolutionMenuItem;

    .line 3325
    .local v6, re:Lcom/android/camera/ResolutionMenuItem;
    iget-object v9, v6, Lcom/android/camera/ResolutionMenuItem;->resolution:Lcom/android/camera/Resolution;

    invoke-virtual {v9}, Lcom/android/camera/Resolution;->isWideRatio()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 3326
    invoke-virtual {v1, v6}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_1

    .line 3328
    :cond_4
    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_1

    .line 3331
    .end local v6           #re:Lcom/android/camera/ResolutionMenuItem;
    :cond_5
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v9

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v10

    if-eq v9, v10, :cond_6

    .line 3332
    const-string v9, "CameraThread"

    const-string v10, "Note: the number of resolution pairs for image ratio are not equal"

    invoke-static {v9, v10}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 3334
    :cond_6
    const/4 v4, 0x0

    .line 3335
    .local v4, new_resolution:Lcom/android/camera/Resolution;
    if-eqz p1, :cond_8

    .line 3336
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v9

    if-ge v2, v9, :cond_a

    .line 3337
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/camera/ResolutionMenuItem;

    iget-object v9, v9, Lcom/android/camera/ResolutionMenuItem;->resolution:Lcom/android/camera/Resolution;

    invoke-virtual {v5, v9}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 3338
    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/camera/ResolutionMenuItem;

    iget-object v4, v9, Lcom/android/camera/ResolutionMenuItem;->resolution:Lcom/android/camera/Resolution;

    .line 3336
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 3342
    .end local v2           #i:I
    :cond_8
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_3
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v9

    if-ge v2, v9, :cond_a

    .line 3343
    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/camera/ResolutionMenuItem;

    iget-object v9, v9, Lcom/android/camera/ResolutionMenuItem;->resolution:Lcom/android/camera/Resolution;

    invoke-virtual {v5, v9}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 3344
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/camera/ResolutionMenuItem;

    iget-object v4, v9, Lcom/android/camera/ResolutionMenuItem;->resolution:Lcom/android/camera/Resolution;

    .line 3342
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 3349
    :cond_a
    if-nez v4, :cond_c

    .line 3351
    const-string v9, "CameraThread"

    const-string v10, "update image ratio is fail"

    invoke-static {v9, v10}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 3366
    :cond_b
    :goto_4
    const-string v9, "CameraThread"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateImageRatio - New Resolution: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v4

    .line 3368
    goto/16 :goto_0

    .line 3357
    :cond_c
    iget-object v9, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    sget-object v10, Lcom/android/camera/IntentManager$RequestName;->Mms:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v9, v10}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_b

    .line 3359
    iget-object v9, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v10, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {p2, v10, p3}, Lcom/android/camera/ModeHandler;->getResolutionSettingString(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraType;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4}, Lcom/android/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_4
.end method

.method public final waitForCheckRecording()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 5259
    const-string v0, "CameraThread"

    const-string v1, "[NV] waitForCheckRecording()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 5260
    iget-object v0, p0, Lcom/android/camera/CameraThread;->m_SemaphoreRecording:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 5261
    return-void
.end method
