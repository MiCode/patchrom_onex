.class public Lcom/android/camera/OnScreenPreference;
.super Ljava/lang/Object;
.source "OnScreenPreference.java"

# interfaces
.implements Lcom/android/camera/widget/SettingsView$OnPreferenceUpdatedListener;
.implements Lcom/android/camera/widget/ResolutionView$OnPreferenceUpdatedListener;


# static fields
.field private static final FIRST_REQUEST_CODE:I = 0x64

.field private static final GROUP_KEY:Ljava/lang/String; = "group"

.field private static final NOT_FOUND:I = -0x1

.field private static final TAG:Ljava/lang/String; = "OnScreenPreference"


# instance fields
.field private ISOValue_manual:Ljava/lang/String;

.field private ImgBrightnessValue_manual:Ljava/lang/String;

.field private ImgContrastValue_manual:Ljava/lang/String;

.field private ImgSaturationValue_manual:Ljava/lang/String;

.field private ImgSharpnessValue_manual:Ljava/lang/String;

.field private WhitebalanceValue_manual:Ljava/lang/String;

.field private bAutoFocus:Z

.field private bBlinkDetection:Z

.field private bFaceDetection:Z

.field private bFastFrameRecording:Z

.field private bIs3DCamera:Z

.field private bPostProcessing:Z

.field private bRecordWithAudio:Z

.field private bShutterSound:Z

.field private bSmileCapture:Z

.field private bStereoRecording:Z

.field private bSwitchCamera:Z

.field private bTapCapture:Z

.field private bVideoStabilization:Z

.field private bWideScreen:Z

.field private isCheckGPS_Setting:Z

.field private m3DCameraSwitchPref:Landroid/preference/CheckBoxPreference;

.field private m3DFileFormatPref:Landroid/preference/ListPreference;

.field private m3DFileFormatValue:Ljava/lang/String;

.field private mAutoFocusPref:Landroid/preference/CheckBoxPreference;

.field private mAutoUploadAccountType:Ljava/lang/String;

.field private mAutoUploadFrequence:Ljava/lang/String;

.field private mAutoUploadPref:Landroid/preference/Preference;

.field private mAutoUploadService:Ljava/lang/String;

.field private mAutoUploadServiceLabel:Ljava/lang/String;

.field private mAutoUploadServiceTitle:Ljava/lang/String;

.field private mBlinkDetectionPref:Landroid/preference/CheckBoxPreference;

.field private mCameraHandler:Landroid/os/Handler;

.field private mCameraSwitchPref:Landroid/preference/CheckBoxPreference;

.field private mCameraThread:Lcom/android/camera/CameraThread;

.field private mDialog:Landroid/app/Dialog;

.field private mFaceDetectionPref:Landroid/preference/CheckBoxPreference;

.field private mFastFrameRecording:Landroid/preference/CheckBoxPreference;

.field private mGeneral_isWideScreen:Z

.field private mGeoTaggingPref:Landroid/preference/CheckBoxPreference;

.field private mHTCCamera:Lcom/android/camera/HTCCamera;

.field private mImageRatioPref:Landroid/preference/CheckBoxPreference;

.field private mManager:Landroid/preference/PreferenceManager;

.field private mMenuHandler:Lcom/android/camera/MenuHandler;

.field private mModeHdr:Lcom/android/camera/ModeHandler;

.field private mPostProcessingPref:Landroid/preference/CheckBoxPreference;

.field private mRecordWithAudio:Landroid/preference/CheckBoxPreference;

.field private mRecordingLengthPref:Landroid/preference/Preference;

.field private mResolutionItems:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/camera/ResolutionMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mReviewDurationPref:Landroid/preference/ListPreference;

.field private mReviewDurationValue:Ljava/lang/String;

.field private mScenePref:Landroid/preference/ListPreference;

.field private mScreen:Landroid/preference/PreferenceScreen;

.field private mSelfPortraitPref:Landroid/preference/Preference;

.field private mSelfTimerPref:Landroid/preference/ListPreference;

.field private mShutterSoundPref:Landroid/preference/CheckBoxPreference;

.field private mSmileCapturePref:Landroid/preference/CheckBoxPreference;

.field private mStereoRecordingPref:Landroid/preference/CheckBoxPreference;

.field private mTapCapturePref:Landroid/preference/CheckBoxPreference;

.field private mTimeStampPref:Landroid/preference/CheckBoxPreference;

.field private mUIHandler:Landroid/os/Handler;

.field private mVideoFileFormatPref:Landroid/preference/ListPreference;

.field private mVideoFileFormatValue:Ljava/lang/String;

.field private mVideoStabilizationPref:Landroid/preference/CheckBoxPreference;

.field private oldISOValue:Ljava/lang/String;

.field private oldImgBrightnessValue:Ljava/lang/String;

.field private oldImgContrastValue:Ljava/lang/String;

.field private oldImgSaturationValue:Ljava/lang/String;

.field private oldImgSharpnessValue:Ljava/lang/String;

.field private oldWhitebalanceValue:Ljava/lang/String;

.field private tempValue_ds:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 137
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    .line 50
    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->mUIHandler:Landroid/os/Handler;

    .line 51
    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    .line 52
    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    .line 53
    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->mManager:Landroid/preference/PreferenceManager;

    .line 54
    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->mScreen:Landroid/preference/PreferenceScreen;

    .line 55
    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->mDialog:Landroid/app/Dialog;

    .line 56
    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->mModeHdr:Lcom/android/camera/ModeHandler;

    .line 57
    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->mResolutionItems:Ljava/util/LinkedList;

    .line 63
    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->mTimeStampPref:Landroid/preference/CheckBoxPreference;

    .line 64
    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->mGeoTaggingPref:Landroid/preference/CheckBoxPreference;

    .line 65
    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->mPostProcessingPref:Landroid/preference/CheckBoxPreference;

    .line 66
    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->mStereoRecordingPref:Landroid/preference/CheckBoxPreference;

    .line 67
    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->mImageRatioPref:Landroid/preference/CheckBoxPreference;

    .line 68
    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->mCameraSwitchPref:Landroid/preference/CheckBoxPreference;

    .line 69
    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->m3DCameraSwitchPref:Landroid/preference/CheckBoxPreference;

    .line 70
    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->mAutoFocusPref:Landroid/preference/CheckBoxPreference;

    .line 71
    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->mTapCapturePref:Landroid/preference/CheckBoxPreference;

    .line 72
    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->mFaceDetectionPref:Landroid/preference/CheckBoxPreference;

    .line 73
    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->mShutterSoundPref:Landroid/preference/CheckBoxPreference;

    .line 74
    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->mVideoStabilizationPref:Landroid/preference/CheckBoxPreference;

    .line 75
    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->mFastFrameRecording:Landroid/preference/CheckBoxPreference;

    .line 76
    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->mRecordWithAudio:Landroid/preference/CheckBoxPreference;

    .line 77
    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->mReviewDurationPref:Landroid/preference/ListPreference;

    .line 78
    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->m3DFileFormatPref:Landroid/preference/ListPreference;

    .line 79
    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->mVideoFileFormatPref:Landroid/preference/ListPreference;

    .line 80
    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->mSelfTimerPref:Landroid/preference/ListPreference;

    .line 81
    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->mScenePref:Landroid/preference/ListPreference;

    .line 82
    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->mSelfPortraitPref:Landroid/preference/Preference;

    .line 83
    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->mRecordingLengthPref:Landroid/preference/Preference;

    .line 84
    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->mAutoUploadPref:Landroid/preference/Preference;

    .line 87
    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->mSmileCapturePref:Landroid/preference/CheckBoxPreference;

    .line 88
    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->mBlinkDetectionPref:Landroid/preference/CheckBoxPreference;

    .line 90
    iput-boolean v2, p0, Lcom/android/camera/OnScreenPreference;->mGeneral_isWideScreen:Z

    .line 91
    iput-boolean v2, p0, Lcom/android/camera/OnScreenPreference;->isCheckGPS_Setting:Z

    .line 93
    iput-boolean v2, p0, Lcom/android/camera/OnScreenPreference;->bSwitchCamera:Z

    .line 94
    iput-boolean v2, p0, Lcom/android/camera/OnScreenPreference;->bIs3DCamera:Z

    .line 95
    iput-boolean v2, p0, Lcom/android/camera/OnScreenPreference;->bWideScreen:Z

    .line 96
    iput-boolean v2, p0, Lcom/android/camera/OnScreenPreference;->bPostProcessing:Z

    .line 97
    iput-boolean v2, p0, Lcom/android/camera/OnScreenPreference;->bStereoRecording:Z

    .line 98
    iput-boolean v2, p0, Lcom/android/camera/OnScreenPreference;->bVideoStabilization:Z

    .line 99
    iput-boolean v2, p0, Lcom/android/camera/OnScreenPreference;->bAutoFocus:Z

    .line 100
    iput-boolean v2, p0, Lcom/android/camera/OnScreenPreference;->bTapCapture:Z

    .line 101
    iput-boolean v2, p0, Lcom/android/camera/OnScreenPreference;->bFaceDetection:Z

    .line 102
    iput-boolean v2, p0, Lcom/android/camera/OnScreenPreference;->bShutterSound:Z

    .line 103
    const-string v0, "no_review"

    iput-object v0, p0, Lcom/android/camera/OnScreenPreference;->mReviewDurationValue:Ljava/lang/String;

    .line 104
    const-string v0, "mpo"

    iput-object v0, p0, Lcom/android/camera/OnScreenPreference;->m3DFileFormatValue:Ljava/lang/String;

    .line 105
    const-string v0, "3gpp"

    iput-object v0, p0, Lcom/android/camera/OnScreenPreference;->mVideoFileFormatValue:Ljava/lang/String;

    .line 107
    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->oldWhitebalanceValue:Ljava/lang/String;

    .line 108
    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->oldISOValue:Ljava/lang/String;

    .line 109
    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->oldImgBrightnessValue:Ljava/lang/String;

    .line 110
    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->oldImgContrastValue:Ljava/lang/String;

    .line 111
    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->oldImgSaturationValue:Ljava/lang/String;

    .line 112
    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->oldImgSharpnessValue:Ljava/lang/String;

    .line 114
    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->tempValue_ds:Ljava/lang/String;

    .line 115
    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->WhitebalanceValue_manual:Ljava/lang/String;

    .line 116
    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->ISOValue_manual:Ljava/lang/String;

    .line 117
    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->ImgBrightnessValue_manual:Ljava/lang/String;

    .line 118
    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->ImgContrastValue_manual:Ljava/lang/String;

    .line 119
    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->ImgSaturationValue_manual:Ljava/lang/String;

    .line 120
    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->ImgSharpnessValue_manual:Ljava/lang/String;

    .line 123
    iput-boolean v2, p0, Lcom/android/camera/OnScreenPreference;->bSmileCapture:Z

    .line 124
    iput-boolean v2, p0, Lcom/android/camera/OnScreenPreference;->bBlinkDetection:Z

    .line 125
    iput-boolean v2, p0, Lcom/android/camera/OnScreenPreference;->bFastFrameRecording:Z

    .line 126
    iput-boolean v2, p0, Lcom/android/camera/OnScreenPreference;->bRecordWithAudio:Z

    .line 130
    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/OnScreenPreference;->mAutoUploadService:Ljava/lang/String;

    .line 131
    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/OnScreenPreference;->mAutoUploadServiceLabel:Ljava/lang/String;

    .line 132
    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/OnScreenPreference;->mAutoUploadServiceTitle:Ljava/lang/String;

    .line 133
    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/OnScreenPreference;->mAutoUploadFrequence:Ljava/lang/String;

    .line 134
    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/OnScreenPreference;->mAutoUploadAccountType:Ljava/lang/String;

    .line 139
    return-void
.end method

.method static synthetic access$002(Lcom/android/camera/OnScreenPreference;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/android/camera/OnScreenPreference;->isCheckGPS_Setting:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/camera/OnScreenPreference;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mGeoTaggingPref:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/OnScreenPreference;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mSmileCapturePref:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/camera/OnScreenPreference;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/android/camera/OnScreenPreference;->bShutterSound:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/android/camera/OnScreenPreference;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/android/camera/OnScreenPreference;->bVideoStabilization:Z

    return p1
.end method

.method static synthetic access$1302(Lcom/android/camera/OnScreenPreference;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/android/camera/OnScreenPreference;->bFastFrameRecording:Z

    return p1
.end method

.method static synthetic access$1402(Lcom/android/camera/OnScreenPreference;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/android/camera/OnScreenPreference;->bRecordWithAudio:Z

    return p1
.end method

.method static synthetic access$1502(Lcom/android/camera/OnScreenPreference;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/camera/OnScreenPreference;->mReviewDurationValue:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/android/camera/OnScreenPreference;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/camera/OnScreenPreference;->m3DFileFormatValue:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1702(Lcom/android/camera/OnScreenPreference;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/camera/OnScreenPreference;->mVideoFileFormatValue:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/camera/OnScreenPreference;)Lcom/android/camera/CameraThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/OnScreenPreference;)Lcom/android/camera/HTCCamera;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/OnScreenPreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/camera/OnScreenPreference;->closeDialog()V

    return-void
.end method

.method static synthetic access$402(Lcom/android/camera/OnScreenPreference;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/android/camera/OnScreenPreference;->mGeneral_isWideScreen:Z

    return p1
.end method

.method static synthetic access$502(Lcom/android/camera/OnScreenPreference;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/android/camera/OnScreenPreference;->bPostProcessing:Z

    return p1
.end method

.method static synthetic access$602(Lcom/android/camera/OnScreenPreference;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/android/camera/OnScreenPreference;->bStereoRecording:Z

    return p1
.end method

.method static synthetic access$702(Lcom/android/camera/OnScreenPreference;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/android/camera/OnScreenPreference;->bAutoFocus:Z

    return p1
.end method

.method static synthetic access$802(Lcom/android/camera/OnScreenPreference;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/android/camera/OnScreenPreference;->bFaceDetection:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/camera/OnScreenPreference;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/android/camera/OnScreenPreference;->bSmileCapture:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/camera/OnScreenPreference;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/android/camera/OnScreenPreference;->bSmileCapture:Z

    return p1
.end method

.method private addEncodeType_H264(Landroid/preference/PreferenceScreen;)V
    .locals 13
    .parameter "screen"

    .prologue
    .line 692
    const-string v11, "pref_capture_format_video"

    invoke-virtual {p1, v11}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/ListPreference;

    .line 693
    .local v9, type:Landroid/preference/ListPreference;
    if-nez v9, :cond_1

    .line 723
    :cond_0
    :goto_0
    return-void

    .line 696
    :cond_1
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportH264()Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_0

    .line 697
    invoke-virtual {v9}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 698
    .local v1, allEntries:[Ljava/lang/CharSequence;
    invoke-virtual {v9}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 699
    .local v2, allEntryValues:[Ljava/lang/CharSequence;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 700
    .local v3, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 701
    .local v4, entryValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    iget-object v11, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const v12, 0x7f0a00ff

    invoke-virtual {v11, v12}, Lcom/android/camera/HTCCamera;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 702
    .local v5, entry_h264:Ljava/lang/String;
    const-string v10, "h264"

    .line 704
    .local v10, value_h264:Ljava/lang/String;
    const/4 v0, 0x0

    .line 705
    .local v0, added:Z
    const/4 v8, 0x0

    .line 706
    .local v8, temp:Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    array-length v11, v2

    if-ge v6, v11, :cond_3

    .line 707
    aget-object v11, v1, v6

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 708
    if-nez v0, :cond_2

    invoke-virtual {v5, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-gez v11, :cond_2

    .line 709
    const/4 v0, 0x1

    .line 710
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 711
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 714
    :cond_2
    aget-object v11, v1, v6

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 715
    aget-object v11, v2, v6

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 706
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 719
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 720
    .local v7, size:I
    new-array v11, v7, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/CharSequence;

    invoke-virtual {v9, v11}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 721
    new-array v11, v7, [Ljava/lang/CharSequence;

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/CharSequence;

    invoke-virtual {v9, v11}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private addOptinalRecordingLimit(Landroid/preference/PreferenceScreen;)V
    .locals 11
    .parameter "screen"

    .prologue
    .line 666
    const-string v9, "pref_camera_recording_limit"

    invoke-virtual {p1, v9}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/ListPreference;

    .line 667
    .local v6, limit:Landroid/preference/ListPreference;
    if-nez v6, :cond_1

    .line 689
    :cond_0
    :goto_0
    return-void

    .line 670
    :cond_1
    invoke-static {}, Lcom/android/camera/DisplayDevice;->hasLimit250KB()Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    .line 671
    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 672
    .local v0, allEntries:[Ljava/lang/CharSequence;
    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 673
    .local v1, allEntryValues:[Ljava/lang/CharSequence;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 674
    .local v2, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 675
    .local v3, entryValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    iget-object v9, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const v10, 0x7f0a0102

    invoke-virtual {v9, v10}, Lcom/android/camera/HTCCamera;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 676
    .local v4, entry_250kb:Ljava/lang/CharSequence;
    const-string v8, "250kb"

    .line 677
    .local v8, value_250kb:Ljava/lang/CharSequence;
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 678
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 679
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    array-length v9, v1

    if-ge v5, v9, :cond_2

    .line 680
    aget-object v9, v0, v5

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 681
    aget-object v9, v1, v5

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 679
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 685
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 686
    .local v7, size:I
    new-array v9, v7, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/CharSequence;

    invoke-virtual {v6, v9}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 687
    new-array v9, v7, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/CharSequence;

    invoke-virtual {v6, v9}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private changeResolutionBySlowMotion(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V
    .locals 11
    .parameter "screen"
    .parameter "Resolution"

    .prologue
    .line 2342
    const-string v8, "null"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 2372
    :goto_0
    return-void

    .line 2344
    :cond_0
    const-string v8, "OnScreenPreference"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "changeResolutionBySlowMotion Resolution:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2346
    const-string v8, "pref_set_resolution"

    invoke-virtual {p1, v8}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    .line 2348
    .local v4, list:Landroid/preference/ListPreference;
    if-nez v4, :cond_1

    .line 2349
    const-string v8, "OnScreenPreference"

    const-string v9, "setupResolutionList failed - no resolution preference"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2353
    :cond_1
    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 2354
    .local v1, entries:[Ljava/lang/CharSequence;
    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 2355
    .local v0, entrieValues:[Ljava/lang/CharSequence;
    const/4 v3, 0x0

    .line 2356
    .local v3, index:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mResolutionItems:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v8

    if-ge v2, v8, :cond_2

    .line 2357
    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mResolutionItems:Ljava/util/LinkedList;

    invoke-virtual {v8, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/camera/ResolutionMenuItem;

    iget-object v8, v8, Lcom/android/camera/ResolutionMenuItem;->resolution:Lcom/android/camera/Resolution;

    invoke-virtual {v8}, Lcom/android/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2358
    move v3, v2

    .line 2362
    :cond_2
    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mResolutionItems:Ljava/util/LinkedList;

    invoke-virtual {v8, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/camera/ResolutionMenuItem;

    iget-object v5, v8, Lcom/android/camera/ResolutionMenuItem;->resolution:Lcom/android/camera/Resolution;

    .line 2364
    .local v5, r:Lcom/android/camera/Resolution;
    const-string v8, "OnScreenPreference"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "changeResolutionBySlowMotion: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 2365
    invoke-virtual {v5}, Lcom/android/camera/Resolution;->getWidth()I

    move-result v7

    .line 2366
    .local v7, resolutionWidth:I
    invoke-virtual {v5}, Lcom/android/camera/Resolution;->getHeight()I

    move-result v6

    .line 2368
    .local v6, resolutionHeight:I
    const-string v8, "OnScreenPreference"

    const-string v9, "Block Capture UI - set resolution"

    invoke-static {v8, v9}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2371
    iget-object v8, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    const/16 v9, 0xf

    const/4 v10, 0x0

    invoke-static {v8, v9, v7, v6, v10}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto/16 :goto_0

    .line 2356
    .end local v5           #r:Lcom/android/camera/Resolution;
    .end local v6           #resolutionHeight:I
    .end local v7           #resolutionWidth:I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private check3DCamera(Z)V
    .locals 4
    .parameter "bChecked"

    .prologue
    const/16 v3, 0x4f

    const/4 v2, 0x0

    .line 2161
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mUIHandler:Landroid/os/Handler;

    invoke-static {v0, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 2162
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mUIHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v3, v2, v2, v1}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 2165
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->m3DCameraSwitchPref:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 2167
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->m3DCameraSwitchPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 2169
    :cond_0
    return-void
.end method

.method private checkBlinkDetection(Z)V
    .locals 2
    .parameter "bChecked"

    .prologue
    const/4 v1, 0x0

    .line 2289
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mBlinkDetectionPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 2290
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mSmileCapturePref:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mSmileCapturePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2292
    iput-boolean v1, p0, Lcom/android/camera/OnScreenPreference;->bSmileCapture:Z

    .line 2293
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mSmileCapturePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 2295
    :cond_0
    return-void
.end method

.method private checkFastFrameRecording(Landroid/preference/PreferenceScreen;Z)V
    .locals 6
    .parameter "screen"
    .parameter "bChecked"

    .prologue
    const/4 v2, 0x0

    .line 2174
    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v4, "pref_capture_resolution_video_main"

    invoke-static {v3, v4}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2175
    .local v0, currentResolution:Ljava/lang/String;
    if-eqz p2, :cond_6

    .line 2177
    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mRecordWithAudio:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/camera/OnScreenPreference;->bRecordWithAudio:Z

    .line 2178
    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mRecordWithAudio:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 2179
    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mRecordWithAudio:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 2181
    const-string v3, "1080p"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2184
    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v4, "pref_fast_frame_resolution_temp"

    const-string v5, "1080p"

    invoke-static {v3, v4, v5}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 2185
    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v4, "pref_capture_resolution_video_main"

    const-string v5, "720p"

    invoke-static {v3, v4, v5}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 2186
    const-string v3, "720p"

    invoke-direct {p0, p1, v3}, Lcom/android/camera/OnScreenPreference;->changeResolutionBySlowMotion(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 2213
    :cond_0
    :goto_0
    invoke-direct {p0, v2}, Lcom/android/camera/OnScreenPreference;->checkRecordWithAudio(Z)V

    .line 2231
    :goto_1
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mMenuHandler:Lcom/android/camera/MenuHandler;

    if-eqz v2, :cond_1

    .line 2233
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mMenuHandler:Lcom/android/camera/MenuHandler;

    invoke-virtual {v2}, Lcom/android/camera/MenuHandler;->exitMenuHandler()V

    .line 2234
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mMenuHandler:Lcom/android/camera/MenuHandler;

    invoke-virtual {v2}, Lcom/android/camera/MenuHandler;->resetMenuHandler()V

    .line 2236
    :cond_1
    return-void

    .line 2188
    :cond_2
    const-string v3, "720p"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportQCT7x30()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2191
    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v4, "pref_fast_frame_resolution_temp"

    const-string v5, "720p"

    invoke-static {v3, v4, v5}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 2192
    sget-object v3, Lcom/android/camera/DisplayDevice;->SCREEN_RESOLUTION:Lcom/android/camera/DisplayDevice$Resolution;

    sget-object v4, Lcom/android/camera/DisplayDevice$Resolution;->QHD:Lcom/android/camera/DisplayDevice$Resolution;

    if-ne v3, v4, :cond_3

    .line 2194
    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v4, "pref_capture_resolution_video_main"

    const-string v5, "QHD"

    invoke-static {v3, v4, v5}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 2195
    const-string v3, "QHD"

    invoke-direct {p0, p1, v3}, Lcom/android/camera/OnScreenPreference;->changeResolutionBySlowMotion(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    goto :goto_0

    .line 2197
    :cond_3
    sget-object v3, Lcom/android/camera/DisplayDevice;->SCREEN_RESOLUTION:Lcom/android/camera/DisplayDevice$Resolution;

    sget-object v4, Lcom/android/camera/DisplayDevice$Resolution;->WVGA:Lcom/android/camera/DisplayDevice$Resolution;

    if-ne v3, v4, :cond_0

    .line 2199
    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v4, "pref_capture_resolution_video_main"

    const-string v5, "WVGA"

    invoke-static {v3, v4, v5}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 2200
    const-string v3, "WVGA"

    invoke-direct {p0, p1, v3}, Lcom/android/camera/OnScreenPreference;->changeResolutionBySlowMotion(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    goto :goto_0

    .line 2203
    :cond_4
    const-string v3, "QCIF"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2206
    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v4, "pref_fast_frame_resolution_temp"

    const-string v5, "QCIF"

    invoke-static {v3, v4, v5}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 2207
    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v4, "pref_capture_resolution_video_main"

    const-string v5, "QVGA"

    invoke-static {v3, v4, v5}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 2208
    const-string v3, "QVGA"

    invoke-direct {p0, p1, v3}, Lcom/android/camera/OnScreenPreference;->changeResolutionBySlowMotion(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    goto :goto_0

    .line 2211
    :cond_5
    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v3, v2}, Lcom/android/camera/CameraThread;->restartPreview(I)V

    goto :goto_0

    .line 2217
    :cond_6
    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v4, "pref_fast_frame_resolution_temp"

    invoke-static {v3, v4}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2218
    .local v1, tempResolution:Ljava/lang/String;
    const-string v3, "null"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 2220
    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v4, "pref_capture_resolution_video_main"

    invoke-static {v3, v4, v1}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 2221
    invoke-direct {p0, p1, v1}, Lcom/android/camera/OnScreenPreference;->changeResolutionBySlowMotion(Landroid/preference/PreferenceScreen;Ljava/lang/String;)V

    .line 2226
    :goto_2
    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mRecordWithAudio:Landroid/preference/CheckBoxPreference;

    iget-boolean v4, p0, Lcom/android/camera/OnScreenPreference;->bRecordWithAudio:Z

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 2227
    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mRecordWithAudio:Landroid/preference/CheckBoxPreference;

    if-nez p2, :cond_7

    const/4 v2, 0x1

    :cond_7
    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 2228
    iget-boolean v2, p0, Lcom/android/camera/OnScreenPreference;->bRecordWithAudio:Z

    invoke-direct {p0, v2}, Lcom/android/camera/OnScreenPreference;->checkRecordWithAudio(Z)V

    goto/16 :goto_1

    .line 2224
    :cond_8
    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v3, v2}, Lcom/android/camera/CameraThread;->restartPreview(I)V

    goto :goto_2
.end method

.method private checkGeoTagging()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1045
    iget-boolean v0, p0, Lcom/android/camera/OnScreenPreference;->isCheckGPS_Setting:Z

    if-nez v0, :cond_0

    .line 1046
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mGeoTaggingPref:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 1047
    invoke-direct {p0}, Lcom/android/camera/OnScreenPreference;->checkLocationSetting()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1048
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mGeoTaggingPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1053
    :cond_0
    iput-boolean v1, p0, Lcom/android/camera/OnScreenPreference;->isCheckGPS_Setting:Z

    .line 1054
    return-void
.end method

.method private checkLocationSetting()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1306
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v4, "location"

    invoke-virtual {v3, v4}, Lcom/android/camera/HTCCamera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    .line 1307
    .local v1, service:Landroid/location/LocationManager;
    const-string v3, "network"

    invoke-virtual {v1, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "gps"

    invoke-virtual {v1, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    .line 1311
    .end local v1           #service:Landroid/location/LocationManager;
    :cond_1
    :goto_0
    return v2

    .line 1309
    :catch_0
    move-exception v0

    .line 1310
    .local v0, ex:Ljava/lang/Exception;
    const-string v3, "OnScreenPreference"

    const-string v4, "checkLocationSetting() has exception"

    invoke-static {v3, v4, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private checkRecordWithAudio(Z)V
    .locals 2
    .parameter "bChecked"

    .prologue
    .line 2241
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 2243
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_0

    .line 2249
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mStereoRecordingPref:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 2251
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mStereoRecordingPref:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/android/camera/OnScreenPreference;->bStereoRecording:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 2252
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mStereoRecordingPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 2273
    :cond_0
    :goto_0
    return-void

    .line 2258
    :cond_1
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_0

    .line 2264
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mStereoRecordingPref:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 2266
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mStereoRecordingPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 2267
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mStereoRecordingPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private checkRecordingLength()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const-wide/16 v6, 0x61a8

    .line 1424
    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mRecordingLengthPref:Landroid/preference/Preference;

    if-eqz v3, :cond_1

    .line 1425
    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    sget-object v4, Lcom/android/camera/IntentManager$RequestName;->Mms:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v3, v4}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1427
    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mRecordingLengthPref:Landroid/preference/Preference;

    invoke-virtual {v3, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1429
    invoke-static {}, Lcom/android/camera/IntentManager;->getMMS_MaximumSize()I

    move-result v3

    int-to-long v0, v3

    .line 1430
    .local v0, max_bytes:J
    cmp-long v3, v0, v6

    if-gtz v3, :cond_0

    .line 1431
    const-string v3, "OnScreenPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MMS length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", less then safe size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1432
    const-wide/32 v0, 0xea60

    .line 1437
    :cond_0
    const-string v3, "%d %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-wide/16 v5, 0x400

    div-long v5, v0, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v8

    iget-object v5, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const v6, 0x7f0a018f

    invoke-virtual {v5, v6}, Lcom/android/camera/HTCCamera;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1438
    .local v2, size:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mRecordingLengthPref:Landroid/preference/Preference;

    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1439
    const-string v3, "OnScreenPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1454
    .end local v0           #max_bytes:J
    .end local v2           #size:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 1440
    :cond_2
    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    sget-object v4, Lcom/android/camera/IntentManager$RequestName;->Notes:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v3, v4}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1443
    invoke-static {}, Lcom/android/camera/IntentManager;->getVideoMaximum_Size()J

    move-result-wide v0

    .line 1444
    .restart local v0       #max_bytes:J
    cmp-long v3, v0, v6

    if-gtz v3, :cond_1

    .line 1445
    const-string v3, "OnScreenPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Video length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", less then safe size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1451
    .end local v0           #max_bytes:J
    :cond_3
    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mRecordingLengthPref:Landroid/preference/Preference;

    invoke-virtual {v3, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private checkSmileCapture(Z)V
    .locals 2
    .parameter "bChecked"

    .prologue
    const/4 v1, 0x0

    .line 2278
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mSmileCapturePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 2279
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mBlinkDetectionPref:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mBlinkDetectionPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2281
    iput-boolean v1, p0, Lcom/android/camera/OnScreenPreference;->bBlinkDetection:Z

    .line 2282
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mBlinkDetectionPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 2286
    :cond_0
    return-void
.end method

.method private closeDialog()V
    .locals 1

    .prologue
    .line 1289
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 1290
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 1291
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/OnScreenPreference;->mDialog:Landroid/app/Dialog;

    .line 1293
    :cond_0
    return-void
.end method

.method private doSettings()V
    .locals 2

    .prologue
    .line 2305
    const-string v0, "OnScreenPreference"

    const-string v1, "Block Capture UI - doSettings()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2306
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    const/16 v1, 0x1c

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 2307
    return-void
.end method

.method private filterUnsupportedISO(Landroid/preference/PreferenceScreen;)V
    .locals 8
    .parameter "screen"

    .prologue
    .line 643
    const-string v7, "pref_camera_iso"

    invoke-virtual {p1, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    .line 644
    .local v5, iso:Landroid/preference/ListPreference;
    if-nez v5, :cond_1

    .line 663
    :cond_0
    :goto_0
    return-void

    .line 647
    :cond_1
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportISO1250()Z

    move-result v7

    if-nez v7, :cond_0

    .line 648
    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 649
    .local v0, allEntries:[Ljava/lang/CharSequence;
    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 650
    .local v1, allEntryValues:[Ljava/lang/CharSequence;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 651
    .local v2, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 653
    .local v3, entryValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    array-length v7, v1

    add-int/lit8 v7, v7, -0x1

    if-ge v4, v7, :cond_2

    .line 654
    aget-object v7, v0, v4

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 655
    aget-object v7, v1, v4

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 653
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 659
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 660
    .local v6, size:I
    new-array v7, v6, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/CharSequence;

    invoke-virtual {v5, v7}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 661
    new-array v7, v6, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/CharSequence;

    invoke-virtual {v5, v7}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private filterUnsupportedOptions(Landroid/preference/PreferenceScreen;Landroid/preference/ListPreference;Ljava/util/List;)V
    .locals 19
    .parameter "screen"
    .parameter "pref"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/preference/PreferenceScreen;",
            "Landroid/preference/ListPreference;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 589
    .local p3, supported:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez p3, :cond_1

    .line 590
    invoke-static/range {p1 .. p2}, Lcom/android/camera/OnScreenPreference;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)Z

    .line 640
    :cond_0
    :goto_0
    return-void

    .line 595
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 596
    .local v2, allEntries:[Ljava/lang/CharSequence;
    invoke-virtual/range {p2 .. p2}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 597
    .local v3, allEntryValues:[Ljava/lang/CharSequence;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 598
    .local v4, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 601
    .local v5, entryValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 602
    .local v9, res:Landroid/content/res/Resources;
    const v17, 0x7f070021

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v13

    .line 603
    .local v13, tn1:[Ljava/lang/String;
    const v17, 0x7f070022

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v14

    .line 604
    .local v14, tv1:[Ljava/lang/String;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 605
    .local v8, nlist:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 606
    .local v16, vlist:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v17

    if-gtz v17, :cond_2

    .line 608
    const/16 v17, 0x0

    aget-object v17, v13, v17

    move-object/from16 v0, v17

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 609
    const/16 v17, 0x0

    aget-object v17, v14, v17

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 611
    :cond_2
    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v8, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/String;

    .line 612
    .local v11, tempEntry:[Ljava/lang/String;
    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/String;

    .line 615
    .local v12, tempValue:[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, i:I
    array-length v7, v3

    .local v7, len:I
    :goto_1
    if-ge v6, v7, :cond_5

    .line 616
    aget-object v17, v3, v6

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v17

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_4

    .line 618
    if-nez v6, :cond_3

    .line 621
    const/16 v17, 0x0

    aget-object v17, v11, v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 622
    const/16 v17, 0x0

    aget-object v17, v12, v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 625
    :cond_3
    aget-object v17, v2, v6

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 626
    aget-object v17, v3, v6

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 615
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 631
    :cond_5
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 632
    .local v10, size:I
    new-array v0, v10, [Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [Ljava/lang/CharSequence;

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 633
    new-array v0, v10, [Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [Ljava/lang/CharSequence;

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 636
    invoke-virtual/range {p2 .. p2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v15

    .line 637
    .local v15, value:Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v17

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 638
    const/16 v17, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto/16 :goto_0
.end method

.method private initImageRatio()V
    .locals 3

    .prologue
    const v2, 0x7f0a008f

    .line 1885
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mImageRatioPref:Landroid/preference/CheckBoxPreference;

    if-nez v0, :cond_0

    .line 1901
    :goto_0
    return-void

    .line 1888
    :cond_0
    sget-object v0, Lcom/android/camera/DisplayDevice;->SCREEN_RATIO:Lcom/android/camera/DisplayDevice$ScreenRatio;

    sget-object v1, Lcom/android/camera/DisplayDevice$ScreenRatio;->Ratio_16_9:Lcom/android/camera/DisplayDevice$ScreenRatio;

    if-ne v0, v1, :cond_1

    .line 1889
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mImageRatioPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setSummaryOn(I)V

    .line 1899
    :goto_1
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mImageRatioPref:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0a0092

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummaryOff(I)V

    .line 1900
    invoke-direct {p0}, Lcom/android/camera/OnScreenPreference;->setImageRatio_MMS()V

    goto :goto_0

    .line 1890
    :cond_1
    sget-object v0, Lcom/android/camera/DisplayDevice;->SCREEN_RATIO:Lcom/android/camera/DisplayDevice$ScreenRatio;

    sget-object v1, Lcom/android/camera/DisplayDevice$ScreenRatio;->Tablet_Ratio_16_9:Lcom/android/camera/DisplayDevice$ScreenRatio;

    if-ne v0, v1, :cond_2

    .line 1891
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mImageRatioPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setSummaryOn(I)V

    goto :goto_1

    .line 1892
    :cond_2
    sget-object v0, Lcom/android/camera/DisplayDevice;->SCREEN_RATIO:Lcom/android/camera/DisplayDevice$ScreenRatio;

    sget-object v1, Lcom/android/camera/DisplayDevice$ScreenRatio;->Tablet_Ratio_16_10:Lcom/android/camera/DisplayDevice$ScreenRatio;

    if-ne v0, v1, :cond_3

    .line 1893
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mImageRatioPref:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0a0090

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummaryOn(I)V

    goto :goto_1

    .line 1894
    :cond_3
    sget-object v0, Lcom/android/camera/DisplayDevice;->SCREEN_RATIO:Lcom/android/camera/DisplayDevice$ScreenRatio;

    sget-object v1, Lcom/android/camera/DisplayDevice$ScreenRatio;->Ratio_5_3:Lcom/android/camera/DisplayDevice$ScreenRatio;

    if-ne v0, v1, :cond_4

    .line 1895
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mImageRatioPref:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0a008e

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummaryOn(I)V

    goto :goto_1

    .line 1897
    :cond_4
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mImageRatioPref:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0a0091

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummaryOn(I)V

    goto :goto_1
.end method

.method private initPreference(Landroid/preference/PreferenceScreen;Landroid/hardware/Camera;)V
    .locals 5
    .parameter "screen"
    .parameter "device"

    .prologue
    const/4 v4, 0x1

    .line 180
    if-nez p2, :cond_1

    .line 181
    const-string v2, "OnScreenPreference"

    const-string v3, "initPreference() - camera device = null"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    const-string v2, "group"

    invoke-virtual {p1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 186
    .local v0, group:Landroid/preference/PreferenceGroup;
    if-eqz v0, :cond_22

    .line 187
    const/4 v1, 0x0

    .line 189
    .local v1, target:Landroid/preference/Preference;
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isWideScreen()Z

    move-result v2

    if-nez v2, :cond_2

    .line 190
    const-string v2, "pref_camera_image_ratio"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 191
    if-eqz v1, :cond_2

    .line 192
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 195
    :cond_2
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportISO()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/android/camera/DisplayDevice;->showISOInMenu()Z

    move-result v2

    if-ne v2, v4, :cond_28

    .line 196
    :cond_3
    const-string v2, "pref_camera_iso"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 197
    if-eqz v1, :cond_4

    .line 198
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 203
    :cond_4
    :goto_1
    invoke-static {}, Lcom/android/camera/CameraController;->supportFlashLight()Z

    move-result v2

    if-nez v2, :cond_5

    .line 204
    const-string v2, "pref_camera_flash_mode"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 205
    if-eqz v1, :cond_5

    .line 206
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 209
    :cond_5
    invoke-static {}, Lcom/android/camera/DisplayDevice;->forceSutterSound()Z

    move-result v2

    if-ne v2, v4, :cond_6

    .line 210
    const-string v2, "pref_play_shutter_sound"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 211
    if-eqz v1, :cond_6

    .line 212
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 215
    :cond_6
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSensorFocus()Z

    move-result v2

    if-nez v2, :cond_7

    .line 216
    const-string v2, "pref_camera_auto_focus"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 217
    if-eqz v1, :cond_7

    .line 218
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 221
    :cond_7
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportFaceDetection()Z

    move-result v2

    if-nez v2, :cond_8

    .line 222
    const-string v2, "pref_face_detection"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 223
    if-eqz v1, :cond_8

    .line 224
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 227
    :cond_8
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    iget-object v2, v2, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    sget-object v3, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    invoke-virtual {v2, v3}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    iget-object v2, v2, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    sget-object v3, Lcom/android/camera/CameraType;->Main:Lcom/android/camera/CameraType;

    invoke-virtual {v2, v3}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-static {v2}, Lcom/android/camera/component/ContinuousBurstController;->isSupported(Lcom/android/camera/HTCCamera;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 231
    :cond_9
    const-string v2, "pref_continuous_burst"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 232
    if-eqz v1, :cond_a

    .line 233
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 237
    :cond_a
    invoke-static {}, Lcom/android/camera/DisplayDevice;->showEffectInMenu()Z

    move-result v2

    if-nez v2, :cond_c

    .line 238
    const-string v2, "pref_camera_effect"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 239
    if-eqz v1, :cond_b

    .line 240
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 241
    :cond_b
    const-string v2, "pref_video_effect"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 242
    if-eqz v1, :cond_c

    .line 243
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 248
    :cond_c
    invoke-static {}, Lcom/android/camera/DisplayDevice;->showSceneInMenu()Z

    move-result v2

    if-nez v2, :cond_e

    .line 249
    const-string v2, "pref_camera_scene"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 250
    if-eqz v1, :cond_d

    .line 251
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 254
    :cond_d
    const-string v2, "pref_video_scene"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 255
    if-eqz v1, :cond_e

    .line 256
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 260
    :cond_e
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSmileCapture()Z

    move-result v2

    if-nez v2, :cond_29

    .line 262
    const-string v2, "pref_smile_capture"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 263
    if-eqz v1, :cond_f

    .line 264
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 265
    :cond_f
    const-string v2, "pref_blink detection"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 266
    if-eqz v1, :cond_10

    .line 267
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 276
    :cond_10
    :goto_2
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v2

    if-nez v2, :cond_11

    .line 278
    const-string v2, "pref_camera_tutorial"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 279
    if-eqz v1, :cond_11

    .line 280
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 284
    :cond_11
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportFastFrameRecording()Z

    move-result v2

    if-nez v2, :cond_12

    .line 286
    const-string v2, "pref_fast_fps"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 287
    if-eqz v1, :cond_12

    .line 288
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 291
    :cond_12
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSecondCamera()Z

    move-result v2

    if-nez v2, :cond_2a

    .line 292
    const-string v2, "pref_camera_switch"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 293
    if-eqz v1, :cond_13

    .line 294
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 295
    :cond_13
    const-string v2, "pref_front_camera_mode"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 296
    if-eqz v1, :cond_14

    .line 297
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 409
    :cond_14
    :goto_3
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    sget-object v3, Lcom/android/camera/IntentManager$RequestMode;->Main:Lcom/android/camera/IntentManager$RequestMode;

    invoke-virtual {v2, v3}, Lcom/android/camera/HTCCamera;->isRequestMode(Lcom/android/camera/IntentManager$RequestMode;)Z

    move-result v2

    if-nez v2, :cond_18

    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    sget-object v3, Lcom/android/camera/IntentManager$RequestName;->Album:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v2, v3}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 411
    const-string v2, "pref_camera_review_duration"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 412
    if-eqz v1, :cond_15

    .line 413
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 415
    :cond_15
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    sget-object v3, Lcom/android/camera/IntentManager$RequestName;->Contacts:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v2, v3}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v2

    if-nez v2, :cond_16

    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    sget-object v3, Lcom/android/camera/IntentManager$RequestName;->Square:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v2, v3}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 417
    :cond_16
    const-string v2, "pref_grid"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 418
    if-eqz v1, :cond_17

    .line 419
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 422
    :cond_17
    const-string v2, "pref_fast_fps"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 423
    if-eqz v1, :cond_18

    .line 424
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 428
    :cond_18
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    iget-object v2, v2, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/CameraType;

    invoke-virtual {v2}, Lcom/android/camera/CameraType;->is3DCamera()Z

    move-result v2

    if-nez v2, :cond_19

    .line 430
    const-string v2, "pref_camera_3D_file_format"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 431
    if-eqz v1, :cond_19

    .line 432
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 436
    :cond_19
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportVideoFormatChoosing()Z

    move-result v2

    if-nez v2, :cond_1a

    .line 438
    const-string v2, "pref_camera_video_file_format"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 439
    if-eqz v1, :cond_1a

    .line 440
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 444
    :cond_1a
    sget-boolean v2, Lcom/android/camera/DisplayDevice;->NOT_SENSE_2_0:Z

    if-nez v2, :cond_1b

    .line 446
    const-string v2, "pref_post_processing"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 447
    if-eqz v1, :cond_1b

    .line 448
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 453
    :cond_1b
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    iget-object v2, v2, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/CameraType;

    invoke-virtual {v2}, Lcom/android/camera/CameraType;->is3DCamera()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 455
    const-string v2, "pref_camera_image_ratio"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 456
    if-eqz v1, :cond_1c

    .line 457
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 459
    :cond_1c
    const-string v2, "pref_post_processing"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 460
    if-eqz v1, :cond_1d

    .line 461
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 463
    :cond_1d
    const-string v2, "pref_face_detection"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 464
    if-eqz v1, :cond_1e

    .line 465
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 467
    :cond_1e
    const-string v2, "pref_set_resolution"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 468
    if-eqz v1, :cond_1f

    .line 469
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 472
    :cond_1f
    invoke-static {}, Lcom/android/camera/DisplayDevice;->support3DCamera()Z

    move-result v2

    if-eqz v2, :cond_20

    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    iget-object v2, v2, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/android/camera/CameraType;->Front:Lcom/android/camera/CameraType;

    if-eq v2, v3, :cond_20

    invoke-static {}, Lcom/android/camera/DisplayDevice;->support3DCamera()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-static {}, Lcom/android/camera/DisplayDevice;->support3DHWSwitch()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 475
    :cond_20
    const-string v2, "pref_camera_3D_status"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 476
    if-eqz v1, :cond_21

    .line 477
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 482
    :cond_21
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportAutoUpload()Z

    move-result v2

    if-nez v2, :cond_22

    .line 483
    const-string v2, "pref_auto_upload"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 484
    if-eqz v1, :cond_22

    .line 485
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 490
    .end local v1           #target:Landroid/preference/Preference;
    :cond_22
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    iget-object v2, v2, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    if-ne v2, v3, :cond_23

    .line 491
    invoke-direct {p0, p1}, Lcom/android/camera/OnScreenPreference;->addOptinalRecordingLimit(Landroid/preference/PreferenceScreen;)V

    .line 492
    invoke-direct {p0, p1}, Lcom/android/camera/OnScreenPreference;->addEncodeType_H264(Landroid/preference/PreferenceScreen;)V

    .line 495
    :cond_23
    const-string v2, "pref_camera_timestamp"

    invoke-virtual {p1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/camera/OnScreenPreference;->mTimeStampPref:Landroid/preference/CheckBoxPreference;

    .line 496
    const-string v2, "pref_camera_geo_tagging"

    invoke-virtual {p1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/camera/OnScreenPreference;->mGeoTaggingPref:Landroid/preference/CheckBoxPreference;

    .line 497
    const-string v2, "pref_post_processing"

    invoke-virtual {p1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/camera/OnScreenPreference;->mPostProcessingPref:Landroid/preference/CheckBoxPreference;

    .line 499
    const-string v2, "pref_camera_image_ratio"

    invoke-virtual {p1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/camera/OnScreenPreference;->mImageRatioPref:Landroid/preference/CheckBoxPreference;

    .line 500
    const-string v2, "pref_camera_switch"

    invoke-virtual {p1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/camera/OnScreenPreference;->mCameraSwitchPref:Landroid/preference/CheckBoxPreference;

    .line 501
    const-string v2, "pref_camera_3D_status"

    invoke-virtual {p1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/camera/OnScreenPreference;->m3DCameraSwitchPref:Landroid/preference/CheckBoxPreference;

    .line 502
    const-string v2, "pref_camera_auto_focus"

    invoke-virtual {p1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/camera/OnScreenPreference;->mAutoFocusPref:Landroid/preference/CheckBoxPreference;

    .line 503
    const-string v2, "pref_face_detection"

    invoke-virtual {p1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/camera/OnScreenPreference;->mFaceDetectionPref:Landroid/preference/CheckBoxPreference;

    .line 504
    const-string v2, "pref_play_shutter_sound"

    invoke-virtual {p1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/camera/OnScreenPreference;->mShutterSoundPref:Landroid/preference/CheckBoxPreference;

    .line 505
    const-string v2, "pref_video_stabilization"

    invoke-virtual {p1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/camera/OnScreenPreference;->mVideoStabilizationPref:Landroid/preference/CheckBoxPreference;

    .line 506
    const-string v2, "pref_camera_review_duration"

    invoke-virtual {p1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/camera/OnScreenPreference;->mReviewDurationPref:Landroid/preference/ListPreference;

    .line 507
    const-string v2, "pref_camera_3D_file_format"

    invoke-virtual {p1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/camera/OnScreenPreference;->m3DFileFormatPref:Landroid/preference/ListPreference;

    .line 508
    const-string v2, "pref_camera_video_file_format"

    invoke-virtual {p1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/camera/OnScreenPreference;->mVideoFileFormatPref:Landroid/preference/ListPreference;

    .line 509
    const-string v2, "pref_camera_self_timer"

    invoke-virtual {p1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/camera/OnScreenPreference;->mSelfTimerPref:Landroid/preference/ListPreference;

    .line 510
    const-string v2, "pref_camera_self_portrait"

    invoke-virtual {p1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/OnScreenPreference;->mSelfPortraitPref:Landroid/preference/Preference;

    .line 511
    const-string v2, "pref_camera_recording_limit"

    invoke-virtual {p1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/OnScreenPreference;->mRecordingLengthPref:Landroid/preference/Preference;

    .line 512
    const-string v2, "pref_auto_upload"

    invoke-virtual {p1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/OnScreenPreference;->mAutoUploadPref:Landroid/preference/Preference;

    .line 513
    const-string v2, "pref_camera_tap_capture"

    invoke-virtual {p1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/camera/OnScreenPreference;->mTapCapturePref:Landroid/preference/CheckBoxPreference;

    .line 515
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportFastFrameRecording()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 517
    const-string v2, "pref_fast_fps"

    invoke-virtual {p1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/camera/OnScreenPreference;->mFastFrameRecording:Landroid/preference/CheckBoxPreference;

    .line 518
    const-string v2, "pref_camera_record_with_audio"

    invoke-virtual {p1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/camera/OnScreenPreference;->mRecordWithAudio:Landroid/preference/CheckBoxPreference;

    .line 522
    :cond_24
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSmileCapture()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 523
    const-string v2, "pref_smile_capture"

    invoke-virtual {p1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/camera/OnScreenPreference;->mSmileCapturePref:Landroid/preference/CheckBoxPreference;

    .line 525
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportBlinkDetect()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 526
    const-string v2, "pref_blink detection"

    invoke-virtual {p1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/camera/OnScreenPreference;->mBlinkDetectionPref:Landroid/preference/CheckBoxPreference;

    .line 530
    :cond_25
    invoke-direct {p0}, Lcom/android/camera/OnScreenPreference;->initSettingInfo()V

    .line 533
    invoke-direct {p0, p1}, Lcom/android/camera/OnScreenPreference;->setupResolutionList(Landroid/preference/PreferenceScreen;)V

    .line 536
    invoke-static {}, Lcom/android/camera/DisplayDevice;->NoResolutionChoiceIn2ndCam()Z

    move-result v2

    if-ne v2, v4, :cond_26

    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    iget-object v2, v2, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v2, v3, :cond_26

    .line 539
    if-eqz v0, :cond_26

    .line 540
    const/4 v1, 0x0

    .line 543
    .restart local v1       #target:Landroid/preference/Preference;
    iget-boolean v2, p0, Lcom/android/camera/OnScreenPreference;->bSwitchCamera:Z

    if-ne v2, v4, :cond_26

    .line 544
    const-string v2, "pref_set_resolution"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 545
    if-eqz v1, :cond_26

    .line 546
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 551
    .end local v1           #target:Landroid/preference/Preference;
    :cond_26
    invoke-direct {p0}, Lcom/android/camera/OnScreenPreference;->updateTimeStamp()V

    .line 552
    invoke-direct {p0}, Lcom/android/camera/OnScreenPreference;->checkGeoTagging()V

    .line 553
    invoke-direct {p0}, Lcom/android/camera/OnScreenPreference;->initImageRatio()V

    .line 554
    invoke-direct {p0}, Lcom/android/camera/OnScreenPreference;->updateSwitchCamera()V

    .line 555
    invoke-direct {p0, p1}, Lcom/android/camera/OnScreenPreference;->setupWhteBalanceList(Landroid/preference/PreferenceScreen;)V

    .line 556
    invoke-virtual {p0, p1}, Lcom/android/camera/OnScreenPreference;->checkStorageLocation(Landroid/preference/PreferenceScreen;)V

    .line 557
    invoke-virtual {p0}, Lcom/android/camera/OnScreenPreference;->checkAutoCapture()V

    .line 558
    invoke-direct {p0}, Lcom/android/camera/OnScreenPreference;->checkRecordingLength()V

    .line 559
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportAutoUpload()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 560
    invoke-virtual {p0}, Lcom/android/camera/OnScreenPreference;->ReloadAutoUploadSetting()V

    .line 562
    :cond_27
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSmileCapture()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 563
    invoke-virtual {p0}, Lcom/android/camera/OnScreenPreference;->updateSmileCapture()V

    .line 565
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportBlinkDetect()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 566
    invoke-virtual {p0}, Lcom/android/camera/OnScreenPreference;->updateBlinkDetection()V

    goto/16 :goto_0

    .line 200
    .restart local v1       #target:Landroid/preference/Preference;
    :cond_28
    invoke-direct {p0, p1}, Lcom/android/camera/OnScreenPreference;->filterUnsupportedISO(Landroid/preference/PreferenceScreen;)V

    goto/16 :goto_1

    .line 269
    :cond_29
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportBlinkDetect()Z

    move-result v2

    if-nez v2, :cond_10

    .line 270
    const-string v2, "pref_blink detection"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 271
    if-eqz v1, :cond_10

    .line 272
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    .line 300
    :cond_2a
    const-string v2, "pref_camera_self_portrait"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 301
    if-eqz v1, :cond_2b

    .line 302
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 303
    :cond_2b
    const-string v2, "pref_camera_face_number"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 304
    if-eqz v1, :cond_2c

    .line 305
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 311
    :cond_2c
    const-string v2, "pref_camera_switch"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 312
    if-eqz v1, :cond_2d

    .line 313
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 316
    :cond_2d
    invoke-static {}, Lcom/android/camera/DisplayDevice;->support2ndCamNoneMirror()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 317
    const-string v2, "pref_front_camera_mode"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 318
    if-eqz v1, :cond_2e

    .line 319
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 322
    :cond_2e
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    iget-object v2, v2, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/CameraType;

    invoke-virtual {v2}, Lcom/android/camera/CameraType;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 323
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v2

    if-nez v2, :cond_2f

    .line 325
    const-string v2, "pref_camera_iso"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 326
    if-eqz v1, :cond_2f

    .line 327
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 329
    :cond_2f
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportWideScreen2ndCamera()Z

    move-result v2

    if-nez v2, :cond_30

    .line 330
    const-string v2, "pref_camera_image_ratio"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 331
    if-eqz v1, :cond_30

    .line 332
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 334
    :cond_30
    const-string v2, "pref_camera_metering_mode"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 335
    if-eqz v1, :cond_31

    .line 336
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 337
    :cond_31
    const-string v2, "pref_camera_auto_focus"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 338
    if-eqz v1, :cond_32

    .line 339
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 341
    :cond_32
    invoke-static {}, Lcom/android/camera/DisplayDevice;->support2ndCamFacedetect()Z

    move-result v2

    if-nez v2, :cond_3b

    .line 343
    const-string v2, "pref_face_detection"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 344
    if-eqz v1, :cond_33

    .line 345
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 346
    :cond_33
    const-string v2, "pref_smile_capture"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 347
    if-eqz v1, :cond_34

    .line 348
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 349
    :cond_34
    const-string v2, "pref_blink detection"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 350
    if-eqz v1, :cond_35

    .line 351
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 371
    :cond_35
    :goto_4
    const-string v2, "pref_camera_scene"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 372
    if-eqz v1, :cond_36

    .line 373
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 375
    :cond_36
    const-string v2, "pref_video_scene"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 376
    if-eqz v1, :cond_37

    .line 377
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 379
    :cond_37
    invoke-static {}, Lcom/android/camera/DisplayDevice;->support2ndCamAutoEnhance()Z

    move-result v2

    if-nez v2, :cond_38

    .line 381
    const-string v2, "pref_post_processing"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 382
    if-eqz v1, :cond_38

    .line 383
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 388
    :cond_38
    const-string v2, "pref_fast_fps"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 389
    if-eqz v1, :cond_39

    .line 390
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 392
    :cond_39
    const-string v2, "pref_front_camera_mode"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 393
    if-eqz v1, :cond_3a

    .line 394
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 397
    :cond_3a
    const-string v2, "pref_camera_tap_capture"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 398
    if-eqz v1, :cond_14

    .line 399
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_3

    .line 353
    :cond_3b
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSmileCapture()Z

    move-result v2

    if-nez v2, :cond_3d

    .line 355
    const-string v2, "pref_smile_capture"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 356
    if-eqz v1, :cond_3c

    .line 357
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 358
    :cond_3c
    const-string v2, "pref_blink detection"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 359
    if-eqz v1, :cond_35

    .line 360
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_4

    .line 362
    :cond_3d
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportBlinkDetect()Z

    move-result v2

    if-nez v2, :cond_35

    .line 363
    const-string v2, "pref_blink detection"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 364
    if-eqz v1, :cond_35

    .line 365
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_4

    .line 403
    :cond_3e
    const-string v2, "pref_front_camera_mode"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 404
    if-eqz v1, :cond_14

    .line 405
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_3
.end method

.method private initSettingInfo()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 727
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v2, "pref_camera_image_ratio"

    invoke-static {v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/OnScreenPreference;->mGeneral_isWideScreen:Z

    .line 728
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    iget-object v1, v1, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/CameraType;

    invoke-virtual {v1}, Lcom/android/camera/CameraType;->isFrontCamera()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/OnScreenPreference;->bSwitchCamera:Z

    .line 729
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportWideScreen2ndCamera()Z

    move-result v1

    if-nez v1, :cond_10

    iget-boolean v1, p0, Lcom/android/camera/OnScreenPreference;->bSwitchCamera:Z

    if-ne v1, v4, :cond_10

    .line 730
    iput-boolean v3, p0, Lcom/android/camera/OnScreenPreference;->bWideScreen:Z

    .line 744
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v2, "pref_camera_3D_status"

    invoke-static {v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/OnScreenPreference;->bIs3DCamera:Z

    .line 746
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mAutoFocusPref:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_1

    .line 747
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mAutoFocusPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/OnScreenPreference;->bAutoFocus:Z

    .line 749
    :cond_1
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mTapCapturePref:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_2

    .line 750
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mTapCapturePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/OnScreenPreference;->bTapCapture:Z

    .line 753
    :cond_2
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mFaceDetectionPref:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_3

    .line 754
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mFaceDetectionPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/OnScreenPreference;->bFaceDetection:Z

    .line 757
    :cond_3
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mPostProcessingPref:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_4

    .line 758
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mPostProcessingPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/OnScreenPreference;->bPostProcessing:Z

    .line 762
    :cond_4
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSmileCapture()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 764
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mSmileCapturePref:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_5

    .line 766
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mSmileCapturePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/OnScreenPreference;->bSmileCapture:Z

    .line 767
    iget-boolean v1, p0, Lcom/android/camera/OnScreenPreference;->bSmileCapture:Z

    if-eqz v1, :cond_5

    .line 769
    iput-boolean v3, p0, Lcom/android/camera/OnScreenPreference;->bBlinkDetection:Z

    .line 770
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mBlinkDetectionPref:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_5

    .line 771
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mBlinkDetectionPref:Landroid/preference/CheckBoxPreference;

    iget-boolean v2, p0, Lcom/android/camera/OnScreenPreference;->bBlinkDetection:Z

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 774
    :cond_5
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportBlinkDetect()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 775
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mBlinkDetectionPref:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_6

    .line 777
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mBlinkDetectionPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/OnScreenPreference;->bBlinkDetection:Z

    .line 778
    iget-boolean v1, p0, Lcom/android/camera/OnScreenPreference;->bBlinkDetection:Z

    if-eqz v1, :cond_6

    .line 780
    iput-boolean v3, p0, Lcom/android/camera/OnScreenPreference;->bSmileCapture:Z

    .line 782
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mSmileCapturePref:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_6

    .line 783
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mSmileCapturePref:Landroid/preference/CheckBoxPreference;

    iget-boolean v2, p0, Lcom/android/camera/OnScreenPreference;->bSmileCapture:Z

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 790
    :cond_6
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportFastFrameRecording()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 792
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mRecordWithAudio:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_7

    .line 793
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mRecordWithAudio:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/OnScreenPreference;->bRecordWithAudio:Z

    .line 794
    :cond_7
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mFastFrameRecording:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_8

    .line 796
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v1

    if-eq v1, v4, :cond_8

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    iget-object v1, v1, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/CameraType;

    invoke-virtual {v1}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 798
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mFastFrameRecording:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/OnScreenPreference;->bFastFrameRecording:Z

    .line 799
    iget-boolean v1, p0, Lcom/android/camera/OnScreenPreference;->bFastFrameRecording:Z

    if-ne v1, v4, :cond_13

    .line 801
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mRecordWithAudio:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 802
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mRecordWithAudio:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 814
    :cond_8
    :goto_1
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mStereoRecordingPref:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_9

    .line 816
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mStereoRecordingPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/OnScreenPreference;->bStereoRecording:Z

    .line 817
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-static {v1}, Lcom/android/camera/HTCCameraAdvanceSetting;->getIsRecordWithAudio(Landroid/content/Context;)Z

    move-result v0

    .line 818
    .local v0, bWithAudio:Z
    if-nez v0, :cond_14

    .line 820
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mStereoRecordingPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 821
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mStereoRecordingPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 830
    .end local v0           #bWithAudio:Z
    :cond_9
    :goto_2
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mVideoStabilizationPref:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_a

    .line 831
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mVideoStabilizationPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/OnScreenPreference;->bVideoStabilization:Z

    .line 834
    :cond_a
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mShutterSoundPref:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_b

    .line 835
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mShutterSoundPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/OnScreenPreference;->bShutterSound:Z

    .line 837
    :cond_b
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mReviewDurationPref:Landroid/preference/ListPreference;

    if-eqz v1, :cond_c

    .line 838
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mReviewDurationPref:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->mReviewDurationValue:Ljava/lang/String;

    .line 841
    :cond_c
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->m3DFileFormatPref:Landroid/preference/ListPreference;

    if-eqz v1, :cond_d

    .line 842
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->m3DFileFormatPref:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->m3DFileFormatValue:Ljava/lang/String;

    .line 845
    :cond_d
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mVideoFileFormatPref:Landroid/preference/ListPreference;

    if-eqz v1, :cond_e

    .line 846
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mVideoFileFormatPref:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->mVideoFileFormatValue:Ljava/lang/String;

    .line 849
    :cond_e
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportHWShareButton()Z

    move-result v1

    if-ne v1, v4, :cond_f

    .line 851
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mReviewDurationValue:Ljava/lang/String;

    const-string v2, "2s"

    if-ne v1, v2, :cond_f

    .line 852
    const-string v1, "3s"

    iput-object v1, p0, Lcom/android/camera/OnScreenPreference;->mReviewDurationValue:Ljava/lang/String;

    .line 855
    :cond_f
    return-void

    .line 731
    :cond_10
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    iget-object v1, v1, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v1, v2, :cond_0

    .line 733
    invoke-static {}, Lcom/android/camera/DisplayDevice;->captrueFullSize()Z

    move-result v1

    if-nez v1, :cond_12

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    sget-object v2, Lcom/android/camera/IntentManager$RequestName;->Contacts:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v1, v2}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v1

    if-nez v1, :cond_11

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    sget-object v2, Lcom/android/camera/IntentManager$RequestName;->Square:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v1, v2}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 736
    :cond_11
    iput-boolean v3, p0, Lcom/android/camera/OnScreenPreference;->bWideScreen:Z

    goto/16 :goto_0

    .line 741
    :cond_12
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v2, "pref_camera_image_ratio"

    invoke-static {v1, v2}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceBoolean(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/OnScreenPreference;->bWideScreen:Z

    goto/16 :goto_0

    .line 806
    :cond_13
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mRecordWithAudio:Landroid/preference/CheckBoxPreference;

    iget-boolean v2, p0, Lcom/android/camera/OnScreenPreference;->bRecordWithAudio:Z

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 807
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mRecordWithAudio:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_1

    .line 825
    .restart local v0       #bWithAudio:Z
    :cond_14
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mStereoRecordingPref:Landroid/preference/CheckBoxPreference;

    iget-boolean v2, p0, Lcom/android/camera/OnScreenPreference;->bStereoRecording:Z

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 826
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mStereoRecordingPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_2
.end method

.method private static removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "group"
    .parameter "remove"

    .prologue
    const/4 v2, 0x1

    .line 572
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 582
    :cond_0
    :goto_0
    return v2

    .line 574
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 575
    invoke-virtual {p0, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    .line 576
    .local v0, child:Landroid/preference/Preference;
    instance-of v3, v0, Landroid/preference/PreferenceGroup;

    if-eqz v3, :cond_2

    .line 577
    check-cast v0, Landroid/preference/PreferenceGroup;

    .end local v0           #child:Landroid/preference/Preference;
    invoke-static {v0, p1}, Lcom/android/camera/OnScreenPreference;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 574
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 582
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private restorePreference()V
    .locals 2

    .prologue
    .line 1918
    const-string v0, "OnScreenPreference"

    const-string v1, "restorePreference()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1921
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mImageRatioPref:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 1922
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mImageRatioPref:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/android/camera/OnScreenPreference;->mGeneral_isWideScreen:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1924
    :cond_0
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mAutoFocusPref:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    .line 1925
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mAutoFocusPref:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/android/camera/OnScreenPreference;->bAutoFocus:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1927
    :cond_1
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mTapCapturePref:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_2

    .line 1928
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mTapCapturePref:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/android/camera/OnScreenPreference;->bTapCapture:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1931
    :cond_2
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mFaceDetectionPref:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_3

    .line 1932
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mFaceDetectionPref:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/android/camera/OnScreenPreference;->bFaceDetection:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1935
    :cond_3
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mPostProcessingPref:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_4

    .line 1936
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mPostProcessingPref:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/android/camera/OnScreenPreference;->bPostProcessing:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1941
    :cond_4
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mStereoRecordingPref:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_5

    .line 1942
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mStereoRecordingPref:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/android/camera/OnScreenPreference;->bStereoRecording:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1946
    :cond_5
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    .line 1948
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mRecordWithAudio:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_6

    .line 1949
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mRecordWithAudio:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/android/camera/OnScreenPreference;->bRecordWithAudio:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1951
    :cond_6
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mFastFrameRecording:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_7

    .line 1952
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mFastFrameRecording:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/android/camera/OnScreenPreference;->bFastFrameRecording:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1955
    :cond_7
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mShutterSoundPref:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_8

    .line 1956
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mShutterSoundPref:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/android/camera/OnScreenPreference;->bShutterSound:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1958
    :cond_8
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mVideoStabilizationPref:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_9

    .line 1959
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mVideoStabilizationPref:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/android/camera/OnScreenPreference;->bVideoStabilization:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1961
    :cond_9
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mReviewDurationPref:Landroid/preference/ListPreference;

    if-eqz v0, :cond_a

    .line 1962
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mReviewDurationPref:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mReviewDurationValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1965
    :cond_a
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->m3DFileFormatPref:Landroid/preference/ListPreference;

    if-eqz v0, :cond_b

    .line 1966
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->m3DFileFormatPref:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->m3DFileFormatValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1969
    :cond_b
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mVideoFileFormatPref:Landroid/preference/ListPreference;

    if-eqz v0, :cond_c

    .line 1970
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mVideoFileFormatPref:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mVideoFileFormatValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1973
    :cond_c
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSmileCapture()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1975
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mSmileCapturePref:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_d

    .line 1976
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mSmileCapturePref:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/android/camera/OnScreenPreference;->bSmileCapture:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1977
    :cond_d
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportBlinkDetect()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1978
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mBlinkDetectionPref:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_e

    .line 1979
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mBlinkDetectionPref:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/android/camera/OnScreenPreference;->bBlinkDetection:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1982
    :cond_e
    return-void
.end method

.method private selectResolution(Landroid/preference/Preference;)V
    .locals 14
    .parameter "prefence"

    .prologue
    const/4 v13, 0x1

    .line 1734
    invoke-static {}, Lcom/android/camera/DisplayDevice;->captrueFullSize()Z

    move-result v9

    if-nez v9, :cond_1

    iget-object v9, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    sget-object v10, Lcom/android/camera/IntentManager$RequestName;->Contacts:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v9, v10}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    sget-object v10, Lcom/android/camera/IntentManager$RequestName;->Square:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v9, v10}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1737
    :cond_0
    const-string v9, "OnScreenPreference"

    const-string v10, "only for Contacts or Square request - not select to write preference really"

    invoke-static {v9, v10}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1801
    :goto_0
    return-void

    .line 1742
    :cond_1
    iget-object v9, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    sget-object v10, Lcom/android/camera/IntentManager$RequestName;->Mms:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v9, v10}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v9

    if-ne v9, v13, :cond_2

    .line 1743
    const-string v9, "OnScreenPreference"

    const-string v10, "only for Mms request - not select to write preference really"

    invoke-static {v9, v10}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1744
    iget-object v9, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    iget-object v9, v9, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v9}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v9

    sget-object v10, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v9, v10, :cond_7

    :cond_2
    move-object v4, p1

    .line 1753
    check-cast v4, Landroid/preference/ListPreference;

    .line 1754
    .local v4, list:Landroid/preference/ListPreference;
    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1755
    .local v1, entry:Ljava/lang/CharSequence;
    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 1756
    .local v0, entries:[Ljava/lang/CharSequence;
    const/4 v3, 0x0

    .line 1757
    .local v3, index:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v9, v0

    if-ge v2, v9, :cond_3

    .line 1758
    aget-object v9, v0, v2

    invoke-virtual {v1, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1759
    move v3, v2

    .line 1763
    :cond_3
    iget-object v9, p0, Lcom/android/camera/OnScreenPreference;->mResolutionItems:Ljava/util/LinkedList;

    invoke-virtual {v9, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/camera/ResolutionMenuItem;

    iget-object v5, v9, Lcom/android/camera/ResolutionMenuItem;->resolution:Lcom/android/camera/Resolution;

    .line 1766
    .local v5, r:Lcom/android/camera/Resolution;
    iget-object v9, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    if-eqz v9, :cond_4

    .line 1767
    iget-object v9, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    iget-object v9, v9, Lcom/android/camera/HTCCamera;->resolutionSelectedEvent:Lcom/android/camera/event/Event;

    new-instance v10, Lcom/android/camera/OneValueEventArgs;

    invoke-direct {v10, v5}, Lcom/android/camera/OneValueEventArgs;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v9, p0, v10}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    .line 1769
    :cond_4
    const-string v9, "OnScreenPreference"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "resolutionCallback run: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1770
    invoke-virtual {v5}, Lcom/android/camera/Resolution;->getWidth()I

    move-result v7

    .line 1771
    .local v7, resolutionWidth:I
    invoke-virtual {v5}, Lcom/android/camera/Resolution;->getHeight()I

    move-result v6

    .line 1773
    .local v6, resolutionHeight:I
    iget-object v9, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    sget-object v10, Lcom/android/camera/IntentManager$RequestName;->Mms:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v9, v10}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v9

    if-ne v9, v13, :cond_b

    sget-object v9, Lcom/android/camera/DisplayDevice;->CUSTOM_MMS:Lcom/android/camera/DisplayDevice$CustomMMS;

    sget-object v10, Lcom/android/camera/DisplayDevice$CustomMMS;->Verizon:Lcom/android/camera/DisplayDevice$CustomMMS;

    if-ne v9, v10, :cond_b

    .line 1775
    iget-object v9, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    iget-object v9, v9, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v9}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v9

    sget-object v10, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    if-ne v9, v10, :cond_a

    .line 1776
    const-string v9, "OnScreenPreference"

    const-string v10, "for Mms custom request - not select to write preference really"

    invoke-static {v9, v10}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1777
    sget-object v9, Lcom/android/camera/Resolution;->Video_QVGA_Service:Lcom/android/camera/Resolution;

    invoke-virtual {v5, v9}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 1778
    invoke-static {v13}, Lcom/android/camera/IntentManager;->setMMS_isVideoQVGA(Z)V

    .line 1795
    :cond_5
    :goto_2
    const-string v9, "OnScreenPreference"

    const-string v10, "Block Capture UI - set resolution"

    invoke-static {v9, v10}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1797
    iget-object v9, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    iget-object v9, v9, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v9}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v9

    sget-object v10, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    if-ne v9, v10, :cond_6

    .line 1798
    iget-object v9, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v10, "pref_fast_frame_resolution_temp"

    const-string v11, "null"

    invoke-static {v9, v10, v11}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 1800
    :cond_6
    iget-object v9, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    const/16 v10, 0xf

    const/4 v11, 0x0

    invoke-static {v9, v10, v7, v6, v11}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1748
    .end local v0           #entries:[Ljava/lang/CharSequence;
    .end local v1           #entry:Ljava/lang/CharSequence;
    .end local v2           #i:I
    .end local v3           #index:I
    .end local v4           #list:Landroid/preference/ListPreference;
    .end local v5           #r:Lcom/android/camera/Resolution;
    .end local v6           #resolutionHeight:I
    .end local v7           #resolutionWidth:I
    :cond_7
    sget-object v9, Lcom/android/camera/DisplayDevice;->CUSTOM_MMS:Lcom/android/camera/DisplayDevice$CustomMMS;

    sget-object v10, Lcom/android/camera/DisplayDevice$CustomMMS;->Verizon:Lcom/android/camera/DisplayDevice$CustomMMS;

    if-eq v9, v10, :cond_2

    goto/16 :goto_0

    .line 1757
    .restart local v0       #entries:[Ljava/lang/CharSequence;
    .restart local v1       #entry:Ljava/lang/CharSequence;
    .restart local v2       #i:I
    .restart local v3       #index:I
    .restart local v4       #list:Landroid/preference/ListPreference;
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 1780
    .restart local v5       #r:Lcom/android/camera/Resolution;
    .restart local v6       #resolutionHeight:I
    .restart local v7       #resolutionWidth:I
    :cond_9
    const/4 v9, 0x0

    invoke-static {v9}, Lcom/android/camera/IntentManager;->setMMS_isVideoQVGA(Z)V

    goto :goto_2

    .line 1782
    :cond_a
    iget-object v10, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    iget-object v11, p0, Lcom/android/camera/OnScreenPreference;->mModeHdr:Lcom/android/camera/ModeHandler;

    iget-object v12, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    iget-object v9, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    iget-object v9, v9, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v9}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/camera/CameraType;

    invoke-virtual {v11, v12, v9}, Lcom/android/camera/ModeHandler;->getResolutionSettingString(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraType;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5}, Lcom/android/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v9, v11, v13}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;Z)Z

    move-result v8

    .line 1783
    .local v8, result:Z
    if-nez v8, :cond_5

    .line 1784
    const-string v9, "OnScreenPreference"

    const-string v10, "Write preference for resolution is fail in MMS photo mode"

    invoke-static {v9, v10}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1789
    .end local v8           #result:Z
    :cond_b
    iget-object v10, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    iget-object v11, p0, Lcom/android/camera/OnScreenPreference;->mModeHdr:Lcom/android/camera/ModeHandler;

    iget-object v12, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    iget-object v9, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    iget-object v9, v9, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v9}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/camera/CameraType;

    invoke-virtual {v11, v12, v9}, Lcom/android/camera/ModeHandler;->getResolutionSettingString(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraType;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5}, Lcom/android/camera/Resolution;->getKeyName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v9, v11, v13}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;Z)Z

    move-result v8

    .line 1790
    .restart local v8       #result:Z
    if-nez v8, :cond_5

    .line 1791
    const-string v9, "OnScreenPreference"

    const-string v10, "Write preference for resolution is fail"

    invoke-static {v9, v10}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method private selectWhiteBalance(Landroid/preference/ListPreference;)V
    .locals 7
    .parameter "prefence"

    .prologue
    const/16 v6, 0x10

    const/4 v5, 0x0

    .line 1805
    if-nez p1, :cond_0

    .line 1806
    const-string v2, "OnScreenPreference"

    const-string v3, "selectWhiteBalance failed - no white balance preference"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1835
    :goto_0
    return-void

    .line 1810
    :cond_0
    const/4 v0, 0x0

    .line 1811
    .local v0, pref_name:Ljava/lang/String;
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSpecific2ndCamera()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/camera/OnScreenPreference;->bSwitchCamera:Z

    if-eqz v2, :cond_2

    .line 1812
    const-string v0, "pref_camera_white_balance_2nd"

    .line 1817
    :goto_1
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 1819
    const/4 v1, 0x0

    .line 1820
    .local v1, scene:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->isServiceMode()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1821
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v3, "pref_camera_scene_ds"

    invoke-static {v2, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1825
    :goto_2
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    iget-object v2, v2, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/CameraType;

    invoke-virtual {v2}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1827
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v3, "pref_camera_white_balance_manual"

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 1832
    .end local v1           #scene:Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 1833
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    invoke-static {v2, v6}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 1834
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v6, v5, v5, v3}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto :goto_0

    .line 1814
    :cond_2
    const-string v0, "pref_camera_white_balance"

    goto :goto_1

    .line 1823
    .restart local v1       #scene:Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v3, "pref_camera_scene_service_ds"

    invoke-static {v2, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2
.end method

.method private setImageRatio_MMS()V
    .locals 0

    .prologue
    .line 1881
    return-void
.end method

.method private setupResolutionList(Landroid/preference/PreferenceScreen;)V
    .locals 20
    .parameter "screen"

    .prologue
    .line 870
    if-nez p1, :cond_1

    .line 871
    const-string v17, "OnScreenPreference"

    const-string v18, "setupResolutionList failed - no preference screen"

    invoke-static/range {v17 .. v18}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 983
    :cond_0
    :goto_0
    return-void

    .line 875
    :cond_1
    const-string v17, "pref_set_resolution"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/ListPreference;

    .line 877
    .local v9, list:Landroid/preference/ListPreference;
    if-nez v9, :cond_2

    .line 878
    const-string v17, "OnScreenPreference"

    const-string v18, "setupResolutionList failed - no resolution preference"

    invoke-static/range {v17 .. v18}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 882
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 886
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v17

    sget-object v18, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 887
    invoke-static {}, Lcom/android/camera/PhotoModeHandler;->getPhotoModeHandler()Lcom/android/camera/PhotoModeHandler;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/OnScreenPreference;->mModeHdr:Lcom/android/camera/ModeHandler;

    .line 892
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/CameraType;

    .line 893
    .local v3, cameraType:Lcom/android/camera/CameraType;
    invoke-virtual {v3}, Lcom/android/camera/CameraType;->isFrontCamera()Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportWideScreen2ndCamera()Z

    move-result v17

    if-nez v17, :cond_5

    .line 894
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/OnScreenPreference;->bWideScreen:Z

    .line 898
    :goto_2
    const/4 v10, 0x0

    .line 899
    .local v10, r:Lcom/android/camera/Resolution;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v17

    sget-object v18, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_6

    .line 900
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/OnScreenPreference;->bWideScreen:Z

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/OnScreenPreference;->mModeHdr:Lcom/android/camera/ModeHandler;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/CameraThread;->updateImageRatio(ZLcom/android/camera/ModeHandler;Lcom/android/camera/CameraType;)Lcom/android/camera/Resolution;

    move-result-object v10

    .line 903
    :goto_3
    const-string v17, "OnScreenPreference"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Current Resolution: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/OnScreenPreference;->mModeHdr:Lcom/android/camera/ModeHandler;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/camera/CameraType;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ModeHandler;->getResolutionMenuItem(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraType;)Ljava/util/LinkedList;

    move-result-object v14

    .line 906
    .local v14, resoItems:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/camera/ResolutionMenuItem;>;"
    new-instance v17, Ljava/util/LinkedList;

    invoke-direct/range {v17 .. v17}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/OnScreenPreference;->mResolutionItems:Ljava/util/LinkedList;

    .line 908
    new-instance v15, Ljava/util/TreeSet;

    invoke-direct {v15}, Ljava/util/TreeSet;-><init>()V

    .line 909
    .local v15, sortedSet:Ljava/util/TreeSet;,"Ljava/util/TreeSet<Lcom/android/camera/ResolutionMenuItem;>;"
    invoke-virtual {v15, v14}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 910
    invoke-virtual {v15}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 912
    .local v8, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/camera/ResolutionMenuItem;>;"
    :cond_3
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_9

    .line 913
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/camera/ResolutionMenuItem;

    .line 914
    .local v11, re:Lcom/android/camera/ResolutionMenuItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v17

    sget-object v18, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 916
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/OnScreenPreference;->bWideScreen:Z

    move/from16 v17, v0

    if-eqz v17, :cond_7

    iget-object v0, v11, Lcom/android/camera/ResolutionMenuItem;->resolution:Lcom/android/camera/Resolution;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/Resolution;->isWideRatio()Z

    move-result v17

    if-eqz v17, :cond_7

    .line 917
    const-string v17, "OnScreenPreference"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "#########################:   "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v11, Lcom/android/camera/ResolutionMenuItem;->resolution:Lcom/android/camera/Resolution;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/OnScreenPreference;->mResolutionItems:Ljava/util/LinkedList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_4

    .line 889
    .end local v3           #cameraType:Lcom/android/camera/CameraType;
    .end local v8           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/camera/ResolutionMenuItem;>;"
    .end local v10           #r:Lcom/android/camera/Resolution;
    .end local v11           #re:Lcom/android/camera/ResolutionMenuItem;
    .end local v14           #resoItems:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/camera/ResolutionMenuItem;>;"
    .end local v15           #sortedSet:Ljava/util/TreeSet;,"Ljava/util/TreeSet<Lcom/android/camera/ResolutionMenuItem;>;"
    :cond_4
    invoke-static {}, Lcom/android/camera/MovieModeHandler;->getMovieModeHandler()Lcom/android/camera/MovieModeHandler;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/OnScreenPreference;->mModeHdr:Lcom/android/camera/ModeHandler;

    goto/16 :goto_1

    .line 896
    .restart local v3       #cameraType:Lcom/android/camera/CameraType;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/camera/CameraSettings;->isWideRatioPhoto:Lcom/android/camera/property/Property;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Boolean;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/OnScreenPreference;->bWideScreen:Z

    goto/16 :goto_2

    .line 902
    .restart local v10       #r:Lcom/android/camera/Resolution;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/OnScreenPreference;->mModeHdr:Lcom/android/camera/ModeHandler;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v3}, Lcom/android/camera/ModeHandler;->getCurrentResolutionSettingValue(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraType;)Lcom/android/camera/Resolution;

    move-result-object v10

    goto/16 :goto_3

    .line 920
    .restart local v8       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/camera/ResolutionMenuItem;>;"
    .restart local v11       #re:Lcom/android/camera/ResolutionMenuItem;
    .restart local v14       #resoItems:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/camera/ResolutionMenuItem;>;"
    .restart local v15       #sortedSet:Ljava/util/TreeSet;,"Ljava/util/TreeSet<Lcom/android/camera/ResolutionMenuItem;>;"
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/OnScreenPreference;->bWideScreen:Z

    move/from16 v17, v0

    if-nez v17, :cond_3

    iget-object v0, v11, Lcom/android/camera/ResolutionMenuItem;->resolution:Lcom/android/camera/Resolution;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/Resolution;->isWideRatio()Z

    move-result v17

    if-nez v17, :cond_3

    .line 921
    const-string v17, "OnScreenPreference"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "#########################:   "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v11, Lcom/android/camera/ResolutionMenuItem;->resolution:Lcom/android/camera/Resolution;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/OnScreenPreference;->mResolutionItems:Ljava/util/LinkedList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 926
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/OnScreenPreference;->mResolutionItems:Ljava/util/LinkedList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 929
    .end local v11           #re:Lcom/android/camera/ResolutionMenuItem;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/OnScreenPreference;->mResolutionItems:Ljava/util/LinkedList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/LinkedList;->size()I

    move-result v17

    move/from16 v0, v17

    new-array v4, v0, [Ljava/lang/CharSequence;

    .line 930
    .local v4, entries:[Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/OnScreenPreference;->mResolutionItems:Ljava/util/LinkedList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/LinkedList;->size()I

    move-result v17

    move/from16 v0, v17

    new-array v5, v0, [Ljava/lang/CharSequence;

    .line 932
    .local v5, entryValues:[Ljava/lang/CharSequence;
    const-string v17, "OnScreenPreference"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "sortedresoItems.size()#############:  "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/OnScreenPreference;->mResolutionItems:Ljava/util/LinkedList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/LinkedList;->size()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 934
    .local v12, res:Landroid/content/res/Resources;
    const/4 v7, 0x0

    .line 935
    .local v7, index:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/OnScreenPreference;->mResolutionItems:Ljava/util/LinkedList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/LinkedList;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v6, v0, :cond_b

    .line 936
    const/4 v13, -0x1

    .line 937
    .local v13, resDesId:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/OnScreenPreference;->mResolutionItems:Ljava/util/LinkedList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/camera/ResolutionMenuItem;

    move-object/from16 v0, v17

    iget v13, v0, Lcom/android/camera/ResolutionMenuItem;->resStringId:I

    .line 938
    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v4, v6

    .line 939
    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v5, v6

    .line 940
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/OnScreenPreference;->mResolutionItems:Ljava/util/LinkedList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/camera/ResolutionMenuItem;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/camera/ResolutionMenuItem;->resolution:Lcom/android/camera/Resolution;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/android/camera/Resolution;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 941
    move v7, v6

    .line 935
    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 945
    .end local v13           #resDesId:I
    :cond_b
    invoke-virtual {v9, v4}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 946
    invoke-virtual {v9, v5}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 947
    invoke-virtual {v9, v7}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 951
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v17

    sget-object v18, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_c

    .line 952
    const v16, 0x7f0a0065

    .line 982
    .local v16, titleId:I
    :goto_6
    move/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/preference/ListPreference;->setDialogTitle(I)V

    goto/16 :goto_0

    .line 953
    .end local v16           #titleId:I
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/OnScreenPreference;->bSwitchCamera:Z

    move/from16 v17, v0

    if-eqz v17, :cond_d

    .line 954
    const v16, 0x7f0a0065

    .restart local v16       #titleId:I
    goto :goto_6

    .line 957
    .end local v16           #titleId:I
    :cond_d
    invoke-static {}, Lcom/android/camera/DisplayDevice;->captrueFullSize()Z

    move-result v17

    if-nez v17, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    move-object/from16 v17, v0

    sget-object v18, Lcom/android/camera/IntentManager$RequestName;->Contacts:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual/range {v17 .. v18}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v17

    if-nez v17, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    move-object/from16 v17, v0

    sget-object v18, Lcom/android/camera/IntentManager$RequestName;->Square:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual/range {v17 .. v18}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v17

    if-eqz v17, :cond_f

    .line 960
    :cond_e
    const-string v17, "OnScreenPreference"

    const-string v18, "Contacts request - resolution is 1:1"

    invoke-static/range {v17 .. v18}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    const v16, 0x7f0a0072

    .restart local v16       #titleId:I
    goto :goto_6

    .line 963
    .end local v16           #titleId:I
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/OnScreenPreference;->bWideScreen:Z

    move/from16 v17, v0

    if-eqz v17, :cond_14

    .line 965
    sget-object v17, Lcom/android/camera/DisplayDevice;->SCREEN_RATIO:Lcom/android/camera/DisplayDevice$ScreenRatio;

    sget-object v18, Lcom/android/camera/DisplayDevice$ScreenRatio;->Ratio_16_9:Lcom/android/camera/DisplayDevice$ScreenRatio;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_10

    .line 966
    const v16, 0x7f0a0074

    .restart local v16       #titleId:I
    goto :goto_6

    .line 967
    .end local v16           #titleId:I
    :cond_10
    sget-object v17, Lcom/android/camera/DisplayDevice;->SCREEN_RATIO:Lcom/android/camera/DisplayDevice$ScreenRatio;

    sget-object v18, Lcom/android/camera/DisplayDevice$ScreenRatio;->Tablet_Ratio_16_9:Lcom/android/camera/DisplayDevice$ScreenRatio;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_11

    .line 968
    const v16, 0x7f0a0075

    .restart local v16       #titleId:I
    goto :goto_6

    .line 969
    .end local v16           #titleId:I
    :cond_11
    sget-object v17, Lcom/android/camera/DisplayDevice;->SCREEN_RATIO:Lcom/android/camera/DisplayDevice$ScreenRatio;

    sget-object v18, Lcom/android/camera/DisplayDevice$ScreenRatio;->Tablet_Ratio_16_10:Lcom/android/camera/DisplayDevice$ScreenRatio;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_12

    .line 970
    const v16, 0x7f0a0076

    .restart local v16       #titleId:I
    goto :goto_6

    .line 971
    .end local v16           #titleId:I
    :cond_12
    sget-object v17, Lcom/android/camera/DisplayDevice;->SCREEN_RATIO:Lcom/android/camera/DisplayDevice$ScreenRatio;

    sget-object v18, Lcom/android/camera/DisplayDevice$ScreenRatio;->Ratio_5_3:Lcom/android/camera/DisplayDevice$ScreenRatio;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_13

    .line 972
    const v16, 0x7f0a0073

    .restart local v16       #titleId:I
    goto :goto_6

    .line 975
    .end local v16           #titleId:I
    :cond_13
    const v16, 0x7f0a0077

    .restart local v16       #titleId:I
    goto/16 :goto_6

    .line 977
    .end local v16           #titleId:I
    :cond_14
    const v16, 0x7f0a0078

    .restart local v16       #titleId:I
    goto/16 :goto_6
.end method

.method private setupWhteBalanceList(Landroid/preference/PreferenceScreen;)V
    .locals 14
    .parameter "screen"

    .prologue
    .line 987
    if-nez p1, :cond_0

    .line 988
    const-string v12, "OnScreenPreference"

    const-string v13, "setupWhteBalanceList failed - no preference screen"

    invoke-static {v12, v13}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    :goto_0
    return-void

    .line 992
    :cond_0
    const-string v12, "pref_set_white_balance"

    invoke-virtual {p1, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/ListPreference;

    .line 993
    .local v7, list:Landroid/preference/ListPreference;
    if-nez v7, :cond_1

    .line 994
    const-string v12, "OnScreenPreference"

    const-string v13, "setupWhteBalanceList failed - no white balance preference"

    invoke-static {v12, v13}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 997
    :cond_1
    iget-object v12, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v12}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 998
    .local v9, res:Landroid/content/res/Resources;
    const v12, 0x7f07001d

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 999
    .local v0, allEntries:[Ljava/lang/String;
    const v12, 0x7f07001e

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 1000
    .local v1, allEntryValues:[Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1001
    .local v3, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1004
    .local v4, entryValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const-string v11, "cloudy-daylight"

    .line 1005
    .local v11, value_cloudy:Ljava/lang/String;
    const/4 v8, 0x0

    .line 1006
    .local v8, removeWB:Z
    const/4 v2, 0x0

    .line 1007
    .local v2, current_value:Ljava/lang/String;
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSpecific2ndCamera()Z

    move-result v12

    if-eqz v12, :cond_2

    iget-boolean v12, p0, Lcom/android/camera/OnScreenPreference;->bSwitchCamera:Z

    if-eqz v12, :cond_2

    .line 1008
    const/4 v8, 0x1

    .line 1009
    iget-object v12, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v13, "pref_camera_white_balance_2nd"

    invoke-static {v12, v13}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1016
    :goto_1
    const/4 v6, 0x0

    .line 1017
    .local v6, index:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2
    array-length v12, v1

    if-ge v5, v12, :cond_5

    .line 1018
    if-eqz v8, :cond_3

    aget-object v12, v1, v5

    const-string v13, "cloudy-daylight"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1017
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1012
    .end local v5           #i:I
    .end local v6           #index:I
    :cond_2
    iget-object v12, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v13, "pref_camera_white_balance"

    invoke-static {v12, v13}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 1020
    .restart local v5       #i:I
    .restart local v6       #index:I
    :cond_3
    aget-object v12, v1, v5

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1021
    move v6, v5

    .line 1022
    :cond_4
    aget-object v12, v0, v5

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1023
    aget-object v12, v1, v5

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1026
    :cond_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 1027
    .local v10, size:I
    new-array v12, v10, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/CharSequence;

    invoke-virtual {v7, v12}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 1028
    new-array v12, v10, [Ljava/lang/CharSequence;

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/CharSequence;

    invoke-virtual {v7, v12}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 1029
    invoke-virtual {v7, v6}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto/16 :goto_0
.end method

.method private show_gps_dialog()V
    .locals 6

    .prologue
    .line 1080
    new-instance v3, Lcom/android/camera/OnScreenPreference$1;

    invoke-direct {v3, p0}, Lcom/android/camera/OnScreenPreference$1;-><init>(Lcom/android/camera/OnScreenPreference;)V

    .line 1091
    .local v3, positive_listener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Lcom/android/camera/OnScreenPreference$2;

    invoke-direct {v2, p0}, Lcom/android/camera/OnScreenPreference$2;-><init>(Lcom/android/camera/OnScreenPreference;)V

    .line 1099
    .local v2, negative_listener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Lcom/android/camera/OnScreenPreference$3;

    invoke-direct {v0, p0}, Lcom/android/camera/OnScreenPreference$3;-><init>(Lcom/android/camera/OnScreenPreference;)V

    .line 1106
    .local v0, cancel_listener:Landroid/content/DialogInterface$OnCancelListener;
    new-instance v1, Lcom/android/camera/OnScreenPreference$4;

    invoke-direct {v1, p0}, Lcom/android/camera/OnScreenPreference$4;-><init>(Lcom/android/camera/OnScreenPreference;)V

    .line 1127
    .local v1, key_listener:Landroid/content/DialogInterface$OnKeyListener;
    new-instance v4, Lcom/android/camera/rotate/RotateDialog$Builder;

    iget-object v5, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-direct {v4, v5}, Lcom/android/camera/rotate/RotateDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x1080027

    invoke-virtual {v4, v5}, Lcom/android/camera/rotate/RotateDialog$Builder;->setIcon(I)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a019d

    invoke-virtual {v4, v5}, Lcom/android/camera/rotate/RotateDialog$Builder;->setTitle(I)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a019e

    invoke-virtual {v4, v5}, Lcom/android/camera/rotate/RotateDialog$Builder;->setMessage(I)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v4

    const v5, 0x2040218

    invoke-virtual {v4, v5, v3}, Lcom/android/camera/rotate/RotateDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v4

    const/high16 v5, 0x104

    invoke-virtual {v4, v5, v2}, Lcom/android/camera/rotate/RotateDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/camera/rotate/RotateDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/camera/rotate/RotateDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/rotate/RotateDialog$Builder;->create()Lcom/android/camera/rotate/RotateDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/OnScreenPreference;->mDialog:Landroid/app/Dialog;

    .line 1137
    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mDialog:Landroid/app/Dialog;

    check-cast v4, Lcom/android/camera/rotate/RotateDialog;

    iget-object v5, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    iget-object v5, v5, Lcom/android/camera/HTCCamera;->rotation:Lcom/android/camera/property/Property;

    invoke-virtual {v5}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v4, v5}, Lcom/android/camera/rotate/RotateDialog;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    .line 1140
    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 1141
    return-void
.end method

.method private show_reset_dialog()V
    .locals 6

    .prologue
    .line 1146
    new-instance v3, Lcom/android/camera/OnScreenPreference$5;

    invoke-direct {v3, p0}, Lcom/android/camera/OnScreenPreference$5;-><init>(Lcom/android/camera/OnScreenPreference;)V

    .line 1236
    .local v3, positive_listener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Lcom/android/camera/OnScreenPreference$6;

    invoke-direct {v2, p0}, Lcom/android/camera/OnScreenPreference$6;-><init>(Lcom/android/camera/OnScreenPreference;)V

    .line 1244
    .local v2, negative_listener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Lcom/android/camera/OnScreenPreference$7;

    invoke-direct {v0, p0}, Lcom/android/camera/OnScreenPreference$7;-><init>(Lcom/android/camera/OnScreenPreference;)V

    .line 1250
    .local v0, cancel_listener:Landroid/content/DialogInterface$OnCancelListener;
    new-instance v1, Lcom/android/camera/OnScreenPreference$8;

    invoke-direct {v1, p0}, Lcom/android/camera/OnScreenPreference$8;-><init>(Lcom/android/camera/OnScreenPreference;)V

    .line 1271
    .local v1, key_listener:Landroid/content/DialogInterface$OnKeyListener;
    new-instance v4, Lcom/android/camera/rotate/RotateDialog$Builder;

    iget-object v5, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-direct {v4, v5}, Lcom/android/camera/rotate/RotateDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x1080027

    invoke-virtual {v4, v5}, Lcom/android/camera/rotate/RotateDialog$Builder;->setIcon(I)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a00aa

    invoke-virtual {v4, v5}, Lcom/android/camera/rotate/RotateDialog$Builder;->setTitle(I)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a011b

    invoke-virtual {v4, v5}, Lcom/android/camera/rotate/RotateDialog$Builder;->setMessage(I)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v4

    const v5, 0x20401f2

    invoke-virtual {v4, v5, v3}, Lcom/android/camera/rotate/RotateDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v4

    const v5, 0x20401f3

    invoke-virtual {v4, v5, v2}, Lcom/android/camera/rotate/RotateDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/camera/rotate/RotateDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/camera/rotate/RotateDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/android/camera/rotate/RotateDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/rotate/RotateDialog$Builder;->create()Lcom/android/camera/rotate/RotateDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/OnScreenPreference;->mDialog:Landroid/app/Dialog;

    .line 1281
    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mDialog:Landroid/app/Dialog;

    check-cast v4, Lcom/android/camera/rotate/RotateDialog;

    iget-object v5, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    iget-object v5, v5, Lcom/android/camera/HTCCamera;->rotation:Lcom/android/camera/property/Property;

    invoke-virtual {v5}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v4, v5}, Lcom/android/camera/rotate/RotateDialog;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    .line 1284
    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 1285
    return-void
.end method

.method private updateGeoTagging()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1058
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mGeoTaggingPref:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 1059
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mGeoTaggingPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1060
    const-string v0, "OnScreenPreference"

    const-string v1, "updateGeoTagging() - Check Location Setting ..."

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1061
    invoke-direct {p0}, Lcom/android/camera/OnScreenPreference;->checkLocationSetting()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1063
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mGeoTaggingPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1064
    invoke-direct {p0}, Lcom/android/camera/OnScreenPreference;->show_gps_dialog()V

    .line 1075
    :cond_0
    :goto_0
    return-void

    .line 1067
    :cond_1
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/HTCCamera;->enableGeoTagging(Z)V

    .line 1068
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x25

    const v2, 0x7f0a011a

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v4, v3}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto :goto_0

    .line 1072
    :cond_2
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0, v4}, Lcom/android/camera/HTCCamera;->enableGeoTagging(Z)V

    goto :goto_0
.end method

.method private updateImageRatio()V
    .locals 1

    .prologue
    .line 1904
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mImageRatioPref:Landroid/preference/CheckBoxPreference;

    if-nez v0, :cond_0

    .line 1915
    :goto_0
    return-void

    .line 1906
    :cond_0
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mImageRatioPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/OnScreenPreference;->bWideScreen:Z

    .line 1911
    iget-boolean v0, p0, Lcom/android/camera/OnScreenPreference;->bWideScreen:Z

    iput-boolean v0, p0, Lcom/android/camera/OnScreenPreference;->mGeneral_isWideScreen:Z

    .line 1913
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mScreen:Landroid/preference/PreferenceScreen;

    invoke-direct {p0, v0}, Lcom/android/camera/OnScreenPreference;->setupResolutionList(Landroid/preference/PreferenceScreen;)V

    .line 1914
    invoke-direct {p0}, Lcom/android/camera/OnScreenPreference;->updateResolution()V

    goto :goto_0
.end method

.method private updateResolution()V
    .locals 2

    .prologue
    .line 2299
    const-string v0, "OnScreenPreference"

    const-string v1, "Block Capture UI - updateResolution()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 2300
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    const/16 v1, 0xf

    invoke-static {v0, v1}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    .line 2301
    return-void
.end method

.method private updateSwitchCamera()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1839
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mCameraSwitchPref:Landroid/preference/CheckBoxPreference;

    if-nez v0, :cond_1

    .line 1866
    :cond_0
    :goto_0
    return-void

    .line 1842
    :cond_1
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mCameraSwitchPref:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mCameraSwitchPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-ne v0, v3, :cond_2

    .line 1843
    iput-boolean v3, p0, Lcom/android/camera/OnScreenPreference;->bSwitchCamera:Z

    .line 1844
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportWideScreen2ndCamera()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1845
    iput-boolean v2, p0, Lcom/android/camera/OnScreenPreference;->bWideScreen:Z

    .line 1846
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mImageRatioPref:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 1847
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mImageRatioPref:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0a0092

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummaryOff(I)V

    .line 1848
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mImageRatioPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1849
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mImageRatioPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 1853
    :cond_2
    iput-boolean v2, p0, Lcom/android/camera/OnScreenPreference;->bSwitchCamera:Z

    .line 1854
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mImageRatioPref:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 1859
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mImageRatioPref:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/android/camera/OnScreenPreference;->mGeneral_isWideScreen:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1860
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mImageRatioPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private updateTimeStamp()V
    .locals 4

    .prologue
    .line 1034
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mTimeStampPref:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_0

    .line 1035
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mTimeStampPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1036
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 1037
    .local v1, now:Ljava/util/Date;
    const-string v0, "yyyy/MM/dd kk:mm"

    .line 1038
    .local v0, dateFormat:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mTimeStampPref:Landroid/preference/CheckBoxPreference;

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    .line 1041
    .end local v0           #dateFormat:Ljava/lang/String;
    .end local v1           #now:Ljava/util/Date;
    :cond_0
    return-void
.end method


# virtual methods
.method public ReloadAutoUploadSetting()V
    .locals 5

    .prologue
    .line 1458
    const-string v2, "OnScreenPreference"

    const-string v3, "ReloadAutoUploadSetting()"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 1459
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mAutoUploadPref:Landroid/preference/Preference;

    if-nez v2, :cond_1

    .line 1494
    :cond_0
    :goto_0
    return-void

    .line 1461
    :cond_1
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    iget-object v2, v2, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v2, v3, :cond_0

    .line 1464
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v3, "pref_auto_upload"

    invoke-static {v2, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/OnScreenPreference;->mAutoUploadService:Ljava/lang/String;

    .line 1465
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v3, "pref_auto_upload_label"

    invoke-static {v2, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/OnScreenPreference;->mAutoUploadServiceLabel:Ljava/lang/String;

    .line 1466
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v3, "pref_auto_upload_account_type"

    invoke-static {v2, v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/OnScreenPreference;->mAutoUploadAccountType:Ljava/lang/String;

    .line 1467
    const-string v2, "OnScreenPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ReloadAutoUploadSetting() mAutoUploadService:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mAutoUploadService:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1468
    const-string v2, "OnScreenPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ReloadAutoUploadSetting() mAutoUploadServiceLabel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mAutoUploadServiceLabel:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1469
    const-string v2, "OnScreenPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ReloadAutoUploadSetting() mAutoUploadAccountType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mAutoUploadAccountType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 1472
    const/4 v0, 0x0

    .line 1475
    .local v0, accounts:[Landroid/accounts/Account;
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mAutoUploadAccountType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 1476
    if-eqz v0, :cond_2

    array-length v2, v0

    if-gtz v2, :cond_3

    .line 1477
    :cond_2
    const-string v2, "Off"

    iput-object v2, p0, Lcom/android/camera/OnScreenPreference;->mAutoUploadService:Ljava/lang/String;

    .line 1478
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v3, "pref_auto_upload"

    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mAutoUploadService:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1485
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mAutoUploadService:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mAutoUploadService:Ljava/lang/String;

    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mAutoUploadService:Ljava/lang/String;

    const-string v3, "Off"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1489
    :cond_4
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mAutoUploadPref:Landroid/preference/Preference;

    const v3, 0x7f0a00a9

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(I)V

    .line 1493
    :goto_2
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    iget-object v2, v2, Lcom/android/camera/HTCCamera;->mAutoUploader:Lcom/android/camera/AutoUploader;

    invoke-virtual {v2}, Lcom/android/camera/AutoUploader;->loadAutoUploadSettings()V

    goto/16 :goto_0

    .line 1480
    :catch_0
    move-exception v1

    .line 1481
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "OnScreenPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "account:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1491
    .end local v1           #e:Ljava/lang/Exception;
    :cond_5
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mAutoUploadPref:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mAutoUploadServiceLabel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public checkAutoCapture()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1348
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    if-nez v1, :cond_1

    .line 1420
    :cond_0
    :goto_0
    return-void

    .line 1351
    :cond_1
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mSelfTimerPref:Landroid/preference/ListPreference;

    if-eqz v1, :cond_0

    .line 1354
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    iget-object v1, v1, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    if-eq v1, v4, :cond_0

    .line 1358
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    iget-object v1, v1, Lcom/android/camera/HTCCamera;->selfTimerValue:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/SelfTimerValue;

    invoke-virtual {v1}, Lcom/android/camera/SelfTimerValue;->getIntergerValue()I

    move-result v0

    .line 1360
    .local v0, timer:I
    :goto_1
    if-nez v0, :cond_e

    .line 1362
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mSelfPortraitPref:Landroid/preference/Preference;

    if-eqz v1, :cond_2

    .line 1363
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mSelfPortraitPref:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1364
    :cond_2
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-static {v1}, Lcom/android/camera/HTCCameraAdvanceSetting;->getFaceNumber(Landroid/app/Activity;)I

    move-result v1

    if-gtz v1, :cond_9

    .line 1365
    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mSelfTimerPref:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    iget-object v1, v1, Lcom/android/camera/HTCCamera;->selfTimerValue:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/SelfTimerValue;

    invoke-virtual {v1}, Lcom/android/camera/SelfTimerValue;->isDisabled()Z

    move-result v1

    if-nez v1, :cond_7

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 1367
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mAutoFocusPref:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_3

    .line 1368
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mAutoFocusPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1369
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mAutoFocusPref:Landroid/preference/CheckBoxPreference;

    iget-boolean v3, p0, Lcom/android/camera/OnScreenPreference;->bAutoFocus:Z

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1370
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mFaceDetectionPref:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_3

    .line 1371
    invoke-virtual {p0, v2}, Lcom/android/camera/OnScreenPreference;->updateFaceDetection(Z)Z

    .line 1374
    :cond_3
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mTapCapturePref:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_4

    .line 1375
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mTapCapturePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1376
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mTapCapturePref:Landroid/preference/CheckBoxPreference;

    iget-boolean v3, p0, Lcom/android/camera/OnScreenPreference;->bTapCapture:Z

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1379
    :cond_4
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mShutterSoundPref:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_5

    .line 1380
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mShutterSoundPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1381
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mShutterSoundPref:Landroid/preference/CheckBoxPreference;

    iget-boolean v3, p0, Lcom/android/camera/OnScreenPreference;->bShutterSound:Z

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1384
    :cond_5
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mReviewDurationPref:Landroid/preference/ListPreference;

    if-eqz v1, :cond_0

    .line 1385
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mReviewDurationPref:Landroid/preference/ListPreference;

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 1386
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mReviewDurationPref:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mReviewDurationValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v0           #timer:I
    :cond_6
    move v0, v3

    .line 1358
    goto :goto_1

    .restart local v0       #timer:I
    :cond_7
    move v1, v3

    .line 1365
    goto :goto_2

    :cond_8
    move v1, v2

    goto :goto_2

    .line 1389
    :cond_9
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mSelfTimerPref:Landroid/preference/ListPreference;

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 1391
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mAutoFocusPref:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_a

    .line 1392
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mAutoFocusPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1393
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mAutoFocusPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1396
    :cond_a
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mTapCapturePref:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_b

    .line 1397
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mTapCapturePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1398
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mTapCapturePref:Landroid/preference/CheckBoxPreference;

    iget-boolean v4, p0, Lcom/android/camera/OnScreenPreference;->bTapCapture:Z

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1401
    :cond_b
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mFaceDetectionPref:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_c

    .line 1402
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mFaceDetectionPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1403
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mFaceDetectionPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1406
    :cond_c
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mShutterSoundPref:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_d

    .line 1407
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mShutterSoundPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1408
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mShutterSoundPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1411
    :cond_d
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mReviewDurationPref:Landroid/preference/ListPreference;

    if-eqz v1, :cond_0

    .line 1412
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mReviewDurationPref:Landroid/preference/ListPreference;

    const-string v2, "no_limit"

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1413
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mReviewDurationPref:Landroid/preference/ListPreference;

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 1417
    :cond_e
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mSelfPortraitPref:Landroid/preference/Preference;

    if-eqz v1, :cond_0

    .line 1418
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mSelfPortraitPref:Landroid/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_0
.end method

.method public checkImageSettings(I)Z
    .locals 5
    .parameter "nImageSettings"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2326
    const-string v4, "pref_set_white_balance"

    and-int/lit8 v1, p1, 0x20

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {p0, v4, v1}, Lcom/android/camera/OnScreenPreference;->enablePreference(Ljava/lang/String;Z)Z

    move-result v0

    .line 2330
    .local v0, updated:Z
    const-string v4, "pref_camera_iso"

    and-int/lit8 v1, p1, 0x4

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {p0, v4, v1}, Lcom/android/camera/OnScreenPreference;->enablePreference(Ljava/lang/String;Z)Z

    move-result v1

    or-int/2addr v0, v1

    .line 2334
    const-string v1, "pref_camera_image_property"

    sget v4, Lcom/android/camera/ImageSettings;->SETTING_IMAGE_PROPERTIES:I

    and-int/2addr v4, p1

    if-nez v4, :cond_2

    :goto_2
    invoke-virtual {p0, v1, v2}, Lcom/android/camera/OnScreenPreference;->enablePreference(Ljava/lang/String;Z)Z

    move-result v1

    or-int/2addr v0, v1

    .line 2338
    return v0

    .end local v0           #updated:Z
    :cond_0
    move v1, v3

    .line 2326
    goto :goto_0

    .restart local v0       #updated:Z
    :cond_1
    move v1, v3

    .line 2330
    goto :goto_1

    :cond_2
    move v2, v3

    .line 2334
    goto :goto_2
.end method

.method checkStorageLocation()V
    .locals 2

    .prologue
    .line 1317
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mScreen:Landroid/preference/PreferenceScreen;

    if-nez v0, :cond_0

    .line 1319
    const-string v0, "OnScreenPreference"

    const-string v1, "mScreen == null"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1323
    :goto_0
    return-void

    .line 1322
    :cond_0
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0, v0}, Lcom/android/camera/OnScreenPreference;->checkStorageLocation(Landroid/preference/PreferenceScreen;)V

    goto :goto_0
.end method

.method public checkStorageLocation(Landroid/preference/PreferenceScreen;)V
    .locals 5
    .parameter "screen"

    .prologue
    .line 1325
    const-string v3, "pref_camera_storage_location"

    invoke-virtual {p1, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    .line 1326
    .local v2, store:Landroid/preference/ListPreference;
    if-eqz v2, :cond_0

    .line 1327
    invoke-static {}, Lcom/android/camera/io/StorageSlot;->hasInternalMemorySlot()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1330
    sget-object v3, Lcom/android/camera/io/StorageSlot;->STORAGE_CARD:Lcom/android/camera/io/StorageSlot;

    invoke-virtual {v3}, Lcom/android/camera/io/StorageSlot;->getState()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mounted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1331
    .local v0, bSDCard:Z
    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 1332
    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v4, "pref_camera_storage_location"

    invoke-static {v3, v4}, Lcom/android/camera/HTCCameraAdvanceSetting;->getPrefenceValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1344
    .end local v0           #bSDCard:Z
    :cond_0
    :goto_0
    return-void

    .line 1336
    :cond_1
    const-string v3, "group"

    invoke-virtual {p1, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    .line 1337
    .local v1, group:Landroid/preference/PreferenceGroup;
    if-eqz v1, :cond_0

    .line 1338
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method public enableISO(Z)Z
    .locals 4
    .parameter "enable"

    .prologue
    const/4 v3, 0x1

    .line 2018
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mScreen:Landroid/preference/PreferenceScreen;

    const-string v2, "pref_camera_iso"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 2019
    .local v0, property:Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 2020
    if-eqz p1, :cond_1

    .line 2021
    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 2025
    :cond_0
    :goto_0
    return v3

    .line 2023
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method

.method public enableImageProperty(Z)Z
    .locals 4
    .parameter "enable"

    .prologue
    const/4 v1, 0x0

    .line 2004
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mScreen:Landroid/preference/PreferenceScreen;

    const-string v3, "pref_camera_image_property"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 2005
    .local v0, property:Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 2006
    invoke-virtual {v0}, Landroid/preference/Preference;->isEnabled()Z

    move-result v2

    if-ne p1, v2, :cond_1

    .line 2013
    :cond_0
    :goto_0
    return v1

    .line 2009
    :cond_1
    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 2010
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public enablePreference(Ljava/lang/String;Z)Z
    .locals 3
    .parameter "name"
    .parameter "enabled"

    .prologue
    const/4 v1, 0x0

    .line 2311
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, p1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 2312
    .local v0, preference:Landroid/preference/Preference;
    if-nez v0, :cond_1

    .line 2320
    :cond_0
    :goto_0
    return v1

    .line 2315
    :cond_1
    invoke-virtual {v0}, Landroid/preference/Preference;->isEnabled()Z

    move-result v2

    if-eq v2, p2, :cond_0

    .line 2317
    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 2318
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public enableSelfPortrait(Z)Z
    .locals 4
    .parameter "enable"

    .prologue
    const/4 v2, 0x0

    .line 1986
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mSelfTimerPref:Landroid/preference/ListPreference;

    if-eqz v1, :cond_0

    .line 1987
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    iget-object v1, v1, Lcom/android/camera/HTCCamera;->selfTimerValue:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/SelfTimerValue;

    invoke-virtual {v1}, Lcom/android/camera/SelfTimerValue;->getIntergerValue()I

    move-result v1

    if-lez v1, :cond_0

    move v1, v2

    .line 2000
    :goto_0
    return v1

    .line 1991
    :cond_0
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mScreen:Landroid/preference/PreferenceScreen;

    const-string v3, "pref_camera_face_number"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 1992
    .local v0, pref:Landroid/preference/Preference;
    if-eqz v0, :cond_2

    .line 1993
    invoke-virtual {v0}, Landroid/preference/Preference;->isEnabled()Z

    move-result v1

    if-ne p1, v1, :cond_1

    move v1, v2

    .line 1994
    goto :goto_0

    .line 1996
    :cond_1
    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1997
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v2

    .line 2000
    goto :goto_0
.end method

.method public enableSmileCapture(Z)V
    .locals 5
    .parameter "bIfEnable"

    .prologue
    const/4 v4, 0x0

    .line 2107
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    if-nez v2, :cond_1

    .line 2133
    :cond_0
    :goto_0
    return-void

    .line 2110
    :cond_1
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mSelfTimerPref:Landroid/preference/ListPreference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mSmileCapturePref:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    if-eqz v2, :cond_0

    .line 2113
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    iget-object v2, v2, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    if-eq v2, v3, :cond_0

    .line 2116
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mSelfTimerPref:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 2117
    .local v1, timer:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mScreen:Landroid/preference/PreferenceScreen;

    const-string v3, "pref_face_detection"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 2119
    .local v0, face:Landroid/preference/CheckBoxPreference;
    if-eqz p1, :cond_3

    if-eqz v1, :cond_2

    const-string v2, "none"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2124
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mSmileCapturePref:Landroid/preference/CheckBoxPreference;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 2125
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mSmileCapturePref:Landroid/preference/CheckBoxPreference;

    iget-boolean v3, p0, Lcom/android/camera/OnScreenPreference;->bSmileCapture:Z

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 2128
    :cond_3
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mSmileCapturePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 2129
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mSmileCapturePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method public exitPreference()V
    .locals 0

    .prologue
    .line 1726
    invoke-direct {p0}, Lcom/android/camera/OnScreenPreference;->restorePreference()V

    .line 1727
    invoke-direct {p0}, Lcom/android/camera/OnScreenPreference;->closeDialog()V

    .line 1728
    return-void
.end method

.method public getCurrectMenuResolution()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/camera/ResolutionMenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 860
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mResolutionItems:Ljava/util/LinkedList;

    return-object v0
.end method

.method public getPreferenceScreen()Landroid/preference/PreferenceScreen;
    .locals 4

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mManager:Landroid/preference/PreferenceManager;

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/OnScreenPreference;->mScreen:Landroid/preference/PreferenceScreen;

    .line 164
    invoke-static {}, Lcom/android/camera/DisplayDevice;->captrueFullSize()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    sget-object v1, Lcom/android/camera/IntentManager$RequestName;->Contacts:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v0, v1}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    sget-object v1, Lcom/android/camera/IntentManager$RequestName;->Square:Lcom/android/camera/IntentManager$RequestName;

    invoke-virtual {v0, v1}, Lcom/android/camera/HTCCamera;->isRequestName(Lcom/android/camera/IntentManager$RequestName;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mManager:Landroid/preference/PreferenceManager;

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const/high16 v2, 0x7f05

    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mScreen:Landroid/preference/PreferenceScreen;

    invoke-static {v0, v1, v2, v3}, Lcom/htc/wrap/android/preference/HtcWrapPreferenceManager;->inflateFromResource(Landroid/preference/PreferenceManager;Landroid/content/Context;ILandroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    .line 174
    :goto_0
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mScreen:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getCamera()Landroid/hardware/Camera;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/OnScreenPreference;->initPreference(Landroid/preference/PreferenceScreen;Landroid/hardware/Camera;)V

    .line 176
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mScreen:Landroid/preference/PreferenceScreen;

    return-object v0

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v0, v1, :cond_2

    .line 169
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mManager:Landroid/preference/PreferenceManager;

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const v2, 0x7f050002

    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mScreen:Landroid/preference/PreferenceScreen;

    invoke-static {v0, v1, v2, v3}, Lcom/htc/wrap/android/preference/HtcWrapPreferenceManager;->inflateFromResource(Landroid/preference/PreferenceManager;Landroid/content/Context;ILandroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    goto :goto_0

    .line 171
    :cond_2
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mManager:Landroid/preference/PreferenceManager;

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const v2, 0x7f050001

    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mScreen:Landroid/preference/PreferenceScreen;

    invoke-static {v0, v1, v2, v3}, Lcom/htc/wrap/android/preference/HtcWrapPreferenceManager;->inflateFromResource(Landroid/preference/PreferenceManager;Landroid/content/Context;ILandroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    goto :goto_0
.end method

.method public initOnScreenPreference(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraThread;Lcom/android/camera/MenuHandler;)V
    .locals 1
    .parameter "camera"
    .parameter "thread"
    .parameter "handle"

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    .line 143
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/OnScreenPreference;->mUIHandler:Landroid/os/Handler;

    .line 144
    iput-object p2, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    .line 145
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    .line 146
    iput-object p3, p0, Lcom/android/camera/OnScreenPreference;->mMenuHandler:Lcom/android/camera/MenuHandler;

    .line 147
    const/16 v0, 0x64

    invoke-static {p1, v0}, Lcom/htc/wrap/android/preference/HtcWrapPreferenceManager;->getPreferenceManager(Landroid/app/Activity;I)Landroid/preference/PreferenceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/OnScreenPreference;->mManager:Landroid/preference/PreferenceManager;

    .line 148
    return-void
.end method

.method public onCheckBoxPreferenceUpdated(Landroid/preference/Preference;Z)V
    .locals 5
    .parameter "prefence"
    .parameter "checked"

    .prologue
    const/16 v3, 0x3c

    .line 1511
    move-object v0, p1

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 1512
    .local v0, ckPref:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v0, p2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1513
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 1514
    .local v1, key:Ljava/lang/String;
    const-string v2, "pref_camera_switch"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1515
    invoke-direct {p0}, Lcom/android/camera/OnScreenPreference;->updateSwitchCamera()V

    .line 1516
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->restartCamera()V

    .line 1606
    :cond_0
    :goto_0
    return-void

    .line 1517
    :cond_1
    const-string v2, "pref_camera_3D_status"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1518
    iput-boolean p2, p0, Lcom/android/camera/OnScreenPreference;->bIs3DCamera:Z

    .line 1519
    invoke-direct {p0, p2}, Lcom/android/camera/OnScreenPreference;->check3DCamera(Z)V

    goto :goto_0

    .line 1520
    :cond_2
    const-string v2, "pref_front_camera_mode"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1521
    invoke-direct {p0}, Lcom/android/camera/OnScreenPreference;->updateResolution()V

    goto :goto_0

    .line 1522
    :cond_3
    const-string v2, "pref_camera_image_ratio"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1523
    invoke-direct {p0}, Lcom/android/camera/OnScreenPreference;->updateImageRatio()V

    goto :goto_0

    .line 1524
    :cond_4
    const-string v2, "pref_camera_timestamp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1525
    invoke-direct {p0}, Lcom/android/camera/OnScreenPreference;->updateTimeStamp()V

    .line 1526
    invoke-direct {p0}, Lcom/android/camera/OnScreenPreference;->doSettings()V

    goto :goto_0

    .line 1527
    :cond_5
    const-string v2, "pref_camera_geo_tagging"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1528
    invoke-direct {p0}, Lcom/android/camera/OnScreenPreference;->updateGeoTagging()V

    goto :goto_0

    .line 1529
    :cond_6
    const-string v2, "pref_grid"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1531
    const-string v2, "pref_camera_auto_focus"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1532
    iput-boolean p2, p0, Lcom/android/camera/OnScreenPreference;->bAutoFocus:Z

    goto :goto_0

    .line 1534
    :cond_7
    const-string v2, "pref_camera_tap_capture"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1535
    iput-boolean p2, p0, Lcom/android/camera/OnScreenPreference;->bTapCapture:Z

    goto :goto_0

    .line 1536
    :cond_8
    const-string v2, "pref_post_processing"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1537
    iput-boolean p2, p0, Lcom/android/camera/OnScreenPreference;->bPostProcessing:Z

    .line 1538
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v2, :cond_0

    goto :goto_0

    .line 1545
    :cond_9
    const-string v2, "pref_camera_record_with_audio"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1546
    iput-boolean p2, p0, Lcom/android/camera/OnScreenPreference;->bRecordWithAudio:Z

    .line 1547
    invoke-direct {p0, p2}, Lcom/android/camera/OnScreenPreference;->checkRecordWithAudio(Z)V

    goto :goto_0

    .line 1548
    :cond_a
    const-string v2, "pref_face_detection"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1549
    iput-boolean p2, p0, Lcom/android/camera/OnScreenPreference;->bFaceDetection:Z

    .line 1550
    iget-boolean v2, p0, Lcom/android/camera/OnScreenPreference;->bFaceDetection:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_b

    .line 1551
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v2}, Lcom/android/camera/HTCCamera;->resetFocusMode()V

    .line 1553
    :cond_b
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSmileCapture()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1554
    invoke-virtual {p0}, Lcom/android/camera/OnScreenPreference;->updateSmileCapture()V

    .line 1556
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportBlinkDetect()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1557
    invoke-virtual {p0}, Lcom/android/camera/OnScreenPreference;->updateBlinkDetection()V

    goto/16 :goto_0

    .line 1560
    :cond_c
    const-string v2, "pref_play_shutter_sound"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1561
    iput-boolean p2, p0, Lcom/android/camera/OnScreenPreference;->bShutterSound:Z

    .line 1562
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v2, :cond_0

    goto/16 :goto_0

    .line 1564
    :cond_d
    const-string v2, "pref_video_stabilization"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1565
    iput-boolean p2, p0, Lcom/android/camera/OnScreenPreference;->bVideoStabilization:Z

    .line 1566
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v2, :cond_0

    goto/16 :goto_0

    .line 1571
    :cond_e
    const-string v2, "pref_camera_self_portrait"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1573
    if-eqz p2, :cond_f

    .line 1574
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v3, "pref_camera_face_number"

    const-string v4, "2faces"

    invoke-static {v2, v3, v4}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 1580
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/OnScreenPreference;->checkAutoCapture()V

    .line 1582
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v2, :cond_0

    .line 1583
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraThread;->resetZoom(Z)V

    goto/16 :goto_0

    .line 1577
    :cond_f
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    const-string v3, "pref_camera_face_number"

    const-string v4, "none"

    invoke-static {v2, v3, v4}, Lcom/android/camera/HTCCameraAdvanceSetting;->writePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_1

    .line 1587
    :cond_10
    const-string v2, "pref_smile_capture"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1588
    iput-boolean p2, p0, Lcom/android/camera/OnScreenPreference;->bSmileCapture:Z

    .line 1589
    invoke-direct {p0, p2}, Lcom/android/camera/OnScreenPreference;->checkSmileCapture(Z)V

    goto/16 :goto_0

    .line 1595
    :cond_11
    const-string v2, "pref_blink detection"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1596
    iput-boolean p2, p0, Lcom/android/camera/OnScreenPreference;->bBlinkDetection:Z

    .line 1597
    invoke-direct {p0, p2}, Lcom/android/camera/OnScreenPreference;->checkBlinkDetection(Z)V

    .line 1598
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 1599
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    invoke-static {v2, v3}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    goto/16 :goto_0

    .line 1600
    :cond_12
    const-string v2, "pref_fast_fps"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1601
    iput-boolean p2, p0, Lcom/android/camera/OnScreenPreference;->bFastFrameRecording:Z

    .line 1602
    iget-object v2, p0, Lcom/android/camera/OnScreenPreference;->mScreen:Landroid/preference/PreferenceScreen;

    invoke-direct {p0, v2, p2}, Lcom/android/camera/OnScreenPreference;->checkFastFrameRecording(Landroid/preference/PreferenceScreen;Z)V

    goto/16 :goto_0

    .line 1604
    :cond_13
    invoke-direct {p0}, Lcom/android/camera/OnScreenPreference;->doSettings()V

    goto/16 :goto_0
.end method

.method public onListPreferenceUpdated(Landroid/preference/Preference;I)V
    .locals 10
    .parameter "prefence"
    .parameter "index"

    .prologue
    const/16 v7, 0x12

    const/16 v9, 0x25

    const/4 v6, 0x1

    const/16 v8, 0x3a

    const/4 v1, 0x0

    .line 1610
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 1611
    .local v2, key:Ljava/lang/String;
    const-string v5, "pref_set_resolution"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1612
    invoke-direct {p0, p1}, Lcom/android/camera/OnScreenPreference;->selectResolution(Landroid/preference/Preference;)V

    .line 1723
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 1614
    .restart local p1
    :cond_1
    const-string v5, "pref_capture_format_video"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1615
    iget-object v5, p0, Lcom/android/camera/OnScreenPreference;->mScreen:Landroid/preference/PreferenceScreen;

    invoke-direct {p0, v5}, Lcom/android/camera/OnScreenPreference;->setupResolutionList(Landroid/preference/PreferenceScreen;)V

    .line 1616
    invoke-direct {p0}, Lcom/android/camera/OnScreenPreference;->updateResolution()V

    goto :goto_0

    .line 1617
    :cond_2
    const-string v5, "pref_set_white_balance"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1618
    check-cast p1, Landroid/preference/ListPreference;

    .end local p1
    invoke-direct {p0, p1}, Lcom/android/camera/OnScreenPreference;->selectWhiteBalance(Landroid/preference/ListPreference;)V

    goto :goto_0

    .line 1619
    .restart local p1
    :cond_3
    const-string v5, "pref_camera_self_timer"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1621
    invoke-virtual {p0}, Lcom/android/camera/OnScreenPreference;->checkAutoCapture()V

    .line 1622
    if-eqz p2, :cond_4

    .line 1623
    iget-object v5, p0, Lcom/android/camera/OnScreenPreference;->mUIHandler:Landroid/os/Handler;

    invoke-static {v5, v9}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 1624
    iget-object v5, p0, Lcom/android/camera/OnScreenPreference;->mUIHandler:Landroid/os/Handler;

    const v6, 0x7f0a0199

    const/4 v7, 0x0

    invoke-static {v5, v9, v6, v1, v7}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 1629
    :cond_4
    iget-object v5, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    if-eqz v5, :cond_5

    .line 1630
    iget-object v5, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v5}, Lcom/android/camera/HTCCamera;->setSelfTimerInterval()V

    .line 1632
    :cond_5
    invoke-static {}, Lcom/android/camera/DisplayDevice;->supportSmileCapture()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1633
    invoke-virtual {p0}, Lcom/android/camera/OnScreenPreference;->updateSmileCapture()V

    goto :goto_0

    .line 1634
    :cond_6
    const-string v5, "pref_camera_face_number"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1636
    invoke-virtual {p0}, Lcom/android/camera/OnScreenPreference;->checkAutoCapture()V

    .line 1637
    if-eqz p2, :cond_7

    .line 1638
    if-ne p2, v6, :cond_8

    const v4, 0x7f0a019a

    .line 1640
    .local v4, str:I
    :goto_1
    iget-object v5, p0, Lcom/android/camera/OnScreenPreference;->mUIHandler:Landroid/os/Handler;

    invoke-static {v5, v9}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 1641
    iget-object v5, p0, Lcom/android/camera/OnScreenPreference;->mUIHandler:Landroid/os/Handler;

    const/4 v6, 0x0

    invoke-static {v5, v9, v4, v1, v6}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 1644
    .end local v4           #str:I
    :cond_7
    iget-object v5, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    if-eqz v5, :cond_0

    .line 1645
    iget-object v5, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v5, v1}, Lcom/android/camera/CameraThread;->resetZoom(Z)V

    goto :goto_0

    .line 1638
    :cond_8
    const v4, 0x7f0a019c

    goto :goto_1

    .line 1649
    :cond_9
    const-string v5, "pref_camera_iso"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1650
    iget-object v5, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    invoke-static {v5, v7}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 1651
    iget-object v5, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    check-cast p1, Landroid/preference/ListPreference;

    .end local p1
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v7, v1, v1, v6}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1652
    .restart local p1
    :cond_a
    const-string v5, "pref_camera_review_duration"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1653
    check-cast p1, Landroid/preference/ListPreference;

    .end local p1
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/camera/OnScreenPreference;->mReviewDurationValue:Ljava/lang/String;

    .line 1654
    invoke-direct {p0}, Lcom/android/camera/OnScreenPreference;->doSettings()V

    .line 1656
    iget-object v5, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    if-eqz v5, :cond_0

    .line 1657
    iget-object v5, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    iget-object v5, v5, Lcom/android/camera/HTCCamera;->closingMenuItemClickedEvent:Lcom/android/camera/event/Event;

    sget-object v6, Lcom/android/camera/event/EventArgs;->empty:Lcom/android/camera/event/EventArgs;

    invoke-virtual {v5, p0, v6}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    goto/16 :goto_0

    .line 1658
    .restart local p1
    :cond_b
    const-string v5, "pref_camera_3D_file_format"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1660
    check-cast p1, Landroid/preference/ListPreference;

    .end local p1
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/camera/OnScreenPreference;->m3DFileFormatValue:Ljava/lang/String;

    .line 1661
    invoke-direct {p0}, Lcom/android/camera/OnScreenPreference;->doSettings()V

    goto/16 :goto_0

    .line 1662
    .restart local p1
    :cond_c
    const-string v5, "pref_camera_video_file_format"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1664
    check-cast p1, Landroid/preference/ListPreference;

    .end local p1
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/camera/OnScreenPreference;->mVideoFileFormatValue:Ljava/lang/String;

    .line 1665
    invoke-direct {p0}, Lcom/android/camera/OnScreenPreference;->doSettings()V

    goto/16 :goto_0

    .line 1668
    .restart local p1
    :cond_d
    const-string v5, "pref_camera_effect"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 1670
    iget-object v5, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v5}, Lcom/android/camera/HTCCamera;->getEffectManager()Lcom/android/camera/effect/EffectManager;

    move-result-object v0

    .line 1671
    .local v0, effectManager:Lcom/android/camera/effect/EffectManager;
    if-eqz v0, :cond_e

    .line 1672
    check-cast p1, Landroid/preference/ListPreference;

    .end local p1
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/camera/effect/EffectManager;->setCurrentEffect(Ljava/lang/String;)V

    .line 1673
    :cond_e
    if-eqz v0, :cond_f

    iget-object v5, v0, Lcom/android/camera/effect/EffectManager;->currentEffect:Lcom/android/camera/property/Property;

    invoke-virtual {v5}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/effect/EffectBase;

    invoke-virtual {v5}, Lcom/android/camera/effect/EffectBase;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v7, "none"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    move v1, v6

    .line 1674
    .local v1, enable:Z
    :cond_f
    invoke-virtual {p0, v1}, Lcom/android/camera/OnScreenPreference;->enableImageProperty(Z)Z

    .line 1675
    invoke-virtual {p0, v6}, Lcom/android/camera/OnScreenPreference;->updateFaceDetection(Z)Z

    goto/16 :goto_0

    .line 1677
    .end local v0           #effectManager:Lcom/android/camera/effect/EffectManager;
    .end local v1           #enable:Z
    .restart local p1
    :cond_10
    const-string v5, "pref_video_effect"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 1679
    iget-object v5, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v5}, Lcom/android/camera/HTCCamera;->getEffectManager()Lcom/android/camera/effect/EffectManager;

    move-result-object v0

    .line 1680
    .restart local v0       #effectManager:Lcom/android/camera/effect/EffectManager;
    if-eqz v0, :cond_11

    .line 1681
    check-cast p1, Landroid/preference/ListPreference;

    .end local p1
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/camera/effect/EffectManager;->setCurrentEffect(Ljava/lang/String;)V

    .line 1682
    :cond_11
    if-eqz v0, :cond_12

    iget-object v5, v0, Lcom/android/camera/effect/EffectManager;->currentEffect:Lcom/android/camera/property/Property;

    invoke-virtual {v5}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/effect/EffectBase;

    invoke-virtual {v5}, Lcom/android/camera/effect/EffectBase;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v7, "none"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    move v1, v6

    .line 1683
    .restart local v1       #enable:Z
    :cond_12
    invoke-virtual {p0, v1}, Lcom/android/camera/OnScreenPreference;->enableImageProperty(Z)Z

    .line 1684
    invoke-virtual {p0, v6}, Lcom/android/camera/OnScreenPreference;->updateFaceDetection(Z)Z

    goto/16 :goto_0

    .line 1689
    .end local v0           #effectManager:Lcom/android/camera/effect/EffectManager;
    .end local v1           #enable:Z
    .restart local p1
    :cond_13
    const-string v5, "pref_camera_scene"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    move-object v5, p1

    .line 1691
    check-cast v5, Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    const-string v6, "B_whiteboard"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 1693
    const-string v5, "OnScreenPreference"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Vino SET_GE_WHITEBOARD:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    check-cast p1, Landroid/preference/ListPreference;

    .end local p1
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 1694
    iget-object v5, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    const-string v6, "auto"

    invoke-static {v5, v8, v1, v1, v6}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 1695
    iget-object v5, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    const/16 v6, 0x13

    const-string v7, "none"

    invoke-static {v5, v6, v1, v1, v7}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1700
    .restart local p1
    :cond_14
    iget-object v5, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    const-string v6, "auto"

    invoke-static {v5, v8, v1, v1, v6}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 1701
    iget-object v5, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    const/16 v6, 0x13

    const-string v7, "none"

    invoke-static {v5, v6, v1, v1, v7}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 1702
    iget-object v5, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    invoke-static {v5, v8}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 1703
    iget-object v6, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    move-object v5, p1

    check-cast v5, Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v8, v1, v1, v5}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    .line 1704
    const-string v5, "OnScreenPreference"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Vino SET_SCENE_MODE:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    check-cast p1, Landroid/preference/ListPreference;

    .end local p1
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1707
    .restart local p1
    :cond_15
    const-string v5, "pref_video_scene"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 1709
    iget-object v5, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    invoke-static {v5, v8}, Lcom/android/camera/MessageHandler;->removeMessages(Landroid/os/Handler;I)V

    .line 1710
    iget-object v5, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    check-cast p1, Landroid/preference/ListPreference;

    .end local p1
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v8, v1, v1, v6}, Lcom/android/camera/MessageHandler;->sendObtainMessage(Landroid/os/Handler;IIILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1712
    .restart local p1
    :cond_16
    const-string v5, "pref_camera_storage_location"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 1715
    const-string v5, "main_memory"

    check-cast p1, Landroid/preference/ListPreference;

    .end local p1
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 1716
    invoke-static {}, Lcom/android/camera/io/StorageSlot;->getFirstInternalMemorySlot()Lcom/android/camera/io/StorageSlot;

    move-result-object v3

    .local v3, slot:Lcom/android/camera/io/StorageSlot;
    goto/16 :goto_0

    .line 1718
    .end local v3           #slot:Lcom/android/camera/io/StorageSlot;
    :cond_17
    sget-object v5, Lcom/android/camera/io/StorageSlot;->STORAGE_CARD:Lcom/android/camera/io/StorageSlot;

    goto/16 :goto_0

    .line 1722
    .restart local p1
    :cond_18
    invoke-direct {p0}, Lcom/android/camera/OnScreenPreference;->doSettings()V

    goto/16 :goto_0
.end method

.method public onPreferenceUpdated(Landroid/preference/Preference;)V
    .locals 2
    .parameter "prefence"

    .prologue
    .line 1497
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 1498
    .local v0, key:Ljava/lang/String;
    const-string v1, "pref_set_default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1499
    invoke-direct {p0}, Lcom/android/camera/OnScreenPreference;->show_reset_dialog()V

    .line 1507
    :cond_0
    :goto_0
    return-void

    .line 1500
    :cond_1
    const-string v1, "pref_auto_upload"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1502
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    if-eqz v1, :cond_0

    .line 1504
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    iget-object v1, v1, Lcom/android/camera/HTCCamera;->mAutoUploader:Lcom/android/camera/AutoUploader;

    invoke-virtual {v1}, Lcom/android/camera/AutoUploader;->ShowAutoUploadSetting()V

    goto :goto_0
.end method

.method public releaseOnScreenPreference()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 151
    iput-object v0, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    .line 152
    iput-object v0, p0, Lcom/android/camera/OnScreenPreference;->mUIHandler:Landroid/os/Handler;

    .line 153
    iput-object v0, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    .line 154
    iput-object v0, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    .line 155
    iput-object v0, p0, Lcom/android/camera/OnScreenPreference;->mManager:Landroid/preference/PreferenceManager;

    .line 156
    iput-object v0, p0, Lcom/android/camera/OnScreenPreference;->mScreen:Landroid/preference/PreferenceScreen;

    .line 157
    iput-object v0, p0, Lcom/android/camera/OnScreenPreference;->mModeHdr:Lcom/android/camera/ModeHandler;

    .line 158
    iput-object v0, p0, Lcom/android/camera/OnScreenPreference;->mResolutionItems:Ljava/util/LinkedList;

    .line 159
    invoke-direct {p0}, Lcom/android/camera/OnScreenPreference;->closeDialog()V

    .line 160
    return-void
.end method

.method public rotateDialog(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 1296
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1297
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 1298
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mDialog:Landroid/app/Dialog;

    check-cast v0, Lcom/android/camera/rotate/RotateDialog;

    invoke-virtual {v0, p1}, Lcom/android/camera/rotate/RotateDialog;->setOrientation(I)V

    .line 1299
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1301
    :cond_0
    return-void
.end method

.method public setupResolutionList()V
    .locals 1

    .prologue
    .line 866
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mScreen:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    .line 867
    iget-object v0, p0, Lcom/android/camera/OnScreenPreference;->mScreen:Landroid/preference/PreferenceScreen;

    invoke-direct {p0, v0}, Lcom/android/camera/OnScreenPreference;->setupResolutionList(Landroid/preference/PreferenceScreen;)V

    .line 868
    :cond_0
    return-void
.end method

.method public updateBlinkDetection()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2137
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    if-nez v1, :cond_1

    .line 2157
    :cond_0
    :goto_0
    return-void

    .line 2140
    :cond_1
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mBlinkDetectionPref:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    if-eqz v1, :cond_0

    .line 2143
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    iget-object v1, v1, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    if-eq v1, v2, :cond_0

    .line 2146
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mScreen:Landroid/preference/PreferenceScreen;

    const-string v2, "pref_face_detection"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 2148
    .local v0, face:Landroid/preference/CheckBoxPreference;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2149
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mBlinkDetectionPref:Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 2150
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mBlinkDetectionPref:Landroid/preference/CheckBoxPreference;

    iget-boolean v2, p0, Lcom/android/camera/OnScreenPreference;->bBlinkDetection:Z

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 2156
    :goto_1
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mCameraHandler:Landroid/os/Handler;

    const/16 v2, 0x3c

    invoke-static {v1, v2}, Lcom/android/camera/MessageHandler;->sendEmptyMessage(Landroid/os/Handler;I)V

    goto :goto_0

    .line 2153
    :cond_2
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mBlinkDetectionPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 2154
    iget-object v1, p0, Lcom/android/camera/OnScreenPreference;->mBlinkDetectionPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1
.end method

.method public updateFaceDetection(Z)Z
    .locals 7
    .parameter "force"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2031
    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-static {v3}, Lcom/android/camera/HTCCameraAdvanceSetting;->getFaceNumber(Landroid/app/Activity;)I

    move-result v3

    if-lez v3, :cond_1

    .line 2065
    :cond_0
    :goto_0
    return v4

    .line 2034
    :cond_1
    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mScreen:Landroid/preference/PreferenceScreen;

    const-string v6, "pref_camera_auto_focus"

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 2039
    .local v0, auto:Landroid/preference/CheckBoxPreference;
    invoke-static {}, Lcom/android/camera/DisplayDevice;->isDoubleShot()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    iget-object v3, v3, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v3}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/CameraType;

    invoke-virtual {v3}, Lcom/android/camera/CameraType;->isMainCamera()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2040
    :cond_2
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mFaceDetectionPref:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_0

    .line 2043
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_3

    sget-object v3, Lcom/android/camera/DisplayDevice;->CAPTURE_BUTTON:Lcom/android/camera/DisplayDevice$CaptureButton;

    sget-object v6, Lcom/android/camera/DisplayDevice$CaptureButton;->HWKey:Lcom/android/camera/DisplayDevice$CaptureButton;

    if-ne v3, v6, :cond_5

    :cond_3
    move v1, v5

    .line 2044
    .local v1, autoFocus:Z
    :goto_1
    move v2, v1

    .line 2055
    .local v2, enable:Z
    :goto_2
    if-nez p1, :cond_4

    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mFaceDetectionPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v3

    if-eq v3, v2, :cond_0

    .line 2058
    :cond_4
    if-eqz v2, :cond_8

    .line 2059
    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mFaceDetectionPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 2060
    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mFaceDetectionPref:Landroid/preference/CheckBoxPreference;

    iget-boolean v4, p0, Lcom/android/camera/OnScreenPreference;->bFaceDetection:Z

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :goto_3
    move v4, v5

    .line 2065
    goto :goto_0

    .end local v1           #autoFocus:Z
    .end local v2           #enable:Z
    :cond_5
    move v1, v4

    .line 2043
    goto :goto_1

    .line 2047
    :cond_6
    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mFaceDetectionPref:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_0

    .line 2050
    sget-object v3, Lcom/android/camera/DisplayDevice;->CAPTURE_BUTTON:Lcom/android/camera/DisplayDevice$CaptureButton;

    sget-object v6, Lcom/android/camera/DisplayDevice$CaptureButton;->HWKey:Lcom/android/camera/DisplayDevice$CaptureButton;

    if-ne v3, v6, :cond_7

    move v1, v5

    .line 2051
    .restart local v1       #autoFocus:Z
    :goto_4
    move v2, v1

    .restart local v2       #enable:Z
    goto :goto_2

    .end local v1           #autoFocus:Z
    .end local v2           #enable:Z
    :cond_7
    move v1, v4

    .line 2050
    goto :goto_4

    .line 2062
    .restart local v1       #autoFocus:Z
    .restart local v2       #enable:Z
    :cond_8
    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mFaceDetectionPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 2063
    iget-object v3, p0, Lcom/android/camera/OnScreenPreference;->mFaceDetectionPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_3
.end method

.method public updateSmileCapture()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2071
    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mCameraThread:Lcom/android/camera/CameraThread;

    if-nez v4, :cond_1

    .line 2103
    :cond_0
    :goto_0
    return-void

    .line 2074
    :cond_1
    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mSelfTimerPref:Landroid/preference/ListPreference;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mSmileCapturePref:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    if-eqz v4, :cond_0

    .line 2077
    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    iget-object v4, v4, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lcom/android/camera/CameraMode;->Video:Lcom/android/camera/CameraMode;

    if-eq v4, v5, :cond_0

    .line 2080
    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mSelfTimerPref:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 2081
    .local v3, timer:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mScreen:Landroid/preference/PreferenceScreen;

    const-string v5, "pref_face_detection"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    .line 2083
    .local v2, face:Landroid/preference/CheckBoxPreference;
    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mHTCCamera:Lcom/android/camera/HTCCamera;

    invoke-virtual {v4}, Lcom/android/camera/HTCCamera;->getEffectManager()Lcom/android/camera/effect/EffectManager;

    move-result-object v1

    .line 2084
    .local v1, effectManager:Lcom/android/camera/effect/EffectManager;
    const/4 v0, 0x0

    .line 2085
    .local v0, currentSceneEffect:Lcom/android/camera/effect/EffectBase;
    if-eqz v1, :cond_2

    .line 2086
    iget-object v4, v1, Lcom/android/camera/effect/EffectManager;->currentScene:Lcom/android/camera/property/Property;

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #currentSceneEffect:Lcom/android/camera/effect/EffectBase;
    check-cast v0, Lcom/android/camera/effect/EffectBase;

    .line 2088
    .restart local v0       #currentSceneEffect:Lcom/android/camera/effect/EffectBase;
    :cond_2
    if-eqz v3, :cond_3

    const-string v4, "none"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_4

    instance-of v4, v0, Lcom/android/camera/effect/AutoScene;

    if-eqz v4, :cond_4

    .line 2094
    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mSmileCapturePref:Landroid/preference/CheckBoxPreference;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 2095
    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mSmileCapturePref:Landroid/preference/CheckBoxPreference;

    iget-boolean v5, p0, Lcom/android/camera/OnScreenPreference;->bSmileCapture:Z

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 2098
    :cond_4
    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mSmileCapturePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 2099
    iget-object v4, p0, Lcom/android/camera/OnScreenPreference;->mSmileCapturePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method
