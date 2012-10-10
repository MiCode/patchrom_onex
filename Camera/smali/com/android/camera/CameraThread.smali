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
        Lcom/android/camera/CameraThread$22;,
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

.field private static final MSG_INVOKE_ASYNC:I = 0x276a

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

.field public isAutoFocusLocked:Lcom/android/camera/property/Property;
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

.field private mIsAecAwbLocked:Z

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

.field private mStartCountTime:J

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

    .line 381
    sput-boolean v0, Lcom/android/camera/CameraThread;->mEnableTouchAEC:Z

    .line 383
    sput-boolean v0, Lcom/android/camera/CameraThread;->mEnableCAF:Z

    .line 443
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

    .line 2669
    const-string v0, "Camera Thread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 154
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    .line 227
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v4}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/CameraThread;->m_SemaphoreRecording:Ljava/util/concurrent/Semaphore;

    .line 376
    iput-boolean v4, p0, Lcom/android/camera/CameraThread;->mIsFirstTimeToStartPreview:Z

    .line 379
    iput-boolean v4, p0, Lcom/android/camera/CameraThread;->mIsFirstFrameCached:Z

    .line 385
    sget-object v0, Lcom/android/camera/AutoFocusMode;->Sensor:Lcom/android/camera/AutoFocusMode;

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mLatestAutoFocusMode:Lcom/android/camera/AutoFocusMode;

    .line 387
    iput-object v2, p0, Lcom/android/camera/CameraThread;->m_LatestFocusAreas:[Landroid/graphics/RectF;

    .line 389
    iput-boolean v3, p0, Lcom/android/camera/CameraThread;->mPreviewing:Z

    .line 391
    iput-boolean v3, p0, Lcom/android/camera/CameraThread;->mIsOnlySetResolution:Z

    .line 393
    iput-object v2, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    .line 400
    iput-boolean v3, p0, Lcom/android/camera/CameraThread;->mTaking_picture:Z

    .line 407
    iput-boolean v4, p0, Lcom/android/camera/CameraThread;->mCanStartPreview:Z

    .line 423
    const/16 v0, 0x55

    iput v0, p0, Lcom/android/camera/CameraThread;->mJPEGQuality:I

    .line 427
    new-instance v0, Lcom/android/camera/MediaInfo;

    invoke-direct {v0}, Lcom/android/camera/MediaInfo;-><init>()V

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mLastMediaInfo:Lcom/android/camera/MediaInfo;

    .line 430
    iput-object v2, p0, Lcom/android/camera/CameraThread;->m3DFileFormat:Lcom/android/camera/io/FileFormat;

    .line 432
    iput-object v2, p0, Lcom/android/camera/CameraThread;->mCurrentColorEffect:Ljava/lang/String;

    .line 434
    const-wide/32 v0, 0x100000

    iput-wide v0, p0, Lcom/android/camera/CameraThread;->MINIMUN_CAMERA_REMAIN_SPACE:J

    .line 439
    iput-object v2, p0, Lcom/android/camera/CameraThread;->mJpegData:[B

    .line 463
    iput v3, p0, Lcom/android/camera/CameraThread;->mCaptureState:I

    .line 466
    iput v4, p0, Lcom/android/camera/CameraThread;->m3DButtonStatus:I

    .line 467
    iput v4, p0, Lcom/android/camera/CameraThread;->m3DPreviewStatus:I

    .line 470
    iput-boolean v3, p0, Lcom/android/camera/CameraThread;->mRecPowerWarning:Z

    .line 473
    iput-boolean v3, p0, Lcom/android/camera/CameraThread;->mPlaySoundFromCameraService:Z

    .line 475
    iput-boolean v3, p0, Lcom/android/camera/CameraThread;->canTakePicAfterFocus:Z

    .line 478
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/CameraThread;->mStartCountTime:J

    .line 571
    new-instance v0, Lcom/android/camera/CameraThread$1;

    invoke-direct {v0, p0}, Lcom/android/camera/CameraThread$1;-><init>(Lcom/android/camera/CameraThread;)V

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    .line 578
    new-instance v0, Lcom/android/camera/CameraThread$2;

    invoke-direct {v0, p0}, Lcom/android/camera/CameraThread$2;-><init>(Lcom/android/camera/CameraThread;)V

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

    .line 585
    new-instance v0, Lcom/android/camera/CameraThread$3;

    invoke-direct {v0, p0}, Lcom/android/camera/CameraThread$3;-><init>(Lcom/android/camera/CameraThread;)V

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mRawCallback:Landroid/hardware/Camera$PictureCallback;

    .line 592
    new-instance v0, Lcom/android/camera/CameraThread$4;

    invoke-direct {v0, p0}, Lcom/android/camera/CameraThread$4;-><init>(Lcom/android/camera/CameraThread;)V

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    .line 2664
    iput-object v2, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    .line 2666
    iput-object v2, p0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    .line 2680
    iput-object v2, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    .line 2681
    iput-object v2, p0, Lcom/android/camera/CameraThread;->mHtcWrapCameraDevice:Lcom/htc/wrap/android/hardware/HtcWrapCamera;

    .line 2685
    iput-object v2, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    .line 2687
    iput-object v2, p0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    .line 3666
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mSyncObject:Ljava/lang/Object;

    .line 3788
    new-instance v0, Lcom/android/camera/CameraThread$ErrorCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/CameraThread$ErrorCallback;-><init>(Lcom/android/camera/CameraThread;Lcom/android/camera/CameraThread$1;)V

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mErrorCallback:Lcom/android/camera/CameraThread$ErrorCallback;

    .line 3790
    new-instance v0, Lcom/android/camera/CameraThread$InfoListener;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/CameraThread$InfoListener;-><init>(Lcom/android/camera/CameraThread;Lcom/android/camera/CameraThread$1;)V

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mInfoListener:Lcom/android/camera/CameraThread$InfoListener;

    .line 3792
    new-instance v0, Lcom/android/camera/CameraThread$ErrorListener;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/CameraThread$ErrorListener;-><init>(Lcom/android/camera/CameraThread;Lcom/android/camera/CameraThread$1;)V

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mErrorListener:Lcom/android/camera/CameraThread$ErrorListener;

    .line 3794
    iput-boolean v3, p0, Lcom/android/camera/CameraThread;->mbCanTakePicture:Z

    .line 4714
    new-instance v0, Lcom/android/camera/CameraThread$11;

    invoke-direct {v0, p0}, Lcom/android/camera/CameraThread$11;-><init>(Lcom/android/camera/CameraThread;)V

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 2670
    check-cast p1, Lcom/android/camera/HTCCamera;

    .end local p1
    iput-object p1, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    .line 2671
    iput-object p2, p0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    .line 2672
    if-eqz p3, :cond_0

    .end local p3
    :goto_0
    iput-object p3, p0, Lcom/android/camera/CameraThread;->mInitialMode:Lcom/android/camera/CameraMode;

    .line 2673
    return-void

    .line 2672
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

    .line 2927
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    sget-object v5, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v2, v5, :cond_0

    move v2, v3

    .line 2937
    :goto_0
    return v2

    .line 2930
    :cond_0
    invoke-static {}, Lcom/android/camera/MovieModeHandler;->getMovieModeHandler()Lcom/android/camera/MovieModeHandler;

    move-result-object v0

    .line 2931
    .local v0, mModeHdr:Lcom/android/camera/ModeHandler;
    iget-object v5, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v2, p0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/CameraType;

    invoke-virtual {v0, v5, v2}, Lcom/android/camera/MovieModeHandler;->getCurrentResolutionSettingValue(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraType;)Lcom/android/camera/Resolution;

    move-result-object v1

    .line 2932
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

    .line 2935
    goto :goto_0

    :cond_2
    move v2, v3

    .line 2937
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/camera/CameraThread;Lcom/android/camera/io/StorageState;ZJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/CameraThread;->checkStorageStateInternal(Lcom/android/camera/io/StorageState;ZJ)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/CameraThread;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mbCanTakePicture:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/camera/CameraThread;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/android/camera/CameraThread;->mIsOnlySetResolution:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/camera/CameraThread;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/android/camera/CameraThread;->mbCanTakePicture:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/camera/CameraThread;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mCanStartPreview:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/camera/CameraThread;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/android/camera/CameraThread;->mCaptureState:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/camera/CameraThread;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput p1, p0, Lcom/android/camera/CameraThread;->mCaptureState:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/camera/CameraThread;Lcom/android/camera/CameraType;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/android/camera/CameraThread;->startPreviewInternal(Lcom/android/camera/CameraType;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/camera/CameraThread;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->startPreviewDirectlyInternal()I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/camera/CameraThread;Lcom/android/camera/CameraType;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/camera/CameraThread;->openCameraInternal(Lcom/android/camera/CameraType;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/camera/CameraThread;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->checkCanTakePicture()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/camera/CameraThread;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mTaking_picture:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/android/camera/CameraThread;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/android/camera/CameraThread;->mTaking_picture:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/camera/CameraThread;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->checkInternalDataSpace()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/camera/CameraThread;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->checkImageQueueState()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/CameraThread;)Lcom/android/camera/HTCCamera;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/camera/CameraThread;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->capture()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/camera/CameraThread;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->canTakePicAfterFocus:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/android/camera/CameraThread;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/android/camera/CameraThread;->canTakePicAfterFocus:Z

    return p1
.end method

.method static synthetic access$2206(Lcom/android/camera/CameraThread;)J
    .locals 4
    .parameter "x0"

    .prologue
    .line 64
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
    .line 64
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/camera/CameraThread;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mPlaySoundFromCameraService:Z

    return v0
.end method

.method static synthetic access$2500(Lcom/android/camera/CameraThread;)Lcom/android/camera/IAudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mAudioManager:Lcom/android/camera/IAudioManager;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/camera/CameraThread;)Lcom/android/camera/Handle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mRecordingStartSoundHandle:Lcom/android/camera/Handle;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/android/camera/CameraThread;Lcom/android/camera/Handle;)Lcom/android/camera/Handle;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/camera/CameraThread;->mRecordingStartSoundHandle:Lcom/android/camera/Handle;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/android/camera/CameraThread;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->checkCanTakeRecorder()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/camera/CameraThread;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/android/camera/CameraThread;->mStartCountTime:J

    return-wide v0
.end method

.method static synthetic access$2900(Lcom/android/camera/CameraThread;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->stopVideoRecording()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/CameraThread;)Landroid/hardware/Camera;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/android/camera/CameraThread;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/android/camera/CameraThread;->mPreviewing:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/camera/CameraThread;)Lcom/android/camera/Handle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mRecordingStopSoundHandle:Lcom/android/camera/Handle;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/android/camera/CameraThread;Lcom/android/camera/Handle;)Lcom/android/camera/Handle;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/camera/CameraThread;->mRecordingStopSoundHandle:Lcom/android/camera/Handle;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/android/camera/CameraThread;)Lcom/android/camera/CameraController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/camera/CameraThread;Lcom/android/camera/FlashMode;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/camera/CameraThread;->setFlashModeInternal(Lcom/android/camera/FlashMode;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/camera/CameraThread;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->loadSettings()V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/camera/CameraThread;JJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/CameraThread;->stopVideoRecordingDelay(JJ)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/camera/CameraThread;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/camera/CameraThread;->resetZoomInternal(Z)V

    return-void
.end method

.method static synthetic access$402(Lcom/android/camera/CameraThread;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput p1, p0, Lcom/android/camera/CameraThread;->Camera_Preview_Width:I

    return p1
.end method

.method static synthetic access$4100(Lcom/android/camera/CameraThread;[B)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/camera/CameraThread;->onPreviewFrameRetrieved([B)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/camera/CameraThread;Lcom/android/camera/io/StorageSlot;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/camera/CameraThread;->changeStorageSlotInternal(Lcom/android/camera/io/StorageSlot;)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/camera/CameraThread;Lcom/android/camera/CameraMode;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/camera/CameraThread;->changeModeInternal(Lcom/android/camera/CameraMode;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/camera/CameraThread;Lcom/android/camera/AutoFocusEventArgs;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/camera/CameraThread;->autoFocusInternal(Lcom/android/camera/AutoFocusEventArgs;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/camera/CameraThread;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->cancelAutoFocusInternal()V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/camera/CameraThread;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/camera/CameraThread;->setFirstFrameCacheStateInternal(Z)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/camera/CameraThread;Lcom/android/camera/rotate/UIRotation;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/camera/CameraThread;->setCaptureRotationInternal(Lcom/android/camera/rotate/UIRotation;)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/camera/CameraThread;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/android/camera/CameraThread;->setAecAwbLockInternal(ZZ)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/camera/CameraThread;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/camera/CameraThread;->setAutoFocusLockInternal(Z)V

    return-void
.end method

.method static synthetic access$502(Lcom/android/camera/CameraThread;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput p1, p0, Lcom/android/camera/CameraThread;->Camera_Preview_Height:I

    return p1
.end method

.method static synthetic access$602(Lcom/android/camera/CameraThread;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput p1, p0, Lcom/android/camera/CameraThread;->Camera_Mode_Width:I

    return p1
.end method

.method static synthetic access$702(Lcom/android/camera/CameraThread;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput p1, p0, Lcom/android/camera/CameraThread;->Camera_Mode_Height:I

    return p1
.end method

.method static synthetic access$802(Lcom/android/camera/CameraThread;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput p1, p0, Lcom/android/camera/CameraThread;->Video_Mode_Width:I

    return p1
.end method

.method static synthetic access$902(Lcom/android/camera/CameraThread;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput p1, p0, Lcom/android/camera/CameraThread;->Video_Mode_Height:I

    return p1
.end method

.method private autoFocusInternal(Lcom/android/camera/AutoFocusEventArgs;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 5092
    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mPreviewing:Z

    if-nez v0, :cond_0

    .line 5094
    const-string v0, "CameraThread"

    const-string v1, "autoFocus() - mPreviewing = false"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 5097
    :cond_0
    invoke-static {}, Lcom/android/camera/DisplayDevice;->hasAutoFocus()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5099
    const-string v0, "CameraThread"

    const-string v1, "autoFocus() - DisplayDevice.hasAutoFocus() = false"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 5113
    :goto_0
    return-void

    .line 5104
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CameraThread;->requestAutoFocusEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 5105
    invoke-virtual {p1}, Lcom/android/camera/AutoFocusEventArgs;->isHandled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5107
    const-string v0, "CameraThread"

    const-string v1, "autoFocus() - No handler for auto-focus"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5112
    :cond_2
    iget-object v0, p1, Lcom/android/camera/AutoFocusEventArgs;->focusMode:Lcom/android/camera/AutoFocusMode;

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mLatestAutoFocusMode:Lcom/android/camera/AutoFocusMode;

    goto :goto_0
.end method

.method private cancelAutoFocusInternal()V
    .locals 2

    .prologue
    .line 5137
    iget-boolean v1, p0, Lcom/android/camera/CameraThread;->mPreviewing:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->hasAutoFocus()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5143
    :cond_0
    :goto_0
    return-void

    .line 5141
    :cond_1
    new-instance v0, Lcom/android/camera/event/SingleHandlerEventArgs;

    invoke-direct {v0}, Lcom/android/camera/event/SingleHandlerEventArgs;-><init>()V

    .line 5142
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

    .line 3464
    const-string v6, "CameraThread"

    const-string v7, "capture()"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3467
    const-string v6, "CameraThread"

    const-string v7, "start to capture photo"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3470
    iget-object v6, p0, Lcom/android/camera/CameraThread;->mShutterSoundHandle:Lcom/android/camera/Handle;

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/camera/CameraThread;->mAudioManager:Lcom/android/camera/IAudioManager;

    if-eqz v6, :cond_0

    .line 3471
    iget-object v6, p0, Lcom/android/camera/CameraThread;->mAudioManager:Lcom/android/camera/IAudioManager;

    const v7, 0x7f060004

    invoke-interface {v6, v7}, Lcom/android/camera/IAudioManager;->loadSoundToMemory(I)Lcom/android/camera/Handle;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/CameraThread;->mShutterSoundHandle:Lcom/android/camera/Handle;

    .line 3475
    :cond_0
    iget-boolean v6, p0, Lcom/android/camera/CameraThread;->mPreviewing:Z

    if-nez v6, :cond_4

    .line 3477
    const-string v6, "CameraThread"

    const-string v7, "Start preview to take picture"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3480
    :try_start_0
    iget-object v6, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v6}, Landroid/hardware/Camera;->startPreview()V

    .line 3481
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/camera/CameraThread;->mPreviewing:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3482
    const/4 v5, 0x1

    .line 3495
    .local v5, startPreviewDirectly:Z
    :goto_0
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportCAF()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3496
    iget-boolean v6, p0, Lcom/android/camera/CameraThread;->mIsFirstFrameCached:Z

    if-nez v6, :cond_1

    if-eqz v5, :cond_5

    .line 3497
    :cond_1
    iput-boolean v9, p0, Lcom/android/camera/CameraThread;->canTakePicAfterFocus:Z

    .line 3511
    :cond_2
    iput-boolean v9, p0, Lcom/android/camera/CameraThread;->mPreviewing:Z

    .line 3514
    iget-object v6, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    if-nez v6, :cond_7

    .line 3515
    const-string v6, "CameraThread"

    const-string v7, "take picture , mCamController is null, return"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3516
    iput v10, p0, Lcom/android/camera/CameraThread;->mCaptureState:I

    .line 3519
    iget-object v6, p0, Lcom/android/camera/CameraThread;->takingPictureFailedEvent:Lcom/android/camera/event/Event;

    new-instance v7, Lcom/android/camera/OneValueEventArgs;

    sget-object v8, Lcom/android/camera/TakingPictureFailedReason;->Unknown:Lcom/android/camera/TakingPictureFailedReason;

    invoke-direct {v7, v8}, Lcom/android/camera/OneValueEventArgs;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v6, p0, v7}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 3626
    .end local v5           #startPreviewDirectly:Z
    :cond_3
    :goto_1
    return-void

    .line 3484
    :catch_0
    move-exception v3

    .line 3486
    .local v3, ex:Ljava/lang/Throwable;
    iput v10, p0, Lcom/android/camera/CameraThread;->mCaptureState:I

    .line 3487
    const-string v6, "CameraThread"

    const-string v7, "Cannot start preview for taking picture"

    invoke-static {v6, v7, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3488
    iget-object v6, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v6}, Lcom/android/camera/HTCCamera;->finish()V

    goto :goto_1

    .line 3493
    .end local v3           #ex:Ljava/lang/Throwable;
    :cond_4
    const/4 v5, 0x0

    .restart local v5       #startPreviewDirectly:Z
    goto :goto_0

    .line 3498
    :cond_5
    iget-boolean v6, p0, Lcom/android/camera/CameraThread;->canTakePicAfterFocus:Z

    if-nez v6, :cond_2

    .line 3499
    iput-boolean v8, p0, Lcom/android/camera/CameraThread;->canTakePicAfterFocus:Z

    .line 3500
    iget-object v6, p0, Lcom/android/camera/CameraThread;->m_LatestFocusAreas:[Landroid/graphics/RectF;

    if-eqz v6, :cond_6

    .line 3503
    iget-object v6, p0, Lcom/android/camera/CameraThread;->m_LatestFocusAreas:[Landroid/graphics/RectF;

    sget-object v7, Lcom/android/camera/AutoFocusMode;->BeforeCapture:Lcom/android/camera/AutoFocusMode;

    invoke-virtual {p0, v6, v7}, Lcom/android/camera/CameraThread;->autoFocus([Landroid/graphics/RectF;Lcom/android/camera/AutoFocusMode;)V

    goto :goto_1

    .line 3506
    :cond_6
    new-array v6, v8, [Landroid/graphics/PointF;

    new-instance v7, Landroid/graphics/PointF;

    invoke-direct {v7, v11, v11}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v7, v6, v9

    sget-object v7, Lcom/android/camera/AutoFocusMode;->BeforeCapture:Lcom/android/camera/AutoFocusMode;

    invoke-virtual {p0, v6, v7}, Lcom/android/camera/CameraThread;->autoFocus([Landroid/graphics/PointF;Lcom/android/camera/AutoFocusMode;)V

    goto :goto_1

    .line 3525
    :cond_7
    iget-object v6, p0, Lcom/android/camera/CameraThread;->isRecording:Lcom/android/camera/property/Property;

    invoke-virtual {v6}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 3526
    const-string v6, "CameraThread"

    const-string v7, "Taking picture during video recording"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3529
    :cond_8
    iget-object v6, p0, Lcom/android/camera/CameraThread;->isTakingPicture:Lcom/android/camera/property/Property;

    iget-object v7, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3531
    iget-object v6, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    iget v7, p0, Lcom/android/camera/CameraThread;->mJPEGQuality:I

    invoke-virtual {v6, v7}, Lcom/android/camera/CameraController;->setJpegQuality(I)V

    .line 3533
    iget-object v6, p0, Lcom/android/camera/CameraThread;->captureRotation:Lcom/android/camera/property/Property;

    invoke-virtual {v6}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/rotate/UIRotation;

    iget v4, v6, Lcom/android/camera/rotate/UIRotation;->deviceOrientation:I

    .line 3535
    .local v4, orientation:I
    iget-object v6, p0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v6}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/CameraType;

    invoke-virtual {v6}, Lcom/android/camera/CameraType;->isFrontCamera()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 3536
    iget-object v6, p0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v6}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/CameraType;

    iget v6, v6, Lcom/android/camera/CameraType;->orientation:I

    sub-int/2addr v6, v4

    add-int/lit16 v6, v6, 0x168

    rem-int/lit16 v4, v6, 0x168

    .line 3541
    :goto_2
    iget-object v6, p0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v6}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/CameraType;

    invoke-virtual {v6}, Lcom/android/camera/CameraType;->is3DCamera()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 3543
    const-string v6, "CameraThread"

    const-string v7, "set rotation landscape while 3D photo mode"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3544
    const/4 v4, 0x0

    .line 3547
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

    .line 3549
    iget-object v6, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v6, v4}, Lcom/android/camera/CameraController;->setRotation(I)V

    .line 3552
    invoke-static {}, Lcom/android/camera/LocationHandler;->getLocation()Landroid/location/Location;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/CameraThread;->mLocation:Landroid/location/Location;

    .line 3553
    iget-object v6, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    iget-object v7, p0, Lcom/android/camera/CameraThread;->mLocation:Landroid/location/Location;

    invoke-virtual {v6, v7}, Lcom/android/camera/CameraController;->setLocation(Landroid/location/Location;)V

    .line 3555
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->isAddTimeStamp()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 3556
    iget-object v6, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v7, "img-timestamp"

    const-string v8, "1"

    invoke-virtual {v6, v7, v8}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 3557
    const-string v6, "CameraThread"

    const-string v7, "add time stamp on photo"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3564
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

    .line 3566
    iget-object v6, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v7, "postproc-enable-imboost"

    const-string v8, "on"

    invoke-virtual {v6, v7, v8}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 3567
    iget-object v6, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v7, "postproc-enable-denoise"

    const-string v8, "on"

    invoke-virtual {v6, v7, v8}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 3576
    :goto_4
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 3577
    .local v0, currentDate:Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy:MM:dd HH:mm:ss"

    invoke-direct {v1, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 3578
    .local v1, dateFormat:Ljava/text/DateFormat;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/camera/CameraThread;->mPhotoTakenTime:J

    .line 3579
    iget-object v6, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v7, "exif-datetime"

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 3582
    iget-object v7, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v8, "review_duration"

    iget-object v6, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v6}, Lcom/android/camera/HTCCamera;->needsActionScreen()Z

    move-result v6

    if-eqz v6, :cond_f

    const-string v6, "on"

    :goto_5
    invoke-virtual {v7, v8, v6}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 3585
    iget-object v6, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v6}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    .line 3588
    const-string v6, "CameraThread"

    const-string v7, "Camera - takePicture"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3589
    sget-object v6, Lcom/android/camera/TIME;->ReadyTakePicture:Lcom/android/camera/TIME$Value;

    invoke-virtual {v6}, Lcom/android/camera/TIME$Value;->End()V

    .line 3593
    iput-boolean v9, p0, Lcom/android/camera/CameraThread;->mCanSetPreviewCallback:Z

    .line 3594
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->clearPreviewCallback()V

    .line 3597
    iput-boolean v9, p0, Lcom/android/camera/CameraThread;->mCanStartPreview:Z

    .line 3598
    iget-object v6, p0, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    sget-object v7, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    invoke-virtual {v6, v7}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 3599
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/camera/CameraThread;->mCaptureStartTime:J

    .line 3600
    :cond_a
    iget-wide v6, p0, Lcom/android/camera/CameraThread;->mLatestCaptureID:J

    add-long/2addr v6, v12

    iput-wide v6, p0, Lcom/android/camera/CameraThread;->mLatestCaptureID:J

    .line 3604
    :try_start_1
    new-instance v2, Lcom/android/camera/RequestTakingPictureEventArgs;

    iget-object v6, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v7, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-direct {v2, v6, v7}, Lcom/android/camera/RequestTakingPictureEventArgs;-><init>(Landroid/hardware/Camera;Lcom/android/camera/CameraController;)V

    .line 3605
    .local v2, e:Lcom/android/camera/RequestTakingPictureEventArgs;
    iget-object v6, p0, Lcom/android/camera/CameraThread;->requestTakingPictureEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v6, p0, v2}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 3606
    invoke-virtual {v2}, Lcom/android/camera/RequestTakingPictureEventArgs;->isHandled()Z

    move-result v6

    if-nez v6, :cond_b

    .line 3607
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->takePicture()V

    .line 3610
    :cond_b
    iget-object v6, p0, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    sget-object v7, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    invoke-virtual {v6, v7}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3611
    iget-object v6, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v6}, Lcom/android/camera/HTCCamera;->prepareActionScreen()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 3613
    .end local v2           #e:Lcom/android/camera/RequestTakingPictureEventArgs;
    :catch_1
    move-exception v3

    .line 3614
    .local v3, ex:Ljava/lang/Exception;
    iput v10, p0, Lcom/android/camera/CameraThread;->mCaptureState:I

    .line 3615
    const-string v6, "CameraThread"

    const-string v7, "take picture exception - mCaptureState = CAPTURE_STATE_ERROR"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3616
    const-string v6, "CameraThread"

    const-string v7, "take picture exception. Camera app finished"

    invoke-static {v6, v7, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3617
    iget-object v6, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v6}, Lcom/android/camera/HTCCamera;->finish()V

    .line 3620
    iget-object v6, p0, Lcom/android/camera/CameraThread;->isTakingPicture:Lcom/android/camera/property/Property;

    iget-object v7, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3621
    iget-wide v6, p0, Lcom/android/camera/CameraThread;->mLatestCaptureID:J

    sub-long/2addr v6, v12

    iput-wide v6, p0, Lcom/android/camera/CameraThread;->mLatestCaptureID:J

    .line 3624
    iget-object v6, p0, Lcom/android/camera/CameraThread;->takingPictureFailedEvent:Lcom/android/camera/event/Event;

    new-instance v7, Lcom/android/camera/OneValueEventArgs;

    sget-object v8, Lcom/android/camera/TakingPictureFailedReason;->Unknown:Lcom/android/camera/TakingPictureFailedReason;

    invoke-direct {v7, v8}, Lcom/android/camera/OneValueEventArgs;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v6, p0, v7}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    goto/16 :goto_1

    .line 3538
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

    .line 3559
    :cond_d
    iget-object v6, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v7, "img-timestamp"

    const-string v8, "0"

    invoke-virtual {v6, v7, v8}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 3560
    const-string v6, "CameraThread"

    const-string v7, "not add time stamp on photo"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3571
    :cond_e
    iget-object v6, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v7, "postproc-enable-imboost"

    const-string v8, "off"

    invoke-virtual {v6, v7, v8}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 3572
    iget-object v6, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v7, "postproc-enable-denoise"

    const-string v8, "off"

    invoke-virtual {v6, v7, v8}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 3582
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
    .line 4980
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

    .line 4983
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mPendingMode:Lcom/android/camera/CameraMode;

    .line 4986
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 4988
    const-string v0, "CameraThread"

    const-string v1, "changeMode() - Change to same mode"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 5015
    :goto_0
    return-void

    .line 4993
    :cond_0
    sget-object v0, Lcom/android/camera/CameraThread$22;->$SwitchMap$com$android$camera$CameraMode:[I

    invoke-virtual {p1}, Lcom/android/camera/CameraMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 5008
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 5011
    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mPreviewing:Z

    if-eqz v0, :cond_2

    .line 5012
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraThread;->restartPreview(I)V

    .line 5014
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

    .line 4996
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/CameraThread;->isRecording:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4997
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->stopVideoRecording()V

    goto :goto_1

    .line 5000
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/CameraThread;->isTakingPicture:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5002
    const-string v0, "CameraThread"

    const-string v1, "changeMode() - Waiting for taking picture"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 5003
    iput-object p1, p0, Lcom/android/camera/CameraThread;->mPendingMode:Lcom/android/camera/CameraMode;

    goto :goto_0

    .line 4993
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
    .line 4870
    if-nez p1, :cond_0

    .line 4888
    :goto_0
    return-void

    .line 4874
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraThread;->isTakingPicture:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4876
    const-string v0, "CameraThread"

    const-string v1, "changeStorageSlotInternal() - taking picture"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4879
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CameraThread;->isRecording:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4881
    const-string v0, "CameraThread"

    const-string v1, "changeStorageSlotInternal() - recording"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4886
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

    .line 4887
    iget-object v0, p0, Lcom/android/camera/CameraThread;->storageSlot:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private checkCanTakePicture()V
    .locals 3

    .prologue
    .line 3798
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/CameraThread;->mbCanTakePicture:Z

    .line 3799
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mFinalStorageCheckThread:Lcom/android/camera/CameraThread$FinalStorageCheckThread;

    if-eqz v0, :cond_0

    .line 3800
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mFinalStorageCheckThread:Lcom/android/camera/CameraThread$FinalStorageCheckThread;

    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->getPendingFileSize()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraThread$FinalStorageCheckThread;->checkForTakingPicture(J)V

    .line 3803
    :goto_0
    return-void

    .line 3802
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/CameraThread;->mbCanTakePicture:Z

    goto :goto_0
.end method

.method private checkCanTakeRecorder()V
    .locals 3

    .prologue
    .line 3807
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/CameraThread;->mbCanTakePicture:Z

    .line 3808
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mFinalStorageCheckThread:Lcom/android/camera/CameraThread$FinalStorageCheckThread;

    if-eqz v0, :cond_0

    .line 3809
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mFinalStorageCheckThread:Lcom/android/camera/CameraThread$FinalStorageCheckThread;

    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->getPendingFileSize()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraThread$FinalStorageCheckThread;->checkForRecording(J)V

    .line 3812
    :goto_0
    return-void

    .line 3811
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/CameraThread;->mbCanTakePicture:Z

    goto :goto_0
.end method

.method private checkImageQueueState()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 3442
    iget-boolean v5, p0, Lcom/android/camera/CameraThread;->mbCanTakePicture:Z

    if-nez v5, :cond_1

    .line 3460
    :cond_0
    :goto_0
    return-void

    .line 3446
    :cond_1
    new-instance v0, Lcom/android/camera/QueryEventArgs;

    invoke-direct {v0}, Lcom/android/camera/QueryEventArgs;-><init>()V

    .line 3447
    .local v0, e:Lcom/android/camera/QueryEventArgs;,"Lcom/android/camera/QueryEventArgs<Ljava/lang/Long;>;"
    iget-object v5, p0, Lcom/android/camera/CameraThread;->queryImageQueueCapacityEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v5, p0, v0}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 3448
    invoke-virtual {v0}, Lcom/android/camera/QueryEventArgs;->hasResult()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Lcom/android/camera/QueryEventArgs;->getResult()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 3451
    .local v1, maxSize:J
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->getImageQueueSize()J

    move-result-wide v3

    .line 3453
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

    .line 3456
    cmp-long v5, v3, v1

    if-ltz v5, :cond_0

    .line 3458
    iput-boolean v13, p0, Lcom/android/camera/CameraThread;->mbCanTakePicture:Z

    goto :goto_0

    .line 3448
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

    .line 4000
    const-string v8, "CameraThread"

    const-string v10, "checkInternalDataSpace()"

    invoke-static {v8, v10}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4003
    :try_start_0
    new-instance v5, Landroid/os/StatFs;

    const-string v8, "/data"

    invoke-direct {v5, v8}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 4004
    .local v5, fileStats:Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v8

    int-to-long v0, v8

    .line 4005
    .local v0, availableBlocks:J
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v8

    int-to-long v2, v8

    .line 4006
    .local v2, blockSize:J
    mul-long v6, v0, v2

    .line 4007
    .local v6, size:J
    const-string v8, "CameraThread"

    const-string v10, "checkInternalDataSpace() - internal memory : "

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-static {v8, v10, v11}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4008
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

    .line 4015
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

    .line 4008
    goto :goto_0

    .line 4010
    .end local v0           #availableBlocks:J
    .end local v2           #blockSize:J
    .end local v5           #fileStats:Landroid/os/StatFs;
    .end local v6           #size:J
    :catch_0
    move-exception v4

    .line 4012
    .local v4, ex:Ljava/lang/Exception;
    const-string v8, "CameraThread"

    const-string v10, "checkInternalDataSpace() - Error checking internal storage"

    invoke-static {v8, v10, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4013
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
    .line 3936
    const-string v0, "CameraThread"

    const-string v1, "checkStorageStateInternal(initState = "

    const-string v3, ", checkSize = "

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, ")"

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3939
    if-nez p1, :cond_4

    invoke-direct {p0}, Lcom/android/camera/CameraThread;->hasStorageTest()Lcom/android/camera/io/StorageState;

    move-result-object v8

    .line 3942
    .local v8, state:Lcom/android/camera/io/StorageState;
    :goto_0
    if-eqz p2, :cond_1

    .line 3945
    sget-object v0, Lcom/android/camera/io/StorageState;->OK:Lcom/android/camera/io/StorageState;

    if-ne v8, v0, :cond_0

    invoke-direct {p0, p3, p4}, Lcom/android/camera/CameraThread;->hasEnoughFreeSpace(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3946
    sget-object v8, Lcom/android/camera/io/StorageState;->Full:Lcom/android/camera/io/StorageState;

    .line 3949
    :cond_0
    sget-object v0, Lcom/android/camera/io/StorageState;->OK:Lcom/android/camera/io/StorageState;

    if-eq v8, v0, :cond_1

    .line 3951
    invoke-static {}, Lcom/android/camera/io/StorageSlot;->hasUniqueStorageSlot()Z

    move-result v0

    if-nez v0, :cond_7

    .line 3954
    move-object v6, v8

    .line 3955
    .local v6, oldState:Lcom/android/camera/io/StorageState;
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->toggleStorageSlot()V

    .line 3956
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->hasStorageTest()Lcom/android/camera/io/StorageState;

    move-result-object v8

    .line 3959
    sget-object v0, Lcom/android/camera/io/StorageState;->OK:Lcom/android/camera/io/StorageState;

    if-ne v8, v0, :cond_6

    invoke-direct {p0, p3, p4}, Lcom/android/camera/CameraThread;->hasEnoughFreeSpace(J)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3961
    iget-object v0, p0, Lcom/android/camera/CameraThread;->storageSlot:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v0}, Lcom/android/camera/io/StorageSlot;->isInternalMemory()Z

    move-result v0

    if-eqz v0, :cond_5

    const v7, 0x7f0a01ab

    .line 3964
    .local v7, resID:I
    :goto_1
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0, v7}, Lcom/android/camera/HTCCamera;->showToast(I)V

    .line 3980
    .end local v6           #oldState:Lcom/android/camera/io/StorageState;
    .end local v7           #resID:I
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/android/camera/CameraThread;->storageState:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v1, v8}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3983
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

    .line 3987
    :cond_2
    const-string v0, "CameraThread"

    const-string v1, "Storage error, cancel taking picture"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 3988
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 3992
    :cond_3
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x1e

    invoke-static {}, Lcom/android/camera/DisplayDevice;->showFocusWithoutDelay()Z

    move-result v0

    if-eqz v0, :cond_8

    const-wide/16 v0, 0x0

    :goto_3
    invoke-static {v2, v3, v0, v1}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    .line 3993
    return-void

    .end local v8           #state:Lcom/android/camera/io/StorageState;
    :cond_4
    move-object v8, p1

    .line 3939
    goto :goto_0

    .line 3961
    .restart local v6       #oldState:Lcom/android/camera/io/StorageState;
    .restart local v8       #state:Lcom/android/camera/io/StorageState;
    :cond_5
    const v7, 0x7f0a01ac

    goto :goto_1

    .line 3969
    :cond_6
    const-string v0, "CameraThread"

    const-string v1, "checkStorageStateInternal() - Storage error, switch storage slot back"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3970
    move-object v8, v6

    .line 3971
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->toggleStorageSlot()V

    goto :goto_2

    .line 3975
    .end local v6           #oldState:Lcom/android/camera/io/StorageState;
    :cond_7
    const-string v0, "CameraThread"

    const-string v1, "checkStorageStateInternal() - No storage slot to switch"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 3992
    :cond_8
    const-wide/16 v0, 0x1f4

    goto :goto_3
.end method

.method private clearPreviewCallback()V
    .locals 2

    .prologue
    .line 4794
    const-string v0, "CameraThread"

    const-string v1, "clearPreviewCallback() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4797
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 4799
    const-string v0, "CameraThread"

    const-string v1, "No camera device to clear preview call-back"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 4807
    :goto_0
    return-void

    .line 4804
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 4806
    const-string v0, "CameraThread"

    const-string v1, "clearPreviewCallback() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private disableSoundEffect()V
    .locals 2

    .prologue
    .line 5304
    const-string v0, "CameraThread"

    const-string v1, "disableSoundEffect()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 5305
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mAudioManager:Lcom/android/camera/IAudioManager;

    if-eqz v0, :cond_0

    .line 5306
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mAudioManager:Lcom/android/camera/IAudioManager;

    const-string v1, "active_ap=Camcorder;sound_effect_enable=off"

    invoke-interface {v0, v1}, Lcom/android/camera/IAudioManager;->setParameters(Ljava/lang/String;)V

    .line 5309
    :goto_0
    return-void

    .line 5308
    :cond_0
    const-string v0, "CameraThread"

    const-string v1, "disableSoundEffect() - No IAudioManager interface"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private enableSoundEffect()V
    .locals 2

    .prologue
    .line 5296
    const-string v0, "CameraThread"

    const-string v1, "enableSoundEffect()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 5297
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mAudioManager:Lcom/android/camera/IAudioManager;

    if-eqz v0, :cond_0

    .line 5298
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mAudioManager:Lcom/android/camera/IAudioManager;

    const-string v1, "active_ap=Camcorder;sound_effect_enable=on"

    invoke-interface {v0, v1}, Lcom/android/camera/IAudioManager;->setParameters(Ljava/lang/String;)V

    .line 5301
    :goto_0
    return-void

    .line 5300
    :cond_0
    const-string v0, "CameraThread"

    const-string v1, "enableSoundEffect() - No IAudioManager interface"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getJPEGQualityPreference()I
    .locals 4

    .prologue
    .line 3300
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    const-string v3, "pref_camera_capture_quality"

    invoke-static {v2, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3302
    .local v0, qualityValue:Ljava/lang/String;
    const/4 v1, 0x2

    .line 3303
    .local v1, value:I
    const-string v2, "_super"

    iput-object v2, p0, Lcom/android/camera/CameraThread;->mJPEGQualityKey:Ljava/lang/String;

    .line 3305
    if-eqz v0, :cond_0

    const-string v2, "_super"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3306
    :cond_0
    const/4 v1, 0x2

    .line 3307
    const-string v2, "_super"

    iput-object v2, p0, Lcom/android/camera/CameraThread;->mJPEGQualityKey:Ljava/lang/String;

    .line 3316
    :cond_1
    :goto_0
    invoke-static {v1}, Landroid/media/CameraProfile;->getJpegEncodingQualityParameter(I)I

    move-result v2

    return v2

    .line 3308
    :cond_2
    const-string v2, "_fine"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3309
    const/4 v1, 0x1

    .line 3310
    const-string v2, "_fine"

    iput-object v2, p0, Lcom/android/camera/CameraThread;->mJPEGQualityKey:Ljava/lang/String;

    goto :goto_0

    .line 3311
    :cond_3
    const-string v2, "_normal"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3312
    const/4 v1, 0x0

    .line 3313
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

    .line 3898
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v1, v4, :cond_1

    .line 3899
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/CameraThread;->calculatePicturesRemaining(J)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_0

    move v1, v2

    .line 3908
    :goto_0
    return v1

    :cond_0
    move v1, v3

    .line 3899
    goto :goto_0

    .line 3902
    :cond_1
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getRecordLimitCheck()Lcom/android/camera/RecordLimitCheck;

    move-result-object v0

    .line 3903
    .local v0, limitCheck:Lcom/android/camera/RecordLimitCheck;
    if-eqz v0, :cond_3

    .line 3905
    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v1, p0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/CameraType;

    invoke-virtual {v0, v4, v1}, Lcom/android/camera/RecordLimitCheck;->setByteRate(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraType;)V

    .line 3906
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

    .line 3908
    goto :goto_0
.end method

.method private hasStorageTest()Lcom/android/camera/io/StorageState;
    .locals 5

    .prologue
    .line 3864
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/CameraThread;->storageSlot:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/io/StorageSlot;

    .line 3865
    .local v1, slot:Lcom/android/camera/io/StorageSlot;
    invoke-virtual {v1}, Lcom/android/camera/io/StorageSlot;->getState()Ljava/lang/String;

    move-result-object v2

    .line 3866
    .local v2, slotState:Ljava/lang/String;
    const-string v3, "mounted"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 3868
    const-string v3, "mounted_ro"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3869
    sget-object v3, Lcom/android/camera/io/StorageState;->ReadOnly:Lcom/android/camera/io/StorageState;

    .line 3888
    .end local v1           #slot:Lcom/android/camera/io/StorageSlot;
    .end local v2           #slotState:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 3870
    .restart local v1       #slot:Lcom/android/camera/io/StorageSlot;
    .restart local v2       #slotState:Ljava/lang/String;
    :cond_0
    const-string v3, "shared"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3871
    sget-object v3, Lcom/android/camera/io/StorageState;->Shared:Lcom/android/camera/io/StorageState;

    goto :goto_0

    .line 3873
    :cond_1
    sget-object v3, Lcom/android/camera/io/StorageState;->NoStorage:Lcom/android/camera/io/StorageState;

    goto :goto_0

    .line 3877
    :cond_2
    invoke-static {v1}, Lcom/android/camera/io/DCFUtility;->isDcimDirectoryWritable(Lcom/android/camera/io/StorageSlot;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 3878
    sget-object v3, Lcom/android/camera/io/StorageState;->ReadOnly:Lcom/android/camera/io/StorageState;

    goto :goto_0

    .line 3881
    :cond_3
    sget-object v3, Lcom/android/camera/io/StorageState;->OK:Lcom/android/camera/io/StorageState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3883
    .end local v1           #slot:Lcom/android/camera/io/StorageSlot;
    .end local v2           #slotState:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 3887
    .local v0, ex:Ljava/lang/Exception;
    const-string v3, "CameraThread"

    const-string v4, "cannot know storage state"

    invoke-static {v3, v4, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3888
    sget-object v3, Lcom/android/camera/io/StorageState;->Unknown:Lcom/android/camera/io/StorageState;

    goto :goto_0
.end method

.method private isAddTimeStamp()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 3288
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    if-ne v1, v2, :cond_1

    .line 3296
    :cond_0
    :goto_0
    return v0

    .line 3291
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

    .line 3296
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

    .line 2942
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    sget-object v5, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v2, v5, :cond_0

    move v2, v3

    .line 2951
    :goto_0
    return v2

    .line 2945
    :cond_0
    invoke-static {}, Lcom/android/camera/MovieModeHandler;->getMovieModeHandler()Lcom/android/camera/MovieModeHandler;

    move-result-object v0

    .line 2946
    .local v0, mModeHdr:Lcom/android/camera/ModeHandler;
    iget-object v5, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v2, p0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/CameraType;

    invoke-virtual {v0, v5, v2}, Lcom/android/camera/MovieModeHandler;->getCurrentResolutionSettingValue(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraType;)Lcom/android/camera/Resolution;

    move-result-object v1

    .line 2947
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

    .line 2949
    goto :goto_0

    :cond_2
    move v2, v3

    .line 2951
    goto :goto_0
.end method

.method private loadResolution()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    .line 2960
    const-string v3, "CameraThread"

    const-string v4, "loadResolution() - start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2963
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v3, v4, :cond_6

    .line 2965
    invoke-static {}, Lcom/android/camera/PhotoModeHandler;->getPhotoModeHandler()Lcom/android/camera/PhotoModeHandler;

    move-result-object v1

    .line 2969
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

    .line 2973
    :cond_0
    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v3, p0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/CameraType;

    invoke-virtual {v1, v4, v3}, Lcom/android/camera/PhotoModeHandler;->getCurrentResolutionSettingValue(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraType;)Lcom/android/camera/Resolution;

    move-result-object v2

    .line 2975
    .local v2, r:Lcom/android/camera/Resolution;
    invoke-virtual {v2}, Lcom/android/camera/Resolution;->getWidth()I

    move-result v3

    iput v3, p0, Lcom/android/camera/CameraThread;->Camera_Mode_Width:I

    .line 2976
    invoke-virtual {v2}, Lcom/android/camera/Resolution;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/android/camera/CameraThread;->Camera_Mode_Height:I

    .line 2977
    sget v3, Lcom/android/camera/DisplayDevice;->CAMERA_PREVIEW_SIZE_FOR_CONTACT:I

    iput v3, p0, Lcom/android/camera/CameraThread;->Camera_Preview_Width:I

    .line 2978
    sget v3, Lcom/android/camera/DisplayDevice;->CAMERA_PREVIEW_SIZE_FOR_CONTACT:I

    iput v3, p0, Lcom/android/camera/CameraThread;->Camera_Preview_Height:I

    .line 3047
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

    .line 3049
    const-string v3, "CameraThread"

    const-string v4, "loadResolution() - end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3051
    return-void

    .line 2982
    .end local v2           #r:Lcom/android/camera/Resolution;
    :cond_2
    const/4 v0, 0x0

    .line 2983
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

    .line 2984
    const/4 v0, 0x0

    .line 2993
    :goto_1
    iget-object v3, p0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/CameraType;

    invoke-virtual {p0, v0, v1, v3}, Lcom/android/camera/CameraThread;->updateImageRatio(ZLcom/android/camera/ModeHandler;Lcom/android/camera/CameraType;)Lcom/android/camera/Resolution;

    move-result-object v2

    .line 2995
    .restart local v2       #r:Lcom/android/camera/Resolution;
    invoke-virtual {v2}, Lcom/android/camera/Resolution;->getWidth()I

    move-result v3

    iput v3, p0, Lcom/android/camera/CameraThread;->Camera_Mode_Width:I

    .line 2996
    invoke-virtual {v2}, Lcom/android/camera/Resolution;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/android/camera/CameraThread;->Camera_Mode_Height:I

    .line 2997
    if-eqz v0, :cond_5

    .line 2998
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

    .line 2999
    sget v3, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_WITDH_FOR_3X_2ND:I

    iput v3, p0, Lcom/android/camera/CameraThread;->Camera_Preview_Width:I

    .line 3000
    sget v3, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_HEIGHT_FOR_3X_2ND:I

    iput v3, p0, Lcom/android/camera/CameraThread;->Camera_Preview_Height:I

    .line 3016
    :goto_2
    iget-object v3, p0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/CameraType;

    invoke-virtual {v3}, Lcom/android/camera/CameraType;->is3DCamera()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3018
    sget v3, Lcom/android/camera/DisplayDevice;->DEFAULT_3D_CAMERA_PREVIEW_WIDTH:I

    iput v3, p0, Lcom/android/camera/CameraThread;->Camera_Preview_Width:I

    .line 3019
    sget v3, Lcom/android/camera/DisplayDevice;->DEFAULT_3D_CAMERA_PREVIEW_HEIGHT:I

    iput v3, p0, Lcom/android/camera/CameraThread;->Camera_Preview_Height:I

    goto/16 :goto_0

    .line 2989
    .end local v2           #r:Lcom/android/camera/Resolution;
    :cond_3
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    const-string v4, "pref_camera_image_ratio"

    invoke-static {v3, v4}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1

    .line 3002
    .restart local v2       #r:Lcom/android/camera/Resolution;
    :cond_4
    sget v3, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_WITDH_FOR_3X:I

    iput v3, p0, Lcom/android/camera/CameraThread;->Camera_Preview_Width:I

    .line 3003
    sget v3, Lcom/android/camera/DisplayDevice;->DEFALULT_CAMERA_PREVIEW_HEIGHT_FOR_3X:I

    iput v3, p0, Lcom/android/camera/CameraThread;->Camera_Preview_Height:I

    goto :goto_2

    .line 3010
    :cond_5
    sget v3, Lcom/android/camera/DisplayDevice;->CAMERA_PREVIEW_WIDTH_FOR_4x3:I

    iput v3, p0, Lcom/android/camera/CameraThread;->Camera_Preview_Width:I

    .line 3011
    sget v3, Lcom/android/camera/DisplayDevice;->CAMERA_PREVIEW_HEIGHT_FOR_4x3:I

    iput v3, p0, Lcom/android/camera/CameraThread;->Camera_Preview_Height:I

    goto :goto_2

    .line 3026
    .end local v0           #bWideScreen:Z
    .end local v1           #mModeHdr:Lcom/android/camera/ModeHandler;
    .end local v2           #r:Lcom/android/camera/Resolution;
    :cond_6
    invoke-static {}, Lcom/android/camera/MovieModeHandler;->getMovieModeHandler()Lcom/android/camera/MovieModeHandler;

    move-result-object v1

    .line 3027
    .restart local v1       #mModeHdr:Lcom/android/camera/ModeHandler;
    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v3, p0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/CameraType;

    invoke-virtual {v1, v4, v3}, Lcom/android/camera/MovieModeHandler;->getCurrentResolutionSettingValue(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraType;)Lcom/android/camera/Resolution;

    move-result-object v2

    .line 3028
    .restart local v2       #r:Lcom/android/camera/Resolution;
    invoke-virtual {v2}, Lcom/android/camera/Resolution;->getWidth()I

    move-result v3

    iput v3, p0, Lcom/android/camera/CameraThread;->Video_Mode_Width:I

    .line 3029
    invoke-virtual {v2}, Lcom/android/camera/Resolution;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/android/camera/CameraThread;->Video_Mode_Height:I

    .line 3032
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

    .line 3034
    const/4 v3, 0x1

    iput v3, p0, Lcom/android/camera/CameraThread;->mEncoderType:I

    goto/16 :goto_0

    .line 3035
    :cond_8
    sget-object v3, Lcom/android/camera/Resolution;->Video_720p:Lcom/android/camera/Resolution;

    invoke-virtual {v2, v3}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    sget-object v3, Lcom/android/camera/Resolution;->Video_720p_Online:Lcom/android/camera/Resolution;

    invoke-virtual {v2, v3}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 3036
    :cond_9
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportQCT8x50()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 3037
    iput v6, p0, Lcom/android/camera/CameraThread;->mEncoderType:I

    goto/16 :goto_0

    .line 3039
    :cond_a
    iput v5, p0, Lcom/android/camera/CameraThread;->mEncoderType:I

    goto/16 :goto_0

    .line 3041
    :cond_b
    invoke-static {}, Lcom/android/camera/DisplayDevice;->notSupportH264()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 3042
    iput v6, p0, Lcom/android/camera/CameraThread;->mEncoderType:I

    goto/16 :goto_0

    .line 3044
    :cond_c
    iput v5, p0, Lcom/android/camera/CameraThread;->mEncoderType:I

    goto/16 :goto_0
.end method

.method private loadSettings()V
    .locals 12

    .prologue
    .line 3054
    const-string v9, "CameraThread"

    const-string v10, "Start to Load Settings to Set Camera "

    invoke-static {v9, v10}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3070
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/camera/CameraThread;->mPlaySoundFromCameraService:Z

    .line 3071
    iget-object v9, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v10, "sound-off"

    const-string v11, "true"

    invoke-virtual {v9, v10, v11}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 3081
    const/4 v8, 0x0

    .line 3082
    .local v8, wbValue:Ljava/lang/String;
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSpecific2ndCamera()Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v9}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/camera/CameraType;

    invoke-virtual {v9}, Lcom/android/camera/CameraType;->isFrontCamera()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 3084
    iget-object v9, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    const-string v10, "pref_camera_white_balance_2nd"

    invoke-static {v9, v10}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3125
    :goto_0
    iget-object v9, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v9, v8}, Lcom/android/camera/CameraController;->setWhiteBalance(Ljava/lang/String;)V

    .line 3129
    const-string v9, "pref_camera_brightness"

    const-string v10, "exposure-compensation"

    const/4 v11, 0x5

    invoke-direct {p0, v9, v10, v11}, Lcom/android/camera/CameraThread;->setParameterFromBarLevel(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3138
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->getJPEGQualityPreference()I

    move-result v9

    iput v9, p0, Lcom/android/camera/CameraThread;->mJPEGQuality:I

    .line 3171
    const-string v9, "CameraThread"

    const-string v10, " Load Settings - ImageProperty "

    invoke-static {v9, v10}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3172
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->setImageProperty()V

    .line 3197
    iget-object v9, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    const-string v10, "pref_flicker_adjustment"

    invoke-static {v9, v10}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3199
    .local v2, flickerValue:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v9, v2}, Lcom/android/camera/CameraController;->setAntibanding(Ljava/lang/String;)V

    .line 3202
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportISO()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 3204
    iget-object v9, p0, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    invoke-virtual {v9}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v9

    sget-object v10, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    if-ne v9, v10, :cond_a

    .line 3207
    iget-object v9, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v10, "preview-iso"

    const-string v11, "on"

    invoke-virtual {v9, v10, v11}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 3211
    iget-object v9, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v10, "iso"

    const-string v11, "auto"

    invoke-virtual {v9, v10, v11}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 3231
    :cond_0
    :goto_1
    invoke-static {}, Lcom/android/camera/DisplayDevice;->showSceneInMenu()Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    .line 3233
    const/4 v5, 0x0

    .line 3234
    .local v5, prev_scene:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v9}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/camera/CameraType;

    invoke-virtual {v9}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 3236
    iget-object v9, p0, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    invoke-virtual {v9}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v9

    sget-object v10, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v9, v10, :cond_e

    .line 3238
    iget-object v9, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    const-string v10, "pref_camera_scene"

    invoke-static {v9, v10}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3246
    :goto_2
    iget-object v9, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v9, v5}, Lcom/android/camera/CameraController;->setSceneMode(Ljava/lang/String;)V

    .line 3251
    .end local v5           #prev_scene:Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSmileCapture()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 3253
    iget-object v9, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    const-string v10, "pref_blink detection"

    invoke-static {v9, v10}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 3256
    .local v0, bValueBlink:Z
    iget-object v9, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    const-string v10, "pref_smile_capture"

    invoke-static {v9, v10}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 3259
    .local v1, bValueSmile:Z
    if-eqz v0, :cond_f

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportBlinkDetect()Z

    move-result v9

    if-eqz v9, :cond_f

    .line 3260
    iget-object v9, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v10, "ola-sbd-options"

    const-string v11, "103"

    invoke-virtual {v9, v10, v11}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 3271
    .end local v0           #bValueBlink:Z
    .end local v1           #bValueSmile:Z
    :cond_2
    :goto_3
    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->is3DMode()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 3273
    iget-object v9, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    const-string v10, "pref_camera_3D_file_format"

    invoke-static {v9, v10}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3274
    .local v3, format3D:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v10, "3d-file-format"

    invoke-virtual {v9, v10, v3}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 3276
    const-string v9, "mpo"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 3277
    sget-object v9, Lcom/android/camera/io/FileFormat;->Mpo:Lcom/android/camera/io/FileFormat;

    iput-object v9, p0, Lcom/android/camera/CameraThread;->m3DFileFormat:Lcom/android/camera/io/FileFormat;

    .line 3281
    :goto_4
    const-string v9, "CameraThread"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Set 3D file format: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3284
    .end local v3           #format3D:Ljava/lang/String;
    :cond_3
    const-string v9, "CameraThread"

    const-string v10, "End to Load Settings to Set Camera"

    invoke-static {v9, v10}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3285
    return-void

    .line 3087
    .end local v2           #flickerValue:Ljava/lang/String;
    :cond_4
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v9

    if-nez v9, :cond_5

    .line 3089
    iget-object v9, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    const-string v10, "pref_camera_white_balance"

    invoke-static {v9, v10}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 3095
    :cond_5
    const/4 v6, 0x0

    .line 3096
    .local v6, scene:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v9}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v9

    if-nez v9, :cond_7

    .line 3097
    iget-object v9, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    const-string v10, "pref_camera_scene_ds"

    invoke-static {v9, v10}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3101
    :goto_5
    const/4 v7, 0x0

    .line 3102
    .local v7, sceneNum:I
    if-eqz v6, :cond_6

    const-string v9, "null"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 3103
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 3105
    :cond_6
    const/16 v9, 0x8

    if-ne v7, v9, :cond_8

    .line 3106
    iget-object v9, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    const-string v10, "pref_camera_white_balance_manual"

    invoke-static {v9, v10}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 3099
    .end local v7           #sceneNum:I
    :cond_7
    iget-object v9, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    const-string v10, "pref_camera_scene_service_ds"

    invoke-static {v9, v10}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    .line 3109
    .restart local v7       #sceneNum:I
    :cond_8
    iget-object v9, p0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v9}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/camera/CameraType;

    invoke-virtual {v9}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 3112
    iget-object v9, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    const-string v10, "pref_camera_white_balance"

    const-string v11, "auto"

    invoke-static {v9, v10, v11}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 3113
    iget-object v9, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    const-string v10, "pref_camera_white_balance"

    invoke-static {v9, v10}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 3118
    :cond_9
    iget-object v9, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    const-string v10, "pref_camera_white_balance_2nd"

    invoke-static {v9, v10}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 3213
    .end local v6           #scene:Ljava/lang/String;
    .end local v7           #sceneNum:I
    .restart local v2       #flickerValue:Ljava/lang/String;
    :cond_a
    iget-object v9, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v10, "preview-iso"

    const-string v11, "off"

    invoke-virtual {v9, v10, v11}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 3216
    iget-object v9, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    const-string v10, "pref_camera_iso"

    invoke-static {v9, v10}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3219
    .local v4, isoValue:Ljava/lang/String;
    if-eqz v4, :cond_b

    const-string v9, "null"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 3220
    :cond_b
    const-string v4, "auto"

    .line 3221
    :cond_c
    iget-object v9, p0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v9}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/camera/CameraType;

    invoke-virtual {v9}, Lcom/android/camera/CameraType;->isFrontCamera()Z

    move-result v9

    if-eqz v9, :cond_d

    .line 3222
    iget-object v9, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v10, "iso"

    const-string v11, "auto"

    invoke-virtual {v9, v10, v11}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3224
    :cond_d
    iget-object v9, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v10, "iso"

    invoke-virtual {v9, v10, v4}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3242
    .end local v4           #isoValue:Ljava/lang/String;
    .restart local v5       #prev_scene:Ljava/lang/String;
    :cond_e
    iget-object v9, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    const-string v10, "pref_video_scene"

    invoke-static {v9, v10}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .line 3262
    .end local v5           #prev_scene:Ljava/lang/String;
    .restart local v0       #bValueBlink:Z
    .restart local v1       #bValueSmile:Z
    :cond_f
    if-eqz v1, :cond_10

    .line 3263
    iget-object v9, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v10, "ola-sbd-options"

    const-string v11, "120"

    invoke-virtual {v9, v10, v11}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3266
    :cond_10
    iget-object v9, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v10, "ola-sbd-options"

    const-string v11, "100"

    invoke-virtual {v9, v10, v11}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3279
    .end local v0           #bValueBlink:Z
    .end local v1           #bValueSmile:Z
    .restart local v3       #format3D:Ljava/lang/String;
    :cond_11
    sget-object v9, Lcom/android/camera/io/FileFormat;->Jps:Lcom/android/camera/io/FileFormat;

    iput-object v9, p0, Lcom/android/camera/CameraThread;->m3DFileFormat:Lcom/android/camera/io/FileFormat;

    goto/16 :goto_4
.end method

.method private onPreviewFrameRetrieved([B)V
    .locals 6
    .parameter "yuvData"

    .prologue
    .line 4730
    iget-object v1, p0, Lcom/android/camera/CameraThread;->previewSize:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/imaging/Size;

    .line 4731
    .local v0, size:Lcom/android/camera/imaging/Size;
    if-nez v0, :cond_1

    .line 4735
    :cond_0
    :goto_0
    return-void

    .line 4733
    :cond_1
    iget-object v1, p0, Lcom/android/camera/CameraThread;->previewFrameRetrievedEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v1}, Lcom/android/camera/event/Event;->hasHandlers()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4734
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
    .line 1400
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

    .line 1403
    move-object/from16 v0, p1

    iget-boolean v11, v0, Lcom/android/camera/CameraType;->isSupported:Z

    if-nez v11, :cond_0

    .line 1405
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

    .line 1406
    const/4 v11, 0x4

    .line 1552
    :goto_0
    return v11

    .line 1410
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v11, :cond_2

    .line 1412
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1413
    const/4 v11, 0x0

    goto :goto_0

    .line 1414
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

    .line 1415
    const/4 v11, 0x4

    goto :goto_0

    .line 1419
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraThread;->isRecPowerWarning()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1421
    const-string v11, "CameraThread"

    const-string v12, "isRecPowerWarning(), won\'t open camera"

    invoke-static {v11, v12}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1422
    const/4 v11, 0x2

    goto :goto_0

    .line 1426
    :cond_3
    invoke-static {}, Lcom/android/camera/CameraToken;->getToken()Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/camera/CameraThread;->mCameraToken:Ljava/lang/Object;

    .line 1427
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->mCameraToken:Ljava/lang/Object;

    if-nez v11, :cond_4

    .line 1429
    const-string v11, "CameraThread"

    const-string v12, "Cannot get camera token"

    invoke-static {v11, v12}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1430
    const/4 v11, 0x3

    goto :goto_0

    .line 1434
    :cond_4
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/camera/CameraThread;->m3DButtonStatus:I

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/camera/CameraThread;->m3DPreviewStatus:I

    .line 1441
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->resetCameraFlag()V

    .line 1447
    :try_start_0
    new-instance v1, Lcom/android/camera/OpenCameraRequestEventArgs;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Lcom/android/camera/OpenCameraRequestEventArgs;-><init>(Lcom/android/camera/CameraType;)V

    .line 1448
    .local v1, e:Lcom/android/camera/OpenCameraRequestEventArgs;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->requestOpenCameraEvent:Lcom/android/camera/event/Event;

    move-object/from16 v0, p0

    invoke-virtual {v11, v0, v1}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 1451
    invoke-virtual {v1}, Lcom/android/camera/OpenCameraRequestEventArgs;->isHandled()Z

    move-result v11

    if-nez v11, :cond_9

    .line 1454
    sget-object v11, Lcom/android/camera/CameraThread$22;->$SwitchMap$com$android$camera$CameraType:[I

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/CameraType;->ordinal()I

    move-result v12

    aget v11, v11, v12

    packed-switch v11, :pswitch_data_0

    .line 1481
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

    .line 1482
    const/4 v11, 0x4

    goto/16 :goto_0

    .line 1459
    :pswitch_0
    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/camera/CameraType;->id:I

    invoke-static {v11}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    .line 1460
    new-instance v11, Lcom/htc/wrap/android/hardware/HtcWrapCamera;

    invoke-direct {v11}, Lcom/htc/wrap/android/hardware/HtcWrapCamera;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/camera/CameraThread;->mHtcWrapCameraDevice:Lcom/htc/wrap/android/hardware/HtcWrapCamera;

    .line 1486
    :goto_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/CameraThread;->mErrorCallback:Lcom/android/camera/CameraThread$ErrorCallback;

    invoke-virtual {v11, v12}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1505
    :cond_5
    new-instance v11, Lcom/android/camera/CameraController;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-direct {v11, v12}, Lcom/android/camera/CameraController;-><init>(Landroid/hardware/Camera;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    .line 1506
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v11}, Lcom/android/camera/CameraController;->setSupportedList()V

    .line 1509
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    move-object/from16 v0, p1

    invoke-virtual {v11, v12, v0}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1512
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v11}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/camera/CameraType;

    invoke-virtual {v11}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 1515
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v12, "taking-picture-zoom"

    invoke-virtual {v11, v12}, Lcom/android/camera/CameraController;->getSettingsInfo(Ljava/lang/String;)Lcom/android/camera/CameraController$SettingInfo;

    move-result-object v3

    .line 1516
    .local v3, info:Lcom/android/camera/CameraController$SettingInfo;
    invoke-virtual {v3}, Lcom/android/camera/CameraController$SettingInfo;->getMin()I

    move-result v5

    .line 1517
    .local v5, min:I
    invoke-virtual {v3}, Lcom/android/camera/CameraController$SettingInfo;->getMax()I

    move-result v4

    .line 1520
    .local v4, max:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->zoomRange:Lcom/android/camera/property/Property;

    invoke-virtual {v11}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/camera/Range;

    .line 1521
    .local v8, oldRange:Lcom/android/camera/Range;,"Lcom/android/camera/Range<Ljava/lang/Integer;>;"
    new-instance v6, Lcom/android/camera/Range;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-direct {v6, v11, v12}, Lcom/android/camera/Range;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1522
    .local v6, newRange:Lcom/android/camera/Range;,"Lcom/android/camera/Range<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->zoomRange:Lcom/android/camera/property/Property;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v11, v12, v6}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1525
    if-eqz v8, :cond_a

    .line 1527
    invoke-virtual {v8, v6}, Lcom/android/camera/Range;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 1529
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

    .line 1530
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

    .line 1531
    .local v7, newZoomValue:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->zoomValue:Lcom/android/camera/property/Property;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1539
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

    .line 1542
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isNvidiaPlatform()Z

    move-result v11

    if-nez v11, :cond_b

    .line 1543
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/camera/CameraThread;->mIsParamsPrepared:Z

    .line 1551
    :goto_3
    const-string v11, "CameraThread"

    const-string v12, "openCamera() - end"

    invoke-static {v11, v12}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1552
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 1465
    :pswitch_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-static {v11}, Lcom/android/camera/component/PowerWarningController;->isSupported(Lcom/android/camera/HTCCamera;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 1467
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v11, v11, Lcom/android/camera/HTCCamera;->isLowPower:Lcom/android/camera/property/Property;

    invoke-virtual {v11}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 1469
    const-string v11, "CameraThread"

    const-string v12, "power is low in 3D mode, won\'t open camera"

    invoke-static {v11, v12}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1471
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    if-eqz v11, :cond_7

    .line 1472
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v12, 0x3b

    const-wide/16 v13, 0x64

    invoke-static {v11, v12, v13, v14}, Lcom/android/camera/MessageHandler;->sendEmptyMessageDelayed(Landroid/os/Handler;IJ)V

    .line 1473
    :cond_7
    const/4 v11, 0x2

    goto/16 :goto_0

    .line 1476
    :cond_8
    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/camera/CameraType;->id:I

    invoke-static {v11}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    .line 1477
    new-instance v11, Lcom/htc/wrap/android/hardware/HtcWrapCamera;

    invoke-direct {v11}, Lcom/htc/wrap/android/hardware/HtcWrapCamera;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/camera/CameraThread;->mHtcWrapCameraDevice:Lcom/htc/wrap/android/hardware/HtcWrapCamera;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 1495
    .end local v1           #e:Lcom/android/camera/OpenCameraRequestEventArgs;
    :catch_0
    move-exception v2

    .line 1497
    .local v2, ex:Ljava/lang/Throwable;
    const-string v11, "CameraThread"

    const-string v12, "Cannot open camera device"

    invoke-static {v11, v12, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1498
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->mCameraToken:Ljava/lang/Object;

    invoke-static {v11}, Lcom/android/camera/CameraToken;->releaseToken(Ljava/lang/Object;)V

    .line 1499
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/camera/CameraThread;->mCameraToken:Ljava/lang/Object;

    .line 1500
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v12, 0x54

    invoke-static {v11, v12}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 1501
    const/4 v11, 0x4

    goto/16 :goto_0

    .line 1490
    .end local v2           #ex:Ljava/lang/Throwable;
    .restart local v1       #e:Lcom/android/camera/OpenCameraRequestEventArgs;
    :cond_9
    :try_start_2
    invoke-virtual {v1}, Lcom/android/camera/OpenCameraRequestEventArgs;->getCamera()Landroid/hardware/Camera;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    .line 1491
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v11, :cond_5

    .line 1492
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

    .line 1535
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

    .line 1546
    .end local v3           #info:Lcom/android/camera/CameraController$SettingInfo;
    .end local v4           #max:I
    .end local v5           #min:I
    .end local v6           #newRange:Lcom/android/camera/Range;,"Lcom/android/camera/Range<Ljava/lang/Integer;>;"
    .end local v8           #oldRange:Lcom/android/camera/Range;,"Lcom/android/camera/Range<Ljava/lang/Integer;>;"
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->setupParamsBeforeStartingPreview()V

    .line 1547
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/camera/CameraThread;->mIsParamsPrepared:Z

    goto/16 :goto_3

    .line 1454
    nop

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

    .line 2642
    const-string v1, "CameraThread"

    const-string v2, "releaseMediaRecorder()"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2643
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    if-eqz v1, :cond_0

    .line 2645
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2650
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->reset()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2655
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->release()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2660
    :goto_2
    iput-object v3, p0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    .line 2662
    :cond_0
    return-void

    .line 2646
    :catch_0
    move-exception v0

    .line 2647
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v1, "CameraThread"

    const-string v2, "mRecorder.setOnInfoListener(null - Runtime exception caught"

    invoke-static {v1, v2, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2651
    .end local v0           #ex:Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 2652
    .restart local v0       #ex:Ljava/lang/RuntimeException;
    const-string v1, "CameraThread"

    const-string v2, "mRecorder.reset() - Runtime exception caught"

    invoke-static {v1, v2, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 2656
    .end local v0           #ex:Ljava/lang/RuntimeException;
    :catch_2
    move-exception v0

    .line 2657
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

    .line 2820
    iput-boolean v0, p0, Lcom/android/camera/CameraThread;->mIsOnlySetResolution:Z

    .line 2821
    iput-boolean v0, p0, Lcom/android/camera/CameraThread;->mTaking_picture:Z

    .line 2822
    return-void
.end method

.method private resetZoomInternal(Z)V
    .locals 5
    .parameter "toMinimum"

    .prologue
    .line 4410
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    if-nez v2, :cond_0

    .line 4441
    :goto_0
    return-void

    .line 4414
    :cond_0
    iget-object v2, p0, Lcom/android/camera/CameraThread;->zoomRange:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/Range;

    .line 4415
    .local v0, range:Lcom/android/camera/Range;,"Lcom/android/camera/Range<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/android/camera/Range;->maximum:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_2

    .line 4417
    :cond_1
    const-string v2, "CameraThread"

    const-string v3, "resetZoom() - Cannot get zoom range"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4423
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

    .line 4425
    iget-object v2, p0, Lcom/android/camera/CameraThread;->zoomValue:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 4426
    .local v1, zoom:I
    iget-object v2, v0, Lcom/android/camera/Range;->minimum:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 4427
    iget-object v2, v0, Lcom/android/camera/Range;->minimum:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 4435
    :cond_3
    :goto_1
    iget-boolean v2, p0, Lcom/android/camera/CameraThread;->mPreviewing:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    if-eqz v2, :cond_4

    .line 4437
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v2, v1}, Lcom/android/camera/CameraController;->setZoom(I)V

    .line 4438
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v2}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    .line 4440
    :cond_4
    iget-object v2, p0, Lcom/android/camera/CameraThread;->zoomValue:Lcom/android/camera/property/Property;

    iget-object v3, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 4428
    :cond_5
    iget-object v2, v0, Lcom/android/camera/Range;->maximum:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v1, v2, :cond_3

    .line 4429
    iget-object v2, v0, Lcom/android/camera/Range;->maximum:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1

    .line 4432
    .end local v1           #zoom:I
    :cond_6
    iget-object v2, v0, Lcom/android/camera/Range;->minimum:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .restart local v1       #zoom:I
    goto :goto_1
.end method

.method private setAecAwbLockInternal(ZZ)V
    .locals 4
    .parameter "isLocked"
    .parameter "apply"

    .prologue
    .line 5400
    const-string v0, "CameraThread"

    const-string v1, "setAecAwbLockInternal("

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, ")"

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5401
    iput-boolean p1, p0, Lcom/android/camera/CameraThread;->mIsAecAwbLocked:Z

    .line 5402
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    if-eqz v0, :cond_0

    .line 5404
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraController;->setAutoExposureLock(Z)Z

    .line 5406
    if-eqz p2, :cond_0

    .line 5407
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v0}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    .line 5409
    :cond_0
    return-void
.end method

.method private setAutoFocusLockInternal(Z)V
    .locals 3
    .parameter "isLocked"

    .prologue
    .line 5423
    const-string v0, "CameraThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAutoFocusLockInternal("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 5424
    iget-object v0, p0, Lcom/android/camera/CameraThread;->isAutoFocusLocked:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 5425
    return-void
.end method

.method private setCaptureRotationInternal(Lcom/android/camera/rotate/UIRotation;)V
    .locals 3
    .parameter "rotation"

    .prologue
    .line 5285
    const-string v0, "CameraThread"

    const-string v1, "setCaptureRotationInternal("

    const-string v2, ")"

    invoke-static {v0, v1, p1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5286
    if-nez p1, :cond_0

    .line 5287
    sget-object p1, Lcom/android/camera/rotate/UIRotation;->Landscape:Lcom/android/camera/rotate/UIRotation;

    .line 5288
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraThread;->captureRotation:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 5289
    return-void
.end method

.method private setFirstFrameCacheStateInternal(Z)V
    .locals 4
    .parameter "isEnabled"

    .prologue
    .line 5245
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isLowEndDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5262
    :cond_0
    :goto_0
    return-void

    .line 5247
    :cond_1
    const-string v0, "CameraThread"

    const-string v1, "setFirstFrameCacheStateInternal("

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, ")"

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5250
    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mIsFirstFrameCached:Z

    if-eq v0, p1, :cond_0

    .line 5254
    iput-boolean p1, p0, Lcom/android/camera/CameraThread;->mIsFirstFrameCached:Z

    .line 5257
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    if-eqz v0, :cond_0

    .line 5259
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v2, "cache-first-frame"

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v2, v0}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    .line 5260
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v0}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    goto :goto_0

    .line 5259
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private setFlashModeInternal(Lcom/android/camera/FlashMode;)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 5202
    iget-object v0, p0, Lcom/android/camera/CameraThread;->flashMode:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5213
    :cond_0
    :goto_0
    return-void

    .line 5206
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    if-eqz v0, :cond_0

    .line 5210
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

    .line 5211
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    iget-object v1, p1, Lcom/android/camera/FlashMode;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraController;->setFlashMode(Ljava/lang/String;)V

    .line 5212
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v0}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    goto :goto_0
.end method

.method private setHWSoundEffect(Ljava/lang/String;)V
    .locals 3
    .parameter "setting"

    .prologue
    .line 5338
    const-string v0, "CameraThread"

    const-string v1, "setHWSoundEffect("

    const-string v2, ")"

    invoke-static {v0, v1, p1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5340
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mAudioManager:Lcom/android/camera/IAudioManager;

    if-eqz v0, :cond_1

    .line 5342
    const-string v0, "active_ap=Camcorder;dolby_srs_eq="

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5343
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mAudioManager:Lcom/android/camera/IAudioManager;

    invoke-interface {v0, p1}, Lcom/android/camera/IAudioManager;->setParameters(Ljava/lang/String;)V

    .line 5349
    :goto_0
    return-void

    .line 5345
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

    .line 5348
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

    .line 3322
    const-string v0, "pref_camera_contrast"

    const-string v1, "contrast"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/CameraThread;->setParameterFromBarLevel(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3328
    const-string v0, "pref_camera_saturation"

    const-string v1, "saturation"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/CameraThread;->setParameterFromBarLevel(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3334
    const-string v0, "pref_camera_shaprness"

    const-string v1, "sharpness"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/CameraThread;->setParameterFromBarLevel(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3338
    return-void
.end method

.method private setParameterFromBarLevel(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .parameter "pref_key"
    .parameter "param_key"
    .parameter "level_num"

    .prologue
    .line 3342
    const/4 v1, 0x0

    .line 3343
    .local v1, info:Lcom/android/camera/CameraController$SettingInfo;
    const/4 v3, 0x0

    .line 3344
    .local v3, value:I
    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-static {v4, p1}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3346
    .local v2, level:Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v4, "null"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3348
    :try_start_0
    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, p2, v5, p3}, Lcom/android/camera/CameraController;->mapBarLevel2SettingValue(Ljava/lang/String;II)I

    move-result v3

    .line 3352
    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v4, p2, v3}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3362
    :goto_0
    return-void

    .line 3353
    :catch_0
    move-exception v0

    .line 3354
    .local v0, ex:Ljava/lang/Exception;
    const-string v4, "CameraThread"

    const-string v5, "get level failed !!!"

    invoke-static {v4, v5, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3355
    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v4, p2}, Lcom/android/camera/CameraController;->getSettingsInfo(Ljava/lang/String;)Lcom/android/camera/CameraController$SettingInfo;

    move-result-object v1

    .line 3356
    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v1}, Lcom/android/camera/CameraController$SettingInfo;->getDefault()I

    move-result v5

    invoke-virtual {v4, p2, v5}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    goto :goto_0

    .line 3359
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_0
    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v4, p2}, Lcom/android/camera/CameraController;->getSettingsInfo(Ljava/lang/String;)Lcom/android/camera/CameraController$SettingInfo;

    move-result-object v1

    .line 3360
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
    .line 5316
    const-string v0, "CameraThread"

    const-string v1, "setSoundEffect(hasEffect="

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, ", rotation="

    const-string v5, ")"

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5318
    if-nez p1, :cond_0

    .line 5319
    const-string v0, "Mono"

    invoke-direct {p0, v0}, Lcom/android/camera/CameraThread;->setHWSoundEffect(Ljava/lang/String;)V

    .line 5335
    :goto_0
    return-void

    .line 5322
    :cond_0
    sget-object v0, Lcom/android/camera/CameraThread$22;->$SwitchMap$com$android$camera$rotate$UIRotation:[I

    invoke-virtual {p2}, Lcom/android/camera/rotate/UIRotation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 5331
    const-string v0, "Portrait"

    invoke-direct {p0, v0}, Lcom/android/camera/CameraThread;->setHWSoundEffect(Ljava/lang/String;)V

    goto :goto_0

    .line 5325
    :pswitch_0
    const-string v0, "Landscape_Left"

    invoke-direct {p0, v0}, Lcom/android/camera/CameraThread;->setHWSoundEffect(Ljava/lang/String;)V

    goto :goto_0

    .line 5328
    :pswitch_1
    const-string v0, "Landscape_Right"

    invoke-direct {p0, v0}, Lcom/android/camera/CameraThread;->setHWSoundEffect(Ljava/lang/String;)V

    goto :goto_0

    .line 5322
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setupParamsBeforeStartingPreview()V
    .locals 17

    .prologue
    .line 1568
    const-string v14, "CameraThread"

    const-string v15, "setupParamsBeforeStartingPreview - Start"

    invoke-static {v14, v15}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1571
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v14, :cond_0

    .line 1573
    const-string v14, "CameraThread"

    const-string v15, "setupParamsBeforeStartingPreview - No camera device"

    invoke-static {v14, v15}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1768
    :goto_0
    return-void

    .line 1578
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v14}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/CameraType;

    .line 1579
    .local v2, cameraType:Lcom/android/camera/CameraType;
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isNvidiaPlatform()Z

    move-result v14

    if-eqz v14, :cond_a

    sget-object v14, Lcom/android/camera/CameraType;->Main:Lcom/android/camera/CameraType;

    if-ne v2, v14, :cond_a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    sget-object v15, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    invoke-virtual {v14, v15}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 1583
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v15, "capture-mode"

    const-string v16, "zsl"

    invoke-virtual/range {v14 .. v16}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1589
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-static {v14, v15}, Lcom/android/camera/HTCCameraAdvanceSetting;->initPrefrenceFiles(Landroid/app/Activity;Lcom/android/camera/CameraController;)Z

    .line 1592
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/CameraThread;->flashMode:Lcom/android/camera/property/Property;

    invoke-virtual {v14}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/camera/FlashMode;

    iget-object v14, v14, Lcom/android/camera/FlashMode;->value:Ljava/lang/String;

    invoke-virtual {v15, v14}, Lcom/android/camera/CameraController;->setFlashMode(Ljava/lang/String;)V

    .line 1595
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    invoke-virtual {v14}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v14

    sget-object v15, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    if-ne v14, v15, :cond_e

    .line 1598
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraThread;->isSlowMotionMode()Z

    move-result v4

    .line 1599
    .local v4, isSlowMotion:Z
    if-nez v4, :cond_b

    .line 1601
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v15, "cam-mode"

    const/16 v16, 0x1

    invoke-virtual/range {v14 .. v16}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    .line 1612
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/android/camera/CameraController;->setRecordingHint(Z)V

    .line 1615
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v14}, Lcom/android/camera/CameraController;->supportVideoStabilization()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 1617
    if-nez v4, :cond_d

    sget-object v14, Lcom/android/camera/CameraType;->Main:Lcom/android/camera/CameraType;

    if-ne v2, v14, :cond_d

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/CameraThread;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v14, v14, Lcom/android/camera/CameraSettings;->isVideoStabilizationEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v14}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_d

    const/4 v13, 0x1

    .line 1620
    .local v13, videoStabilization:Z
    :goto_3
    const-string v14, "CameraThread"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "videoStabilization"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1621
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v14, v13}, Lcom/android/camera/CameraController;->setVideoStabilization(Z)V

    .line 1625
    .end local v13           #videoStabilization:Z
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v15, "cache-first-frame"

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    .line 1638
    .end local v4           #isSlowMotion:Z
    :goto_4
    invoke-static {}, Lcom/android/camera/DisplayDevice;->canChangeFrameRate()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 1640
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->isMMSRecording()Z

    move-result v14

    if-eqz v14, :cond_10

    .line 1641
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const/16 v15, 0x3a98

    const/16 v16, 0x3a98

    invoke-virtual/range {v14 .. v16}, Lcom/android/camera/CameraController;->setPreviewFpsRange(II)V

    .line 1647
    :cond_2
    :goto_5
    invoke-virtual {v2}, Lcom/android/camera/CameraType;->isFrontCamera()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 1649
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v15, "front-camera-mode"

    const-string v16, "mirror"

    invoke-virtual/range {v14 .. v16}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1654
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/camera/CameraThread;->mIsAecAwbLocked:Z

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/camera/CameraThread;->setAecAwbLockInternal(ZZ)V

    .line 1657
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->loadResolution()V

    .line 1660
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/CameraThread;->captureRotation:Lcom/android/camera/property/Property;

    invoke-virtual {v14}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/camera/rotate/UIRotation;

    iget v6, v14, Lcom/android/camera/rotate/UIRotation;->deviceOrientation:I

    .line 1661
    .local v6, orientation:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v14}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/camera/CameraType;

    iget v9, v14, Lcom/android/camera/CameraType;->orientation:I

    .line 1662
    .local v9, sensorOrientation:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v14}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/camera/CameraType;

    invoke-virtual {v14}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v14

    if-eqz v14, :cond_11

    .line 1663
    add-int/2addr v6, v9

    .line 1667
    :goto_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v14}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/camera/CameraType;

    invoke-virtual {v14}, Lcom/android/camera/CameraType;->is3DCamera()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 1669
    const-string v14, "CameraThread"

    const-string v15, "set rotation landscape while 3D video mode"

    invoke-static {v14, v15}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1670
    const/4 v6, 0x0

    .line 1673
    :cond_4
    rem-int/lit16 v6, v6, 0x168

    .line 1677
    invoke-static {}, Lcom/android/camera/MovieModeHandler;->getMovieModeHandler()Lcom/android/camera/MovieModeHandler;

    move-result-object v1

    .line 1678
    .local v1, ModeHdr:Lcom/android/camera/MovieModeHandler;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v14}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/camera/CameraType;

    invoke-virtual {v1, v15, v14}, Lcom/android/camera/MovieModeHandler;->getCurrentResolutionSettingValue(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraType;)Lcom/android/camera/Resolution;

    move-result-object v8

    .line 1679
    .local v8, r:Lcom/android/camera/Resolution;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/android/camera/Resolution;->getWidth()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "x"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v8}, Lcom/android/camera/Resolution;->getHeight()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1680
    .local v12, strResolution:Ljava/lang/String;
    invoke-virtual {v8}, Lcom/android/camera/Resolution;->getWidth()I

    move-result v14

    const/16 v15, 0x780

    if-ne v14, v15, :cond_6

    if-eqz v6, :cond_5

    const/16 v14, 0xb4

    if-ne v6, v14, :cond_6

    .line 1681
    :cond_5
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/android/camera/Resolution;->getWidth()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "x"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v15, 0x438

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1683
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v15, "video-size"

    invoke-virtual {v14, v15, v12}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1684
    const-string v14, "CameraThread"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "setCameraParameter(\'video-size\',\'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\')"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1687
    new-instance v7, Lcom/android/camera/imaging/Size;

    invoke-direct {v7}, Lcom/android/camera/imaging/Size;-><init>()V

    .line 1688
    .local v7, previewSize:Lcom/android/camera/imaging/Size;
    sget-object v15, Lcom/android/camera/CameraThread$22;->$SwitchMap$com$android$camera$CameraMode:[I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    invoke-virtual {v14}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/camera/CameraMode;

    invoke-virtual {v14}, Lcom/android/camera/CameraMode;->ordinal()I

    move-result v14

    aget v14, v15, v14

    packed-switch v14, :pswitch_data_0

    .line 1739
    :goto_7
    iget v14, v7, Lcom/android/camera/imaging/Size;->width:I

    and-int/lit8 v14, v14, 0xf

    rsub-int/lit8 v11, v14, 0x10

    .line 1740
    .local v11, sizeDiff:I
    const/16 v14, 0x10

    if-ge v11, v14, :cond_7

    .line 1741
    iget v14, v7, Lcom/android/camera/imaging/Size;->width:I

    add-int/2addr v14, v11

    iput v14, v7, Lcom/android/camera/imaging/Size;->width:I

    .line 1742
    :cond_7
    iget v14, v7, Lcom/android/camera/imaging/Size;->height:I

    and-int/lit8 v14, v14, 0xf

    rsub-int/lit8 v11, v14, 0x10

    .line 1743
    const/16 v14, 0x10

    if-ge v11, v14, :cond_8

    .line 1744
    iget v14, v7, Lcom/android/camera/imaging/Size;->height:I

    add-int/2addr v14, v11

    iput v14, v7, Lcom/android/camera/imaging/Size;->height:I

    .line 1745
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/CameraThread;->previewSize:Lcom/android/camera/property/Property;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v14, v15, v7}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1748
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v15, "taking-picture-zoom"

    invoke-virtual {v14, v15}, Lcom/android/camera/CameraController;->getSettingsInfo(Ljava/lang/String;)Lcom/android/camera/CameraController$SettingInfo;

    move-result-object v3

    .line 1750
    .local v3, info:Lcom/android/camera/CameraController$SettingInfo;
    sget-boolean v14, Lcom/android/camera/HTCCameraAdvanceSetting;->mIsInitZoom:Z

    const/4 v15, 0x1

    if-ne v14, v15, :cond_9

    .line 1751
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/CameraThread;->zoomValue:Lcom/android/camera/property/Property;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/android/camera/CameraController$SettingInfo;->getDefault()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1752
    const/4 v14, 0x0

    sput-boolean v14, Lcom/android/camera/HTCCameraAdvanceSetting;->mIsInitZoom:Z

    .line 1755
    :cond_9
    invoke-virtual {v2}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v14

    if-eqz v14, :cond_15

    .line 1756
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/CameraThread;->zoomValue:Lcom/android/camera/property/Property;

    invoke-virtual {v14}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v15, v14}, Lcom/android/camera/CameraController;->setZoom(I)V

    .line 1761
    :goto_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/CameraThread;->preparingParamsBeforePreviewStartEvent:Lcom/android/camera/event/Event;

    new-instance v15, Lcom/android/camera/OneValueEventArgs;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v16, v0

    invoke-direct/range {v15 .. v16}, Lcom/android/camera/OneValueEventArgs;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    invoke-virtual {v14, v0, v15}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 1764
    const-string v14, "CameraThread"

    const-string v15, "setupParamsBeforeStartingPreview - Set parameters"

    invoke-static {v14, v15}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1765
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v14}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    .line 1767
    const-string v14, "CameraThread"

    const-string v15, "setupParamsBeforeStartingPreview - End"

    invoke-static {v14, v15}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1586
    .end local v1           #ModeHdr:Lcom/android/camera/MovieModeHandler;
    .end local v3           #info:Lcom/android/camera/CameraController$SettingInfo;
    .end local v6           #orientation:I
    .end local v7           #previewSize:Lcom/android/camera/imaging/Size;
    .end local v8           #r:Lcom/android/camera/Resolution;
    .end local v9           #sensorOrientation:I
    .end local v11           #sizeDiff:I
    .end local v12           #strResolution:Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v15, "capture-mode"

    const-string v16, "normal"

    invoke-virtual/range {v14 .. v16}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1606
    .restart local v4       #isSlowMotion:Z
    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/CameraThread;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v14, v14, Lcom/android/camera/CameraSettings;->recordWithAudio:Lcom/android/camera/property/Property;

    invoke-virtual {v14}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 1607
    .local v5, keepSound:Z
    if-eqz v5, :cond_c

    .line 1608
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->disableSoundEffect()V

    .line 1609
    :cond_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v15, "cam-mode"

    const/16 v16, 0x2

    invoke-virtual/range {v14 .. v16}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 1617
    .end local v5           #keepSound:Z
    :cond_d
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 1629
    .end local v4           #isSlowMotion:Z
    :cond_e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v15, "cam-mode"

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    .line 1631
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/android/camera/CameraController;->setRecordingHint(Z)V

    .line 1634
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v16, "cache-first-frame"

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/camera/CameraThread;->mIsFirstFrameCached:Z

    if-eqz v14, :cond_f

    const/4 v14, 0x1

    :goto_9
    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v14}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;I)V

    goto/16 :goto_4

    :cond_f
    const/4 v14, 0x0

    goto :goto_9

    .line 1643
    :cond_10
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const/4 v15, 0x1

    const v16, 0x30d40

    invoke-virtual/range {v14 .. v16}, Lcom/android/camera/CameraController;->setPreviewFpsRange(II)V

    goto/16 :goto_5

    .line 1665
    .restart local v6       #orientation:I
    .restart local v9       #sensorOrientation:I
    :cond_11
    sub-int v6, v9, v6

    goto/16 :goto_6

    .line 1692
    .restart local v1       #ModeHdr:Lcom/android/camera/MovieModeHandler;
    .restart local v7       #previewSize:Lcom/android/camera/imaging/Size;
    .restart local v8       #r:Lcom/android/camera/Resolution;
    .restart local v12       #strResolution:Ljava/lang/String;
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/CameraThread;->Camera_Preview_Width:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->Camera_Preview_Height:I

    move/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lcom/android/camera/CameraController;->setPreviewSizeParameter(II)V

    .line 1693
    const-string v14, "CameraThread"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "SetPreviewSize: CAMERA MODE, Width = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->Camera_Preview_Width:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", Height = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->Camera_Preview_Height:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1695
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/CameraThread;->Camera_Mode_Width:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->Camera_Mode_Height:I

    move/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lcom/android/camera/CameraController;->setPictureSizeParameter(II)V

    .line 1696
    const-string v14, "CameraThread"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "SetPictureSize: CAMERA MODE, Width = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->Camera_Mode_Width:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", Height = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->Camera_Mode_Height:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1697
    const-string v14, "CameraThread"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Camera mode RESET_SURFACEVIEW_LAYOUT width= "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->Camera_Preview_Width:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", Height = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->Camera_Preview_Height:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1700
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/camera/CameraThread;->Camera_Preview_Width:I

    iput v14, v7, Lcom/android/camera/imaging/Size;->width:I

    .line 1701
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/camera/CameraThread;->Camera_Preview_Height:I

    iput v14, v7, Lcom/android/camera/imaging/Size;->height:I

    goto/16 :goto_7

    .line 1706
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraThread;->isSlowMotionMode()Z

    move-result v14

    if-eqz v14, :cond_13

    .line 1708
    invoke-static {}, Lcom/android/camera/MovieModeHandler;->getMovieModeHandler()Lcom/android/camera/MovieModeHandler;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/camera/MovieModeHandler;->getSlowMotionResolution()Lcom/android/camera/imaging/Size;

    move-result-object v10

    .line 1709
    .local v10, size:Lcom/android/camera/imaging/Size;
    iget v14, v10, Lcom/android/camera/imaging/Size;->width:I

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/camera/CameraThread;->Video_Mode_Width:I

    .line 1710
    iget v14, v10, Lcom/android/camera/imaging/Size;->height:I

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/camera/CameraThread;->Video_Mode_Height:I

    .line 1711
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v15, "video-mode"

    const-string v16, "1"

    invoke-virtual/range {v14 .. v16}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1712
    const-string v14, "CameraThread"

    const-string v15, "Enable slow motion mode"

    invoke-static {v14, v15}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1720
    .end local v10           #size:Lcom/android/camera/imaging/Size;
    :goto_a
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/camera/CameraThread;->Video_Mode_Width:I

    const/16 v15, 0x780

    if-ne v14, v15, :cond_14

    if-eqz v6, :cond_12

    const/16 v14, 0xb4

    if-ne v6, v14, :cond_14

    .line 1722
    :cond_12
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/CameraThread;->Video_Mode_Width:I

    const/16 v16, 0x438

    invoke-virtual/range {v14 .. v16}, Lcom/android/camera/CameraController;->setPreviewSizeParameter(II)V

    .line 1725
    :goto_b
    const-string v14, "CameraThread"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "SetPreviewSize in start_preview: VIDEO MODE, Width = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->Video_Mode_Width:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", Height = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->Video_Mode_Height:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1729
    const-string v14, "CameraThread"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Video mode in start_preview RESET_SURFACEVIEW_LAYOUT width= "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->Video_Mode_Width:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", Height = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->Video_Mode_Height:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1732
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/camera/CameraThread;->Video_Mode_Width:I

    iput v14, v7, Lcom/android/camera/imaging/Size;->width:I

    .line 1733
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/camera/CameraThread;->Video_Mode_Height:I

    iput v14, v7, Lcom/android/camera/imaging/Size;->height:I

    goto/16 :goto_7

    .line 1716
    :cond_13
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v15, "video-mode"

    const-string v16, "0"

    invoke-virtual/range {v14 .. v16}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1717
    const-string v14, "CameraThread"

    const-string v15, "Disable slow motion mode"

    invoke-static {v14, v15}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 1724
    :cond_14
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/CameraThread;->Video_Mode_Width:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/CameraThread;->Video_Mode_Height:I

    move/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lcom/android/camera/CameraController;->setPreviewSizeParameter(II)V

    goto/16 :goto_b

    .line 1758
    .restart local v3       #info:Lcom/android/camera/CameraController$SettingInfo;
    .restart local v11       #sizeDiff:I
    :cond_15
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v3}, Lcom/android/camera/CameraController$SettingInfo;->getMin()I

    move-result v15

    invoke-virtual {v14, v15}, Lcom/android/camera/CameraController;->setZoom(I)V

    goto/16 :goto_8

    .line 1688
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setupPreviewCallback()V
    .locals 5

    .prologue
    .line 4742
    const-string v3, "CameraThread"

    const-string v4, "setupPreviewCallback() - start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4745
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v3, :cond_0

    .line 4747
    const-string v3, "CameraThread"

    const-string v4, "No camera device to setup preview call-back"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 4787
    :goto_0
    return-void

    .line 4750
    :cond_0
    iget-boolean v3, p0, Lcom/android/camera/CameraThread;->mCanSetPreviewCallback:Z

    if-nez v3, :cond_1

    .line 4752
    const-string v3, "CameraThread"

    const-string v4, "Cannot set preview call-back due to current state"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4755
    :cond_1
    iget-object v3, p0, Lcom/android/camera/CameraThread;->previewFrameRetrievedEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v3}, Lcom/android/camera/event/Event;->hasHandlers()Z

    move-result v3

    if-nez v3, :cond_2

    .line 4757
    const-string v3, "CameraThread"

    const-string v4, "setupPreviewCallback() - No handlers for receiving preview frame"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4762
    :cond_2
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 4763
    .local v0, parameters:Landroid/hardware/Camera$Parameters;
    if-nez v0, :cond_3

    .line 4765
    const-string v3, "CameraThread"

    const-string v4, "Cannot get camera parameters"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4770
    :cond_3
    iget-object v3, p0, Lcom/android/camera/CameraThread;->previewSize:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/imaging/Size;

    .line 4771
    .local v1, previewSize:Lcom/android/camera/imaging/Size;
    if-nez v1, :cond_4

    .line 4773
    const-string v3, "CameraThread"

    const-string v4, "Cannot get preview size"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4778
    :cond_4
    iget v3, v1, Lcom/android/camera/imaging/Size;->width:I

    mul-int/lit8 v3, v3, 0xc

    div-int/lit8 v2, v3, 0x8

    .line 4781
    .local v2, stride:I
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    iget v4, v1, Lcom/android/camera/imaging/Size;->height:I

    mul-int/2addr v4, v2

    new-array v4, v4, [B

    invoke-virtual {v3, v4}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 4784
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v4, p0, Lcom/android/camera/CameraThread;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v3, v4}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 4786
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

    .line 1892
    const-string v3, "CameraThread"

    const-string v4, "startPreviewDirectlyInternal() - start"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1895
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v3, :cond_1

    .line 1897
    const-string v1, "CameraThread"

    const-string v3, "startPreviewDirectlyInternal() - no camera"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 1978
    :cond_0
    :goto_0
    return v1

    .line 1900
    :cond_1
    iget-boolean v3, p0, Lcom/android/camera/CameraThread;->mPreviewing:Z

    if-eqz v3, :cond_2

    .line 1902
    const-string v2, "CameraThread"

    const-string v3, "startPreviewDirectlyInternal() - already previewing"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1907
    :cond_2
    iget-object v3, p0, Lcom/android/camera/CameraThread;->storageState:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/android/camera/io/StorageState;->Full:Lcom/android/camera/io/StorageState;

    if-ne v3, v4, :cond_3

    .line 1908
    iget-object v3, p0, Lcom/android/camera/CameraThread;->storageState:Lcom/android/camera/property/Property;

    iget-object v4, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v5, Lcom/android/camera/io/StorageState;->OK:Lcom/android/camera/io/StorageState;

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1911
    :cond_3
    iget-object v3, p0, Lcom/android/camera/CameraThread;->previewStartingEvent:Lcom/android/camera/event/Event;

    sget-object v4, Lcom/android/camera/event/EventArgs;->empty:Lcom/android/camera/event/EventArgs;

    invoke-virtual {v3, p0, v4}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 1916
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->getSurfaceStateSyncRoot()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1918
    :try_start_1
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->isSurfaceAvailable()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1920
    const-string v3, "CameraThread"

    const-string v5, "mCameraDevice.startPreview() - start"

    invoke-static {v3, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1921
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->startPreview()V

    .line 1922
    const-string v3, "CameraThread"

    const-string v5, "mCameraDevice.startPreview() - end"

    invoke-static {v3, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1923
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/camera/CameraThread;->mPreviewing:Z

    .line 1929
    :goto_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1939
    :cond_4
    :goto_2
    iget-boolean v3, p0, Lcom/android/camera/CameraThread;->mIsFirstTimeToStartPreview:Z

    if-eqz v3, :cond_5

    .line 1942
    iput-boolean v1, p0, Lcom/android/camera/CameraThread;->mIsFirstTimeToStartPreview:Z

    .line 1945
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mComponentFactory:Lcom/android/camera/component/CameraThreadComponentFactory;

    sget-object v4, Lcom/android/camera/component/ComponentCategory;->Normal:Lcom/android/camera/component/ComponentCategory;

    invoke-virtual {v3, v4}, Lcom/android/camera/component/CameraThreadComponentFactory;->createComponents(Lcom/android/camera/component/ComponentCategory;)I

    .line 1949
    :cond_5
    iget-boolean v3, p0, Lcom/android/camera/CameraThread;->mPreviewing:Z

    if-eqz v3, :cond_6

    .line 1950
    iget-object v3, p0, Lcom/android/camera/CameraThread;->previewStartedEvent:Lcom/android/camera/event/Event;

    sget-object v4, Lcom/android/camera/event/EventArgs;->empty:Lcom/android/camera/event/EventArgs;

    invoke-virtual {v3, p0, v4}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 1953
    :cond_6
    iget-boolean v3, p0, Lcom/android/camera/CameraThread;->mPreviewing:Z

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraThread$MainHandler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1956
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v4, 0x2d

    invoke-static {v3, v4}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 1959
    iput-boolean v6, p0, Lcom/android/camera/CameraThread;->mCanSetPreviewCallback:Z

    .line 1960
    iget v3, p0, Lcom/android/camera/CameraThread;->mPreviewCallbackDisableCounter:I

    if-gtz v3, :cond_7

    .line 1961
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->setupPreviewCallback()V

    .line 1965
    :cond_7
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mShutterSoundHandle:Lcom/android/camera/Handle;

    if-nez v3, :cond_8

    .line 1966
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mAudioManager:Lcom/android/camera/IAudioManager;

    const v4, 0x7f060004

    invoke-interface {v3, v4}, Lcom/android/camera/IAudioManager;->loadSoundToMemory(I)Lcom/android/camera/Handle;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/CameraThread;->mShutterSoundHandle:Lcom/android/camera/Handle;

    .line 1969
    :cond_8
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v3, v4, :cond_a

    .line 1971
    const-string v3, "[ANALYTIC_com.android.camera]"

    const-string v4, "[camera_preview]complete"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 1977
    :goto_3
    const-string v3, "CameraThread"

    const-string v4, "startPreviewDirectlyInternal() - end"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1978
    iget-boolean v3, p0, Lcom/android/camera/CameraThread;->mPreviewing:Z

    if-nez v3, :cond_0

    move v1, v2

    goto/16 :goto_0

    .line 1927
    :cond_9
    :try_start_2
    const-string v3, "CameraThread"

    const-string v5, "startPreviewDirectlyInternal() - Surface is not available"

    invoke-static {v3, v5}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1929
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 1931
    :catch_0
    move-exception v0

    .line 1933
    .local v0, ex:Ljava/lang/Throwable;
    const-string v3, "CameraThread"

    const-string v4, "start preview failed"

    invoke-static {v3, v4, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1934
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    if-eqz v3, :cond_4

    .line 1935
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->finish()V

    goto :goto_2

    .line 1974
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

    .line 1785
    const-string v4, "CameraThread"

    const-string v5, "startPreviewInternal() - Start"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1787
    iget-boolean v4, p0, Lcom/android/camera/CameraThread;->mPreviewing:Z

    if-ne v4, v7, :cond_0

    .line 1789
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

    .line 1865
    :goto_0
    :pswitch_0
    return v2

    .line 1794
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->isRecPowerWarning()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1796
    const-string v3, "CameraThread"

    const-string v4, "isRecPowerWarning(), won\'t start preview"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1801
    :cond_1
    iget-object v4, p0, Lcom/android/camera/CameraThread;->storageState:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lcom/android/camera/io/StorageState;->Full:Lcom/android/camera/io/StorageState;

    if-ne v4, v5, :cond_2

    .line 1802
    iget-object v4, p0, Lcom/android/camera/CameraThread;->storageState:Lcom/android/camera/property/Property;

    iget-object v5, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v6, Lcom/android/camera/io/StorageState;->OK:Lcom/android/camera/io/StorageState;

    invoke-virtual {v4, v5, v6}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1805
    :cond_2
    if-nez p1, :cond_4

    .line 1806
    iget-object v4, p0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/android/camera/CameraType;

    .line 1814
    .restart local p1
    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v4, :cond_5

    .line 1816
    invoke-virtual {p0, p1}, Lcom/android/camera/CameraThread;->openCamera(Lcom/android/camera/CameraType;)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 1825
    :pswitch_1
    const/4 v2, 0x4

    goto :goto_0

    .line 1807
    :cond_4
    iget-object v4, p0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eq p1, v4, :cond_3

    .line 1809
    const-string v4, "CameraThread"

    const-string v5, "Start preview with different camera, close previous camera first"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1810
    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->closeCamera()V

    goto :goto_1

    .line 1823
    :pswitch_2
    const/4 v2, 0x3

    goto :goto_0

    .line 1827
    :pswitch_3
    const/4 p2, 0x1

    .line 1831
    :cond_5
    iget-boolean v4, p0, Lcom/android/camera/CameraThread;->mIsParamsPrepared:Z

    if-nez v4, :cond_6

    .line 1832
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->setupParamsBeforeStartingPreview()V

    .line 1840
    :goto_2
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1841
    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v4, v3}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 1845
    :goto_3
    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v4}, Lcom/android/camera/HTCCamera;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    .line 1847
    .local v1, holder:Landroid/view/SurfaceHolder;
    :try_start_0
    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v4, v1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1854
    :goto_4
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->startPreviewDirectlyInternal()I

    move-result v2

    .line 1857
    .local v2, result:I
    iget-boolean v4, p0, Lcom/android/camera/CameraThread;->mIsOnlySetResolution:Z

    if-nez v4, :cond_8

    if-ne p2, v7, :cond_8

    .line 1858
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->loadSettings()V

    .line 1859
    iget-object v3, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v3}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    .line 1863
    :goto_5
    const-string v3, "CameraThread"

    const-string v4, "startPreviewInternal() - End"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1835
    .end local v1           #holder:Landroid/view/SurfaceHolder;
    .end local v2           #result:I
    :cond_6
    const-string v4, "CameraThread"

    const-string v5, "startPreviewInternal() - No need to setup parameters"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1836
    iput-boolean v3, p0, Lcom/android/camera/CameraThread;->mIsParamsPrepared:Z

    goto :goto_2

    .line 1843
    :cond_7
    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    const/16 v5, 0x5a

    invoke-virtual {v4, v5}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    goto :goto_3

    .line 1848
    .restart local v1       #holder:Landroid/view/SurfaceHolder;
    :catch_0
    move-exception v0

    .line 1849
    .local v0, ex:Ljava/io/IOException;
    const-string v4, "CameraThread"

    const-string v5, "mCameraDevice.setPreviewDisplay failed"

    invoke-static {v4, v5, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1850
    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v4}, Lcom/android/camera/HTCCamera;->finish()V

    goto :goto_4

    .line 1861
    .end local v0           #ex:Ljava/io/IOException;
    .restart local v2       #result:I
    :cond_8
    iput-boolean v3, p0, Lcom/android/camera/CameraThread;->mIsOnlySetResolution:Z

    goto :goto_5

    .line 1816
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
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 2084
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->cancelAutoFocusInternal()V

    .line 2087
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportStereoRecord()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2089
    iget-object v5, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-static {v5}, Lcom/android/camera/HTCCameraAdvanceSetting;->getIsRecordWithAudio(Landroid/content/Context;)Z

    move-result v3

    .line 2090
    .local v3, keepSound:Z
    if-eqz v3, :cond_0

    .line 2092
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->disableSoundEffect()V

    .line 2096
    .end local v3           #keepSound:Z
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/android/camera/CameraThread;->mCaptureStartTime:J

    sub-long/2addr v5, v7

    iput-wide v5, p0, Lcom/android/camera/CameraThread;->mCaptureDuration:J

    .line 2097
    iget-object v5, p0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    if-eqz v5, :cond_1

    .line 2100
    :try_start_0
    iget-object v5, p0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v5}, Landroid/media/MediaRecorder;->stop()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2110
    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->isRecPowerWarning()Z

    move-result v5

    if-nez v5, :cond_2

    .line 2111
    iget-object v5, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v5}, Landroid/hardware/Camera;->reconnect()V

    .line 2112
    :cond_2
    const-string v5, "CameraThread"

    const-string v6, "stop video recording : reconnect camera device"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2118
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->isRecPowerWarning()Z

    move-result v5

    if-nez v5, :cond_3

    .line 2120
    iget-object v5, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v5}, Landroid/hardware/Camera;->stopPreview()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 2125
    :cond_3
    :goto_2
    iget-object v5, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v5}, Lcom/android/camera/HTCCamera;->restoreBackgrounddataSetting()V

    .line 2131
    :try_start_3
    iget-object v5, p0, Lcom/android/camera/CameraThread;->mRecordingVideoFilePath:Lcom/android/camera/io/DCFPath;

    invoke-virtual {v5}, Lcom/android/camera/io/DCFPath;->getFullPath()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/CameraThread;->mRecordingVideoFileFormat:Lcom/android/camera/io/FileFormat;

    iget-object v6, v6, Lcom/android/camera/io/FileFormat;->mimeType:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/android/camera/imaging/ThumbnailUtility;->createThumbnailImage(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v4

    .line 2138
    .local v4, thumb:Landroid/graphics/Bitmap;
    :goto_3
    iget-object v5, p0, Lcom/android/camera/CameraThread;->videoThumbnailCreatedEvent:Lcom/android/camera/event/Event;

    new-instance v6, Lcom/android/camera/imaging/ThumbnailEventArgs;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/camera/CameraThread;->mRecordingVideoFilePath:Lcom/android/camera/io/DCFPath;

    invoke-direct {v6, v7, v8, v4}, Lcom/android/camera/imaging/ThumbnailEventArgs;-><init>(Landroid/net/Uri;Lcom/android/camera/io/Path;Landroid/graphics/Bitmap;)V

    invoke-virtual {v5, p0, v6}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 2139
    if-eqz v4, :cond_4

    .line 2141
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 2142
    const/4 v4, 0x0

    .line 2146
    :cond_4
    iget-wide v0, p0, Lcom/android/camera/CameraThread;->mLatestCaptureID:J

    .line 2147
    .local v0, captureID:J
    iget-object v5, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    sget-object v6, Lcom/android/camera/IntentManager$RequestMode;->Main:Lcom/android/camera/IntentManager$RequestMode;

    invoke-virtual {v5, v6}, Lcom/android/camera/HTCCamera;->isRequestMode(Lcom/android/camera/IntentManager$RequestMode;)Z

    move-result v5

    if-eq v5, v9, :cond_5

    iget-object v5, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    sget-object v6, Lcom/android/camera/IntentManager$RequestName;->Album:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v5, v6}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v5

    if-ne v5, v9, :cond_9

    .line 2149
    :cond_5
    iget-object v5, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    if-eqz v5, :cond_8

    .line 2151
    iget-wide v5, p0, Lcom/android/camera/CameraThread;->mCaptureDuration:J

    invoke-direct {p0, v0, v1, v5, v6}, Lcom/android/camera/CameraThread;->stopVideoRecordingDelay(JJ)V

    .line 2161
    :goto_4
    iget-object v5, p0, Lcom/android/camera/CameraThread;->isRecording:Lcom/android/camera/property/Property;

    iget-object v6, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2164
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isNvidiaPlatform()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2166
    const-string v5, "CameraThread"

    const-string v6, "[NV] Release recording semaphore"

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2167
    iget-object v5, p0, Lcom/android/camera/CameraThread;->m_SemaphoreRecording:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->release()V

    .line 2176
    :cond_6
    iget-object v5, p0, Lcom/android/camera/CameraThread;->mAudioManager:Lcom/android/camera/IAudioManager;

    if-eqz v5, :cond_7

    .line 2177
    iget-object v5, p0, Lcom/android/camera/CameraThread;->mAudioManager:Lcom/android/camera/IAudioManager;

    const-string v6, "CAMCORDER_MODE=OFF"

    invoke-interface {v5, v6}, Lcom/android/camera/IAudioManager;->setParameters(Ljava/lang/String;)V

    .line 2179
    :cond_7
    return-void

    .line 2101
    .end local v0           #captureID:J
    .end local v4           #thumb:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v2

    .line 2102
    .local v2, ex:Ljava/lang/RuntimeException;
    const-string v5, "CameraThread"

    const-string v6, "mRecorder.stop() - Runtime exception caught"

    invoke-static {v5, v6, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 2113
    .end local v2           #ex:Ljava/lang/RuntimeException;
    :catch_1
    move-exception v2

    .line 2114
    .local v2, ex:Ljava/io/IOException;
    const-string v5, "CameraThread"

    const-string v6, "camera reconnect exception."

    invoke-static {v5, v6, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 2122
    .end local v2           #ex:Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 2123
    .local v2, ex:Ljava/lang/Exception;
    const-string v5, "CameraThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "stop preview exception."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2133
    .end local v2           #ex:Ljava/lang/Exception;
    :catch_3
    move-exception v2

    .line 2135
    .local v2, ex:Ljava/lang/Throwable;
    const/4 v4, 0x0

    .line 2136
    .restart local v4       #thumb:Landroid/graphics/Bitmap;
    const-string v5, "CameraThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot create video thumbnail for \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/CameraThread;->mRecordingVideoFilePath:Lcom/android/camera/io/DCFPath;

    invoke-virtual {v7}, Lcom/android/camera/io/DCFPath;->getFullPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 2153
    .end local v2           #ex:Ljava/lang/Throwable;
    .restart local v0       #captureID:J
    :cond_8
    iget-wide v5, p0, Lcom/android/camera/CameraThread;->mCaptureDuration:J

    invoke-direct {p0, v0, v1, v5, v6}, Lcom/android/camera/CameraThread;->stopVideoRecordingDelay(JJ)V

    goto/16 :goto_4

    .line 2156
    :cond_9
    iget-wide v5, p0, Lcom/android/camera/CameraThread;->mCaptureDuration:J

    invoke-direct {p0, v0, v1, v5, v6}, Lcom/android/camera/CameraThread;->stopVideoRecordingDelay(JJ)V

    goto/16 :goto_4
.end method

.method private stopVideoRecordingDelay(JJ)V
    .locals 23
    .parameter "captureID"
    .parameter "duration"

    .prologue
    .line 2186
    const-string v1, "CameraThread"

    const-string v2, "stopVideoRecordingDelay() - start"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2193
    :try_start_0
    new-instance v22, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraThread;->mRecordingVideoFilePath:Lcom/android/camera/io/DCFPath;

    invoke-virtual {v1}, Lcom/android/camera/io/DCFPath;->getFullPath()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v22

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2194
    .local v22, file:Ljava/io/File;
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->lastModified()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v7

    .line 2203
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

    .line 2214
    .local v12, contentUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraThread;->mLastMediaInfo:Lcom/android/camera/MediaInfo;

    iput-object v12, v1, Lcom/android/camera/MediaInfo;->contentUri:Landroid/net/Uri;

    .line 2215
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraThread;->mLastMediaInfo:Lcom/android/camera/MediaInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mRecordingVideoFilePath:Lcom/android/camera/io/DCFPath;

    iput-object v2, v1, Lcom/android/camera/MediaInfo;->filePath:Lcom/android/camera/io/Path;

    .line 2216
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraThread;->mLastMediaInfo:Lcom/android/camera/MediaInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/CameraThread;->mRecordingVideoFileFormat:Lcom/android/camera/io/FileFormat;

    iget-object v2, v2, Lcom/android/camera/io/FileFormat;->mimeType:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/camera/MediaInfo;->mimeType:Ljava/lang/String;

    .line 2219
    new-instance v9, Lcom/android/camera/MediaEventArgs;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/CameraThread;->mRecordingVideoFilePath:Lcom/android/camera/io/DCFPath;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/CameraThread;->mRecordingVideoFileFormat:Lcom/android/camera/io/FileFormat;

    const/4 v15, 0x1

    move-wide/from16 v10, p1

    invoke-direct/range {v9 .. v15}, Lcom/android/camera/MediaEventArgs;-><init>(JLandroid/net/Uri;Lcom/android/camera/io/Path;Lcom/android/camera/io/FileFormat;Z)V

    .line 2220
    .local v9, e:Lcom/android/camera/MediaEventArgs;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/CameraThread;->mediaSavedEvent:Lcom/android/camera/event/Event;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0, v9}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2229
    .end local v7           #modifiedTime:J
    .end local v12           #contentUri:Landroid/net/Uri;
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->releaseMediaRecorder()V

    .line 2232
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraThread;->setRecPowerWarning(Z)V

    .line 2234
    const-string v1, "CameraThread"

    const-string v2, "stopVideoRecordingDelay() - end"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2235
    return-void

    .line 2196
    .end local v9           #e:Lcom/android/camera/MediaEventArgs;
    :catch_0
    move-exception v21

    .line 2198
    .local v21, ex:Ljava/lang/Throwable;
    :try_start_2
    const-string v1, "CameraThread"

    const-string v2, "stopVideoRecordingDelay() - Cannot get video file modified time"

    move-object/from16 v0, v21

    invoke-static {v1, v2, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 2199
    const-wide/16 v7, 0x0

    .restart local v7       #modifiedTime:J
    goto :goto_0

    .line 2222
    .end local v7           #modifiedTime:J
    .end local v21           #ex:Ljava/lang/Throwable;
    :catch_1
    move-exception v21

    .line 2224
    .local v21, ex:Ljava/lang/Exception;
    const-string v1, "CameraThread"

    const-string v2, "stopVideoRecordingDelay() - create uri failed!!"

    move-object/from16 v0, v21

    invoke-static {v1, v2, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2225
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

    .line 2226
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

    .line 601
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    sget-object v2, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 603
    sget-object v1, Lcom/android/camera/TIME;->ShutterCallback:Lcom/android/camera/TIME$Value;

    invoke-virtual {v1}, Lcom/android/camera/TIME$Value;->Start()V

    .line 604
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

    .line 617
    :goto_0
    return-void

    .line 614
    :cond_1
    sget-object v1, Lcom/android/camera/TIME;->JpegCallback:Lcom/android/camera/TIME$Value;

    invoke-virtual {v1}, Lcom/android/camera/TIME$Value;->Start()V

    .line 615
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    invoke-virtual {v1, v0, v0, v2}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    goto :goto_0
.end method

.method private final threadAccessCheck()V
    .locals 2

    .prologue
    .line 4630
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 4631
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "cross-thread access"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4632
    :cond_0
    return-void
.end method

.method private toggleStorageSlot()V
    .locals 4

    .prologue
    .line 4034
    iget-object v1, p0, Lcom/android/camera/CameraThread;->storageSlot:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v1}, Lcom/android/camera/io/StorageSlot;->isInternalMemory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4036
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

    .line 4037
    iget-object v1, p0, Lcom/android/camera/CameraThread;->storageSlot:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/android/camera/io/StorageSlot;->STORAGE_CARD:Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4050
    :goto_0
    return-void

    .line 4041
    :cond_0
    invoke-static {}, Lcom/android/camera/io/StorageSlot;->getFirstInternalMemorySlot()Lcom/android/camera/io/StorageSlot;

    move-result-object v0

    .line 4042
    .local v0, slot:Lcom/android/camera/io/StorageSlot;
    if-eqz v0, :cond_1

    .line 4044
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

    .line 4045
    iget-object v1, p0, Lcom/android/camera/CameraThread;->storageSlot:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 4048
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

    .line 2911
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    sget-object v5, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v2, v5, :cond_0

    move v2, v3

    .line 2922
    :goto_0
    return v2

    .line 2914
    :cond_0
    invoke-static {}, Lcom/android/camera/MovieModeHandler;->getMovieModeHandler()Lcom/android/camera/MovieModeHandler;

    move-result-object v0

    .line 2915
    .local v0, mModeHdr:Lcom/android/camera/ModeHandler;
    iget-object v5, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v2, p0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/CameraType;

    invoke-virtual {v0, v5, v2}, Lcom/android/camera/MovieModeHandler;->getCurrentResolutionSettingValue(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraType;)Lcom/android/camera/Resolution;

    move-result-object v1

    .line 2917
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

    .line 2918
    goto :goto_0

    .line 2919
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

    .line 2920
    goto :goto_0

    :cond_4
    move v2, v3

    .line 2922
    goto :goto_0
.end method

.method public final autoFocus([Landroid/graphics/PointF;Lcom/android/camera/AutoFocusMode;)V
    .locals 2
    .parameter "focusPoints"
    .parameter "focusMode"

    .prologue
    .line 5023
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 5041
    :cond_0
    :goto_0
    return-void

    .line 5027
    :cond_1
    new-instance v0, Lcom/android/camera/AutoFocusEventArgs;

    invoke-direct {v0, p1, p2}, Lcom/android/camera/AutoFocusEventArgs;-><init>([Landroid/graphics/PointF;Lcom/android/camera/AutoFocusMode;)V

    .line 5028
    .local v0, e:Lcom/android/camera/AutoFocusEventArgs;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v1, p0, :cond_2

    .line 5030
    new-instance v1, Lcom/android/camera/CameraThread$14;

    invoke-direct {v1, p0, v0}, Lcom/android/camera/CameraThread$14;-><init>(Lcom/android/camera/CameraThread;Lcom/android/camera/AutoFocusEventArgs;)V

    invoke-virtual {p0, v1}, Lcom/android/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 5040
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/camera/CameraThread;->autoFocusInternal(Lcom/android/camera/AutoFocusEventArgs;)V

    goto :goto_0
.end method

.method public final autoFocus([Landroid/graphics/RectF;Lcom/android/camera/AutoFocusMode;)V
    .locals 2
    .parameter "focusAreas"
    .parameter "focusMode"

    .prologue
    .line 5045
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 5063
    :cond_0
    :goto_0
    return-void

    .line 5049
    :cond_1
    new-instance v0, Lcom/android/camera/AutoFocusEventArgs;

    invoke-direct {v0, p1, p2}, Lcom/android/camera/AutoFocusEventArgs;-><init>([Landroid/graphics/RectF;Lcom/android/camera/AutoFocusMode;)V

    .line 5050
    .local v0, e:Lcom/android/camera/AutoFocusEventArgs;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v1, p0, :cond_2

    .line 5052
    new-instance v1, Lcom/android/camera/CameraThread$15;

    invoke-direct {v1, p0, v0}, Lcom/android/camera/CameraThread$15;-><init>(Lcom/android/camera/CameraThread;Lcom/android/camera/AutoFocusEventArgs;)V

    invoke-virtual {p0, v1}, Lcom/android/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 5062
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/camera/CameraThread;->autoFocusInternal(Lcom/android/camera/AutoFocusEventArgs;)V

    goto :goto_0
.end method

.method public final autoFocus([Landroid/graphics/RectF;[Landroid/graphics/RectF;Lcom/android/camera/AutoFocusMode;)V
    .locals 2
    .parameter "focusAreas"
    .parameter "meteringAreas"
    .parameter "focusMode"

    .prologue
    .line 5068
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 5087
    :cond_0
    :goto_0
    return-void

    .line 5073
    :cond_1
    new-instance v0, Lcom/android/camera/AutoFocusEventArgs;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/camera/AutoFocusEventArgs;-><init>([Landroid/graphics/RectF;[Landroid/graphics/RectF;Lcom/android/camera/AutoFocusMode;)V

    .line 5074
    .local v0, e:Lcom/android/camera/AutoFocusEventArgs;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v1, p0, :cond_2

    .line 5076
    new-instance v1, Lcom/android/camera/CameraThread$16;

    invoke-direct {v1, p0, v0}, Lcom/android/camera/CameraThread$16;-><init>(Lcom/android/camera/CameraThread;Lcom/android/camera/AutoFocusEventArgs;)V

    invoke-virtual {p0, v1}, Lcom/android/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 5086
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
    .line 5160
    .local p1, source:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<*>;"
    .local p2, target:Lcom/android/camera/property/Property;,"Lcom/android/camera/property/Property<*>;"
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->threadAccessCheck()V

    .line 5163
    if-nez p1, :cond_0

    .line 5165
    const-string v0, "source"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 5166
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 5168
    :cond_0
    if-nez p2, :cond_1

    .line 5170
    const-string v0, "target"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 5171
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 5173
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/android/camera/property/Property;->checkOwnerKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5175
    const-string v0, "CameraThread"

    const-string v1, "bindProperty() - Cannot bind from CameraThread\'s property"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 5176
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 5178
    :cond_2
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {p2, v0}, Lcom/android/camera/property/Property;->checkOwnerKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 5180
    const-string v0, "CameraThread"

    const-string v1, "bindProperty() - Can only bind to CameraThread\'s property"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 5181
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 5185
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

    .line 5186
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-virtual {p2, p1, v0}, Lcom/android/camera/property/Property;->bind(Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    .line 5187
    return-void
.end method

.method public calculatePicturesRemaining()J
    .locals 2

    .prologue
    .line 3816
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
    .line 3819
    const-string v13, "CameraThread"

    const-string v14, "calculatePicturesRemaining() - start"

    invoke-static {v13, v14}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 3821
    const-wide/16 v4, 0x0

    .line 3823
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

    .line 3825
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

    .line 3827
    .local v2, fSize:J
    const-wide/16 v13, -0x1

    cmp-long v13, v13, v2

    if-nez v13, :cond_0

    .line 3828
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

    .line 3830
    const-wide/32 v2, 0x61a80

    .line 3835
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/CameraThread;->storageSlot:Lcom/android/camera/property/Property;

    invoke-virtual {v13}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/camera/io/StorageSlot;

    iget-object v12, v13, Lcom/android/camera/io/StorageSlot;->directoryPath:Ljava/lang/String;

    .line 3837
    .local v12, storageDirectory:Ljava/lang/String;
    new-instance v11, Landroid/os/StatFs;

    invoke-direct {v11, v12}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 3838
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

    .line 3840
    .local v9, space:J
    div-long v6, v9, v2

    .line 3841
    .local v6, remaining:J
    move-wide v4, v6

    .line 3843
    const-wide/16 v13, 0x0

    cmp-long v13, v4, v13

    if-gez v13, :cond_1

    .line 3844
    const-wide/16 v4, 0x0

    .line 3846
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

    .line 3854
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

    .line 3855
    return-wide v4

    .line 3848
    :catch_0
    move-exception v1

    .line 3849
    .local v1, ex:Ljava/lang/Exception;
    const-string v13, "CameraThread"

    const-string v14, "catch - calculatePicturesRemaining with exception: "

    invoke-static {v13, v14, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3850
    const-string v13, "CameraThread"

    const-string v14, "return freeshot = -1"

    invoke-static {v13, v14}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 3851
    const-wide/16 v4, -0x1

    goto :goto_0
.end method

.method public canTakePicture()Z
    .locals 1

    .prologue
    .line 2869
    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mbCanTakePicture:Z

    return v0
.end method

.method public final cancelAutoFocus()V
    .locals 1

    .prologue
    .line 5120
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 5122
    new-instance v0, Lcom/android/camera/CameraThread$17;

    invoke-direct {v0, p0}, Lcom/android/camera/CameraThread$17;-><init>(Lcom/android/camera/CameraThread;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 5133
    :goto_0
    return-void

    .line 5132
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->cancelAutoFocusInternal()V

    goto :goto_0
.end method

.method public final cancelClosingCamera()V
    .locals 2

    .prologue
    .line 4145
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 4146
    return-void
.end method

.method public final cancelOpeningCamera()V
    .locals 2

    .prologue
    .line 1560
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 1561
    return-void
.end method

.method public final cancelStartingPreview()V
    .locals 2

    .prologue
    .line 1986
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 1987
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 1988
    return-void
.end method

.method public changeMode(Lcom/android/camera/CameraMode;)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 4965
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 4967
    new-instance v0, Lcom/android/camera/CameraThread$13;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/CameraThread$13;-><init>(Lcom/android/camera/CameraThread;Lcom/android/camera/CameraMode;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 4977
    :goto_0
    return-void

    .line 4976
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/CameraThread;->changeModeInternal(Lcom/android/camera/CameraMode;)V

    goto :goto_0
.end method

.method public changeStorageSlot(Lcom/android/camera/io/StorageSlot;)V
    .locals 2
    .parameter "slot"

    .prologue
    .line 4850
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq v0, p0, :cond_1

    .line 4852
    new-instance v0, Lcom/android/camera/CameraThread$12;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/CameraThread$12;-><init>(Lcom/android/camera/CameraThread;Lcom/android/camera/io/StorageSlot;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4861
    const-string v0, "CameraThread"

    const-string v1, "changeStorageSlot() - no camera handler"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 4866
    :cond_0
    :goto_0
    return-void

    .line 4865
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/camera/CameraThread;->changeStorageSlotInternal(Lcom/android/camera/io/StorageSlot;)V

    goto :goto_0
.end method

.method public final changeZoom(I)V
    .locals 6
    .parameter "zoom"

    .prologue
    const/16 v5, 0x46

    .line 4448
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v2, p0, :cond_9

    .line 4450
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

    .line 4453
    iget-object v2, p0, Lcom/android/camera/CameraThread;->zoomValue:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 4454
    .local v1, oldZoom:I
    if-ne v1, p1, :cond_0

    .line 4533
    .end local v1           #oldZoom:I
    :goto_0
    return-void

    .line 4458
    .restart local v1       #oldZoom:I
    :cond_0
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    if-nez v2, :cond_2

    .line 4460
    :cond_1
    const-string v2, "CameraThread"

    const-string v3, "Camera is not open, cannot change zoom"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4466
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

    .line 4468
    move v0, v1

    .line 4469
    .local v0, currentZoom:I
    if-ge v1, p1, :cond_6

    .line 4473
    :cond_3
    add-int/lit8 v2, v0, 0x2

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 4474
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v2, v0}, Lcom/android/camera/CameraController;->setZoom(I)V

    .line 4475
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v2}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    .line 4476
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    invoke-virtual {v2, v5}, Lcom/android/camera/CameraThread$MainHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 4478
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

    .line 4519
    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/android/camera/CameraThread;->zoomValue:Lcom/android/camera/property/Property;

    iget-object v3, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4521
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

    .line 4481
    :cond_5
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 4482
    if-lt v0, p1, :cond_3

    goto :goto_1

    .line 4488
    :cond_6
    add-int/lit8 v2, v0, -0x2

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 4489
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v2, v0}, Lcom/android/camera/CameraController;->setZoom(I)V

    .line 4490
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v2}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    .line 4491
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    invoke-virtual {v2, v5}, Lcom/android/camera/CameraThread$MainHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 4493
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

    .line 4496
    :cond_7
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 4497
    if-gt v0, p1, :cond_6

    goto :goto_1

    .line 4502
    .end local v0           #currentZoom:I
    :cond_8
    move v0, p1

    .line 4503
    .restart local v0       #currentZoom:I
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v2, v0}, Lcom/android/camera/CameraController;->setZoom(I)V

    .line 4504
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v2}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    .line 4507
    invoke-static {}, Lcom/android/camera/DisplayDevice;->needDelayZooming()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4511
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 4513
    :catch_0
    move-exception v2

    goto/16 :goto_1

    .line 4523
    .end local v0           #currentZoom:I
    .end local v1           #oldZoom:I
    :cond_9
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    if-eqz v2, :cond_a

    .line 4525
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

    .line 4527
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v5, p1, v3, v4}, Lcom/android/camera/MessageHandler;->sendUniqueObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 4529
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

    .line 4532
    :cond_a
    const-string v2, "CameraThread"

    const-string v3, "Cannot change zoom because there is no handler"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public final checkStorageState()V
    .locals 1

    .prologue
    .line 3917
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraThread;->checkStorageState(Z)V

    .line 3918
    return-void
.end method

.method public final checkStorageState(Z)V
    .locals 3
    .parameter "checkSize"

    .prologue
    .line 3921
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 3923
    new-instance v0, Lcom/android/camera/CameraThread$8;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/CameraThread$8;-><init>(Lcom/android/camera/CameraThread;Z)V

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 3933
    :goto_0
    return-void

    .line 3932
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->getPendingFileSize()J

    move-result-wide v1

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/android/camera/CameraThread;->checkStorageStateInternal(Lcom/android/camera/io/StorageState;ZJ)V

    goto :goto_0
.end method

.method public final closeCamera()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 4055
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    if-eq v4, p0, :cond_0

    .line 4057
    const-string v4, "CameraThread"

    const-string v5, "Close camera from another thread"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4058
    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 4141
    :goto_0
    return-void

    .line 4063
    :cond_0
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportCAF()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/android/camera/CameraThread;->canTakePicAfterFocus:Z

    if-eqz v4, :cond_1

    .line 4065
    const-string v4, "CameraThread"

    const-string v5, "closeCamera() - Waiting for auto-focus before capture, cancel capture"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 4066
    iput-boolean v9, p0, Lcom/android/camera/CameraThread;->canTakePicAfterFocus:Z

    .line 4067
    iput-boolean v9, p0, Lcom/android/camera/CameraThread;->mTaking_picture:Z

    .line 4068
    iget-wide v4, p0, Lcom/android/camera/CameraThread;->mLatestCaptureID:J

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/camera/CameraThread;->mLatestCaptureID:J

    .line 4069
    iget-object v4, p0, Lcom/android/camera/CameraThread;->takingPictureFailedEvent:Lcom/android/camera/event/Event;

    new-instance v5, Lcom/android/camera/OneValueEventArgs;

    sget-object v6, Lcom/android/camera/TakingPictureFailedReason;->Unknown:Lcom/android/camera/TakingPictureFailedReason;

    invoke-direct {v5, v6}, Lcom/android/camera/OneValueEventArgs;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, p0, v5}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 4072
    :cond_1
    iget-object v4, p0, Lcom/android/camera/CameraThread;->isRecording:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    if-ne v4, v5, :cond_2

    .line 4074
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/camera/CameraThread;->mStartCountTime:J

    sub-long v0, v4, v6

    .line 4075
    .local v0, currentRecordTime:J
    const-wide/16 v4, 0x3e8

    cmp-long v4, v0, v4

    if-gez v4, :cond_5

    .line 4077
    const-string v4, "CameraThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "currentRecordTime - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 4079
    const-wide/16 v4, 0x44c

    sub-long/2addr v4, v0

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4083
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->stopVideoRecording()V

    .line 4092
    .end local v0           #currentRecordTime:J
    :cond_2
    :goto_2
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSharpSensor()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4093
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->cancelAutoFocusInternal()V

    .line 4095
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->stopPreview()V

    .line 4097
    iput-object v8, p0, Lcom/android/camera/CameraThread;->mCurrentColorEffect:Ljava/lang/String;

    .line 4098
    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->resetJpegData()V

    .line 4100
    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v4, :cond_6

    .line 4101
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->releaseMediaRecorder()V

    .line 4102
    const-string v4, "CameraThread"

    const-string v5, "before release"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4105
    new-instance v2, Lcom/android/camera/CloseCameraRequestEventArgs;

    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-direct {v2, v4}, Lcom/android/camera/CloseCameraRequestEventArgs;-><init>(Landroid/hardware/Camera;)V

    .line 4108
    .local v2, e:Lcom/android/camera/CloseCameraRequestEventArgs;
    :try_start_1
    iget-object v4, p0, Lcom/android/camera/CameraThread;->requestCloseCameraEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v4, p0, v2}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 4116
    :goto_3
    invoke-virtual {v2}, Lcom/android/camera/CloseCameraRequestEventArgs;->isHandled()Z

    move-result v4

    if-nez v4, :cond_4

    .line 4117
    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->release()V

    .line 4119
    :cond_4
    const-string v4, "CameraThread"

    const-string v5, "after release"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4120
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->resetCameraFlag()V

    .line 4121
    iput-object v8, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    .line 4122
    iput-object v8, p0, Lcom/android/camera/CameraThread;->mHtcWrapCameraDevice:Lcom/htc/wrap/android/hardware/HtcWrapCamera;

    .line 4123
    iput-object v8, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    .line 4125
    iput v9, p0, Lcom/android/camera/CameraThread;->mCaptureState:I

    .line 4126
    const-string v4, "CameraThread"

    const-string v5, "close camera - mCaptureState = CAPTURE_STATE_IDLE"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4129
    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCameraToken:Ljava/lang/Object;

    invoke-static {v4}, Lcom/android/camera/CameraToken;->releaseToken(Ljava/lang/Object;)V

    .line 4130
    iput-object v8, p0, Lcom/android/camera/CameraThread;->mCameraToken:Ljava/lang/Object;

    .line 4133
    iget-object v4, p0, Lcom/android/camera/CameraThread;->cameraClosedEvent:Lcom/android/camera/event/Event;

    sget-object v5, Lcom/android/camera/event/EventArgs;->empty:Lcom/android/camera/event/EventArgs;

    invoke-virtual {v4, p0, v5}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 4135
    const-string v4, "CameraThread"

    const-string v5, "Release Camera"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 4140
    .end local v2           #e:Lcom/android/camera/CloseCameraRequestEventArgs;
    :goto_4
    iput-boolean v9, p0, Lcom/android/camera/CameraThread;->mIsParamsPrepared:Z

    goto/16 :goto_0

    .line 4080
    .restart local v0       #currentRecordTime:J
    :catch_0
    move-exception v3

    .line 4081
    .local v3, ex:Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 4086
    .end local v3           #ex:Ljava/lang/InterruptedException;
    :cond_5
    const-string v4, "CameraThread"

    const-string v5, "currentRecordTime > 1s - stopVideoRecording()"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4087
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->stopVideoRecording()V

    goto :goto_2

    .line 4110
    .end local v0           #currentRecordTime:J
    .restart local v2       #e:Lcom/android/camera/CloseCameraRequestEventArgs;
    :catch_1
    move-exception v3

    .line 4112
    .local v3, ex:Ljava/lang/Throwable;
    const-string v4, "CameraThread"

    const-string v5, "Exception was occurred while requesting close camera"

    invoke-static {v4, v5, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 4137
    .end local v2           #e:Lcom/android/camera/CloseCameraRequestEventArgs;
    .end local v3           #ex:Ljava/lang/Throwable;
    :cond_6
    const-string v4, "CameraThread"

    const-string v5, "mCameraDevice == null in close_camera"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method public final continueForCheckRecording()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 5379
    const-string v0, "CameraThread"

    const-string v1, "[NV] continueForCheckRecording()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 5380
    iget-object v0, p0, Lcom/android/camera/CameraThread;->m_SemaphoreRecording:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 5381
    return-void
.end method

.method public final createPostViewImage([B)V
    .locals 9
    .parameter "postviewData"

    .prologue
    .line 4663
    iget-object v6, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v6}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 4707
    :cond_0
    :goto_0
    return-void

    .line 4667
    :cond_1
    if-nez p1, :cond_2

    .line 4669
    const-string v6, "CameraThread"

    const-string v7, "!!!!!!!! postviewData == null !!!!!!!!"

    invoke-static {v6, v7}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4673
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

    .line 4675
    iget-object v6, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v6}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    .line 4676
    .local v3, parameters:Landroid/hardware/Camera$Parameters;
    if-eqz v3, :cond_0

    .line 4679
    const-string v6, "postview-size"

    invoke-virtual {v3, v6}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4680
    .local v4, str:Ljava/lang/String;
    const/16 v6, 0x78

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 4681
    .local v1, nIndex:I
    const/4 v6, 0x0

    invoke-virtual {v4, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 4682
    .local v5, strTmp:Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 4683
    .local v2, nWidth:I
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 4684
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 4705
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
    .line 4540
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    if-ne v4, p0, :cond_1

    .line 4542
    const-string v4, "CameraThread"

    const-string v5, "deleteLatestMedia() - start sync"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4545
    iget-object v4, p0, Lcom/android/camera/CameraThread;->deletingLatestMediaEvent:Lcom/android/camera/event/Event;

    sget-object v5, Lcom/android/camera/event/EventArgs;->empty:Lcom/android/camera/event/EventArgs;

    invoke-virtual {v4, p0, v5}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 4548
    new-instance v2, Lcom/android/camera/event/SingleHandlerEventArgs;

    invoke-direct {v2}, Lcom/android/camera/event/SingleHandlerEventArgs;-><init>()V

    .line 4549
    .local v2, e:Lcom/android/camera/event/SingleHandlerEventArgs;
    iget-object v4, p0, Lcom/android/camera/CameraThread;->requestDeleteLatestMediaEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v4, p0, v2}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 4552
    invoke-virtual {v2}, Lcom/android/camera/event/SingleHandlerEventArgs;->isHandled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 4554
    const-string v4, "CameraThread"

    const-string v5, "Use default method to delete latest media"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4560
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    .line 4561
    .local v1, context:Landroid/content/Context;
    iget-object v4, p0, Lcom/android/camera/CameraThread;->mLastMediaInfo:Lcom/android/camera/MediaInfo;

    iget-object v0, v4, Lcom/android/camera/MediaInfo;->contentUri:Landroid/net/Uri;

    .line 4562
    .local v0, contentUri:Landroid/net/Uri;
    new-instance v3, Lcom/android/camera/CameraThread$9;

    const-string v4, "Default media deletion thread"

    invoke-direct {v3, p0, v4, v1, v0}, Lcom/android/camera/CameraThread$9;-><init>(Lcom/android/camera/CameraThread;Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)V

    .line 4592
    .local v3, workerThread:Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 4595
    sget-object v5, Lcom/android/camera/CameraThread$22;->$SwitchMap$com$android$camera$CameraMode:[I

    iget-object v4, p0, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/CameraMode;

    invoke-virtual {v4}, Lcom/android/camera/CameraMode;->ordinal()I

    move-result v4

    aget v4, v5, v4

    packed-switch v4, :pswitch_data_0

    .line 4606
    .end local v0           #contentUri:Landroid/net/Uri;
    .end local v1           #context:Landroid/content/Context;
    .end local v3           #workerThread:Ljava/lang/Thread;
    :cond_0
    :goto_0
    const-string v4, "CameraThread"

    const-string v5, "deleteLatestMedia() - end sync"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4623
    .end local v2           #e:Lcom/android/camera/event/SingleHandlerEventArgs;
    :goto_1
    return-void

    .line 4598
    .restart local v0       #contentUri:Landroid/net/Uri;
    .restart local v1       #context:Landroid/content/Context;
    .restart local v2       #e:Lcom/android/camera/event/SingleHandlerEventArgs;
    .restart local v3       #workerThread:Ljava/lang/Thread;
    :pswitch_0
    iget-object v4, p0, Lcom/android/camera/CameraThread;->mSettings:Lcom/android/camera/CameraSettings;

    sget-object v5, Lcom/android/camera/io/DCFInfo;->DEFAULT:Lcom/android/camera/io/DCFInfo;

    invoke-static {v4, v5}, Lcom/android/camera/io/DCFUtility;->restoreFileCounter(Lcom/android/camera/Settings;Lcom/android/camera/io/DCFInfo;)V

    goto :goto_0

    .line 4601
    :pswitch_1
    iget-object v4, p0, Lcom/android/camera/CameraThread;->mSettings:Lcom/android/camera/CameraSettings;

    sget-object v5, Lcom/android/camera/CameraThread;->mVideoDcfInfo:Lcom/android/camera/io/DCFInfo;

    invoke-static {v4, v5}, Lcom/android/camera/io/DCFUtility;->restoreFileCounter(Lcom/android/camera/Settings;Lcom/android/camera/io/DCFInfo;)V

    goto :goto_0

    .line 4608
    .end local v0           #contentUri:Landroid/net/Uri;
    .end local v1           #context:Landroid/content/Context;
    .end local v2           #e:Lcom/android/camera/event/SingleHandlerEventArgs;
    .end local v3           #workerThread:Ljava/lang/Thread;
    :cond_1
    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    if-eqz v4, :cond_2

    .line 4610
    const-string v4, "CameraThread"

    const-string v5, "deleteLatestMedia() - start async"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4611
    new-instance v4, Lcom/android/camera/CameraThread$10;

    invoke-direct {v4, p0}, Lcom/android/camera/CameraThread$10;-><init>(Lcom/android/camera/CameraThread;)V

    invoke-virtual {p0, v4}, Lcom/android/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 4619
    const-string v4, "CameraThread"

    const-string v5, "deleteLatestMedia() - end async"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 4622
    :cond_2
    const-string v4, "CameraThread"

    const-string v5, "Cannot delete media because there is no handler"

    invoke-static {v4, v5}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 4595
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
    .line 4834
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->threadAccessCheck()V

    .line 4837
    iget v0, p0, Lcom/android/camera/CameraThread;->mPreviewCallbackDisableCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/CameraThread;->mPreviewCallbackDisableCounter:I

    .line 4838
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

    .line 4841
    iget v0, p0, Lcom/android/camera/CameraThread;->mPreviewCallbackDisableCounter:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4842
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->clearPreviewCallback()V

    .line 4843
    :cond_0
    return-void
.end method

.method public final enablePreviewCallback()V
    .locals 3

    .prologue
    .line 4815
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->threadAccessCheck()V

    .line 4818
    iget v0, p0, Lcom/android/camera/CameraThread;->mPreviewCallbackDisableCounter:I

    if-gtz v0, :cond_1

    .line 4826
    :cond_0
    :goto_0
    return-void

    .line 4820
    :cond_1
    iget v0, p0, Lcom/android/camera/CameraThread;->mPreviewCallbackDisableCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/camera/CameraThread;->mPreviewCallbackDisableCounter:I

    .line 4821
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

    .line 4824
    iget v0, p0, Lcom/android/camera/CameraThread;->mPreviewCallbackDisableCounter:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mCanSetPreviewCallback:Z

    if-eqz v0, :cond_0

    .line 4825
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->setupPreviewCallback()V

    goto :goto_0
.end method

.method public final endTakePicture()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4225
    const-string v0, "CameraThread"

    const-string v1, "endTakePicture() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4228
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->threadAccessCheck()V

    .line 4231
    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mTaking_picture:Z

    if-nez v0, :cond_0

    .line 4233
    const-string v0, "CameraThread"

    const-string v1, "endTakePicture() - mTaking_picture == false"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 4279
    :goto_0
    return-void

    .line 4238
    :cond_0
    iput-boolean v3, p0, Lcom/android/camera/CameraThread;->mTaking_picture:Z

    .line 4239
    iput-boolean v4, p0, Lcom/android/camera/CameraThread;->mCanStartPreview:Z

    .line 4240
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

    .line 4242
    const-string v0, "CameraThread"

    const-string v1, "endTakePicture() - Take picture during recording, restore mPreviewing"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 4243
    iput-boolean v4, p0, Lcom/android/camera/CameraThread;->mPreviewing:Z

    .line 4247
    :cond_1
    iget v0, p0, Lcom/android/camera/CameraThread;->mCaptureState:I

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/camera/CameraThread;->mCaptureState:I

    if-eq v0, v4, :cond_4

    .line 4249
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

    .line 4250
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 4259
    :goto_1
    iget-object v0, p0, Lcom/android/camera/CameraThread;->isAutoFocusLocked:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4262
    invoke-direct {p0, v3, v4}, Lcom/android/camera/CameraThread;->setAecAwbLockInternal(ZZ)V

    .line 4265
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

    .line 4269
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 4272
    :cond_2
    iget-object v0, p0, Lcom/android/camera/CameraThread;->isTakingPicture:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4275
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mPendingMode:Lcom/android/camera/CameraMode;

    if-eqz v0, :cond_3

    .line 4276
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mPendingMode:Lcom/android/camera/CameraMode;

    invoke-direct {p0, v0}, Lcom/android/camera/CameraThread;->changeModeInternal(Lcom/android/camera/CameraMode;)V

    .line 4278
    :cond_3
    const-string v0, "CameraThread"

    const-string v1, "endTakePicture() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4254
    :cond_4
    const-string v0, "CameraThread"

    const-string v1, "reset mCaptureState to CAPTURE_STATE_IDLE"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 4255
    iput v3, p0, Lcom/android/camera/CameraThread;->mCaptureState:I

    goto :goto_1
.end method

.method public final forceStopVideoRecording()V
    .locals 2

    .prologue
    .line 2065
    const-string v0, "CameraThread"

    const-string v1, "[NV] forceStopVideoRecording() - Async"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2066
    new-instance v0, Lcom/android/camera/CameraThread$7;

    invoke-direct {v0, p0}, Lcom/android/camera/CameraThread$7;-><init>(Lcom/android/camera/CameraThread;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 2079
    return-void
.end method

.method public getCamera()Landroid/hardware/Camera;
    .locals 1

    .prologue
    .line 2844
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    return-object v0
.end method

.method public final getCameraActivity()Lcom/android/camera/HTCCamera;
    .locals 1

    .prologue
    .line 2840
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    return-object v0
.end method

.method public getCameraController()Lcom/android/camera/CameraController;
    .locals 1

    .prologue
    .line 2853
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    return-object v0
.end method

.method public final getCaptureElapsedMilliseconds()J
    .locals 4

    .prologue
    .line 3663
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/camera/CameraThread;->mCaptureStartTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getCaptureHeight()I
    .locals 2

    .prologue
    .line 2894
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v0, v1, :cond_0

    .line 2895
    iget v0, p0, Lcom/android/camera/CameraThread;->Camera_Mode_Height:I

    .line 2897
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/camera/CameraThread;->Video_Mode_Height:I

    goto :goto_0
.end method

.method public getCaptureWidth()I
    .locals 2

    .prologue
    .line 2887
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v0, v1, :cond_0

    .line 2888
    iget v0, p0, Lcom/android/camera/CameraThread;->Camera_Mode_Width:I

    .line 2890
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
    .line 4217
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mComponentManager:Lcom/android/camera/component/CameraThreadComponentManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/component/CameraThreadComponentManager;->getComponent(Ljava/lang/String;)Lcom/android/camera/component/Component;

    move-result-object v0

    return-object v0
.end method

.method public final getComponentFactory()Lcom/android/camera/component/CameraThreadComponentFactory;
    .locals 1

    .prologue
    .line 4201
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mComponentFactory:Lcom/android/camera/component/CameraThreadComponentFactory;

    return-object v0
.end method

.method public bridge synthetic getComponentFactory()Lcom/android/camera/component/ComponentFactory;
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->getComponentFactory()Lcom/android/camera/component/CameraThreadComponentFactory;

    move-result-object v0

    return-object v0
.end method

.method public final getComponentManager()Lcom/android/camera/component/CameraThreadComponentManager;
    .locals 1

    .prologue
    .line 4209
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mComponentManager:Lcom/android/camera/component/CameraThreadComponentManager;

    return-object v0
.end method

.method public bridge synthetic getComponentManager()Lcom/android/camera/component/ComponentManager;
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->getComponentManager()Lcom/android/camera/component/CameraThreadComponentManager;

    move-result-object v0

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 2857
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    return-object v0
.end method

.method public final getHtcWrapCamera()Lcom/htc/wrap/android/hardware/HtcWrapCamera;
    .locals 1

    .prologue
    .line 2849
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mHtcWrapCameraDevice:Lcom/htc/wrap/android/hardware/HtcWrapCamera;

    return-object v0
.end method

.method public final getImageQueueSize()J
    .locals 3

    .prologue
    .line 4918
    new-instance v0, Lcom/android/camera/QueryEventArgs;

    invoke-direct {v0}, Lcom/android/camera/QueryEventArgs;-><init>()V

    .line 4919
    .local v0, e:Lcom/android/camera/QueryEventArgs;,"Lcom/android/camera/QueryEventArgs<Ljava/lang/Long;>;"
    iget-object v1, p0, Lcom/android/camera/CameraThread;->queryImageQueueSizeEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v1, p0, v0}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 4920
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
    .line 2831
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mJpegData:[B

    return-object v0
.end method

.method public final getLastContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 2861
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mLastMediaInfo:Lcom/android/camera/MediaInfo;

    iget-object v0, v0, Lcom/android/camera/MediaInfo;->contentUri:Landroid/net/Uri;

    return-object v0
.end method

.method public final getLastMediaInfo()Lcom/android/camera/MediaInfo;
    .locals 1

    .prologue
    .line 4639
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mLastMediaInfo:Lcom/android/camera/MediaInfo;

    invoke-virtual {v0}, Lcom/android/camera/MediaInfo;->clone()Lcom/android/camera/MediaInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getLatestCaptureID()J
    .locals 2

    .prologue
    .line 5150
    iget-wide v0, p0, Lcom/android/camera/CameraThread;->mLatestCaptureID:J

    return-wide v0
.end method

.method public final getPendingFileSize()J
    .locals 2

    .prologue
    .line 4928
    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->getImageQueueSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPreviewHeight()I
    .locals 2

    .prologue
    .line 2880
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v0, v1, :cond_0

    .line 2881
    iget v0, p0, Lcom/android/camera/CameraThread;->Camera_Preview_Height:I

    .line 2883
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/camera/CameraThread;->Video_Mode_Height:I

    goto :goto_0
.end method

.method public getPreviewWidth()I
    .locals 2

    .prologue
    .line 2873
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v0, v1, :cond_0

    .line 2874
    iget v0, p0, Lcom/android/camera/CameraThread;->Camera_Preview_Width:I

    .line 2876
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/camera/CameraThread;->Video_Mode_Width:I

    goto :goto_0
.end method

.method public getRecordingTime()J
    .locals 4

    .prologue
    .line 4644
    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->getCaptureElapsedMilliseconds()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getSettings()Lcom/android/camera/Settings;
    .locals 1

    .prologue
    .line 5221
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mSettings:Lcom/android/camera/CameraSettings;

    return-object v0
.end method

.method public final handleCommonJpegCallback([BLandroid/hardware/Camera;)V
    .locals 3
    .parameter "jpegData"
    .parameter "camera"

    .prologue
    .line 485
    const-string v1, "CameraThread"

    const-string v2, "handleCommonJpegCallback() - start"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->threadAccessCheck()V

    .line 491
    sget-object v1, Lcom/android/camera/TIME;->JpegCallback:Lcom/android/camera/TIME$Value;

    invoke-virtual {v1}, Lcom/android/camera/TIME$Value;->End()V

    .line 492
    sget-object v1, Lcom/android/camera/TIME;->StoreJpegImage:Lcom/android/camera/TIME$Value;

    invoke-virtual {v1}, Lcom/android/camera/TIME$Value;->Start()V

    .line 495
    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->endTakePicture()V

    .line 498
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    if-eqz v1, :cond_1

    .line 500
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    sget-object v2, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 502
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->isFastShotToShotMode()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->needsActionScreen()Z

    move-result v1

    if-nez v1, :cond_1

    .line 503
    :cond_0
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->completeTakingPicture()V

    .line 510
    :cond_1
    :goto_0
    new-instance v0, Lcom/android/camera/imaging/SaveImageTask;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/imaging/SaveImageTask;-><init>(Lcom/android/camera/CameraThread;[B)V

    .line 511
    .local v0, task:Lcom/android/camera/imaging/SaveImageTask;
    iget-wide v1, p0, Lcom/android/camera/CameraThread;->mLatestCaptureID:J

    iput-wide v1, v0, Lcom/android/camera/imaging/SaveImageTask;->captureID:J

    .line 512
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

    .line 513
    invoke-virtual {p0, v0}, Lcom/android/camera/CameraThread;->saveImage(Lcom/android/camera/imaging/SaveImageTask;)V

    .line 515
    const-string v1, "CameraThread"

    const-string v2, "handleCommonJpegCallback() - end"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    return-void

    .line 506
    .end local v0           #task:Lcom/android/camera/imaging/SaveImageTask;
    :cond_2
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->completeTakingPicture()V

    goto :goto_0

    .line 512
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
    .line 523
    const-string v0, "CameraThread"

    const-string v1, "handleCommonPostviewCallback() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->threadAccessCheck()V

    .line 525
    invoke-virtual {p0, p1}, Lcom/android/camera/CameraThread;->createPostViewImage([B)V

    .line 526
    const-string v0, "CameraThread"

    const-string v1, "handleCommonPostviewCallback() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    return-void
.end method

.method public final handleCommonRawCallback([BLandroid/hardware/Camera;)V
    .locals 3
    .parameter "rawData"
    .parameter "camera"

    .prologue
    .line 534
    const-string v0, "CameraThread"

    const-string v1, "handleCommonRawCallback() - start"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->threadAccessCheck()V

    .line 540
    sget-object v0, Lcom/android/camera/TIME;->RawCallback:Lcom/android/camera/TIME$Value;

    invoke-virtual {v0}, Lcom/android/camera/TIME$Value;->End()V

    .line 541
    sget-object v0, Lcom/android/camera/TIME;->JpegCallback:Lcom/android/camera/TIME$Value;

    invoke-virtual {v0}, Lcom/android/camera/TIME$Value;->Start()V

    .line 544
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

    .line 545
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/HTCCamera;->completeTakingPicture(J)V

    .line 547
    :cond_0
    const-string v0, "CameraThread"

    const-string v1, "handleCommonRawCallback() - end"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    return-void
.end method

.method public handleCommonShutterCallback()V
    .locals 1

    .prologue
    .line 557
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->threadAccessCheck()V

    .line 560
    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->isShutterSoundNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 561
    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->playShutterSound()V

    .line 564
    :cond_0
    sget-object v0, Lcom/android/camera/TIME;->ShutterCallback:Lcom/android/camera/TIME$Value;

    invoke-virtual {v0}, Lcom/android/camera/TIME$Value;->End()V

    .line 565
    sget-object v0, Lcom/android/camera/TIME;->RawCallback:Lcom/android/camera/TIME$Value;

    invoke-virtual {v0}, Lcom/android/camera/TIME$Value;->Start()V

    .line 566
    return-void
.end method

.method public final interruptTakingPicture(Lcom/android/camera/TakingPictureFailedReason;)Z
    .locals 7
    .parameter "reason"

    .prologue
    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 4286
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

    .line 4289
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->threadAccessCheck()V

    .line 4290
    iget-boolean v2, p0, Lcom/android/camera/CameraThread;->mTaking_picture:Z

    if-nez v2, :cond_0

    .line 4292
    const-string v1, "CameraThread"

    const-string v2, "interruptTakingPicture() - Not taking picture"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 4325
    :goto_0
    return v0

    .line 4297
    :cond_0
    if-nez p1, :cond_1

    .line 4298
    sget-object p1, Lcom/android/camera/TakingPictureFailedReason;->Unknown:Lcom/android/camera/TakingPictureFailedReason;

    .line 4301
    :cond_1
    iget-wide v2, p0, Lcom/android/camera/CameraThread;->mLatestCaptureID:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/camera/CameraThread;->mLatestCaptureID:J

    .line 4304
    iget-object v2, p0, Lcom/android/camera/CameraThread;->takingPictureFailedEvent:Lcom/android/camera/event/Event;

    new-instance v3, Lcom/android/camera/OneValueEventArgs;

    invoke-direct {v3, p1}, Lcom/android/camera/OneValueEventArgs;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, p0, v3}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 4307
    iput-boolean v0, p0, Lcom/android/camera/CameraThread;->mTaking_picture:Z

    .line 4308
    iput-boolean v1, p0, Lcom/android/camera/CameraThread;->mCanStartPreview:Z

    .line 4309
    iput-boolean v0, p0, Lcom/android/camera/CameraThread;->mPreviewing:Z

    .line 4310
    iget-object v2, p0, Lcom/android/camera/CameraThread;->isTakingPicture:Lcom/android/camera/property/Property;

    iget-object v3, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4313
    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->closeCamera()V

    .line 4314
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    invoke-virtual {v0, v6}, Lcom/android/camera/CameraThread$MainHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4315
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    invoke-virtual {v0, v6}, Lcom/android/camera/CameraThread$MainHandler;->removeMessages(I)V

    .line 4320
    :goto_1
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mPendingMode:Lcom/android/camera/CameraMode;

    if-eqz v0, :cond_2

    .line 4321
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mPendingMode:Lcom/android/camera/CameraMode;

    invoke-direct {p0, v0}, Lcom/android/camera/CameraThread;->changeModeInternal(Lcom/android/camera/CameraMode;)V

    .line 4324
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

    .line 4325
    goto :goto_0

    .line 4317
    :cond_3
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/camera/CameraThread;->startPreviewInternal(Lcom/android/camera/CameraType;I)I

    goto :goto_1
.end method

.method public final invokeAsync(Ljava/lang/Runnable;)Z
    .locals 4
    .parameter "r"

    .prologue
    const/4 v0, 0x0

    .line 4895
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    if-eqz v1, :cond_1

    .line 4897
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v3, 0x276a

    invoke-virtual {v2, v3, p1}, Lcom/android/camera/CameraThread$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraThread$MainHandler;->sendMessage(Landroid/os/Message;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4898
    const/4 v0, 0x1

    .line 4909
    :goto_0
    return v0

    .line 4903
    :cond_0
    const-string v1, "CameraThread"

    const-string v2, "invokeAsync() - Fail to post to camera thread handler"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4908
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

    .line 4020
    invoke-static {}, Lcom/android/camera/DisplayDevice;->support3DCamera()Z

    move-result v2

    if-nez v2, :cond_1

    .line 4026
    :cond_0
    :goto_0
    return v0

    .line 4023
    :cond_1
    iget v2, p0, Lcom/android/camera/CameraThread;->m3DPreviewStatus:I

    if-eq v2, v1, :cond_0

    move v0, v1

    .line 4026
    goto :goto_0
.end method

.method public is720p()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 2901
    iget-object v2, p0, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    sget-object v4, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v2, v4, :cond_0

    .line 2907
    :goto_0
    return v3

    .line 2904
    :cond_0
    invoke-static {}, Lcom/android/camera/MovieModeHandler;->getMovieModeHandler()Lcom/android/camera/MovieModeHandler;

    move-result-object v0

    .line 2905
    .local v0, mModeHdr:Lcom/android/camera/ModeHandler;
    iget-object v4, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v2, p0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/CameraType;

    invoke-virtual {v0, v4, v2}, Lcom/android/camera/MovieModeHandler;->getCurrentResolutionSettingValue(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraType;)Lcom/android/camera/Resolution;

    move-result-object v1

    .line 2907
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
    .line 2865
    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mTaking_picture:Z

    return v0
.end method

.method public isPreviewing()Z
    .locals 1

    .prologue
    .line 2825
    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mPreviewing:Z

    return v0
.end method

.method public isRecPowerWarning()Z
    .locals 1

    .prologue
    .line 4650
    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mRecPowerWarning:Z

    return v0
.end method

.method public final isShutterSoundNeeded()Z
    .locals 1

    .prologue
    .line 4170
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

    .line 5356
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mSettings:Lcom/android/camera/CameraSettings;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    if-nez v1, :cond_1

    :cond_0
    move v1, v2

    .line 5360
    :goto_0
    return v1

    .line 5359
    :cond_1
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getStartMode()Lcom/android/camera/CameraStartMode;

    move-result-object v0

    .line 5360
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
    .line 4342
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    if-eqz v0, :cond_0

    .line 4343
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraThread$MainHandler;->hasMessages(I)Z

    move-result v0

    .line 4344
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
    .line 4936
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mediaSavedEvent:Lcom/android/camera/event/Event;

    if-ne p1, v1, :cond_1

    move-object v0, p3

    .line 4938
    check-cast v0, Lcom/android/camera/MediaEventArgs;

    .line 4939
    .local v0, mediaEventArgs:Lcom/android/camera/MediaEventArgs;
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mLastMediaInfo:Lcom/android/camera/MediaInfo;

    iget-object v2, v0, Lcom/android/camera/MediaEventArgs;->contentUri:Landroid/net/Uri;

    iput-object v2, v1, Lcom/android/camera/MediaInfo;->contentUri:Landroid/net/Uri;

    .line 4940
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mLastMediaInfo:Lcom/android/camera/MediaInfo;

    iget-object v2, v0, Lcom/android/camera/MediaEventArgs;->filePath:Lcom/android/camera/io/Path;

    iput-object v2, v1, Lcom/android/camera/MediaInfo;->filePath:Lcom/android/camera/io/Path;

    .line 4941
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mLastMediaInfo:Lcom/android/camera/MediaInfo;

    iget-object v2, v0, Lcom/android/camera/MediaEventArgs;->format:Lcom/android/camera/io/FileFormat;

    iget-object v2, v2, Lcom/android/camera/io/FileFormat;->mimeType:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/camera/MediaInfo;->mimeType:Ljava/lang/String;

    .line 4958
    .end local v0           #mediaEventArgs:Lcom/android/camera/MediaEventArgs;
    .end local p3
    :cond_0
    :goto_0
    return-void

    .line 4943
    .restart local p3
    :cond_1
    iget-object v1, p0, Lcom/android/camera/CameraThread;->autoFocusFinishedEvent:Lcom/android/camera/event/Event;

    if-ne p1, v1, :cond_0

    .line 4945
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportCAF()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, p3

    .line 4948
    check-cast v1, Lcom/android/camera/AutoFocusEventArgs;

    iget-object v1, v1, Lcom/android/camera/AutoFocusEventArgs;->focusAreas:[Landroid/graphics/RectF;

    if-eqz v1, :cond_2

    .line 4949
    check-cast p3, Lcom/android/camera/AutoFocusEventArgs;

    .end local p3
    iget-object v1, p3, Lcom/android/camera/AutoFocusEventArgs;->focusAreas:[Landroid/graphics/RectF;

    check-cast v1, [Landroid/graphics/RectF;

    iput-object v1, p0, Lcom/android/camera/CameraThread;->m_LatestFocusAreas:[Landroid/graphics/RectF;

    .line 4952
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

    .line 4953
    iget-boolean v1, p0, Lcom/android/camera/CameraThread;->canTakePicAfterFocus:Z

    if-eqz v1, :cond_0

    .line 4954
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->capture()V

    .line 4955
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/CameraThread;->canTakePicAfterFocus:Z

    goto :goto_0

    .line 4951
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

    .line 1383
    if-nez p1, :cond_0

    .line 1385
    const-string v0, "cameraType"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 1386
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1390
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq v0, p0, :cond_1

    .line 1392
    const-string v0, "CameraThread"

    const-string v1, "Open camera from another thread"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1393
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v1, 0x3e8

    invoke-static {v0, v1, v2, v2, p1}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 1394
    const/4 v0, 0x1

    .line 1396
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
    .line 4178
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraThread;->playShutterSound(Z)V

    .line 4179
    return-void
.end method

.method public final playShutterSound(Z)V
    .locals 3
    .parameter "audioFocus"

    .prologue
    .line 4182
    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mPlaySoundFromCameraService:Z

    if-nez v0, :cond_0

    .line 4184
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mAudioManager:Lcom/android/camera/IAudioManager;

    if-eqz v0, :cond_2

    .line 4186
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mShutterSoundHandle:Lcom/android/camera/Handle;

    if-eqz v0, :cond_1

    .line 4187
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mAudioManager:Lcom/android/camera/IAudioManager;

    iget-object v1, p0, Lcom/android/camera/CameraThread;->mShutterSoundHandle:Lcom/android/camera/Handle;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p1}, Lcom/android/camera/IAudioManager;->playInMemorySound(Lcom/android/camera/Handle;IZ)Lcom/android/camera/Handle;

    .line 4194
    :cond_0
    :goto_0
    return-void

    .line 4189
    :cond_1
    const-string v0, "CameraThread"

    const-string v1, "playShutterSound() - No shutter sound ID"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4192
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

    .line 2676
    iput-object v0, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    .line 2677
    iput-object v0, p0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    .line 2678
    return-void
.end method

.method public resetJpegData()V
    .locals 1

    .prologue
    .line 2835
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/CameraThread;->mJpegData:[B

    .line 2836
    return-void
.end method

.method public final resetZoom(Z)V
    .locals 4
    .parameter "toMinimum"

    .prologue
    const/4 v3, 0x0

    .line 4402
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 4403
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v1, 0x30

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v3, v3, v2}, Lcom/android/camera/MessageHandler;->sendUniqueObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 4406
    :goto_0
    return-void

    .line 4405
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/CameraThread;->resetZoomInternal(Z)V

    goto :goto_0
.end method

.method public final restartPreview(I)V
    .locals 3
    .parameter "status"

    .prologue
    .line 1995
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 1997
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

    .line 1998
    invoke-virtual {p0}, Lcom/android/camera/CameraThread;->stopPreview()V

    .line 1999
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/CameraThread;->startPreview(Lcom/android/camera/CameraType;I)I

    .line 2000
    const-string v0, "CameraThread"

    const-string v1, "restartPreview() - end sync"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2017
    :goto_0
    return-void

    .line 2002
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    if-eqz v0, :cond_1

    .line 2004
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

    .line 2005
    new-instance v0, Lcom/android/camera/CameraThread$5;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/CameraThread$5;-><init>(Lcom/android/camera/CameraThread;I)V

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 2013
    const-string v0, "CameraThread"

    const-string v1, "restartPreview() - end async"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2016
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

    .line 2691
    const-string v1, "CameraThread"

    const-string v2, "*************************************** run"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2692
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 2693
    new-instance v1, Lcom/android/camera/CameraThread$MainHandler;

    invoke-direct {v1, p0, v5}, Lcom/android/camera/CameraThread$MainHandler;-><init>(Lcom/android/camera/CameraThread;Lcom/android/camera/CameraThread$1;)V

    iput-object v1, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    .line 2696
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getThreadMonitor()Lcom/android/camera/debug/ThreadMonitor;

    move-result-object v0

    .line 2697
    .local v0, threadMonitor:Lcom/android/camera/debug/ThreadMonitor;
    if-eqz v0, :cond_0

    .line 2698
    invoke-virtual {v0}, Lcom/android/camera/debug/ThreadMonitor;->startMonitorCurrentThread()V

    .line 2701
    :cond_0
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->mSettings:Lcom/android/camera/CameraSettings;

    .line 2704
    const-string v1, "CameraThread.CameraType"

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/android/camera/CameraType;->Main:Lcom/android/camera/CameraType;

    invoke-static {v1, v2, v3}, Lcom/android/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    .line 2705
    const-string v1, "CameraThread.CaptureRotation"

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/android/camera/rotate/UIRotation;->Landscape:Lcom/android/camera/rotate/UIRotation;

    invoke-static {v1, v2, v3}, Lcom/android/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->captureRotation:Lcom/android/camera/property/Property;

    .line 2706
    const-string v1, "CameraThread.FlashMode"

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/android/camera/FlashMode;->Auto:Lcom/android/camera/FlashMode;

    invoke-static {v1, v2, v3}, Lcom/android/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->flashMode:Lcom/android/camera/property/Property;

    .line 2707
    const-string v1, "CameraThread.HasEnoughInternalDataSpace"

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v1, v2, v6}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;Z)Lcom/android/camera/property/Property;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->hasEnoughInternalDataSpace:Lcom/android/camera/property/Property;

    .line 2708
    const-string v1, "CameraThread.HasMovingObjects"

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->hasMovingObjects:Lcom/android/camera/property/Property;

    .line 2709
    const-string v1, "CameraThread.IsAutoFocusLocked"

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->isAutoFocusLocked:Lcom/android/camera/property/Property;

    .line 2710
    const-string v1, "CameraThread.IsEyeBlinked"

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->isEyeBlinked:Lcom/android/camera/property/Property;

    .line 2711
    const-string v1, "CameraThread.IsHdrSuggested"

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->isHdrSuggested:Lcom/android/camera/property/Property;

    .line 2712
    const-string v1, "CameraThread.IsLowlight"

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->isLowlight:Lcom/android/camera/property/Property;

    .line 2713
    const-string v1, "CameraThread.IsRecording"

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->isRecording:Lcom/android/camera/property/Property;

    .line 2714
    const-string v1, "CameraThread.IsTakingPicture"

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/camera/property/Property;->createAsReadOnlyBoolean(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->isTakingPicture:Lcom/android/camera/property/Property;

    .line 2715
    const-string v1, "CameraThread.Mode"

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/camera/CameraThread;->mInitialMode:Lcom/android/camera/CameraMode;

    invoke-static {v1, v2, v3}, Lcom/android/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    .line 2716
    const-string v1, "CameraThread.PreviewSize"

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v1, v6, v2, v5}, Lcom/android/camera/property/Property;->create(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->previewSize:Lcom/android/camera/property/Property;

    .line 2717
    const-string v1, "CameraThread.StorageSlot"

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v3, Lcom/android/camera/io/StorageSlot;->STORAGE_CARD:Lcom/android/camera/io/StorageSlot;

    invoke-static {v1, v2, v3}, Lcom/android/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->storageSlot:Lcom/android/camera/property/Property;

    .line 2718
    const-string v1, "CameraThread.StorageState"

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    sget-object v4, Lcom/android/camera/io/StorageState;->OK:Lcom/android/camera/io/StorageState;

    invoke-static {v1, v2, v3, v4}, Lcom/android/camera/property/Property;->create(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->storageState:Lcom/android/camera/property/Property;

    .line 2719
    const-string v1, "CameraThread.ZoomRange"

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v1, v6, v2, v5}, Lcom/android/camera/property/Property;->create(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->zoomRange:Lcom/android/camera/property/Property;

    .line 2720
    const-string v1, "CameraThread.ZoomValue"

    iget-object v2, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/camera/property/Property;->createAsReadOnly(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/camera/property/Property;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->zoomValue:Lcom/android/camera/property/Property;

    .line 2723
    const-string v1, "CameraThread.AutoFocusCanceled"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->autoFocusCanceledEvent:Lcom/android/camera/event/Event;

    .line 2724
    const-string v1, "CameraThread.AutoFocusFinished"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->autoFocusFinishedEvent:Lcom/android/camera/event/Event;

    .line 2725
    const-string v1, "CameraThread.AutoFocusStarted"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->autoFocusStartedEvent:Lcom/android/camera/event/Event;

    .line 2726
    const-string v1, "CameraThread.AutoFocusStarting"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->autoFocusStartingEvent:Lcom/android/camera/event/Event;

    .line 2727
    const-string v1, "CameraThread.CameraClosed"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->cameraClosedEvent:Lcom/android/camera/event/Event;

    .line 2728
    const-string v1, "CameraThread.CameraOpen"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->cameraOpenEvent:Lcom/android/camera/event/Event;

    .line 2729
    const-string v1, "CameraThread.ChangeModeFailed"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->changeModeFailedEvent:Lcom/android/camera/event/Event;

    .line 2730
    const-string v1, "CameraThread.DeletingLatestMedia"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->deletingLatestMediaEvent:Lcom/android/camera/event/Event;

    .line 2731
    const-string v1, "CameraThread.Exiting"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->exitingEvent:Lcom/android/camera/event/Event;

    .line 2732
    const-string v1, "CameraThread.HtcCallbackReceived"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->HtcCallbackReceivedEvent:Lcom/android/camera/event/Event;

    .line 2733
    const-string v1, "CameraThread.MediaDeleted"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->mediaDeletedEvent:Lcom/android/camera/event/Event;

    .line 2734
    const-string v1, "CameraThread.MediaSaved"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->mediaSavedEvent:Lcom/android/camera/event/Event;

    .line 2735
    const-string v1, "CameraThread.MediaSaveFailed"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->mediaSaveFailedEvent:Lcom/android/camera/event/Event;

    .line 2736
    const-string v1, "CameraThread.PostviewImageRetrieved"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->postviewImageRetrievedEvent:Lcom/android/camera/event/Event;

    .line 2737
    const-string v1, "CameraThread.PreparingParamsBeforePreviewStart"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->preparingParamsBeforePreviewStartEvent:Lcom/android/camera/event/Event;

    .line 2738
    const-string v1, "CameraThread.PreviewFrameRetrieved"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->previewFrameRetrievedEvent:Lcom/android/camera/event/Event;

    .line 2739
    const-string v1, "CameraThread.PreviewStarted"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->previewStartedEvent:Lcom/android/camera/event/Event;

    .line 2740
    const-string v1, "CameraThread.PreviewStarting"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->previewStartingEvent:Lcom/android/camera/event/Event;

    .line 2741
    const-string v1, "CameraThread.PreviewStopped"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->previewStoppedEvent:Lcom/android/camera/event/Event;

    .line 2742
    const-string v1, "CameraThread.PreviewStopping"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->previewStoppingEvent:Lcom/android/camera/event/Event;

    .line 2743
    const-string v1, "CameraThread.QueryImageQueueCapacity"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->queryImageQueueCapacityEvent:Lcom/android/camera/event/Event;

    .line 2744
    const-string v1, "CameraThread.QueryImageQueueSize"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->queryImageQueueSizeEvent:Lcom/android/camera/event/Event;

    .line 2745
    const-string v1, "CameraThread.RecordingFailed"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->recordingFailedEvent:Lcom/android/camera/event/Event;

    .line 2746
    const-string v1, "CameraThread.RequestAutoFocus"

    sget-object v2, Lcom/android/camera/event/EventMode;->SingleHandler:Lcom/android/camera/event/EventMode;

    invoke-static {p0, v1, v2}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;Lcom/android/camera/event/EventMode;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->requestAutoFocusEvent:Lcom/android/camera/event/Event;

    .line 2747
    const-string v1, "CameraThread.RequestCancelAutoFocus"

    sget-object v2, Lcom/android/camera/event/EventMode;->SingleHandler:Lcom/android/camera/event/EventMode;

    invoke-static {p0, v1, v2}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;Lcom/android/camera/event/EventMode;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->requestCancelAutoFocusEvent:Lcom/android/camera/event/Event;

    .line 2748
    const-string v1, "CameraThread.RequestCloseCamera"

    sget-object v2, Lcom/android/camera/event/EventMode;->SingleHandler:Lcom/android/camera/event/EventMode;

    invoke-static {p0, v1, v2}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;Lcom/android/camera/event/EventMode;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->requestCloseCameraEvent:Lcom/android/camera/event/Event;

    .line 2749
    const-string v1, "CameraThread.RequestDeleteLatestMedia"

    sget-object v2, Lcom/android/camera/event/EventMode;->SingleHandler:Lcom/android/camera/event/EventMode;

    invoke-static {p0, v1, v2}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;Lcom/android/camera/event/EventMode;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->requestDeleteLatestMediaEvent:Lcom/android/camera/event/Event;

    .line 2750
    const-string v1, "CameraThread.RequestOpenCamera"

    sget-object v2, Lcom/android/camera/event/EventMode;->SingleHandler:Lcom/android/camera/event/EventMode;

    invoke-static {p0, v1, v2}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;Lcom/android/camera/event/EventMode;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->requestOpenCameraEvent:Lcom/android/camera/event/Event;

    .line 2751
    const-string v1, "CameraThread.RequestSaveImage"

    sget-object v2, Lcom/android/camera/event/EventMode;->SingleHandler:Lcom/android/camera/event/EventMode;

    invoke-static {p0, v1, v2}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;Lcom/android/camera/event/EventMode;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->requestSaveImageEvent:Lcom/android/camera/event/Event;

    .line 2752
    const-string v1, "CameraThread.RequestTakingPicture"

    sget-object v2, Lcom/android/camera/event/EventMode;->SingleHandler:Lcom/android/camera/event/EventMode;

    invoke-static {p0, v1, v2}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;Lcom/android/camera/event/EventMode;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->requestTakingPictureEvent:Lcom/android/camera/event/Event;

    .line 2753
    const-string v1, "CameraThread.SavingImage"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->savingImageEvent:Lcom/android/camera/event/Event;

    .line 2754
    const-string v1, "CameraThread.TakingPictureFailed"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->takingPictureFailedEvent:Lcom/android/camera/event/Event;

    .line 2755
    const-string v1, "CameraThread.VideoThumbnailCreated"

    invoke-static {p0, v1}, Lcom/android/camera/event/Event;->create(Ljava/lang/Object;Ljava/lang/String;)Lcom/android/camera/event/Event;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->videoThumbnailCreatedEvent:Lcom/android/camera/event/Event;

    .line 2758
    iget-object v1, p0, Lcom/android/camera/CameraThread;->isRecording:Lcom/android/camera/property/Property;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->enableLogs(I)V

    .line 2759
    iget-object v1, p0, Lcom/android/camera/CameraThread;->previewFrameRetrievedEvent:Lcom/android/camera/event/Event;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/camera/event/Event;->disableLogs(I)V

    .line 2762
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mediaSavedEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v1, p0}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 2763
    iget-object v1, p0, Lcom/android/camera/CameraThread;->autoFocusFinishedEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v1, p0}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    .line 2766
    new-instance v1, Lcom/android/camera/component/CameraThreadComponentFactory;

    invoke-direct {v1, p0}, Lcom/android/camera/component/CameraThreadComponentFactory;-><init>(Lcom/android/camera/CameraThread;)V

    iput-object v1, p0, Lcom/android/camera/CameraThread;->mComponentFactory:Lcom/android/camera/component/CameraThreadComponentFactory;

    .line 2767
    new-instance v1, Lcom/android/camera/component/CameraThreadComponentManager;

    invoke-direct {v1, p0}, Lcom/android/camera/component/CameraThreadComponentManager;-><init>(Lcom/android/camera/CameraThread;)V

    iput-object v1, p0, Lcom/android/camera/CameraThread;->mComponentManager:Lcom/android/camera/component/CameraThreadComponentManager;

    .line 2768
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mComponentFactory:Lcom/android/camera/component/CameraThreadComponentFactory;

    sget-object v2, Lcom/android/camera/component/ComponentCategory;->Realtime:Lcom/android/camera/component/ComponentCategory;

    invoke-virtual {v1, v2}, Lcom/android/camera/component/CameraThreadComponentFactory;->createComponents(Lcom/android/camera/component/ComponentCategory;)I

    .line 2771
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mComponentManager:Lcom/android/camera/component/CameraThreadComponentManager;

    invoke-virtual {v1, v6}, Lcom/android/camera/component/CameraThreadComponentManager;->enableAutoInitialization(Z)V

    .line 2774
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mComponentManager:Lcom/android/camera/component/CameraThreadComponentManager;

    const-class v2, Lcom/android/camera/IAudioManager;

    invoke-virtual {v1, v2}, Lcom/android/camera/component/CameraThreadComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/IAudioManager;

    iput-object v1, p0, Lcom/android/camera/CameraThread;->mAudioManager:Lcom/android/camera/IAudioManager;

    .line 2777
    new-instance v1, Lcom/android/camera/CameraThread$FinalStorageCheckThread;

    invoke-direct {v1, p0}, Lcom/android/camera/CameraThread$FinalStorageCheckThread;-><init>(Lcom/android/camera/CameraThread;)V

    iput-object v1, p0, Lcom/android/camera/CameraThread;->mFinalStorageCheckThread:Lcom/android/camera/CameraThread$FinalStorageCheckThread;

    .line 2778
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mFinalStorageCheckThread:Lcom/android/camera/CameraThread$FinalStorageCheckThread;

    invoke-virtual {v1}, Lcom/android/camera/CameraThread$FinalStorageCheckThread;->start()V

    .line 2781
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    if-eqz v1, :cond_3

    .line 2783
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mUIHandler:Landroid/os/Handler;

    const/16 v2, 0x2776

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2784
    const-string v1, "CameraThread"

    const-string v2, "Cannot notify UI that camera thread is running, because message cannot be sent"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 2790
    :cond_1
    :goto_0
    sget-object v1, Lcom/android/camera/CameraType;->Main:Lcom/android/camera/CameraType;

    invoke-virtual {p0, v1}, Lcom/android/camera/CameraThread;->openCamera(Lcom/android/camera/CameraType;)I

    .line 2792
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 2795
    iget-object v1, p0, Lcom/android/camera/CameraThread;->exitingEvent:Lcom/android/camera/event/Event;

    sget-object v2, Lcom/android/camera/event/EventArgs;->empty:Lcom/android/camera/event/EventArgs;

    invoke-virtual {v1, p0, v2}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 2798
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mComponentManager:Lcom/android/camera/component/CameraThreadComponentManager;

    invoke-virtual {v1}, Lcom/android/camera/component/CameraThreadComponentManager;->removeComponents()V

    .line 2801
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    invoke-static {v1}, Lcom/android/camera/property/Property;->destroyAllProperties(Ljava/lang/Object;)V

    .line 2804
    invoke-static {p0}, Lcom/android/camera/event/Event;->destroyAllEvents(Ljava/lang/Object;)V

    .line 2807
    if-eqz v0, :cond_2

    .line 2808
    invoke-virtual {v0}, Lcom/android/camera/debug/ThreadMonitor;->stopMonitorCurrentThread()V

    .line 2811
    :cond_2
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mFinalStorageCheckThread:Lcom/android/camera/CameraThread$FinalStorageCheckThread;

    invoke-virtual {v1}, Lcom/android/camera/CameraThread$FinalStorageCheckThread;->exit()V

    .line 2812
    iput-object v5, p0, Lcom/android/camera/CameraThread;->mFinalStorageCheckThread:Lcom/android/camera/CameraThread$FinalStorageCheckThread;

    .line 2815
    iput-object v5, p0, Lcom/android/camera/CameraThread;->mAudioManager:Lcom/android/camera/IAudioManager;

    .line 2816
    return-void

    .line 2787
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

    .line 4353
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->threadAccessCheck()V

    .line 4356
    if-nez p1, :cond_0

    .line 4358
    const-string v1, "task"

    invoke-static {v1}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    .line 4359
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 4363
    :cond_0
    iget-object v1, p1, Lcom/android/camera/imaging/SaveImageTask;->gpsLocation:Landroid/location/Location;

    if-nez v1, :cond_1

    .line 4364
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mLocation:Landroid/location/Location;

    iput-object v1, p1, Lcom/android/camera/imaging/SaveImageTask;->gpsLocation:Landroid/location/Location;

    .line 4365
    :cond_1
    iget-object v1, p1, Lcom/android/camera/imaging/SaveImageTask;->storageSlot:Lcom/android/camera/io/StorageSlot;

    if-nez v1, :cond_2

    .line 4366
    iget-object v1, p0, Lcom/android/camera/CameraThread;->storageSlot:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/io/StorageSlot;

    iput-object v1, p1, Lcom/android/camera/imaging/SaveImageTask;->storageSlot:Lcom/android/camera/io/StorageSlot;

    .line 4367
    :cond_2
    iget-wide v1, p1, Lcom/android/camera/imaging/SaveImageTask;->takenDateTime:J

    const-wide/16 v4, 0x0

    cmp-long v1, v1, v4

    if-nez v1, :cond_3

    .line 4368
    iget-wide v1, p0, Lcom/android/camera/CameraThread;->mPhotoTakenTime:J

    iput-wide v1, p1, Lcom/android/camera/imaging/SaveImageTask;->takenDateTime:J

    .line 4371
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

    .line 4377
    :cond_4
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/camera/imaging/SaveImageTask;->getJpegRawData(Z)[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraThread;->mJpegData:[B

    .line 4383
    :goto_0
    iget-object v1, p0, Lcom/android/camera/CameraThread;->savingImageEvent:Lcom/android/camera/event/Event;

    sget-object v2, Lcom/android/camera/event/EventArgs;->empty:Lcom/android/camera/event/EventArgs;

    invoke-virtual {v1, p0, v2}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 4386
    new-instance v8, Lcom/android/camera/imaging/SaveImageRequestEventArgs;

    invoke-direct {v8, p1}, Lcom/android/camera/imaging/SaveImageRequestEventArgs;-><init>(Lcom/android/camera/imaging/SaveImageTask;)V

    .line 4387
    .local v8, requestEventArgs:Lcom/android/camera/imaging/SaveImageRequestEventArgs;
    iget-object v1, p0, Lcom/android/camera/CameraThread;->requestSaveImageEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v1, p0, v8}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 4390
    invoke-virtual {v8}, Lcom/android/camera/imaging/SaveImageRequestEventArgs;->isHandled()Z

    move-result v1

    if-nez v1, :cond_5

    .line 4392
    new-instance v0, Lcom/android/camera/MediaEventArgs;

    iget-wide v1, p1, Lcom/android/camera/imaging/SaveImageTask;->captureID:J

    iget-boolean v6, p1, Lcom/android/camera/imaging/SaveImageTask;->isLastImage:Z

    sget-object v7, Lcom/android/camera/MediaSaveFailedReason;->Unknown:Lcom/android/camera/MediaSaveFailedReason;

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/MediaEventArgs;-><init>(JLandroid/net/Uri;Lcom/android/camera/io/Path;Lcom/android/camera/io/FileFormat;ZLcom/android/camera/MediaSaveFailedReason;)V

    .line 4393
    .local v0, mediaEventArgs:Lcom/android/camera/MediaEventArgs;
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mediaSaveFailedEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v1, p0, v0}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 4395
    .end local v0           #mediaEventArgs:Lcom/android/camera/MediaEventArgs;
    :cond_5
    return-void

    .line 4380
    .end local v8           #requestEventArgs:Lcom/android/camera/imaging/SaveImageRequestEventArgs;
    :cond_6
    iput-object v3, p0, Lcom/android/camera/CameraThread;->mJpegData:[B

    goto :goto_0
.end method

.method public final setAecAwbLock(Z)V
    .locals 1
    .parameter "isLocked"

    .prologue
    .line 5389
    new-instance v0, Lcom/android/camera/CameraThread$20;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/CameraThread$20;-><init>(Lcom/android/camera/CameraThread;Z)V

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 5397
    return-void
.end method

.method public final setAutoFocusLock(Z)V
    .locals 1
    .parameter "isLocked"

    .prologue
    .line 5412
    new-instance v0, Lcom/android/camera/CameraThread$21;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/CameraThread$21;-><init>(Lcom/android/camera/CameraThread;Z)V

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 5420
    return-void
.end method

.method public final setCanStartPreview()V
    .locals 1

    .prologue
    .line 4333
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->threadAccessCheck()V

    .line 4334
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/CameraThread;->mCanStartPreview:Z

    .line 4335
    return-void
.end method

.method public final setCaptureRotation(Lcom/android/camera/rotate/UIRotation;)V
    .locals 1
    .parameter "rotation"

    .prologue
    .line 5269
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 5271
    new-instance v0, Lcom/android/camera/CameraThread$19;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/CameraThread$19;-><init>(Lcom/android/camera/CameraThread;Lcom/android/camera/rotate/UIRotation;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 5282
    :goto_0
    return-void

    .line 5281
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/CameraThread;->setCaptureRotationInternal(Lcom/android/camera/rotate/UIRotation;)V

    goto :goto_0
.end method

.method public setColorEffect(Ljava/lang/String;)V
    .locals 1
    .parameter "effect"

    .prologue
    .line 4153
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->threadAccessCheck()V

    .line 4155
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    if-nez v0, :cond_1

    .line 4163
    :cond_0
    :goto_0
    return-void

    .line 4158
    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCurrentColorEffect:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4160
    :cond_2
    iput-object p1, p0, Lcom/android/camera/CameraThread;->mCurrentColorEffect:Ljava/lang/String;

    .line 4161
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v0, p1}, Lcom/android/camera/CameraController;->setColorEffect(Ljava/lang/String;)V

    .line 4162
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v0}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    goto :goto_0
.end method

.method public final setFirstFrameCacheState(Z)V
    .locals 1
    .parameter "isEnabled"

    .prologue
    .line 5229
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 5231
    new-instance v0, Lcom/android/camera/CameraThread$18;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/CameraThread$18;-><init>(Lcom/android/camera/CameraThread;Z)V

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 5242
    :goto_0
    return-void

    .line 5241
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/CameraThread;->setFirstFrameCacheStateInternal(Z)V

    goto :goto_0
.end method

.method public setFlashMode(Lcom/android/camera/FlashMode;)V
    .locals 3
    .parameter "mode"

    .prologue
    const/4 v2, 0x0

    .line 5194
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 5195
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v1, 0x15

    invoke-static {v0, v1, v2, v2, p1}, Lcom/android/camera/MessageHandler;->sendUniqueObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 5198
    :goto_0
    return-void

    .line 5197
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/CameraThread;->setFlashModeInternal(Lcom/android/camera/FlashMode;)V

    goto :goto_0
.end method

.method public setRecPowerWarning(Z)V
    .locals 3
    .parameter "flag"

    .prologue
    .line 4654
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

    .line 4655
    iput-boolean p1, p0, Lcom/android/camera/CameraThread;->mRecPowerWarning:Z

    .line 4656
    return-void
.end method

.method public startPreview(Lcom/android/camera/CameraType;I)I
    .locals 3
    .parameter "cameraType"
    .parameter "status"

    .prologue
    const/4 v2, 0x0

    .line 1775
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 1777
    const-string v0, "CameraThread"

    const-string v1, "Start preview from another thread"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1778
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    invoke-static {v0, v2, p2, v2, p1}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 1779
    const/4 v0, 0x1

    .line 1781
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

    .line 1874
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 1875
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->startPreviewDirectlyInternal()I

    move-result v0

    .line 1887
    :goto_0
    return v0

    .line 1877
    :cond_0
    const-string v1, "CameraThread"

    const-string v2, "startPreviewDirectly() from another thread"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1879
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    if-eqz v1, :cond_1

    .line 1881
    iget-object v1, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    invoke-virtual {v1, v0}, Lcom/android/camera/CameraThread$MainHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1886
    :cond_1
    const-string v0, "CameraThread"

    const-string v1, "No camera handler to start preview directly"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1887
    const/4 v0, 0x4

    goto :goto_0
.end method

.method startVideoRecording()V
    .locals 29

    .prologue
    .line 2238
    const-string v3, "CameraThread"

    const-string v5, "startVideoRecording() - start"

    invoke-static {v3, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2241
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v5, 0x2f

    invoke-virtual {v3, v5}, Lcom/android/camera/CameraThread$MainHandler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2242
    const-string v3, "CameraThread"

    const-string v5, "start recording before stop recoding delay"

    invoke-static {v3, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2243
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    const/16 v5, 0x2f

    invoke-static {v3, v5}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 2244
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/camera/CameraThread;->mLatestCaptureID:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/camera/CameraThread;->mCaptureDuration:J

    move-wide/from16 v25, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v25

    invoke-direct {v0, v5, v6, v1, v2}, Lcom/android/camera/CameraThread;->stopVideoRecordingDelay(JJ)V

    .line 2247
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    if-eqz v3, :cond_1

    .line 2248
    const-string v3, "CameraThread"

    const-string v5, "mRecorder != null in start video recording"

    invoke-static {v3, v5}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 2249
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->releaseMediaRecorder()V

    .line 2252
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    if-nez v3, :cond_2

    .line 2253
    new-instance v3, Landroid/media/MediaRecorder;

    invoke-direct {v3}, Landroid/media/MediaRecorder;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    .line 2259
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v3, :cond_3

    .line 2260
    const-string v3, "CameraThread"

    const-string v5, "mCameraDevice is null in start video recording"

    invoke-static {v3, v5}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 2639
    :goto_0
    return-void

    .line 2264
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mLatestAutoFocusMode:Lcom/android/camera/AutoFocusMode;

    sget-object v5, Lcom/android/camera/AutoFocusMode;->Touch:Lcom/android/camera/AutoFocusMode;

    if-eq v3, v5, :cond_4

    .line 2266
    const-string v3, "CameraThread"

    const-string v5, "Start recording and not touch focus - enable continue AF !!!"

    invoke-static {v3, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2267
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    const-string v5, "enable-caf"

    const-string v6, "on"

    invoke-virtual {v3, v5, v6}, Lcom/android/camera/CameraController;->setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2269
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mCamController:Lcom/android/camera/CameraController;

    invoke-virtual {v3}, Lcom/android/camera/CameraController;->doSetCameraParameters()V

    .line 2270
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/camera/CameraThread;->mEnableCAF:Z

    .line 2274
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mAudioManager:Lcom/android/camera/IAudioManager;

    if-eqz v3, :cond_5

    .line 2275
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mAudioManager:Lcom/android/camera/IAudioManager;

    const-string v5, "CAMCORDER_MODE=ON"

    invoke-interface {v3, v5}, Lcom/android/camera/IAudioManager;->setParameters(Ljava/lang/String;)V

    .line 2279
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->isPowerWarning()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2281
    const-string v3, "CameraThread"

    const-string v5, "Won\'t access mCameraDevice due to PowerWarning"

    invoke-static {v3, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2286
    :cond_6
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/camera/CameraThread;->mCanSetPreviewCallback:Z

    .line 2287
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->clearPreviewCallback()V

    .line 2289
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->unlock()V

    .line 2290
    const-string v3, "CameraThread"

    const-string v5, "start video recording: unlock camera"

    invoke-static {v3, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2291
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v3, v5}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    .line 2293
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->captureRotation:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/rotate/UIRotation;

    iget v0, v3, Lcom/android/camera/rotate/UIRotation;->deviceOrientation:I

    move/from16 v22, v0

    .line 2294
    .local v22, orientation:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/CameraType;

    iget v0, v3, Lcom/android/camera/CameraType;->orientation:I

    move/from16 v24, v0

    .line 2295
    .local v24, sensorOrientation:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/CameraType;

    invoke-virtual {v3}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 2296
    add-int v22, v22, v24

    .line 2300
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/CameraType;

    invoke-virtual {v3}, Lcom/android/camera/CameraType;->is3DCamera()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2302
    const-string v3, "CameraThread"

    const-string v5, "set rotation landscape while 3D video mode"

    invoke-static {v3, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2303
    const/16 v22, 0x0

    .line 2306
    :cond_7
    move/from16 v0, v22

    rem-int/lit16 v0, v0, 0x168

    move/from16 v22, v0

    .line 2308
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

    .line 2309
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

    .line 2315
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    .line 2318
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v15

    .line 2320
    .local v15, holder:Landroid/view/SurfaceHolder;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    invoke-interface {v15}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/media/MediaRecorder;->setPreviewDisplay(Landroid/view/Surface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2329
    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5}, Lcom/android/camera/CameraThread;->setAecAwbLockInternal(ZZ)V

    .line 2331
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraThread;->isSlowMotionMode()Z

    move-result v17

    .line 2333
    .local v17, isSlowMotion:Z
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportStereoRecord()Z

    move-result v3

    if-eqz v3, :cond_11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mSettings:Lcom/android/camera/CameraSettings;

    iget-object v3, v3, Lcom/android/camera/CameraSettings;->isStereoRecordingEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_11

    const/16 v18, 0x1

    .line 2334
    .local v18, isStereoRecording:Z
    :goto_2
    if-nez v17, :cond_12

    .line 2335
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-static {v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->getIsRecordWithAudio(Landroid/content/Context;)Z

    move-result v19

    .line 2338
    .local v19, keepSound:Z
    :goto_3
    if-eqz v19, :cond_b

    .line 2341
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportStereoRecord()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 2343
    if-eqz v18, :cond_13

    .line 2345
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->captureRotation:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/rotate/UIRotation;

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v3}, Lcom/android/camera/CameraThread;->setSoundEffect(ZLcom/android/camera/rotate/UIRotation;)V

    .line 2346
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->enableSoundEffect()V

    .line 2347
    const-string v3, "CameraThread"

    const-string v5, "startVideoRecording() - Enable stereo recording"

    invoke-static {v3, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2356
    :cond_a
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 2358
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 2360
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportOnlyMP4VideoFormat()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->isMMSRecording()Z

    move-result v3

    if-nez v3, :cond_14

    .line 2362
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 2366
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/CameraType;

    invoke-virtual {v3}, Lcom/android/camera/CameraType;->is3DCamera()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 2367
    sget-object v3, Lcom/android/camera/io/FileFormat;->Mpeg4For3D:Lcom/android/camera/io/FileFormat;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/CameraThread;->mRecordingVideoFileFormat:Lcom/android/camera/io/FileFormat;

    .line 2383
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->storageSlot:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/io/StorageSlot;

    invoke-static {v3}, Lcom/android/camera/io/DCFUtility;->getDcimPath(Lcom/android/camera/io/StorageSlot;)Ljava/lang/String;

    move-result-object v4

    .line 2384
    .local v4, dcimPath:Ljava/lang/String;
    new-instance v7, Lcom/android/camera/Reference;

    invoke-direct {v7}, Lcom/android/camera/Reference;-><init>()V

    .line 2385
    .local v7, dirCounterRef:Lcom/android/camera/Reference;,"Lcom/android/camera/Reference<Ljava/lang/Integer;>;"
    new-instance v8, Lcom/android/camera/Reference;

    invoke-direct {v8}, Lcom/android/camera/Reference;-><init>()V

    .line 2386
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

    .line 2394
    const-string v3, "CameraThread"

    const-string v5, "Cannot find available video file location, please check the storage card"

    invoke-static {v3, v5}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 2395
    const-string v3, "CameraThread"

    const-string v5, "Camera app finished"

    invoke-static {v3, v5}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 2396
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->releaseMediaRecorder()V

    .line 2397
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->finish()V

    .line 2399
    :cond_c
    new-instance v10, Lcom/android/camera/io/FileCounter;

    iget-object v3, v7, Lcom/android/camera/Reference;->target:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v10, v3}, Lcom/android/camera/io/FileCounter;-><init>(I)V

    .line 2400
    .local v10, dirCounter:Lcom/android/camera/io/FileCounter;
    new-instance v14, Lcom/android/camera/io/FileCounter;

    iget-object v3, v8, Lcom/android/camera/Reference;->target:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v14, v3}, Lcom/android/camera/io/FileCounter;-><init>(I)V

    .line 2401
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

    .line 2407
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

    .line 2409
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CameraThread;->mRecordingVideoFilePath:Lcom/android/camera/io/DCFPath;

    invoke-virtual {v5}, Lcom/android/camera/io/DCFPath;->getFullPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 2411
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->getRecordLimitCheck()Lcom/android/camera/RecordLimitCheck;

    move-result-object v20

    .line 2412
    .local v20, limit:Lcom/android/camera/RecordLimitCheck;
    if-eqz v20, :cond_17

    .line 2414
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecordingVideoFilePath:Lcom/android/camera/io/DCFPath;

    invoke-virtual {v3}, Lcom/android/camera/io/DCFPath;->getFullPath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/android/camera/RecordLimitCheck;->setFilePath(Ljava/lang/String;)V

    .line 2415
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->storageSlot:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/io/StorageSlot;

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/android/camera/RecordLimitCheck;->calculateRemainSpace(Lcom/android/camera/io/StorageSlot;)V

    .line 2423
    :try_start_1
    invoke-virtual/range {v20 .. v20}, Lcom/android/camera/RecordLimitCheck;->getVideoBitrate()I

    move-result v9

    .line 2424
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

    .line 2425
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3, v9}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 2432
    .end local v9           #bitrate:I
    :goto_7
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual/range {v20 .. v20}, Lcom/android/camera/RecordLimitCheck;->getMaxSeconds()I

    move-result v5

    mul-int/lit16 v5, v5, 0x3e8

    invoke-virtual {v3, v5}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 2433
    const/4 v3, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/android/camera/RecordLimitCheck;->setUseTimeOut_API(Z)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3

    .line 2439
    :goto_8
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual/range {v20 .. v20}, Lcom/android/camera/RecordLimitCheck;->getMaxBytes()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_4

    .line 2452
    :goto_9
    const/16 v16, 0x0

    .line 2453
    .local v16, iValFR:I
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->isMMSRecording()Z

    move-result v3

    if-eqz v3, :cond_18

    sget-object v3, Lcom/android/camera/DisplayDevice;->CUSTOM_MMS:Lcom/android/camera/DisplayDevice$CustomMMS;

    sget-object v5, Lcom/android/camera/DisplayDevice$CustomMMS;->Verizon:Lcom/android/camera/DisplayDevice$CustomMMS;

    if-ne v3, v5, :cond_18

    .line 2454
    const/16 v16, 0xf

    .line 2461
    :goto_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 2462
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

    .line 2465
    if-eqz v22, :cond_d

    const/16 v3, 0xb4

    move/from16 v0, v22

    if-ne v0, v3, :cond_1a

    :cond_d
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/CameraThread;->Video_Mode_Width:I

    const/16 v5, 0x780

    if-ne v3, v5, :cond_1a

    .line 2468
    const-string v3, "CameraThread"

    const-string v5, "Set FULL HD recording size is 1080x1920"

    invoke-static {v3, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2469
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const/16 v5, 0x780

    const/16 v6, 0x438

    invoke-virtual {v3, v5, v6}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 2472
    :goto_b
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

    .line 2477
    if-nez v17, :cond_1b

    .line 2478
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/CameraThread;->mEncoderType:I

    invoke-virtual {v3, v5}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    .line 2483
    :goto_c
    if-eqz v19, :cond_f

    .line 2486
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/CameraThread;->IsEqualOrAbove720p()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 2487
    invoke-static {}, Lcom/android/camera/DisplayDevice;->support128kBitrate()Z

    move-result v3

    const/4 v5, 0x1

    if-eq v3, v5, :cond_1c

    .line 2488
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const/16 v5, 0x7d00

    invoke-virtual {v3, v5}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 2489
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const/16 v5, 0x1f40

    invoke-virtual {v3, v5}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 2519
    :cond_e
    :goto_d
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->NeedToApplyAMR_NB()Z

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_23

    .line 2521
    const-string v3, "CameraThread"

    const-string v5, "AMR_NB"

    invoke-static {v3, v5}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 2522
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 2539
    :cond_f
    :goto_e
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 2559
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/android/camera/CameraThread;->mCaptureStartTime:J

    .line 2560
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/camera/CameraThread;->mLatestCaptureID:J

    const-wide/16 v25, 0x1

    add-long v5, v5, v25

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/android/camera/CameraThread;->mLatestCaptureID:J

    .line 2580
    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CameraThread;->mInfoListener:Lcom/android/camera/CameraThread$InfoListener;

    invoke-virtual {v3, v5}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 2581
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CameraThread;->mErrorListener:Lcom/android/camera/CameraThread$ErrorListener;

    invoke-virtual {v3, v5}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 2583
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->getSurfaceStateSyncRoot()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 2586
    :try_start_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->isSurfaceAvailable()Z

    move-result v3

    if-nez v3, :cond_25

    .line 2588
    const-string v3, "CameraThread"

    const-string v6, "startVideoRecording() - Preview surface is unavailable"

    invoke-static {v3, v6}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 2589
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/camera/CameraThread;->mLatestCaptureID:J

    move-wide/from16 v25, v0

    const-wide/16 v27, 0x1

    sub-long v25, v25, v27

    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/camera/CameraThread;->mLatestCaptureID:J

    .line 2590
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->releaseMediaRecorder()V

    .line 2591
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->recordingFailedEvent:Lcom/android/camera/event/Event;

    new-instance v6, Lcom/android/camera/OneValueEventArgs;

    sget-object v25, Lcom/android/camera/RecordingFailedReason;->Unknown:Lcom/android/camera/RecordingFailedReason;

    move-object/from16 v0, v25

    invoke-direct {v6, v0}, Lcom/android/camera/OneValueEventArgs;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    invoke-virtual {v3, v0, v6}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 2592
    monitor-exit v5

    goto/16 :goto_0

    .line 2601
    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v3
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 2610
    :catch_0
    move-exception v12

    .line 2611
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

    .line 2612
    const-string v3, "CameraThread"

    const-string v5, "Camera app finished"

    invoke-static {v3, v5, v12}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2613
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/camera/CameraThread;->mLatestCaptureID:J

    const-wide/16 v25, 0x1

    sub-long v5, v5, v25

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/android/camera/CameraThread;->mLatestCaptureID:J

    .line 2614
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->releaseMediaRecorder()V

    .line 2615
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->finish()V

    goto/16 :goto_0

    .line 2298
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
    :cond_10
    sub-int v22, v24, v22

    goto/16 :goto_1

    .line 2321
    .restart local v15       #holder:Landroid/view/SurfaceHolder;
    :catch_1
    move-exception v12

    .line 2322
    .restart local v12       #ex:Ljava/lang/Exception;
    const-string v3, "CameraThread"

    const-string v5, "setPreviewDisplay failed, Camera app finished"

    invoke-static {v3, v5, v12}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2323
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->releaseMediaRecorder()V

    .line 2324
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->finish()V

    goto/16 :goto_0

    .line 2333
    .end local v12           #ex:Ljava/lang/Exception;
    .restart local v17       #isSlowMotion:Z
    :cond_11
    const/16 v18, 0x0

    goto/16 :goto_2

    .line 2337
    .restart local v18       #isStereoRecording:Z
    :cond_12
    const/16 v19, 0x0

    .restart local v19       #keepSound:Z
    goto/16 :goto_3

    .line 2351
    :cond_13
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->captureRotation:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/rotate/UIRotation;

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v3}, Lcom/android/camera/CameraThread;->setSoundEffect(ZLcom/android/camera/rotate/UIRotation;)V

    .line 2352
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->enableSoundEffect()V

    .line 2353
    const-string v3, "CameraThread"

    const-string v5, "startVideoRecording() - Disable stereo recording"

    invoke-static {v3, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 2364
    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    goto/16 :goto_5

    .line 2368
    :cond_15
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportOnlyMP4VideoFormat()Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->isMMSRecording()Z

    move-result v3

    if-nez v3, :cond_16

    .line 2369
    sget-object v3, Lcom/android/camera/io/FileFormat;->Mpeg4:Lcom/android/camera/io/FileFormat;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/CameraThread;->mRecordingVideoFileFormat:Lcom/android/camera/io/FileFormat;

    goto/16 :goto_6

    .line 2371
    :cond_16
    sget-object v3, Lcom/android/camera/io/FileFormat;->ThreeGPP:Lcom/android/camera/io/FileFormat;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/CameraThread;->mRecordingVideoFileFormat:Lcom/android/camera/io/FileFormat;

    goto/16 :goto_6

    .line 2426
    .restart local v4       #dcimPath:Ljava/lang/String;
    .restart local v7       #dirCounterRef:Lcom/android/camera/Reference;,"Lcom/android/camera/Reference<Ljava/lang/Integer;>;"
    .restart local v8       #fileCounterRef:Lcom/android/camera/Reference;,"Lcom/android/camera/Reference<Ljava/lang/Integer;>;"
    .restart local v10       #dirCounter:Lcom/android/camera/io/FileCounter;
    .restart local v14       #fileCounter:Lcom/android/camera/io/FileCounter;
    .restart local v20       #limit:Lcom/android/camera/RecordLimitCheck;
    :catch_2
    move-exception v13

    .line 2427
    .local v13, exception:Ljava/lang/Exception;
    const-string v3, "CameraThread"

    const-string v5, "mRecorder.setParameters() failed"

    invoke-static {v3, v5, v13}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .line 2434
    .end local v13           #exception:Ljava/lang/Exception;
    :catch_3
    move-exception v13

    .line 2435
    .local v13, exception:Ljava/lang/RuntimeException;
    const-string v3, "CameraThread"

    const-string v5, "mRecorder.setMaxDuration() failed - only use ui message to check time out"

    invoke-static {v3, v5}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 2436
    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/android/camera/RecordLimitCheck;->setUseTimeOut_API(Z)V

    goto/16 :goto_8

    .line 2440
    .end local v13           #exception:Ljava/lang/RuntimeException;
    :catch_4
    move-exception v13

    .line 2445
    .restart local v13       #exception:Ljava/lang/RuntimeException;
    const-string v3, "CameraThread"

    const-string v5, "mRecorder.setMaxFileSize() failed - use message to check file size"

    invoke-static {v3, v5}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 2446
    invoke-virtual/range {v20 .. v20}, Lcom/android/camera/RecordLimitCheck;->restartCheckFile()V

    goto/16 :goto_9

    .line 2449
    .end local v13           #exception:Ljava/lang/RuntimeException;
    :cond_17
    const-string v3, "CameraThread"

    const-string v5, "RecordLimitCheck is null !!!"

    invoke-static {v3, v5}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 2456
    .restart local v16       #iValFR:I
    :cond_18
    if-eqz v17, :cond_19

    .line 2457
    const/16 v16, 0x78

    goto/16 :goto_a

    .line 2459
    :cond_19
    const/16 v16, 0x1e

    goto/16 :goto_a

    .line 2471
    :cond_1a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/CameraThread;->Video_Mode_Width:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/camera/CameraThread;->Video_Mode_Height:I

    invoke-virtual {v3, v5, v6}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    goto/16 :goto_b

    .line 2480
    :cond_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    goto/16 :goto_c

    .line 2491
    :cond_1c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const v5, 0x1f400

    invoke-virtual {v3, v5}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 2492
    invoke-static {}, Lcom/android/camera/DisplayDevice;->needForce48KAudioSamplingRate()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 2493
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const v5, 0xbb80

    invoke-virtual {v3, v5}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 2496
    :goto_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/camera/HTCCamera;->setBackgroundDataSetting(Z)V

    goto/16 :goto_d

    .line 2495
    :cond_1d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const v5, 0xac44

    invoke-virtual {v3, v5}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    goto :goto_f

    .line 2500
    :cond_1e
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->NeedToApplyAMR_NB()Z

    move-result v3

    if-nez v3, :cond_e

    .line 2502
    invoke-static {}, Lcom/android/camera/MovieModeHandler;->getMovieModeHandler()Lcom/android/camera/MovieModeHandler;

    move-result-object v21

    .line 2503
    .local v21, mModeHdr:Lcom/android/camera/ModeHandler;
    if-eqz v21, :cond_21

    .line 2505
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

    .line 2506
    .local v23, r:Lcom/android/camera/Resolution;
    sget-object v3, Lcom/android/camera/Resolution;->Video_QHD:Lcom/android/camera/Resolution;

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    sget-object v3, Lcom/android/camera/Resolution;->Video_WVGA:Lcom/android/camera/Resolution;

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 2507
    :cond_1f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const v5, 0x17700

    invoke-virtual {v3, v5}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 2513
    .end local v23           #r:Lcom/android/camera/Resolution;
    :goto_10
    invoke-static {}, Lcom/android/camera/DisplayDevice;->needForce48KAudioSamplingRate()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 2514
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const v5, 0xbb80

    invoke-virtual {v3, v5}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    goto/16 :goto_d

    .line 2509
    .restart local v23       #r:Lcom/android/camera/Resolution;
    :cond_20
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const v5, 0xfa00

    invoke-virtual {v3, v5}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    goto :goto_10

    .line 2512
    .end local v23           #r:Lcom/android/camera/Resolution;
    :cond_21
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const v5, 0xfa00

    invoke-virtual {v3, v5}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    goto :goto_10

    .line 2516
    :cond_22
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const v5, 0xac44

    invoke-virtual {v3, v5}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    goto/16 :goto_d

    .line 2524
    .end local v21           #mModeHdr:Lcom/android/camera/ModeHandler;
    :cond_23
    const-string v3, "CameraThread"

    const-string v5, "AAC"

    invoke-static {v3, v5}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 2526
    if-eqz v18, :cond_24

    .line 2528
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    .line 2534
    :goto_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    goto/16 :goto_e

    .line 2532
    :cond_24
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    goto :goto_11

    .line 2540
    :catch_5
    move-exception v12

    .line 2541
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

    .line 2542
    const-string v3, "CameraThread"

    const-string v5, "Camera app finished"

    invoke-static {v3, v5, v12}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2543
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->restoreBackgrounddataSetting()V

    .line 2544
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/CameraThread;->releaseMediaRecorder()V

    .line 2545
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->finish()V

    goto/16 :goto_0

    .line 2595
    .end local v12           #ex:Ljava/lang/Exception;
    :cond_25
    :try_start_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/camera/CameraThread;->mStartCountTime:J

    .line 2598
    const-string v3, "CameraThread"

    const-string v6, "startVideoRecording() - MediaRecorder.start() - Start"

    invoke-static {v3, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2599
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->start()V

    .line 2600
    const-string v3, "CameraThread"

    const-string v6, "startVideoRecording() - MediaRecorder.start() - End"

    invoke-static {v3, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2601
    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 2605
    :try_start_9
    const-string v3, "[ANALYTIC_com.android.camera]"

    const-string v5, "[record_video]complete"

    invoke-static {v3, v5}, Lcom/android/camera/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 2608
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->prepareActionScreen()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 2619
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v3}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v3

    const-string v5, "counter_video"

    iget v6, v14, Lcom/android/camera/io/FileCounter;->mainCounter:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/android/camera/CameraSettings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 2622
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->isRecording:Lcom/android/camera/property/Property;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/CameraThread;->mPropertyOwnerKey:Ljava/lang/Object;

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2625
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isNvidiaPlatform()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 2629
    :try_start_a
    const-string v3, "CameraThread"

    const-string v5, "[NV] Acquire recording semaphore"

    invoke-static {v3, v5}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2630
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/CameraThread;->m_SemaphoreRecording:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_6

    .line 2638
    :cond_26
    :goto_12
    const-string v3, "CameraThread"

    const-string v5, "startVideoRecording() - end"

    invoke-static {v3, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2632
    :catch_6
    move-exception v11

    .line 2634
    .local v11, e:Ljava/lang/InterruptedException;
    const-string v3, "CameraThread"

    const-string v5, "[NV] Error acquiring recording semaphore"

    invoke-static {v3, v5, v11}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_12
.end method

.method public final stopPreview()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2024
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-ne v0, p0, :cond_1

    .line 2026
    const-string v0, "CameraThread"

    const-string v1, "stopPreview() - start sync"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2027
    iget-boolean v0, p0, Lcom/android/camera/CameraThread;->mPreviewing:Z

    if-eqz v0, :cond_0

    .line 2030
    iput-boolean v2, p0, Lcom/android/camera/CameraThread;->mCanSetPreviewCallback:Z

    .line 2031
    invoke-direct {p0}, Lcom/android/camera/CameraThread;->clearPreviewCallback()V

    .line 2034
    iget-object v0, p0, Lcom/android/camera/CameraThread;->previewStoppingEvent:Lcom/android/camera/event/Event;

    sget-object v1, Lcom/android/camera/event/EventArgs;->empty:Lcom/android/camera/event/EventArgs;

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 2037
    const-string v0, "CameraThread"

    const-string v1, "before stopPreview"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2038
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 2039
    const-string v0, "CameraThread"

    const-string v1, "after stopPreview"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2041
    iget-object v0, p0, Lcom/android/camera/CameraThread;->previewStoppedEvent:Lcom/android/camera/event/Event;

    sget-object v1, Lcom/android/camera/event/EventArgs;->empty:Lcom/android/camera/event/EventArgs;

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 2042
    iput-boolean v2, p0, Lcom/android/camera/CameraThread;->mPreviewing:Z

    .line 2044
    :cond_0
    const-string v0, "CameraThread"

    const-string v1, "stopPreview() - end sync"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2061
    :goto_0
    return-void

    .line 2046
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CameraThread;->mCameraHandler:Lcom/android/camera/CameraThread$MainHandler;

    if-eqz v0, :cond_2

    .line 2048
    const-string v0, "CameraThread"

    const-string v1, "stopPreview() - start async"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2049
    new-instance v0, Lcom/android/camera/CameraThread$6;

    invoke-direct {v0, p0}, Lcom/android/camera/CameraThread$6;-><init>(Lcom/android/camera/CameraThread;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    .line 2057
    const-string v0, "CameraThread"

    const-string v1, "stopPreview() - end async"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2060
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
    .line 3366
    iget-object v9, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {p2, v9, p3}, Lcom/android/camera/ModeHandler;->getCurrentResolutionSettingValue(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraType;)Lcom/android/camera/Resolution;

    move-result-object v5

    .line 3367
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

    .line 3370
    :cond_0
    const-string v9, "CameraThread"

    const-string v10, "Contacts request - directly get CONTACT_STYLE resolution"

    invoke-static {v9, v10}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 3433
    .end local v5           #r:Lcom/android/camera/Resolution;
    :goto_0
    return-object v5

    .line 3374
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

    .line 3375
    :cond_2
    const-string v9, "CameraThread"

    const-string v10, "not need to update image ratio"

    invoke-static {v9, v10}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3379
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

    .line 3380
    iget-object v9, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {p2, v9, p3}, Lcom/android/camera/ModeHandler;->getResolutionMenuItem(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraType;)Ljava/util/LinkedList;

    move-result-object v7

    .line 3381
    .local v7, resoItems:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/camera/ResolutionMenuItem;>;"
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 3382
    .local v1, WideItems:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/camera/ResolutionMenuItem;>;"
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 3384
    .local v0, OriginalItems:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/camera/ResolutionMenuItem;>;"
    new-instance v8, Ljava/util/TreeSet;

    invoke-direct {v8}, Ljava/util/TreeSet;-><init>()V

    .line 3385
    .local v8, sortedSet:Ljava/util/TreeSet;,"Ljava/util/TreeSet<Lcom/android/camera/ResolutionMenuItem;>;"
    invoke-virtual {v8, v7}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 3386
    invoke-virtual {v8}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 3388
    .local v3, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/camera/ResolutionMenuItem;>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 3389
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/ResolutionMenuItem;

    .line 3390
    .local v6, re:Lcom/android/camera/ResolutionMenuItem;
    iget-object v9, v6, Lcom/android/camera/ResolutionMenuItem;->resolution:Lcom/android/camera/Resolution;

    invoke-virtual {v9}, Lcom/android/camera/Resolution;->isWideRatio()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 3391
    invoke-virtual {v1, v6}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_1

    .line 3393
    :cond_4
    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_1

    .line 3396
    .end local v6           #re:Lcom/android/camera/ResolutionMenuItem;
    :cond_5
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v9

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v10

    if-eq v9, v10, :cond_6

    .line 3397
    const-string v9, "CameraThread"

    const-string v10, "Note: the number of resolution pairs for image ratio are not equal"

    invoke-static {v9, v10}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 3399
    :cond_6
    const/4 v4, 0x0

    .line 3400
    .local v4, new_resolution:Lcom/android/camera/Resolution;
    if-eqz p1, :cond_8

    .line 3401
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v9

    if-ge v2, v9, :cond_a

    .line 3402
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/camera/ResolutionMenuItem;

    iget-object v9, v9, Lcom/android/camera/ResolutionMenuItem;->resolution:Lcom/android/camera/Resolution;

    invoke-virtual {v5, v9}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 3403
    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/camera/ResolutionMenuItem;

    iget-object v4, v9, Lcom/android/camera/ResolutionMenuItem;->resolution:Lcom/android/camera/Resolution;

    .line 3401
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 3407
    .end local v2           #i:I
    :cond_8
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_3
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v9

    if-ge v2, v9, :cond_a

    .line 3408
    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/camera/ResolutionMenuItem;

    iget-object v9, v9, Lcom/android/camera/ResolutionMenuItem;->resolution:Lcom/android/camera/Resolution;

    invoke-virtual {v5, v9}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 3409
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/camera/ResolutionMenuItem;

    iget-object v4, v9, Lcom/android/camera/ResolutionMenuItem;->resolution:Lcom/android/camera/Resolution;

    .line 3407
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 3414
    :cond_a
    if-nez v4, :cond_c

    .line 3416
    const-string v9, "CameraThread"

    const-string v10, "update image ratio is fail"

    invoke-static {v9, v10}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 3431
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

    .line 3433
    goto/16 :goto_0

    .line 3422
    :cond_c
    iget-object v9, p0, Lcom/android/camera/CameraThread;->mCameraActivity:Lcom/android/camera/HTCCamera;

    sget-object v10, Lcom/android/camera/IntentManager$RequestName;->Mms:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v9, v10}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_b

    .line 3424
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
    .line 5374
    const-string v0, "CameraThread"

    const-string v1, "[NV] waitForCheckRecording()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 5375
    iget-object v0, p0, Lcom/android/camera/CameraThread;->m_SemaphoreRecording:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 5376
    return-void
.end method
