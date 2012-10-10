.class public Lcom/htc/view/VolumePanel;
.super Landroid/os/Handler;
.source "VolumePanel.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/view/VolumePanel$SoundPoolHelp;,
        Lcom/htc/view/VolumePanel$SoundID;,
        Lcom/htc/view/VolumePanel$StreamControl;,
        Lcom/htc/view/VolumePanel$StreamResources;
    }
.end annotation


# static fields
.field private static final BEEP_DURATION:I = 0x96

#the value of this static final field might be set in the static constructor
.field private static final Debug_volporting:Z = false

.field private static final FREE_DELAY:I = 0x927c0

#the value of this static final field might be set in the static constructor
.field private static final ICS_LAYOUT_COLOR_BG_DEBUG:Z = false

#the value of this static final field might be set in the static constructor
.field private static final ICS_LAYOUT_COLOR_DEBUG:Z = false

.field private static LOGD:Z = false

.field private static final MAX_VOLUME:I = 0x64

.field private static final MSG_FREE_RESOURCES:I = 0x1

.field private static final MSG_MUSIC_MUTE_OFF:I = 0xa

.field private static final MSG_MUSIC_MUTE_ON:I = 0x9

.field private static final MSG_PLAY_SOUND:I = 0x2

.field private static final MSG_PLAY_SOUND_RETRY:I = 0x7

.field private static final MSG_RINGER_MODE_CHANGED:I = 0x6

.field private static final MSG_STOP_SOUNDS:I = 0x3

.field private static final MSG_TIMEOUT:I = 0x5

.field private static final MSG_UPDATE_ROTAETE:I = 0x8

.field private static final MSG_VIBRATE:I = 0x4

.field private static final MSG_VOLUME_CHANGED:I = 0x0

.field private static final MUSIC_MUTE_ACTION:Ljava/lang/String; = "com.htc.view.music_mute"

.field private static final MUSIC_MUTE_EXTRA_NEW_STATE:Ljava/lang/String; = "new_state"

.field public static final PLAY_SOUND_DELAY:I = 0x0

.field public static final PLAY_SOUND_DELAY_4_SAME_VOLUME:I = 0x96

.field private static SCREEN_MODE_ILANDSCAPE:I = 0x0

.field private static SCREEN_MODE_IPORTRAIT:I = 0x0

.field private static SCREEN_MODE_LANDSCAPE:I = 0x0

.field private static SCREEN_MODE_PORTRAIT:I = 0x0

.field private static final STREAMS:[Lcom/htc/view/VolumePanel$StreamResources; = null

.field private static final STREAM_DUMMY:I = -0x2

.field private static final TAG:Ljava/lang/String; = "VolumePanel"

.field private static final TIMEOUT_DELAY:I = 0xbb8

.field public static final VIBRATE_DELAY:I = 0x12c

.field private static final VIBRATE_DURATION:I = 0x12c

.field private static last_stream_index:I

.field private static last_stream_type:I

.field private static final mNewStyle:Z


# instance fields
.field final RINGER_MODE_OUTDOOR:I

.field private isRotate:Z

.field private mActiveStreamType:I

.field private mAudioManager:Landroid/media/AudioManager;

.field protected mAudioService:Landroid/media/AudioService;

.field protected mContext:Landroid/content/Context;

.field private final mDialog:Landroid/app/Dialog;

.field private final mDivider:Landroid/view/View;

.field mIconWidth:I

.field mLastFlags:I

.field private final mMoreButton:Landroid/view/View;

.field private mNewSkinPackage:Ljava/lang/String;

.field private final mPanel:Landroid/view/ViewGroup;

.field private mRes:Landroid/content/res/Resources;

.field private final mRetryDelay:I

.field private final mRetryDuratinons:I

.field private mRetryTimes:I

.field private mRingIsSilent:Z

.field mRotateRelativeLayout:Landroid/widget/RotateRelativeLayout;

.field private mScreenWidth:I

.field private mShowCombinedVolumes:Z

.field private mSkinRes:Landroid/content/res/Resources;

.field private final mSliderGroup:Landroid/view/ViewGroup;

.field private mSoundPools:[Lcom/htc/view/VolumePanel$SoundPoolHelp;

.field private mStreamControls:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/htc/view/VolumePanel$StreamControl;",
            ">;"
        }
    .end annotation
.end field

.field private mToneGenerators:[Landroid/media/ToneGenerator;

.field private mVibrator:Landroid/os/Vibrator;

.field private final mView:Landroid/view/View;

.field private mVoiceCapable:Z

.field m_HtcDimension_m1:I

.field m_HtcDimension_m2:I

.field m_HtcDimension_m3:I

.field m_HtcDimension_m4:I

.field private needRotate:Z

.field private panel_orientation:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 96
    sput-boolean v2, Lcom/htc/view/VolumePanel;->LOGD:Z

    .line 141
    sget-object v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const v3, 0x407f5c29

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/htc/view/VolumePanel;->mNewStyle:Z

    .line 335
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/htc/view/VolumePanel$StreamResources;

    sget-object v3, Lcom/htc/view/VolumePanel$StreamResources;->BluetoothSCOStream:Lcom/htc/view/VolumePanel$StreamResources;

    aput-object v3, v0, v2

    sget-object v3, Lcom/htc/view/VolumePanel$StreamResources;->RingerStream:Lcom/htc/view/VolumePanel$StreamResources;

    aput-object v3, v0, v1

    sget-object v3, Lcom/htc/view/VolumePanel$StreamResources;->VoiceStream:Lcom/htc/view/VolumePanel$StreamResources;

    aput-object v3, v0, v6

    sget-object v3, Lcom/htc/view/VolumePanel$StreamResources;->MediaStream:Lcom/htc/view/VolumePanel$StreamResources;

    aput-object v3, v0, v7

    const/4 v3, 0x4

    sget-object v4, Lcom/htc/view/VolumePanel$StreamResources;->NotificationStream:Lcom/htc/view/VolumePanel$StreamResources;

    aput-object v4, v0, v3

    const/4 v3, 0x5

    sget-object v4, Lcom/htc/view/VolumePanel$StreamResources;->AlarmStream:Lcom/htc/view/VolumePanel$StreamResources;

    aput-object v4, v0, v3

    const/4 v3, 0x6

    sget-object v4, Lcom/htc/view/VolumePanel$StreamResources;->SystemStream:Lcom/htc/view/VolumePanel$StreamResources;

    aput-object v4, v0, v3

    const/4 v3, 0x7

    sget-object v4, Lcom/htc/view/VolumePanel$StreamResources;->DtmfStream:Lcom/htc/view/VolumePanel$StreamResources;

    aput-object v4, v0, v3

    const/16 v3, 0x8

    sget-object v4, Lcom/htc/view/VolumePanel$StreamResources;->DummyStream:Lcom/htc/view/VolumePanel$StreamResources;

    aput-object v4, v0, v3

    sput-object v0, Lcom/htc/view/VolumePanel;->STREAMS:[Lcom/htc/view/VolumePanel$StreamResources;

    .line 364
    sput v2, Lcom/htc/view/VolumePanel;->SCREEN_MODE_PORTRAIT:I

    .line 365
    sput v1, Lcom/htc/view/VolumePanel;->SCREEN_MODE_LANDSCAPE:I

    .line 366
    sput v6, Lcom/htc/view/VolumePanel;->SCREEN_MODE_IPORTRAIT:I

    .line 367
    sput v7, Lcom/htc/view/VolumePanel;->SCREEN_MODE_ILANDSCAPE:I

    .line 505
    const-string v0, "volPorting"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/htc/view/VolumePanel;->Debug_volporting:Z

    .line 506
    const-string v0, "volLayoutD"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/htc/view/VolumePanel;->ICS_LAYOUT_COLOR_DEBUG:Z

    .line 507
    const-string v0, "volLayoutBGD"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/htc/view/VolumePanel;->ICS_LAYOUT_COLOR_BG_DEBUG:Z

    .line 1188
    sput v5, Lcom/htc/view/VolumePanel;->last_stream_type:I

    .line 1189
    sput v5, Lcom/htc/view/VolumePanel;->last_stream_index:I

    return-void

    :cond_0
    move v0, v2

    .line 141
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/media/AudioService;)V
    .locals 15
    .parameter "context"
    .parameter "volumeService"

    .prologue
    .line 561
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 158
    const/4 v10, -0x1

    iput v10, p0, Lcom/htc/view/VolumePanel;->mActiveStreamType:I

    .line 162
    const/4 v10, 0x3

    iput v10, p0, Lcom/htc/view/VolumePanel;->RINGER_MODE_OUTDOOR:I

    .line 368
    sget v10, Lcom/htc/view/VolumePanel;->SCREEN_MODE_PORTRAIT:I

    iput v10, p0, Lcom/htc/view/VolumePanel;->panel_orientation:I

    .line 369
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/htc/view/VolumePanel;->isRotate:Z

    .line 370
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/htc/view/VolumePanel;->needRotate:Z

    .line 376
    const/16 v10, 0x32

    iput v10, p0, Lcom/htc/view/VolumePanel;->mRetryDelay:I

    .line 377
    const/16 v10, 0x3e8

    iput v10, p0, Lcom/htc/view/VolumePanel;->mRetryDuratinons:I

    .line 378
    const/4 v10, 0x0

    iput v10, p0, Lcom/htc/view/VolumePanel;->mRetryTimes:I

    .line 379
    const/4 v10, 0x0

    iput v10, p0, Lcom/htc/view/VolumePanel;->mScreenWidth:I

    .line 502
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/htc/view/VolumePanel;->mRes:Landroid/content/res/Resources;

    .line 503
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/htc/view/VolumePanel;->mSkinRes:Landroid/content/res/Resources;

    .line 504
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/htc/view/VolumePanel;->mNewSkinPackage:Ljava/lang/String;

    .line 556
    const/4 v10, 0x0

    iput v10, p0, Lcom/htc/view/VolumePanel;->mIconWidth:I

    .line 557
    const/4 v10, 0x0

    iput v10, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m1:I

    .line 558
    const/4 v10, 0x0

    iput v10, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m2:I

    .line 559
    const/4 v10, 0x0

    iput v10, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m3:I

    .line 560
    const/4 v10, 0x0

    iput v10, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m4:I

    .line 1159
    const/4 v10, -0x1

    iput v10, p0, Lcom/htc/view/VolumePanel;->mLastFlags:I

    .line 562
    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    .line 563
    const-string v10, "audio"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/media/AudioManager;

    iput-object v10, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    .line 564
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/htc/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    .line 566
    iget-object v10, p0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x1110023

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    iput-boolean v10, p0, Lcom/htc/view/VolumePanel;->mVoiceCapable:Z

    .line 569
    const-string v10, "layout_inflater"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 572
    .local v3, inflater:Landroid/view/LayoutInflater;
    sget-boolean v10, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v10, :cond_0

    .line 574
    const-string v10, "VolumePanel"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "VolumePanel initial in HTC sense = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    :cond_0
    const v10, 0x10900cb

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/view/VolumePanel;->mView:Landroid/view/View;

    .line 578
    .local v7, view:Landroid/view/View;
    iget-object v10, p0, Lcom/htc/view/VolumePanel;->mView:Landroid/view/View;

    new-instance v11, Lcom/htc/view/VolumePanel$1;

    invoke-direct {v11, p0}, Lcom/htc/view/VolumePanel$1;-><init>(Lcom/htc/view/VolumePanel;)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 584
    iget-object v10, p0, Lcom/htc/view/VolumePanel;->mView:Landroid/view/View;

    const v11, 0x1020018

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RotateRelativeLayout;

    iput-object v10, p0, Lcom/htc/view/VolumePanel;->mRotateRelativeLayout:Landroid/widget/RotateRelativeLayout;

    .line 585
    iget-object v10, p0, Lcom/htc/view/VolumePanel;->mView:Landroid/view/View;

    const v11, 0x102032e

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    iput-object v10, p0, Lcom/htc/view/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    .line 587
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 588
    .local v1, dm:Landroid/util/DisplayMetrics;
    iget-object v10, p0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    const-string v11, "window"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager;

    .line 589
    .local v9, wm:Landroid/view/WindowManager;
    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 590
    const-string v10, "VolumePanel"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "dm.widthPixels: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " dm.heightPixels "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    iget-object v10, p0, Lcom/htc/view/VolumePanel;->mView:Landroid/view/View;

    const v11, 0x102032f

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    iput-object v10, p0, Lcom/htc/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    .line 595
    iget-object v10, p0, Lcom/htc/view/VolumePanel;->mView:Landroid/view/View;

    const v11, 0x1020331

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, p0, Lcom/htc/view/VolumePanel;->mMoreButton:Landroid/view/View;

    .line 596
    iget-object v10, p0, Lcom/htc/view/VolumePanel;->mView:Landroid/view/View;

    const v11, 0x1020330

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, p0, Lcom/htc/view/VolumePanel;->mDivider:Landroid/view/View;

    .line 598
    sget-boolean v10, Lcom/htc/view/VolumePanel;->mNewStyle:Z

    if-eqz v10, :cond_1

    .line 599
    invoke-direct {p0, v1}, Lcom/htc/view/VolumePanel;->initSense40Panelayout(Landroid/util/DisplayMetrics;)Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 623
    :goto_0
    new-instance v10, Lcom/htc/view/VolumePanel$2;

    const v11, 0x10302fa

    move-object/from16 v0, p1

    invoke-direct {v10, p0, v0, v11}, Lcom/htc/view/VolumePanel$2;-><init>(Lcom/htc/view/VolumePanel;Landroid/content/Context;I)V

    iput-object v10, p0, Lcom/htc/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    .line 632
    iget-object v10, p0, Lcom/htc/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    const-string v11, "Volume control"

    invoke-virtual {v10, v11}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 633
    iget-object v10, p0, Lcom/htc/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    iget-object v11, p0, Lcom/htc/view/VolumePanel;->mView:Landroid/view/View;

    invoke-virtual {v10, v11}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 634
    iget-object v10, p0, Lcom/htc/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    new-instance v11, Lcom/htc/view/VolumePanel$3;

    invoke-direct {v11, p0}, Lcom/htc/view/VolumePanel$3;-><init>(Lcom/htc/view/VolumePanel;)V

    invoke-virtual {v10, v11}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 641
    iget-object v10, p0, Lcom/htc/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v10}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    .line 642
    .local v8, window:Landroid/view/Window;
    sget-boolean v10, Lcom/htc/view/VolumePanel;->mNewStyle:Z

    if-nez v10, :cond_3

    .line 643
    const/16 v10, 0x30

    invoke-virtual {v8, v10}, Landroid/view/Window;->setGravity(I)V

    .line 646
    :goto_1
    invoke-virtual {v8}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 647
    .local v4, lp:Landroid/view/WindowManager$LayoutParams;
    const/4 v10, 0x0

    iput-object v10, v4, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 650
    sget-boolean v10, Lcom/htc/view/VolumePanel;->mNewStyle:Z

    if-nez v10, :cond_4

    .line 651
    iget-object v10, p0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x1050044

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v10

    iput v10, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 653
    const/4 v10, -0x2

    iput v10, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 657
    :goto_2
    const/16 v10, 0x7e4

    iput v10, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 659
    const/4 v10, -0x2

    iput v10, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 660
    iget v10, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v10, v10, -0x5

    iput v10, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 661
    iget v10, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v10, v10, -0x3

    iput v10, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 662
    invoke-virtual {v8, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 663
    const v10, 0x40028

    invoke-virtual {v8, v10}, Landroid/view/Window;->addFlags(I)V

    .line 666
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v10

    new-array v10, v10, [Landroid/media/ToneGenerator;

    iput-object v10, p0, Lcom/htc/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    .line 667
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v10

    new-array v10, v10, [Lcom/htc/view/VolumePanel$SoundPoolHelp;

    iput-object v10, p0, Lcom/htc/view/VolumePanel;->mSoundPools:[Lcom/htc/view/VolumePanel$SoundPoolHelp;

    .line 668
    new-instance v10, Landroid/os/Vibrator;

    invoke-direct {v10}, Landroid/os/Vibrator;-><init>()V

    iput-object v10, p0, Lcom/htc/view/VolumePanel;->mVibrator:Landroid/os/Vibrator;

    .line 670
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x1110023

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    iput-boolean v10, p0, Lcom/htc/view/VolumePanel;->mVoiceCapable:Z

    .line 671
    iget-boolean v10, p0, Lcom/htc/view/VolumePanel;->mVoiceCapable:Z

    if-nez v10, :cond_5

    const/4 v10, 0x1

    :goto_3
    iput-boolean v10, p0, Lcom/htc/view/VolumePanel;->mShowCombinedVolumes:Z

    .line 673
    iget-boolean v10, p0, Lcom/htc/view/VolumePanel;->mShowCombinedVolumes:Z

    if-nez v10, :cond_6

    .line 674
    iget-object v10, p0, Lcom/htc/view/VolumePanel;->mMoreButton:Landroid/view/View;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 675
    iget-object v10, p0, Lcom/htc/view/VolumePanel;->mDivider:Landroid/view/View;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 679
    :goto_4
    invoke-direct {p0}, Lcom/htc/view/VolumePanel;->listenToRingerMode()V

    .line 680
    invoke-virtual {p0}, Lcom/htc/view/VolumePanel;->resetPenelRotation()V

    .line 681
    invoke-direct {p0}, Lcom/htc/view/VolumePanel;->listenToMusicMuteRequest()V

    .line 682
    return-void

    .line 602
    .end local v4           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v8           #window:Landroid/view/Window;
    :cond_1
    iget v10, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v11, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v10, v11, :cond_2

    iget v5, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 605
    .local v5, panelWidth:I
    :goto_5
    iget-object v10, p0, Lcom/htc/view/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 606
    .local v6, param:Landroid/view/ViewGroup$LayoutParams;
    iput v5, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 607
    iget-object v10, p0, Lcom/htc/view/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    invoke-virtual {v10, v6}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 608
    iget-object v10, p0, Lcom/htc/view/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    iget-object v11, p0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const-string v12, "popup_full_dark"

    const-string v13, "drawable"

    const-string v14, "com.htc"

    invoke-virtual {v11, v12, v13, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 610
    :try_start_0
    iget-object v10, p0, Lcom/htc/view/VolumePanel;->mDivider:Landroid/view/View;

    check-cast v10, Landroid/widget/ImageView;

    iget-object v11, p0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const-string v12, "common_divider"

    const-string v13, "drawable"

    const-string v14, "com.htc"

    invoke-virtual {v11, v12, v13, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 611
    :catch_0
    move-exception v2

    .line 612
    .local v2, ex:Landroid/content/res/Resources$NotFoundException;
    const-string v10, "VolumePanel"

    const-string v11, "common_divider not found"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 602
    .end local v2           #ex:Landroid/content/res/Resources$NotFoundException;
    .end local v5           #panelWidth:I
    .end local v6           #param:Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    iget v5, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_5

    .line 645
    .restart local v8       #window:Landroid/view/Window;
    :cond_3
    const/16 v10, 0x11

    invoke-virtual {v8, v10}, Landroid/view/Window;->setGravity(I)V

    goto/16 :goto_1

    .line 655
    .restart local v4       #lp:Landroid/view/WindowManager$LayoutParams;
    :cond_4
    iget v10, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v10, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    goto/16 :goto_2

    .line 671
    :cond_5
    const/4 v10, 0x0

    goto :goto_3

    .line 677
    :cond_6
    iget-object v10, p0, Lcom/htc/view/VolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v10, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 91
    sget-boolean v0, Lcom/htc/view/VolumePanel;->mNewStyle:Z

    return v0
.end method

.method static synthetic access$100(Lcom/htc/view/VolumePanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/htc/view/VolumePanel;->resetTimeout()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/view/VolumePanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/htc/view/VolumePanel;->forceTimeout()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/view/VolumePanel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget v0, p0, Lcom/htc/view/VolumePanel;->mActiveStreamType:I

    return v0
.end method

.method static synthetic access$302(Lcom/htc/view/VolumePanel;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput p1, p0, Lcom/htc/view/VolumePanel;->mActiveStreamType:I

    return p1
.end method

.method static synthetic access$400(Lcom/htc/view/VolumePanel;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 91
    sget-boolean v0, Lcom/htc/view/VolumePanel;->LOGD:Z

    return v0
.end method

.method private addOtherVolumes()V
    .locals 5

    .prologue
    .line 1057
    iget-boolean v3, p0, Lcom/htc/view/VolumePanel;->mShowCombinedVolumes:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    if-nez v3, :cond_1

    .line 1070
    :cond_0
    return-void

    .line 1059
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v3, Lcom/htc/view/VolumePanel;->STREAMS:[Lcom/htc/view/VolumePanel$StreamResources;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 1061
    sget-object v3, Lcom/htc/view/VolumePanel;->STREAMS:[Lcom/htc/view/VolumePanel$StreamResources;

    aget-object v3, v3, v0

    iget v2, v3, Lcom/htc/view/VolumePanel$StreamResources;->streamType:I

    .line 1062
    .local v2, streamType:I
    sget-object v3, Lcom/htc/view/VolumePanel;->STREAMS:[Lcom/htc/view/VolumePanel$StreamResources;

    aget-object v3, v3, v0

    iget-boolean v3, v3, Lcom/htc/view/VolumePanel$StreamResources;->show:Z

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/htc/view/VolumePanel;->mActiveStreamType:I

    if-ne v2, v3, :cond_3

    .line 1059
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1065
    :cond_3
    iget-object v3, p0, Lcom/htc/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/view/VolumePanel$StreamControl;

    .line 1066
    .local v1, sc:Lcom/htc/view/VolumePanel$StreamControl;
    iget-object v3, v1, Lcom/htc/view/VolumePanel$StreamControl;->line_divider:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1067
    iget-object v3, p0, Lcom/htc/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    iget-object v4, v1, Lcom/htc/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1068
    invoke-direct {p0, v1}, Lcom/htc/view/VolumePanel;->updateSlider(Lcom/htc/view/VolumePanel$StreamControl;)V

    goto :goto_1
.end method

.method private ceateToneGenerator(I)Lcom/htc/view/VolumePanel$SoundPoolHelp;
    .locals 13
    .parameter "streamType"

    .prologue
    const/4 v1, 0x5

    const/4 v0, 0x2

    .line 1494
    monitor-enter p0

    .line 1495
    if-eq p1, v0, :cond_0

    if-ne p1, v1, :cond_3

    :try_start_0
    iget-boolean v0, p0, Lcom/htc/view/VolumePanel;->mVoiceCapable:Z

    if-nez v0, :cond_3

    .line 1496
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1497
    .local v2, listSrcFile:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x7

    new-array v9, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "/system/media/audio/ui/Volume-1.mp3"

    aput-object v1, v9, v0

    const/4 v0, 0x1

    const-string v1, "/system/media/audio/ui/Volume-2.mp3"

    aput-object v1, v9, v0

    const/4 v0, 0x2

    const-string v1, "/system/media/audio/ui/Volume-3.mp3"

    aput-object v1, v9, v0

    const/4 v0, 0x3

    const-string v1, "/system/media/audio/ui/Volume-4.mp3"

    aput-object v1, v9, v0

    const/4 v0, 0x4

    const-string v1, "/system/media/audio/ui/Volume-5.mp3"

    aput-object v1, v9, v0

    const/4 v0, 0x5

    const-string v1, "/system/media/audio/ui/Volume-6.mp3"

    aput-object v1, v9, v0

    const/4 v0, 0x6

    const-string v1, "/system/media/audio/ui/Volume-7.mp3"

    aput-object v1, v9, v0

    .line 1506
    .local v9, effectSound:[Ljava/lang/String;
    const/4 v0, 0x7

    new-array v10, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "/system/media/audio/ui/Volume-1.aac"

    aput-object v1, v10, v0

    const/4 v0, 0x1

    const-string v1, "/system/media/audio/ui/Volume-2.aac"

    aput-object v1, v10, v0

    const/4 v0, 0x2

    const-string v1, "/system/media/audio/ui/Volume-3.aac"

    aput-object v1, v10, v0

    const/4 v0, 0x3

    const-string v1, "/system/media/audio/ui/Volume-4.aac"

    aput-object v1, v10, v0

    const/4 v0, 0x4

    const-string v1, "/system/media/audio/ui/Volume-5.aac"

    aput-object v1, v10, v0

    const/4 v0, 0x5

    const-string v1, "/system/media/audio/ui/Volume-6.aac"

    aput-object v1, v10, v0

    const/4 v0, 0x6

    const-string v1, "/system/media/audio/ui/Volume-7.aac"

    aput-object v1, v10, v0

    .line 1515
    .local v10, effectSound1:[Ljava/lang/String;
    const-string v0, "VolumePanel"

    const-string v1, "prepare sound"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1516
    new-instance v11, Ljava/io/File;

    const/4 v0, 0x0

    aget-object v0, v10, v0

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1517
    .local v11, fileChk:Ljava/io/File;
    sget-boolean v0, Lcom/htc/view/VolumePanel;->mNewStyle:Z

    if-eqz v0, :cond_1

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1518
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    array-length v0, v9

    if-ge v12, v0, :cond_2

    .line 1519
    const-string v0, "VolumePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepare sound"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v3, v10, v12

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1520
    aget-object v0, v10, v12

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1518
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 1523
    .end local v12           #i:I
    :cond_1
    const/4 v12, 0x0

    .restart local v12       #i:I
    :goto_1
    array-length v0, v9

    if-ge v12, v0, :cond_2

    .line 1524
    const-string v0, "VolumePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepare sound"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v3, v9, v12

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    aget-object v0, v9, v12

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1523
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 1529
    :cond_2
    iget-object v6, p0, Lcom/htc/view/VolumePanel;->mSoundPools:[Lcom/htc/view/VolumePanel$SoundPoolHelp;

    new-instance v0, Lcom/htc/view/VolumePanel$SoundPoolHelp;

    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v1, p0

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/htc/view/VolumePanel$SoundPoolHelp;-><init>(Lcom/htc/view/VolumePanel;Ljava/util/List;III)V

    aput-object v0, v6, p1

    monitor-exit p0

    move-object v3, v0

    .line 1532
    .end local v2           #listSrcFile:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v9           #effectSound:[Ljava/lang/String;
    .end local v10           #effectSound1:[Ljava/lang/String;
    .end local v11           #fileChk:Ljava/io/File;
    .end local v12           #i:I
    :goto_2
    return-object v3

    :cond_3
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mSoundPools:[Lcom/htc/view/VolumePanel$SoundPoolHelp;

    new-instance v3, Lcom/htc/view/VolumePanel$SoundPoolHelp;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v8, 0x0

    move-object v4, p0

    move v7, p1

    invoke-direct/range {v3 .. v8}, Lcom/htc/view/VolumePanel$SoundPoolHelp;-><init>(Lcom/htc/view/VolumePanel;Ljava/util/List;III)V

    aput-object v3, v0, p1

    monitor-exit p0

    goto :goto_2

    .line 1536
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private collapse()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1143
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1144
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mDivider:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1145
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1146
    .local v0, count:I
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1147
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1146
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1149
    :cond_0
    return-void
.end method

.method private createSliders()V
    .locals 23

    .prologue
    .line 854
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "mode_ringer_streams_affected"

    const/16 v20, 0x24

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    .line 859
    .local v15, silentableStreams:I
    or-int/lit8 v15, v15, 0x8

    .line 862
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/view/VolumePanel;->mRes:Landroid/content/res/Resources;

    .line 863
    invoke-direct/range {p0 .. p0}, Lcom/htc/view/VolumePanel;->getSkinPackageName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/view/VolumePanel;->mNewSkinPackage:Ljava/lang/String;

    .line 864
    invoke-direct/range {p0 .. p0}, Lcom/htc/view/VolumePanel;->setSkinRes()V

    .line 866
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "layout_inflater"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    .line 868
    .local v7, inflater:Landroid/view/LayoutInflater;
    new-instance v18, Ljava/util/HashMap;

    sget-object v19, Lcom/htc/view/VolumePanel;->STREAMS:[Lcom/htc/view/VolumePanel$StreamResources;

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    invoke-direct/range {v18 .. v19}, Ljava/util/HashMap;-><init>(I)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    .line 869
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 870
    .local v13, res:Landroid/content/res/Resources;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    sget-object v18, Lcom/htc/view/VolumePanel;->STREAMS:[Lcom/htc/view/VolumePanel$StreamResources;

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v6, v0, :cond_e

    .line 871
    sget-object v18, Lcom/htc/view/VolumePanel;->STREAMS:[Lcom/htc/view/VolumePanel$StreamResources;

    aget-object v16, v18, v6

    .line 872
    .local v16, streamRes:Lcom/htc/view/VolumePanel$StreamResources;
    move-object/from16 v0, v16

    iget v0, v0, Lcom/htc/view/VolumePanel$StreamResources;->streamType:I

    move/from16 v17, v0

    .line 873
    .local v17, streamType:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/view/VolumePanel;->mVoiceCapable:Z

    move/from16 v18, v0

    if-eqz v18, :cond_0

    sget-object v18, Lcom/htc/view/VolumePanel$StreamResources;->NotificationStream:Lcom/htc/view/VolumePanel$StreamResources;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 874
    sget-object v16, Lcom/htc/view/VolumePanel$StreamResources;->RingerStream:Lcom/htc/view/VolumePanel$StreamResources;

    .line 876
    :cond_0
    new-instance v14, Lcom/htc/view/VolumePanel$StreamControl;

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v14, v0, v1}, Lcom/htc/view/VolumePanel$StreamControl;-><init>(Lcom/htc/view/VolumePanel;Lcom/htc/view/VolumePanel$1;)V

    .line 877
    .local v14, sc:Lcom/htc/view/VolumePanel$StreamControl;
    move/from16 v0, v17

    iput v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    .line 878
    const v18, 0x10900cc

    const/16 v19, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/view/ViewGroup;

    move-object/from16 v0, v18

    iput-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    .line 879
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 881
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    const v19, 0x1020330

    invoke-virtual/range {v18 .. v19}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    move-object/from16 v0, v18

    iput-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->divider:Landroid/widget/ImageView;

    .line 882
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->divider:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 884
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    const v19, 0x102031f

    invoke-virtual/range {v18 .. v19}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    move-object/from16 v0, v18

    iput-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->line_divider:Landroid/widget/ImageView;

    .line 885
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->line_divider:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 886
    sget-boolean v18, Lcom/htc/view/VolumePanel;->ICS_LAYOUT_COLOR_DEBUG:Z

    if-eqz v18, :cond_1

    .line 887
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->line_divider:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, -0x100

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 889
    :cond_1
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    const v19, 0x1020332

    invoke-virtual/range {v18 .. v19}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    move-object/from16 v0, v18

    iput-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    .line 890
    const/16 v18, 0x1

    iget v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    move/from16 v19, v0

    shl-int v18, v18, v19

    and-int v18, v18, v15

    if-eqz v18, :cond_2

    .line 891
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 893
    :cond_2
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 894
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const v19, 0x106000d

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 895
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/htc/view/VolumePanel$StreamResources;->descRes:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 896
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/htc/view/VolumePanel$StreamResources;->iconHtcResName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/htc/view/VolumePanel$StreamResources;->iconRes:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/htc/view/VolumePanel;->getHtcSenseRes(Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v18

    iput v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->iconRes:I

    .line 897
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/htc/view/VolumePanel$StreamResources;->iconHtcMuteResName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/htc/view/VolumePanel$StreamResources;->iconMuteRes:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/htc/view/VolumePanel;->getHtcSenseRes(Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v18

    iput v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->iconMuteRes:I

    .line 898
    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->iconVibrateRes:I

    .line 899
    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->iconOutDoorRes:I

    .line 900
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    iget v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->iconRes:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 902
    sget-boolean v18, Lcom/htc/view/VolumePanel;->ICS_LAYOUT_COLOR_DEBUG:Z

    if-eqz v18, :cond_3

    .line 903
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const v19, -0xff0001

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 907
    :cond_3
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    const v19, 0x102000b

    invoke-virtual/range {v18 .. v19}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    move-object/from16 v0, v18

    iput-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->message:Landroid/widget/TextView;

    .line 908
    move-object/from16 v0, v16

    iget v0, v0, Lcom/htc/view/VolumePanel$StreamResources;->descRes:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->desTextRes:I

    .line 909
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->message:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/htc/view/VolumePanel$StreamResources;->descRes:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(I)V

    .line 910
    sget-boolean v18, Lcom/htc/view/VolumePanel;->ICS_LAYOUT_COLOR_DEBUG:Z

    if-eqz v18, :cond_4

    .line 911
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->message:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/high16 v19, -0x1

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 913
    :cond_4
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    const v19, 0x10202d9

    invoke-virtual/range {v18 .. v19}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/SeekBar;

    move-object/from16 v0, v18

    iput-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    .line 914
    sget-boolean v18, Lcom/htc/view/VolumePanel;->ICS_LAYOUT_COLOR_DEBUG:Z

    if-eqz v18, :cond_5

    .line 915
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    move-object/from16 v18, v0

    const/16 v19, -0x100

    invoke-virtual/range {v18 .. v19}, Landroid/widget/SeekBar;->setBackgroundColor(I)V

    .line 916
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/htc/view/VolumePanel;->getVolumeThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 917
    .local v4, dwThum:Landroid/graphics/drawable/Drawable;
    sget-boolean v18, Lcom/htc/view/VolumePanel;->mNewStyle:Z

    if-eqz v18, :cond_b

    .line 921
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    .line 922
    .local v11, param:Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/view/VolumePanel;->mIconWidth:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 923
    const/16 v18, -0x2

    move/from16 v0, v18

    iput v0, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 924
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 925
    const-string v18, "VolumePanel"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "set icon width="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual/range {v18 .. v22}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 931
    if-eqz v13, :cond_7

    .line 933
    const/4 v9, 0x0

    .line 934
    .local v9, list_primary_m:F
    const/4 v8, 0x0

    .line 936
    .local v8, list_item_primary_text:I
    :try_start_0
    const-string v18, "list_primary_m"

    const-string v19, "dimen"

    const-string v20, "com.htc"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v13, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    .line 937
    const-string v18, "list_primary"

    const-string v19, "color"

    const-string v20, "com.htc"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v13, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    .line 938
    sget-boolean v18, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v18, :cond_6

    .line 939
    const-string v18, "VolumePanel"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "font size (list_primary_m): "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 946
    :cond_6
    :goto_1
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->message:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v1, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 947
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->message:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 949
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->message:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const v19, 0x3dcccccd

    const/high16 v20, 0x3f80

    const/high16 v21, 0x3f80

    const/16 v22, -0x1

    invoke-virtual/range {v18 .. v22}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 952
    .end local v8           #list_item_primary_text:I
    .end local v9           #list_primary_m:F
    :cond_7
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->message:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 953
    .local v10, m_param:Landroid/view/ViewGroup$MarginLayoutParams;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m1:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m3:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m1:I

    move/from16 v20, v0

    const/16 v21, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 954
    sget-boolean v18, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v18, :cond_8

    .line 955
    const-string v18, "VolumePanel"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "volumeStreamText.setMargins "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m1:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    :cond_8
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->message:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual/range {v18 .. v22}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 958
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/SeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .end local v10           #m_param:Landroid/view/ViewGroup$MarginLayoutParams;
    check-cast v10, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 959
    .restart local v10       #m_param:Landroid/view/ViewGroup$MarginLayoutParams;
    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 960
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m1:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m3:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m1:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m3:I

    move/from16 v22, v0

    invoke-virtual/range {v18 .. v22}, Landroid/widget/SeekBar;->setPadding(IIII)V

    .line 961
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->divider:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .end local v10           #m_param:Landroid/view/ViewGroup$MarginLayoutParams;
    check-cast v10, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 962
    .restart local v10       #m_param:Landroid/view/ViewGroup$MarginLayoutParams;
    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m3:I

    move/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m3:I

    move/from16 v21, v0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 964
    :try_start_1
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->divider:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const-string v20, "common_div"

    const-string v21, "drawable"

    const-string v22, "com.htc"

    invoke-virtual/range {v19 .. v22}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 965
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->line_divider:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const-string v20, "common_list_divider"

    const-string v21, "drawable"

    const-string v22, "com.htc"

    invoke-virtual/range {v19 .. v22}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 979
    .end local v10           #m_param:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v11           #param:Landroid/view/ViewGroup$LayoutParams;
    :goto_2
    const/16 v18, 0x6

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_9

    if-nez v17, :cond_c

    :cond_9
    const/4 v12, 0x1

    .line 981
    .local v12, plusOne:I
    :goto_3
    const/16 v18, -0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_a

    .line 982
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v19

    add-int v19, v19, v12

    invoke-virtual/range {v18 .. v19}, Landroid/widget/SeekBar;->setMax(I)V

    .line 983
    :cond_a
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 984
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/widget/SeekBar;->setTag(Ljava/lang/Object;)V

    .line 987
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    move-object/from16 v18, v0

    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/htc/view/VolumePanel;->getVolumeProgressDrawable(Landroid/widget/SeekBar;)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 988
    if-eqz v4, :cond_d

    .line 989
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 994
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 870
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 941
    .end local v12           #plusOne:I
    .restart local v8       #list_item_primary_text:I
    .restart local v9       #list_primary_m:F
    .restart local v11       #param:Landroid/view/ViewGroup$LayoutParams;
    :catch_0
    move-exception v5

    .line 942
    .local v5, ex:Landroid/content/res/Resources$NotFoundException;
    const-string v18, "VolumePanel"

    const-string v19, "fail to get font stytle"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    const/high16 v9, 0x41d0

    .line 944
    const v8, 0x424140

    goto/16 :goto_1

    .line 966
    .end local v5           #ex:Landroid/content/res/Resources$NotFoundException;
    .end local v8           #list_item_primary_text:I
    .end local v9           #list_primary_m:F
    .restart local v10       #m_param:Landroid/view/ViewGroup$MarginLayoutParams;
    :catch_1
    move-exception v5

    .line 967
    .restart local v5       #ex:Landroid/content/res/Resources$NotFoundException;
    const-string v18, "VolumePanel"

    const-string v19, "sc.line_divider:common_list_divider not found"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 971
    .end local v5           #ex:Landroid/content/res/Resources$NotFoundException;
    .end local v10           #m_param:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v11           #param:Landroid/view/ViewGroup$LayoutParams;
    :cond_b
    :try_start_2
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->divider:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const-string v20, "zzz_common_review_divider"

    const-string v21, "drawable"

    const-string v22, "android"

    invoke-virtual/range {v19 .. v22}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 972
    iget-object v0, v14, Lcom/htc/view/VolumePanel$StreamControl;->line_divider:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const-string v20, "zzz_common_review_divider"

    const-string v21, "drawable"

    const-string v22, "android"

    invoke-virtual/range {v19 .. v22}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_2

    .line 973
    :catch_2
    move-exception v5

    .line 974
    .restart local v5       #ex:Landroid/content/res/Resources$NotFoundException;
    const-string v18, "VolumePanel"

    const-string v19, "sc.line_divider:zzz_common_review_divider not found"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 979
    .end local v5           #ex:Landroid/content/res/Resources$NotFoundException;
    :cond_c
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 991
    .restart local v12       #plusOne:I
    :cond_d
    const-string v18, "VolumePanel"

    const-string v19, "Seek bar HTC Thumb load fail"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 996
    .end local v4           #dwThum:Landroid/graphics/drawable/Drawable;
    .end local v12           #plusOne:I
    .end local v14           #sc:Lcom/htc/view/VolumePanel$StreamControl;
    .end local v16           #streamRes:Lcom/htc/view/VolumePanel$StreamResources;
    .end local v17           #streamType:I
    :cond_e
    return-void
.end method

.method private expand()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 1134
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1135
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1136
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1135
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1138
    :cond_0
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1139
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mDivider:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1140
    return-void
.end method

.method private forceTimeout()V
    .locals 1

    .prologue
    const/4 v0, 0x5

    .line 1769
    invoke-virtual {p0, v0}, Lcom/htc/view/VolumePanel;->removeMessages(I)V

    .line 1770
    invoke-virtual {p0, v0}, Lcom/htc/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/view/VolumePanel;->sendMessage(Landroid/os/Message;)Z

    .line 1771
    return-void
.end method

.method private getGenerator(I)Lcom/htc/view/VolumePanel$SoundPoolHelp;
    .locals 1
    .parameter "streamType"

    .prologue
    .line 1540
    monitor-enter p0

    .line 1541
    :try_start_0
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mSoundPools:[Lcom/htc/view/VolumePanel$SoundPoolHelp;

    aget-object v0, v0, p1

    monitor-exit p0

    return-object v0

    .line 1543
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getHtcSenseRes(Ljava/lang/String;I)I
    .locals 5
    .parameter "htcResName"
    .parameter "defResId"

    .prologue
    .line 843
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    if-nez v2, :cond_1

    .line 849
    .end local p2
    :cond_0
    :goto_0
    return p2

    .line 845
    .restart local p2
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "drawable"

    const-string v4, "android"

    invoke-virtual {v2, p1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 846
    .local v1, resId:I
    if-eqz v1, :cond_0

    move p2, v1

    goto :goto_0

    .line 847
    .end local v1           #resId:I
    :catch_0
    move-exception v0

    .line 848
    .local v0, npeException:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method private getOrCreateSoundPool(I)Lcom/htc/view/VolumePanel$SoundPoolHelp;
    .locals 1
    .parameter "streamType"

    .prologue
    .line 1484
    monitor-enter p0

    .line 1485
    :try_start_0
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mSoundPools:[Lcom/htc/view/VolumePanel$SoundPoolHelp;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 1486
    invoke-direct {p0, p1}, Lcom/htc/view/VolumePanel;->ceateToneGenerator(I)Lcom/htc/view/VolumePanel$SoundPoolHelp;

    move-result-object v0

    monitor-exit p0

    .line 1488
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mSoundPools:[Lcom/htc/view/VolumePanel$SoundPoolHelp;

    aget-object v0, v0, p1

    monitor-exit p0

    goto :goto_0

    .line 1490
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getOrCreateToneGenerator(I)Landroid/media/ToneGenerator;
    .locals 4
    .parameter "streamType"

    .prologue
    .line 1468
    monitor-enter p0

    .line 1469
    :try_start_0
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1471
    :try_start_1
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    new-instance v2, Landroid/media/ToneGenerator;

    const/16 v3, 0x64

    invoke-direct {v2, p1, v3}, Landroid/media/ToneGenerator;-><init>(II)V

    aput-object v2, v1, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1479
    :cond_0
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, p1

    monitor-exit p0

    return-object v1

    .line 1472
    :catch_0
    move-exception v0

    .line 1473
    .local v0, e:Ljava/lang/RuntimeException;
    sget-boolean v1, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_0

    .line 1474
    const-string v1, "VolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ToneGenerator constructor failed with RuntimeException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1480
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private getSkinDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 6
    .parameter "drawableName"
    .parameter "drawableID"

    .prologue
    .line 533
    const/4 v0, 0x0

    .line 535
    .local v0, d:Landroid/graphics/drawable/Drawable;
    :try_start_0
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mNewSkinPackage:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mNewSkinPackage:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mNewSkinPackage:Ljava/lang/String;

    const-string v3, "default"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mSkinRes:Landroid/content/res/Resources;

    if-nez v2, :cond_1

    .line 537
    :cond_0
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 545
    :goto_0
    return-object v0

    .line 540
    :cond_1
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mSkinRes:Landroid/content/res/Resources;

    iget-object v3, p0, Lcom/htc/view/VolumePanel;->mSkinRes:Landroid/content/res/Resources;

    const-string v4, "drawable"

    iget-object v5, p0, Lcom/htc/view/VolumePanel;->mNewSkinPackage:Ljava/lang/String;

    invoke-virtual {v3, p1, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 542
    :catch_0
    move-exception v1

    .line 543
    .local v1, e:Landroid/content/res/Resources$NotFoundException;
    const-string v2, "VolumePanel"

    const-string v3, "progress_horizontal or seek_thumb resource not found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getSkinPackageName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 511
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 513
    .local v0, am:Landroid/app/IActivityManager;
    :try_start_0
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 514
    .local v1, config:Landroid/content/res/Configuration;
    iget-object v3, v1, Landroid/content/res/Configuration;->skin:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 518
    .end local v1           #config:Landroid/content/res/Configuration;
    :goto_0
    return-object v3

    .line 515
    :catch_0
    move-exception v2

    .line 516
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 518
    const-string v3, ""

    goto :goto_0
.end method

.method private getVolumeProgressDrawable(Landroid/widget/SeekBar;)Landroid/graphics/drawable/Drawable;
    .locals 9
    .parameter "seekBar"

    .prologue
    .line 1000
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    .line 1001
    .local v1, layer:Landroid/graphics/drawable/LayerDrawable;
    iget-object v5, p0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "common_progress_empty"

    const-string v7, "drawable"

    const-string v8, "com.htc"

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 1002
    .local v3, progress_empty:I
    iget-object v5, p0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "common_progress_full"

    const-string v7, "drawable"

    const-string v8, "com.htc"

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1005
    .local v4, progress_full:I
    const-string v5, "common_progress_empty"

    invoke-direct {p0, v5, v3}, Lcom/htc/view/VolumePanel;->getSkinDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1006
    .local v0, bg:Landroid/graphics/drawable/Drawable;
    new-instance v2, Landroid/graphics/drawable/ClipDrawable;

    const-string v5, "common_progress_full"

    invoke-direct {p0, v5, v4}, Lcom/htc/view/VolumePanel;->getSkinDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v6, 0x3

    const/4 v7, 0x1

    invoke-direct {v2, v5, v6, v7}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    .line 1007
    .local v2, progress:Landroid/graphics/drawable/ClipDrawable;
    const/high16 v5, 0x102

    invoke-virtual {v1, v5, v0}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 1008
    const v5, 0x102000d

    invoke-virtual {v1, v5, v2}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 1010
    return-object v1
.end method

.method private getVolumeThumb()Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    .line 1015
    const/4 v1, 0x0

    .line 1016
    .local v1, progress_button:I
    sget-boolean v3, Lcom/htc/view/VolumePanel;->mNewStyle:Z

    if-eqz v3, :cond_0

    const-string v2, "common_progress_button"

    .line 1017
    .local v2, strThumbDrawableName:Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "drawable"

    const-string v5, "com.htc"

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1019
    :try_start_0
    iget-object v3, p0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1022
    :goto_1
    return-object v3

    .line 1016
    .end local v2           #strThumbDrawableName:Ljava/lang/String;
    :cond_0
    const-string v2, "common_music_progress_button"

    goto :goto_0

    .line 1020
    .restart local v2       #strThumbDrawableName:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1021
    .local v0, ex:Landroid/content/res/Resources$NotFoundException;
    const-string v3, "VolumePanel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "assets not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private initSense40Panelayout(Landroid/util/DisplayMetrics;)Landroid/util/DisplayMetrics;
    .locals 13
    .parameter "dm"

    .prologue
    const/4 v12, 0x0

    .line 686
    iget-object v7, p0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 689
    .local v4, res:Landroid/content/res/Resources;
    :try_start_0
    const-string v7, "margin_l"

    const-string v8, "dimen"

    const-string v9, "com.htc"

    invoke-virtual {v4, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m1:I

    .line 690
    const-string v7, "margin_m"

    const-string v8, "dimen"

    const-string v9, "com.htc"

    invoke-virtual {v4, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m2:I

    .line 691
    const-string v7, "margin_s"

    const-string v8, "dimen"

    const-string v9, "com.htc"

    invoke-virtual {v4, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m3:I

    .line 692
    const-string v7, "margin_xs"

    const-string v8, "dimen"

    const-string v9, "com.htc"

    invoke-virtual {v4, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m4:I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 708
    :goto_0
    sget-boolean v7, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v7, :cond_0

    .line 709
    const-string v7, "VolumePanel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "m1="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m1:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ,m2="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m2:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " m3="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m3:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " m4="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m4:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    :cond_0
    const/4 v6, 0x0

    .line 712
    .local v6, screenWidth:I
    const/4 v5, 0x0

    .line 713
    .local v5, screenHeight:I
    const/4 v0, 0x0

    .line 714
    .local v0, FootBarHeight:I
    invoke-static {}, Lcom/htc/htcjavaflag/HtcBuildFlag;->getHtcTabletDevice()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 715
    const/16 v0, 0x30

    .line 718
    :cond_1
    iget v7, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v8, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v7, v8, :cond_6

    iget v7, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    add-int v6, v7, v0

    .line 720
    :goto_1
    iget v7, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v8, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v7, v8, :cond_7

    iget v5, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 723
    :goto_2
    sget-boolean v7, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v7, :cond_2

    .line 724
    const-string v7, "VolumePanel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "dm.widthPixels="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ,dm.heightPixels="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    const-string v7, "VolumePanel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "screenWidth="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ,screenHeight="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    :cond_2
    iput v6, p0, Lcom/htc/view/VolumePanel;->mScreenWidth:I

    .line 728
    const/4 v2, 0x0

    .line 729
    .local v2, panelWidth:I
    invoke-static {}, Lcom/htc/htcjavaflag/HtcBuildFlag;->getHtcTabletDevice()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 730
    int-to-double v7, v6

    const-wide v9, 0x3fb1eb851eb851ecL

    mul-double/2addr v7, v9

    double-to-int v7, v7

    iput v7, p0, Lcom/htc/view/VolumePanel;->mIconWidth:I

    .line 731
    int-to-double v7, v6

    const-wide v9, 0x3fe3333333333333L

    mul-double/2addr v7, v9

    double-to-int v7, v7

    sub-int v2, v5, v7

    .line 738
    :goto_3
    iget-object v7, p0, Lcom/htc/view/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 739
    .local v3, param:Landroid/view/ViewGroup$LayoutParams;
    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 740
    iget-object v7, p0, Lcom/htc/view/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    invoke-virtual {v7, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 743
    iget-object v7, p0, Lcom/htc/view/VolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 744
    const/4 v7, -0x2

    iput v7, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 746
    iget-object v7, p0, Lcom/htc/view/VolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v7, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 747
    sget-boolean v7, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v7, :cond_3

    .line 749
    const-string v7, "VolumePanel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "changed panelWidth="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    const-string v7, "VolumePanel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mIconWidths="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/htc/view/VolumePanel;->mIconWidth:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    :cond_3
    iget-object v7, p0, Lcom/htc/view/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    invoke-virtual {v7, v12, v12, v12, v12}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 753
    iget-object v7, p0, Lcom/htc/view/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    iget-object v8, p0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string v9, "popup_full_bright"

    const-string v10, "drawable"

    const-string v11, "com.htc"

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 756
    sget-boolean v7, Lcom/htc/view/VolumePanel;->ICS_LAYOUT_COLOR_BG_DEBUG:Z

    if-nez v7, :cond_9

    .line 759
    iget-object v7, p0, Lcom/htc/view/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    iget-object v8, p0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string v9, "popup_full_bright"

    const-string v10, "drawable"

    const-string v11, "com.htc"

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 760
    const-string v7, "VolumePanel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "padding left="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/view/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    const-string v7, "VolumePanel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "padding top="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/view/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    const-string v7, "VolumePanel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "padding right="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/view/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    const-string v7, "VolumePanel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "padding bottom="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/view/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    :goto_4
    invoke-static {}, Lcom/htc/htcjavaflag/HtcBuildFlag;->getHtcTabletDevice()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 773
    iget-object v7, p0, Lcom/htc/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    iget v8, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m2:I

    iget v9, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m1:I

    iget v10, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m2:I

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m2:I

    iget v11, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m1:I

    iget v12, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m2:I

    sub-int/2addr v11, v12

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 779
    :goto_5
    :try_start_1
    iget-object v7, p0, Lcom/htc/view/VolumePanel;->mDivider:Landroid/view/View;

    check-cast v7, Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string v9, "common_div"

    const-string v10, "drawable"

    const-string v11, "com.htc"

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 783
    :goto_6
    sget-boolean v7, Lcom/htc/view/VolumePanel;->ICS_LAYOUT_COLOR_DEBUG:Z

    if-eqz v7, :cond_4

    .line 786
    :cond_4
    iput v6, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 787
    iput v5, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 788
    return-object p1

    .line 693
    .end local v0           #FootBarHeight:I
    .end local v2           #panelWidth:I
    .end local v3           #param:Landroid/view/ViewGroup$LayoutParams;
    .end local v5           #screenHeight:I
    .end local v6           #screenWidth:I
    :catch_0
    move-exception v1

    .line 695
    .local v1, ex:Landroid/content/res/Resources$NotFoundException;
    const-string v7, "VolumePanel"

    const-string v8, "##################getDimension(res.getIdentifier(\"margin_l\") fail"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    invoke-static {}, Lcom/htc/htcjavaflag/HtcBuildFlag;->getHtcTabletDevice()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 697
    iput v12, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m1:I

    .line 698
    iput v12, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m2:I

    .line 699
    iput v12, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m3:I

    .line 700
    iput v12, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m4:I

    goto/16 :goto_0

    .line 702
    :cond_5
    const/16 v7, 0x16

    iput v7, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m1:I

    .line 703
    const/16 v7, 0x10

    iput v7, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m2:I

    .line 704
    const/16 v7, 0xa

    iput v7, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m3:I

    .line 705
    const/16 v7, 0x9

    iput v7, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m4:I

    goto/16 :goto_0

    .line 718
    .end local v1           #ex:Landroid/content/res/Resources$NotFoundException;
    .restart local v0       #FootBarHeight:I
    .restart local v5       #screenHeight:I
    .restart local v6       #screenWidth:I
    :cond_6
    iget v6, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    goto/16 :goto_1

    .line 720
    :cond_7
    iget v7, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    add-int v5, v7, v0

    goto/16 :goto_2

    .line 733
    .restart local v2       #panelWidth:I
    :cond_8
    div-int/lit8 v7, v6, 0x6

    iput v7, p0, Lcom/htc/view/VolumePanel;->mIconWidth:I

    .line 734
    iget v7, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m4:I

    mul-int/lit8 v7, v7, 0x2

    sub-int v2, v6, v7

    goto/16 :goto_3

    .line 766
    .restart local v3       #param:Landroid/view/ViewGroup$LayoutParams;
    :cond_9
    iget-object v7, p0, Lcom/htc/view/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 767
    iget-object v7, p0, Lcom/htc/view/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    invoke-virtual {v7, v12, v12, v12, v12}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto/16 :goto_4

    .line 775
    :cond_a
    iget-object v7, p0, Lcom/htc/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    iget v8, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m1:I

    iget v9, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m3:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m1:I

    iget v10, p0, Lcom/htc/view/VolumePanel;->m_HtcDimension_m3:I

    sub-int/2addr v9, v10

    invoke-virtual {v7, v12, v8, v12, v9}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_5

    .line 780
    :catch_1
    move-exception v1

    .line 781
    .restart local v1       #ex:Landroid/content/res/Resources$NotFoundException;
    const-string v7, "VolumePanel"

    const-string v8, "mDivider:common_div not found"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method

.method private isExpanded()Z
    .locals 1

    .prologue
    .line 1130
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMuted(I)Z
    .locals 1
    .parameter "streamType"

    .prologue
    .line 838
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    return v0
.end method

.method private listenToMusicMuteRequest()V
    .locals 5

    .prologue
    .line 810
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 811
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.htc.view.music_mute"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 812
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/htc/view/VolumePanel$5;

    invoke-direct {v2, p0}, Lcom/htc/view/VolumePanel$5;-><init>(Lcom/htc/view/VolumePanel;)V

    const-string v3, "android.intent.category.MUTE_MUSIC"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 835
    return-void
.end method

.method private listenToRingerMode()V
    .locals 3

    .prologue
    .line 792
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 793
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 794
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/htc/view/VolumePanel$4;

    invoke-direct {v2, p0}, Lcom/htc/view/VolumePanel$4;-><init>(Lcom/htc/view/VolumePanel;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 807
    return-void
.end method

.method private postUpdatePanelRotation()V
    .locals 1

    .prologue
    const/16 v0, 0x8

    .line 1601
    invoke-virtual {p0, v0}, Lcom/htc/view/VolumePanel;->removeMessages(I)V

    .line 1602
    invoke-virtual {p0, v0}, Lcom/htc/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/view/VolumePanel;->sendMessage(Landroid/os/Message;)Z

    .line 1603
    return-void
.end method

.method private reorderSliders(I)V
    .locals 4
    .parameter "activeStreamType"

    .prologue
    .line 1028
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1030
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/view/VolumePanel$StreamControl;

    .line 1031
    .local v0, active:Lcom/htc/view/VolumePanel$StreamControl;
    if-nez v0, :cond_0

    .line 1033
    const-string v1, "VolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown stream type! : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    const/4 v2, -0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #active:Lcom/htc/view/VolumePanel$StreamControl;
    check-cast v0, Lcom/htc/view/VolumePanel$StreamControl;

    .line 1035
    .restart local v0       #active:Lcom/htc/view/VolumePanel$StreamControl;
    if-eqz v0, :cond_0

    .line 1036
    iput p1, v0, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    .line 1037
    iget-object v1, v0, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    iget v3, v0, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1038
    const/4 p1, -0x2

    .line 1042
    :cond_0
    if-nez v0, :cond_1

    .line 1043
    const-string v1, "VolumePanel"

    const-string v2, "fail to get dummpy stream type! - "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/view/VolumePanel;->mActiveStreamType:I

    .line 1053
    :goto_0
    invoke-direct {p0}, Lcom/htc/view/VolumePanel;->addOtherVolumes()V

    .line 1054
    return-void

    .line 1046
    :cond_1
    iget-object v1, v0, Lcom/htc/view/VolumePanel$StreamControl;->line_divider:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1047
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    iget-object v2, v0, Lcom/htc/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1048
    iput p1, p0, Lcom/htc/view/VolumePanel;->mActiveStreamType:I

    .line 1049
    iget-object v1, v0, Lcom/htc/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1050
    invoke-direct {p0, v0}, Lcom/htc/view/VolumePanel;->updateSlider(Lcom/htc/view/VolumePanel$StreamControl;)V

    goto :goto_0
.end method

.method private resetTimeout()V
    .locals 3

    .prologue
    const/4 v0, 0x5

    .line 1764
    invoke-virtual {p0, v0}, Lcom/htc/view/VolumePanel;->removeMessages(I)V

    .line 1765
    invoke-virtual {p0, v0}, Lcom/htc/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1766
    return-void
.end method

.method private setMusicIcon(II)V
    .locals 5
    .parameter "resId"
    .parameter "resMuteId"

    .prologue
    .line 1553
    :try_start_0
    iget-object v3, p0, Lcom/htc/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/view/VolumePanel$StreamControl;

    .line 1555
    .local v2, sc:Lcom/htc/view/VolumePanel$StreamControl;
    if-eqz v2, :cond_1

    .line 1556
    iget-object v3, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    iget v4, v2, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 1557
    .local v0, index:I
    iput p1, v2, Lcom/htc/view/VolumePanel$StreamControl;->iconRes:I

    .line 1558
    iput p2, v2, Lcom/htc/view/VolumePanel$StreamControl;->iconMuteRes:I

    .line 1559
    iget-object v4, v2, Lcom/htc/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v3, v2, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v3}, Lcom/htc/view/VolumePanel;->isMuted(I)Z

    move-result v3

    if-nez v3, :cond_0

    if-nez v0, :cond_2

    :cond_0
    iget v3, v2, Lcom/htc/view/VolumePanel$StreamControl;->iconMuteRes:I

    :goto_0
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1566
    .end local v0           #index:I
    .end local v2           #sc:Lcom/htc/view/VolumePanel$StreamControl;
    :cond_1
    :goto_1
    return-void

    .line 1559
    .restart local v0       #index:I
    .restart local v2       #sc:Lcom/htc/view/VolumePanel$StreamControl;
    :cond_2
    iget v3, v2, Lcom/htc/view/VolumePanel$StreamControl;->iconRes:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1563
    .end local v0           #index:I
    .end local v2           #sc:Lcom/htc/view/VolumePanel$StreamControl;
    :catch_0
    move-exception v1

    .line 1564
    .local v1, npeException:Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1
.end method

.method private setMusicMute(Z)V
    .locals 4
    .parameter "value"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x3

    .line 1724
    if-eqz p1, :cond_0

    .line 1726
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 1737
    :goto_0
    return-void

    .line 1730
    :cond_0
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v3, v2}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 1731
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 1732
    .local v0, volume:I
    if-nez v0, :cond_1

    .line 1733
    const/4 v0, 0x1

    .line 1735
    :cond_1
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v3, v0, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0
.end method

.method private setSkinRes()V
    .locals 4

    .prologue
    .line 522
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mNewSkinPackage:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 523
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mNewSkinPackage:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mNewSkinPackage:Ljava/lang/String;

    const-string v2, "default"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 530
    :cond_0
    :goto_0
    return-void

    .line 525
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mNewSkinPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/view/VolumePanel;->mSkinRes:Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 526
    :catch_0
    move-exception v0

    .line 527
    .local v0, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "VolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No skin package matches with the given name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/view/VolumePanel;->mNewSkinPackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private shouldVibrate()Z
    .locals 4

    .prologue
    .line 1123
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->shouldVibrate(I)Z

    move-result v0

    .line 1124
    .local v0, shouldVibrate:Z
    sget-boolean v1, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_0

    .line 1125
    const-string v1, "VolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shouldVibrate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    :cond_0
    return v0
.end method

.method private updateSlider(Lcom/htc/view/VolumePanel$StreamControl;)V
    .locals 8
    .parameter "sc"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x3

    .line 1074
    iget-object v2, p1, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    iget-object v3, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    iget v4, p1, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1075
    iget v2, p1, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v2}, Lcom/htc/view/VolumePanel;->isMuted(I)Z

    move-result v0

    .line 1077
    .local v0, muted:Z
    iget v2, p1, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    if-eq v2, v7, :cond_1

    iget v2, p1, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    iget v2, p1, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    if-ne v2, v5, :cond_7

    :cond_0
    iget-boolean v2, p0, Lcom/htc/view/VolumePanel;->mVoiceCapable:Z

    if-nez v2, :cond_7

    :cond_1
    if-eqz v0, :cond_7

    .line 1079
    iget v2, p1, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    if-ne v2, v7, :cond_6

    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    if-ne v2, v5, :cond_6

    .line 1081
    iget-object v2, p1, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    iget-object v3, p1, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getMax()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1089
    :goto_0
    iget v2, p1, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 1090
    iget-object v2, p1, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    iget-object v3, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    iget v4, p1, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1091
    :cond_2
    iget-object v2, p1, Lcom/htc/view/VolumePanel$StreamControl;->message:Landroid/widget/TextView;

    iget v3, p1, Lcom/htc/view/VolumePanel$StreamControl;->desTextRes:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1093
    iget-object v3, p1, Lcom/htc/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    if-eqz v0, :cond_8

    iget v2, p1, Lcom/htc/view/VolumePanel$StreamControl;->iconMuteRes:I

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1094
    iget v2, p1, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    if-ne v2, v7, :cond_5

    .line 1095
    sget-boolean v2, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v2, :cond_3

    .line 1096
    const-string v2, "VolumePanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSlider muted = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " shouldVibrate : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v6}, Landroid/media/AudioManager;->shouldVibrate(I)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", RingerMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v4}, Landroid/media/AudioService;->getRingerMode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    :cond_3
    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/htc/view/VolumePanel;->shouldVibrate()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v2}, Landroid/media/AudioService;->getRingerMode()I

    move-result v2

    if-eq v2, v5, :cond_9

    .line 1101
    iget v2, p1, Lcom/htc/view/VolumePanel$StreamControl;->iconVibrateRes:I

    if-nez v2, :cond_4

    .line 1102
    sget-object v2, Lcom/htc/view/VolumePanel$StreamResources;->RingerStream:Lcom/htc/view/VolumePanel$StreamResources;

    iget-object v2, v2, Lcom/htc/view/VolumePanel$StreamResources;->iconHtcVibrateName:Ljava/lang/String;

    sget-object v3, Lcom/htc/view/VolumePanel$StreamResources;->RingerStream:Lcom/htc/view/VolumePanel$StreamResources;

    iget v3, v3, Lcom/htc/view/VolumePanel$StreamResources;->iconVibrateRes:I

    invoke-direct {p0, v2, v3}, Lcom/htc/view/VolumePanel;->getHtcSenseRes(Ljava/lang/String;I)I

    move-result v2

    iput v2, p1, Lcom/htc/view/VolumePanel$StreamControl;->iconVibrateRes:I

    .line 1104
    :cond_4
    iput v6, p1, Lcom/htc/view/VolumePanel$StreamControl;->iconOutDoorRes:I

    .line 1105
    iget-object v2, p1, Lcom/htc/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v3, p1, Lcom/htc/view/VolumePanel$StreamControl;->iconVibrateRes:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1120
    :cond_5
    :goto_2
    return-void

    .line 1084
    :cond_6
    iget-object v2, p1, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v2, v6}, Landroid/widget/SeekBar;->setProgress(I)V

    goto/16 :goto_0

    .line 1087
    :cond_7
    iget-object v2, p1, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    iget-object v3, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    iget v4, p1, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    goto/16 :goto_0

    .line 1093
    :cond_8
    iget v2, p1, Lcom/htc/view/VolumePanel$StreamControl;->iconRes:I

    goto/16 :goto_1

    .line 1108
    :cond_9
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v2}, Landroid/media/AudioService;->getRingerMode()I

    move-result v1

    .line 1109
    .local v1, ringerMode:I
    if-ne v1, v5, :cond_5

    .line 1110
    iget v2, p1, Lcom/htc/view/VolumePanel$StreamControl;->iconOutDoorRes:I

    if-nez v2, :cond_a

    .line 1111
    sget-object v2, Lcom/htc/view/VolumePanel$StreamResources;->RingerStream:Lcom/htc/view/VolumePanel$StreamResources;

    iget-object v2, v2, Lcom/htc/view/VolumePanel$StreamResources;->iconHtcOutdoorName:Ljava/lang/String;

    sget-object v3, Lcom/htc/view/VolumePanel$StreamResources;->RingerStream:Lcom/htc/view/VolumePanel$StreamResources;

    iget v3, v3, Lcom/htc/view/VolumePanel$StreamResources;->iconOutDoorRes:I

    invoke-direct {p0, v2, v3}, Lcom/htc/view/VolumePanel;->getHtcSenseRes(Ljava/lang/String;I)I

    move-result v2

    iput v2, p1, Lcom/htc/view/VolumePanel$StreamControl;->iconOutDoorRes:I

    .line 1113
    :cond_a
    iget-object v2, p1, Lcom/htc/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v3, p1, Lcom/htc/view/VolumePanel$StreamControl;->iconOutDoorRes:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2
.end method

.method private updateStates()V
    .locals 4

    .prologue
    .line 1152
    iget-object v3, p0, Lcom/htc/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1153
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1154
    iget-object v3, p0, Lcom/htc/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/view/VolumePanel$StreamControl;

    .line 1155
    .local v2, sc:Lcom/htc/view/VolumePanel$StreamControl;
    invoke-direct {p0, v2}, Lcom/htc/view/VolumePanel;->updateSlider(Lcom/htc/view/VolumePanel$StreamControl;)V

    .line 1153
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1157
    .end local v2           #sc:Lcom/htc/view/VolumePanel$StreamControl;
    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 1664
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1721
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1667
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Lcom/htc/view/VolumePanel;->onVolumeChanged(II)V

    goto :goto_0

    .line 1672
    :pswitch_2
    invoke-virtual {p0}, Lcom/htc/view/VolumePanel;->onFreeResources()V

    goto :goto_0

    .line 1677
    :pswitch_3
    invoke-virtual {p0}, Lcom/htc/view/VolumePanel;->onStopSounds()V

    goto :goto_0

    .line 1682
    :pswitch_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Lcom/htc/view/VolumePanel;->onPlaySound(II)V

    goto :goto_0

    .line 1687
    :pswitch_5
    sget-boolean v0, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_1

    .line 1688
    const-string v0, "VolumePanel"

    const-string v1, ">>MSG_VIBRATE onVibrate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1689
    :cond_1
    invoke-virtual {p0}, Lcom/htc/view/VolumePanel;->onVibrate()V

    .line 1690
    sget-boolean v0, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    .line 1691
    const-string v0, "VolumePanel"

    const-string v1, "<<MSG_VIBRATE onVibrate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1696
    :pswitch_6
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1697
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1698
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/view/VolumePanel;->mActiveStreamType:I

    goto :goto_0

    .line 1703
    :pswitch_7
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1704
    invoke-direct {p0}, Lcom/htc/view/VolumePanel;->updateStates()V

    goto :goto_0

    .line 1709
    :pswitch_8
    invoke-virtual {p0}, Lcom/htc/view/VolumePanel;->updatePanelRotation()V

    goto :goto_0

    .line 1713
    :pswitch_9
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/view/VolumePanel;->setMusicMute(Z)V

    goto :goto_0

    .line 1717
    :pswitch_a
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/view/VolumePanel;->setMusicMute(Z)V

    goto :goto_0

    .line 1664
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method protected internalPlaySound(IIZ)V
    .locals 4
    .parameter "streamType"
    .parameter "nInsex"
    .parameter "bCreatePlayer"

    .prologue
    .line 1418
    monitor-enter p0

    .line 1419
    const/4 v1, 0x0

    .line 1420
    .local v1, soundPoolHelp:Lcom/htc/view/VolumePanel$SoundPoolHelp;
    if-eqz p3, :cond_0

    .line 1421
    :try_start_0
    invoke-direct {p0, p1}, Lcom/htc/view/VolumePanel;->getOrCreateSoundPool(I)Lcom/htc/view/VolumePanel$SoundPoolHelp;

    move-result-object v1

    .line 1424
    :goto_0
    if-nez v1, :cond_1

    .line 1425
    const-string v2, "VolumePanel"

    const-string v3, "soundPoolHelp released abort retry"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1426
    monitor-exit p0

    .line 1430
    :goto_1
    return-void

    .line 1423
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/view/VolumePanel;->getGenerator(I)Lcom/htc/view/VolumePanel$SoundPoolHelp;

    move-result-object v1

    goto :goto_0

    .line 1429
    :cond_1
    invoke-virtual {v1, p2}, Lcom/htc/view/VolumePanel$SoundPoolHelp;->fnplay(I)I

    move-result v0

    .line 1430
    .local v0, nRet:I
    monitor-exit p0

    goto :goto_1

    .line 1434
    .end local v0           #nRet:I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11
    .parameter "v"

    .prologue
    const/4 v10, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1875
    iget-object v6, p0, Lcom/htc/view/VolumePanel;->mMoreButton:Landroid/view/View;

    if-ne p1, v6, :cond_2

    .line 1876
    invoke-direct {p0}, Lcom/htc/view/VolumePanel;->expand()V

    .line 1977
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/htc/view/VolumePanel;->resetTimeout()V

    .line 1978
    :cond_1
    return-void

    .line 1877
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/htc/view/VolumePanel$StreamControl;

    if-eqz v6, :cond_0

    .line 1878
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/view/VolumePanel$StreamControl;

    .line 1881
    .local v2, sc:Lcom/htc/view/VolumePanel$StreamControl;
    iget v6, v2, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    if-eq v6, v10, :cond_1

    .line 1887
    iget v6, v2, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    if-ne v6, v4, :cond_8

    .line 1889
    sget-boolean v5, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v5, :cond_3

    .line 1890
    const-string v5, "VolumePanel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onClick sc.seekbarView.getProgress() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v7}, Landroid/widget/SeekBar;->getProgress()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1891
    :cond_3
    iget-object v5, v2, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getProgress()I

    move-result v5

    if-nez v5, :cond_6

    .line 1893
    iget-object v5, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    iget v6, v2, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    invoke-virtual {v5, v6, v8}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 1894
    iget-object v5, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    iget v6, v2, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    .line 1895
    .local v3, volume:I
    if-nez v3, :cond_4

    const/4 v3, 0x1

    .line 1896
    :cond_4
    iget-object v5, v2, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v5, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1897
    iget-object v5, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    iget v6, v2, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    invoke-virtual {v5, v6, v3, v8}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1904
    .end local v3           #volume:I
    :goto_1
    iget-object v5, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5, v4}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v4

    and-int/lit16 v4, v4, 0x380

    if-eqz v4, :cond_7

    .line 1908
    sget-object v4, Lcom/htc/view/VolumePanel$StreamResources;->BluetoothSCOStream:Lcom/htc/view/VolumePanel$StreamResources;

    iget-object v4, v4, Lcom/htc/view/VolumePanel$StreamResources;->iconHtcResName:Ljava/lang/String;

    sget-object v5, Lcom/htc/view/VolumePanel$StreamResources;->MediaStream:Lcom/htc/view/VolumePanel$StreamResources;

    iget v5, v5, Lcom/htc/view/VolumePanel$StreamResources;->iconRes:I

    invoke-direct {p0, v4, v5}, Lcom/htc/view/VolumePanel;->getHtcSenseRes(Ljava/lang/String;I)I

    move-result v4

    sget-object v5, Lcom/htc/view/VolumePanel$StreamResources;->BluetoothSCOStream:Lcom/htc/view/VolumePanel$StreamResources;

    iget-object v5, v5, Lcom/htc/view/VolumePanel$StreamResources;->iconHtcMuteResName:Ljava/lang/String;

    sget-object v6, Lcom/htc/view/VolumePanel$StreamResources;->MediaStream:Lcom/htc/view/VolumePanel$StreamResources;

    iget v6, v6, Lcom/htc/view/VolumePanel$StreamResources;->iconMuteRes:I

    invoke-direct {p0, v5, v6}, Lcom/htc/view/VolumePanel;->getHtcSenseRes(Ljava/lang/String;I)I

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/htc/view/VolumePanel;->setMusicIcon(II)V

    .line 1975
    :cond_5
    :goto_2
    iget-boolean v4, p0, Lcom/htc/view/VolumePanel;->mShowCombinedVolumes:Z

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lcom/htc/view/VolumePanel;->isExpanded()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-direct {p0}, Lcom/htc/view/VolumePanel;->expand()V

    goto/16 :goto_0

    .line 1901
    :cond_6
    iget-object v5, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    iget v6, v2, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    invoke-virtual {v5, v6, v9}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 1902
    iget-object v5, v2, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v5, v8}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_1

    .line 1914
    :cond_7
    sget-object v4, Lcom/htc/view/VolumePanel$StreamResources;->MediaStream:Lcom/htc/view/VolumePanel$StreamResources;

    iget-object v4, v4, Lcom/htc/view/VolumePanel$StreamResources;->iconHtcResName:Ljava/lang/String;

    sget-object v5, Lcom/htc/view/VolumePanel$StreamResources;->MediaStream:Lcom/htc/view/VolumePanel$StreamResources;

    iget v5, v5, Lcom/htc/view/VolumePanel$StreamResources;->iconRes:I

    invoke-direct {p0, v4, v5}, Lcom/htc/view/VolumePanel;->getHtcSenseRes(Ljava/lang/String;I)I

    move-result v4

    sget-object v5, Lcom/htc/view/VolumePanel$StreamResources;->MediaStream:Lcom/htc/view/VolumePanel$StreamResources;

    iget-object v5, v5, Lcom/htc/view/VolumePanel$StreamResources;->iconHtcMuteResName:Ljava/lang/String;

    sget-object v6, Lcom/htc/view/VolumePanel$StreamResources;->MediaStream:Lcom/htc/view/VolumePanel$StreamResources;

    iget v6, v6, Lcom/htc/view/VolumePanel$StreamResources;->iconMuteRes:I

    invoke-direct {p0, v5, v6}, Lcom/htc/view/VolumePanel;->getHtcSenseRes(Ljava/lang/String;I)I

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/htc/view/VolumePanel;->setMusicIcon(II)V

    goto :goto_2

    .line 1926
    :cond_8
    iget-object v6, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    .line 1927
    .local v1, ringerMode:I
    const/4 v0, 0x2

    .line 1928
    .local v0, newRingMode:I
    packed-switch v1, :pswitch_data_0

    .line 1943
    const-string v4, "VolumePanel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unknow sound profile:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1944
    const/4 v0, 0x2

    .line 1948
    :goto_3
    iget-object v4, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v0}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 1949
    iget-object v4, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    if-ne v4, v5, :cond_a

    iget-object v4, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    iget v5, v2, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    if-nez v4, :cond_a

    .line 1951
    iget-object v4, v2, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v4, v9}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1952
    iget-object v4, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    iget v5, v2, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    invoke-virtual {v4, v5, v9, v8}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_2

    .line 1930
    :pswitch_0
    const/4 v0, 0x1

    .line 1931
    goto :goto_3

    .line 1933
    :pswitch_1
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v7, 0xd8

    if-ne v6, v7, :cond_9

    move v0, v4

    .line 1935
    :goto_4
    goto :goto_3

    :cond_9
    move v0, v5

    .line 1933
    goto :goto_4

    .line 1937
    :pswitch_2
    const/4 v0, 0x2

    .line 1938
    goto :goto_3

    .line 1940
    :pswitch_3
    const/4 v0, 0x0

    .line 1941
    goto :goto_3

    .line 1954
    :cond_a
    iget-object v4, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    if-ne v4, v9, :cond_5

    invoke-direct {p0}, Lcom/htc/view/VolumePanel;->shouldVibrate()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1956
    invoke-virtual {p0, v10}, Lcom/htc/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x12c

    invoke-virtual {p0, v4, v5, v6}, Lcom/htc/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_2

    .line 1928
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method protected onFreeResources()V
    .locals 3

    .prologue
    .line 1590
    monitor-enter p0

    .line 1591
    :try_start_0
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mSoundPools:[Lcom/htc/view/VolumePanel$SoundPoolHelp;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 1592
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mSoundPools:[Lcom/htc/view/VolumePanel$SoundPoolHelp;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 1593
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mSoundPools:[Lcom/htc/view/VolumePanel$SoundPoolHelp;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/htc/view/VolumePanel$SoundPoolHelp;->release()V

    .line 1595
    :cond_0
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mSoundPools:[Lcom/htc/view/VolumePanel$SoundPoolHelp;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 1591
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1597
    :cond_1
    monitor-exit p0

    .line 1598
    return-void

    .line 1597
    .end local v0           #i:I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected onPlaySound(II)V
    .locals 5
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/4 v4, 0x3

    .line 1392
    sget-boolean v1, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_0

    .line 1393
    const-string v1, "VolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPlaySound(streamType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1396
    :cond_0
    invoke-virtual {p0, v4}, Lcom/htc/view/VolumePanel;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1397
    invoke-virtual {p0, v4}, Lcom/htc/view/VolumePanel;->removeMessages(I)V

    .line 1399
    invoke-virtual {p0}, Lcom/htc/view/VolumePanel;->onStopSounds()V

    .line 1403
    :cond_1
    iget-object v1, p0, Lcom/htc/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v1, p1}, Landroid/media/AudioService;->getStreamVolume(I)I

    move-result v0

    .line 1404
    .local v0, index:I
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/view/VolumePanel;->mRetryTimes:I

    .line 1405
    if-lez v0, :cond_2

    .line 1409
    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v1, v2}, Lcom/htc/view/VolumePanel;->internalPlaySound(IIZ)V

    .line 1411
    :cond_2
    sget-boolean v1, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_3

    .line 1412
    const-string v1, "VolumePanel"

    const-string v2, "--onPlaySound(streamType: "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1414
    :cond_3
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 8
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 1775
    sget-boolean v2, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v2, :cond_0

    .line 1777
    const-string v3, "VolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onProgressChanged progress = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " sStreamType = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/view/VolumePanel$StreamControl;

    iget v2, v2, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1778
    const-string v3, "VolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onProgressChanged streamVolume = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/view/VolumePanel$StreamControl;

    iget v2, v2, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    invoke-virtual {v5, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1781
    :cond_0
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 1782
    .local v1, tag:Ljava/lang/Object;
    if-eqz p3, :cond_3

    instance-of v2, v1, Lcom/htc/view/VolumePanel$StreamControl;

    if-eqz v2, :cond_3

    move-object v0, v1

    .line 1783
    check-cast v0, Lcom/htc/view/VolumePanel$StreamControl;

    .line 1785
    .local v0, sc:Lcom/htc/view/VolumePanel$StreamControl;
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    iget v3, v0, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    if-eq v2, p2, :cond_3

    .line 1788
    iget v2, v0, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 1790
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    iget v3, v0, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    if-nez v2, :cond_1

    .line 1792
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    iget v3, v0, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    invoke-virtual {v2, v3, v7}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 1797
    :cond_1
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    iget v3, v0, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, p2, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1798
    iget v2, v0, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    if-eq v2, v6, :cond_2

    iget v2, v0, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/htc/view/VolumePanel;->mVoiceCapable:Z

    if-nez v2, :cond_3

    .line 1802
    :cond_2
    invoke-virtual {p0, v6}, Lcom/htc/view/VolumePanel;->removeMessages(I)V

    .line 1803
    iget v2, v0, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    invoke-virtual {p0, v6, v2, v7}, Lcom/htc/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lcom/htc/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1808
    .end local v0           #sc:Lcom/htc/view/VolumePanel$StreamControl;
    :cond_3
    invoke-direct {p0}, Lcom/htc/view/VolumePanel;->resetTimeout()V

    .line 1809
    return-void
.end method

.method protected onShowVolumeChanged(II)V
    .locals 9
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x3

    .line 1255
    iget-object v4, p0, Lcom/htc/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v4, p1}, Landroid/media/AudioService;->getStreamVolume(I)I

    move-result v1

    .line 1258
    .local v1, index:I
    iget-object v4, p0, Lcom/htc/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v4, p1}, Landroid/media/AudioService;->isStreamMute(I)Z

    move-result v4

    if-eqz v4, :cond_2

    if-eq p1, v8, :cond_1

    const/4 v4, 0x5

    if-eq p1, v4, :cond_0

    if-ne p1, v7, :cond_2

    :cond_0
    iget-boolean v4, p0, Lcom/htc/view/VolumePanel;->mVoiceCapable:Z

    if-nez v4, :cond_2

    .line 1259
    :cond_1
    const/4 v1, 0x0

    .line 1264
    :cond_2
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/view/VolumePanel;->mRingIsSilent:Z

    .line 1266
    sget-boolean v4, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v4, :cond_3

    .line 1267
    const-string v4, "VolumePanel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onShowVolumeChanged(streamType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", flags: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "), index: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    :cond_3
    iget-object v4, p0, Lcom/htc/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v4, p1}, Landroid/media/AudioService;->getStreamMaxVolume(I)I

    move-result v2

    .line 1274
    .local v2, max:I
    sget-boolean v4, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v4, :cond_4

    .line 1275
    const-string v4, "VolumePanel"

    const-string v5, "++onShowVolumeChanged update by streamType"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    :cond_4
    if-eq p1, v8, :cond_5

    if-eq p1, v7, :cond_5

    iget-boolean v4, p0, Lcom/htc/view/VolumePanel;->isRotate:Z

    if-eqz v4, :cond_5

    .line 1278
    invoke-virtual {p0}, Lcom/htc/view/VolumePanel;->resetPenelRotation()V

    .line 1280
    :cond_5
    packed-switch p1, :pswitch_data_0

    .line 1342
    :goto_0
    :pswitch_0
    sget-boolean v4, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v4, :cond_6

    .line 1343
    const-string v4, "VolumePanel"

    const-string v5, "++onShowVolumeChanged update progress"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1345
    :cond_6
    iget-object v4, p0, Lcom/htc/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/view/VolumePanel$StreamControl;

    .line 1346
    .local v3, sc:Lcom/htc/view/VolumePanel$StreamControl;
    if-nez v3, :cond_7

    .line 1348
    iget-object v4, p0, Lcom/htc/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    iget v5, p0, Lcom/htc/view/VolumePanel;->mActiveStreamType:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/view/VolumePanel$StreamControl;

    .line 1349
    .local v0, active:Lcom/htc/view/VolumePanel$StreamControl;
    if-eqz v0, :cond_7

    iget v4, v0, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    if-ne v4, p1, :cond_7

    .line 1350
    move-object v3, v0

    .line 1353
    .end local v0           #active:Lcom/htc/view/VolumePanel$StreamControl;
    :cond_7
    if-eqz v3, :cond_9

    .line 1354
    iget-object v4, v3, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getMax()I

    move-result v4

    if-eq v4, v2, :cond_8

    .line 1355
    iget-object v4, v3, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v4, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1357
    :cond_8
    iget-object v4, v3, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v4, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1359
    :cond_9
    sget-boolean v4, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v4, :cond_a

    .line 1360
    const-string v4, "VolumePanel"

    const-string v5, "--onShowVolumeChanged update progress"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    :cond_a
    iget-object v4, p0, Lcom/htc/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->isShowing()Z

    move-result v4

    if-nez v4, :cond_d

    .line 1363
    sget-boolean v4, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v4, :cond_b

    .line 1364
    const-string v4, "VolumePanel"

    const-string v5, "++onShowVolumeChanged dialog show"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    :cond_b
    iget-object v4, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, p1}, Landroid/media/AudioManager;->forceVolumeControlStream(I)V

    .line 1367
    iget-object v4, p0, Lcom/htc/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    iget-object v5, p0, Lcom/htc/view/VolumePanel;->mView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 1369
    iget-boolean v4, p0, Lcom/htc/view/VolumePanel;->mShowCombinedVolumes:Z

    if-eqz v4, :cond_c

    .line 1370
    invoke-direct {p0}, Lcom/htc/view/VolumePanel;->collapse()V

    .line 1372
    :cond_c
    iget-object v4, p0, Lcom/htc/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 1373
    sget-boolean v4, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v4, :cond_d

    .line 1374
    const-string v4, "VolumePanel"

    const-string v5, "--onShowVolumeChanged dialog show"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    :cond_d
    and-int/lit8 v4, p2, 0x10

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/htc/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v4, p1}, Landroid/media/AudioService;->isStreamAffectedByRingerMode(I)Z

    move-result v4

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/htc/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v4}, Landroid/media/AudioService;->getRingerMode()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_e

    invoke-direct {p0}, Lcom/htc/view/VolumePanel;->shouldVibrate()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1383
    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lcom/htc/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x12c

    invoke-virtual {p0, v4, v5, v6}, Lcom/htc/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1385
    :cond_e
    sget-boolean v4, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v4, :cond_f

    .line 1386
    const-string v4, "VolumePanel"

    const-string v5, "--onShowVolumeChanged"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1388
    :cond_f
    return-void

    .line 1283
    .end local v3           #sc:Lcom/htc/view/VolumePanel$StreamControl;
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/view/VolumePanel;->updatePanelRotation()V

    goto/16 :goto_0

    .line 1289
    :pswitch_2
    invoke-virtual {p0}, Lcom/htc/view/VolumePanel;->updatePanelRotation()V

    .line 1291
    iget-object v4, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v7}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v4

    and-int/lit16 v4, v4, 0x380

    if-eqz v4, :cond_10

    .line 1295
    sget-object v4, Lcom/htc/view/VolumePanel$StreamResources;->BluetoothSCOStream:Lcom/htc/view/VolumePanel$StreamResources;

    iget-object v4, v4, Lcom/htc/view/VolumePanel$StreamResources;->iconHtcResName:Ljava/lang/String;

    sget-object v5, Lcom/htc/view/VolumePanel$StreamResources;->MediaStream:Lcom/htc/view/VolumePanel$StreamResources;

    iget v5, v5, Lcom/htc/view/VolumePanel$StreamResources;->iconRes:I

    invoke-direct {p0, v4, v5}, Lcom/htc/view/VolumePanel;->getHtcSenseRes(Ljava/lang/String;I)I

    move-result v4

    sget-object v5, Lcom/htc/view/VolumePanel$StreamResources;->BluetoothSCOStream:Lcom/htc/view/VolumePanel$StreamResources;

    iget-object v5, v5, Lcom/htc/view/VolumePanel$StreamResources;->iconHtcMuteResName:Ljava/lang/String;

    sget-object v6, Lcom/htc/view/VolumePanel$StreamResources;->MediaStream:Lcom/htc/view/VolumePanel$StreamResources;

    iget v6, v6, Lcom/htc/view/VolumePanel$StreamResources;->iconMuteRes:I

    invoke-direct {p0, v5, v6}, Lcom/htc/view/VolumePanel;->getHtcSenseRes(Ljava/lang/String;I)I

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/htc/view/VolumePanel;->setMusicIcon(II)V

    goto/16 :goto_0

    .line 1301
    :cond_10
    sget-object v4, Lcom/htc/view/VolumePanel$StreamResources;->MediaStream:Lcom/htc/view/VolumePanel$StreamResources;

    iget-object v4, v4, Lcom/htc/view/VolumePanel$StreamResources;->iconHtcResName:Ljava/lang/String;

    sget-object v5, Lcom/htc/view/VolumePanel$StreamResources;->MediaStream:Lcom/htc/view/VolumePanel$StreamResources;

    iget v5, v5, Lcom/htc/view/VolumePanel$StreamResources;->iconRes:I

    invoke-direct {p0, v4, v5}, Lcom/htc/view/VolumePanel;->getHtcSenseRes(Ljava/lang/String;I)I

    move-result v4

    sget-object v5, Lcom/htc/view/VolumePanel$StreamResources;->MediaStream:Lcom/htc/view/VolumePanel$StreamResources;

    iget-object v5, v5, Lcom/htc/view/VolumePanel$StreamResources;->iconHtcMuteResName:Ljava/lang/String;

    sget-object v6, Lcom/htc/view/VolumePanel$StreamResources;->MediaStream:Lcom/htc/view/VolumePanel$StreamResources;

    iget v6, v6, Lcom/htc/view/VolumePanel$StreamResources;->iconMuteRes:I

    invoke-direct {p0, v5, v6}, Lcom/htc/view/VolumePanel;->getHtcSenseRes(Ljava/lang/String;I)I

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/htc/view/VolumePanel;->setMusicIcon(II)V

    goto/16 :goto_0

    .line 1316
    :pswitch_3
    add-int/lit8 v1, v1, 0x1

    .line 1317
    add-int/lit8 v2, v2, 0x1

    .line 1318
    goto/16 :goto_0

    .line 1322
    :pswitch_4
    iget-object v4, p0, Lcom/htc/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v4, p1}, Landroid/media/AudioService;->getStreamVolume(I)I

    move-result v1

    .line 1323
    goto/16 :goto_0

    .line 1337
    :pswitch_5
    add-int/lit8 v1, v1, 0x1

    .line 1338
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 1280
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 1860
    return-void
.end method

.method protected onStopSounds()V
    .locals 4

    .prologue
    .line 1440
    monitor-enter p0

    .line 1441
    :try_start_0
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v1

    .line 1442
    .local v1, numStreamTypes:I
    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 1443
    iget-object v3, p0, Lcom/htc/view/VolumePanel;->mSoundPools:[Lcom/htc/view/VolumePanel$SoundPoolHelp;

    aget-object v2, v3, v0

    .line 1444
    .local v2, soundPoolHelp:Lcom/htc/view/VolumePanel$SoundPoolHelp;
    if-eqz v2, :cond_0

    .line 1445
    invoke-virtual {v2}, Lcom/htc/view/VolumePanel$SoundPoolHelp;->fnstop()V

    .line 1442
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1448
    .end local v2           #soundPoolHelp:Lcom/htc/view/VolumePanel$SoundPoolHelp;
    :cond_1
    monitor-exit p0

    .line 1449
    return-void

    .line 1448
    .end local v0           #i:I
    .end local v1           #numStreamTypes:I
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .parameter "seekBar"

    .prologue
    .line 1865
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/view/VolumePanel$StreamControl;

    .line 1866
    .local v0, sc:Lcom/htc/view/VolumePanel$StreamControl;
    iget v1, v0, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    if-nez v1, :cond_0

    .line 1867
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    if-nez v1, :cond_0

    .line 1868
    iget-object v1, v0, Lcom/htc/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1872
    :cond_0
    return-void
.end method

.method protected onVibrate()V
    .locals 3

    .prologue
    .line 1454
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v0}, Landroid/media/AudioService;->getRingerMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 1462
    :cond_0
    :goto_0
    return-void

    .line 1457
    :cond_1
    sget-boolean v0, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_2

    .line 1458
    const-string v0, "VolumePanel"

    const-string v1, ">>mVibrator.vibrate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1459
    :cond_2
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 1460
    sget-boolean v0, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    .line 1461
    const-string v0, "VolumePanel"

    const-string v1, "<<mVibrator.vibrate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onVolumeChanged(II)V
    .locals 11
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x2

    const/4 v8, -0x1

    .line 1192
    sget-boolean v5, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v5, :cond_0

    const-string v5, "VolumePanel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onVolumeChanged(streamType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", flags: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    :cond_0
    and-int/lit8 v5, p2, 0x1

    if-eqz v5, :cond_4

    .line 1196
    const/4 v1, -0x1

    .line 1197
    .local v1, activeStreamTypeInternal:I
    iget v5, p0, Lcom/htc/view/VolumePanel;->mActiveStreamType:I

    const/4 v6, -0x2

    if-eq v5, v6, :cond_9

    .line 1198
    iget v1, p0, Lcom/htc/view/VolumePanel;->mActiveStreamType:I

    .line 1207
    :cond_1
    :goto_0
    iget v5, p0, Lcom/htc/view/VolumePanel;->mActiveStreamType:I

    if-eq v5, v8, :cond_2

    if-eq v1, p1, :cond_3

    .line 1209
    :cond_2
    invoke-direct {p0, p1}, Lcom/htc/view/VolumePanel;->reorderSliders(I)V

    .line 1211
    :cond_3
    iget v5, p0, Lcom/htc/view/VolumePanel;->mActiveStreamType:I

    if-eq v5, v8, :cond_a

    .line 1212
    invoke-virtual {p0, p1, p2}, Lcom/htc/view/VolumePanel;->onShowVolumeChanged(II)V

    .line 1218
    .end local v1           #activeStreamTypeInternal:I
    :cond_4
    :goto_1
    and-int/lit8 v5, p2, 0x4

    if-eqz v5, :cond_6

    .line 1221
    const/4 v4, 0x0

    .line 1222
    .local v4, playSoundDelay:I
    iget-object v5, p0, Lcom/htc/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v5, p1}, Landroid/media/AudioService;->getStreamVolume(I)I

    move-result v2

    .line 1225
    .local v2, index:I
    sget v5, Lcom/htc/view/VolumePanel;->last_stream_type:I

    if-ne v5, p1, :cond_5

    sget v5, Lcom/htc/view/VolumePanel;->last_stream_index:I

    if-ne v5, v2, :cond_5

    .line 1227
    iget-object v5, p0, Lcom/htc/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v5, p1}, Landroid/media/AudioService;->getStreamMaxVolume(I)I

    move-result v3

    .line 1228
    .local v3, max:I
    if-ne v2, v3, :cond_5

    .line 1229
    const/16 v4, 0x96

    .line 1231
    .end local v3           #max:I
    :cond_5
    sput p1, Lcom/htc/view/VolumePanel;->last_stream_type:I

    .line 1232
    sput v2, Lcom/htc/view/VolumePanel;->last_stream_index:I

    .line 1233
    invoke-virtual {p0, v9}, Lcom/htc/view/VolumePanel;->removeMessages(I)V

    .line 1234
    invoke-virtual {p0, v9, p1, p2}, Lcom/htc/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    int-to-long v6, v4

    invoke-virtual {p0, v5, v6, v7}, Lcom/htc/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1237
    .end local v2           #index:I
    .end local v4           #playSoundDelay:I
    :cond_6
    and-int/lit8 v5, p2, 0x8

    if-eqz v5, :cond_7

    .line 1238
    invoke-virtual {p0, v9}, Lcom/htc/view/VolumePanel;->removeMessages(I)V

    .line 1239
    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Lcom/htc/view/VolumePanel;->removeMessages(I)V

    .line 1240
    invoke-virtual {p0}, Lcom/htc/view/VolumePanel;->onStopSounds()V

    .line 1243
    :cond_7
    invoke-virtual {p0, v10}, Lcom/htc/view/VolumePanel;->removeMessages(I)V

    .line 1244
    invoke-virtual {p0, v10}, Lcom/htc/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    const-wide/32 v6, 0x927c0

    invoke-virtual {p0, v5, v6, v7}, Lcom/htc/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1246
    invoke-direct {p0}, Lcom/htc/view/VolumePanel;->resetTimeout()V

    .line 1247
    sget-boolean v5, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v5, :cond_8

    const-string v5, "VolumePanel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "--onVolumeChanged(streamType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", flags: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    :cond_8
    return-void

    .line 1200
    .restart local v1       #activeStreamTypeInternal:I
    :cond_9
    iget v5, p0, Lcom/htc/view/VolumePanel;->mActiveStreamType:I

    if-eq v5, v8, :cond_1

    .line 1201
    iget-object v5, p0, Lcom/htc/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    iget v6, p0, Lcom/htc/view/VolumePanel;->mActiveStreamType:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/view/VolumePanel$StreamControl;

    .line 1202
    .local v0, active:Lcom/htc/view/VolumePanel$StreamControl;
    if-eqz v0, :cond_1

    .line 1203
    iget v1, v0, Lcom/htc/view/VolumePanel$StreamControl;->streamType:I

    goto/16 :goto_0

    .line 1214
    .end local v0           #active:Lcom/htc/view/VolumePanel$StreamControl;
    :cond_a
    const-string v5, "VolumePanel"

    const-string v6, "onVolumeChanged unknown mActiveStreamType"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public postVolumeChanged(II)V
    .locals 4
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/4 v3, 0x0

    .line 1161
    const/16 v0, 0x20

    if-eq p2, v0, :cond_0

    if-nez p2, :cond_2

    .line 1162
    :cond_0
    sget-boolean v0, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_1

    const-string v0, "VolumePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVolumeChanged(streamType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") --drop"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    :cond_1
    :goto_0
    return-void

    .line 1168
    :cond_2
    invoke-virtual {p0, v3}, Lcom/htc/view/VolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1169
    sget-boolean v0, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_3

    const-string v0, "VolumePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postVolumeChanged(streamType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")  still processing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    :cond_3
    iget v0, p0, Lcom/htc/view/VolumePanel;->mActiveStreamType:I

    if-ne p1, v0, :cond_4

    iget v0, p0, Lcom/htc/view/VolumePanel;->mLastFlags:I

    if-eq v0, p2, :cond_1

    .line 1173
    :cond_4
    sget-boolean v0, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_5

    const-string v0, "VolumePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "++postVolumeChanged(streamType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    :cond_5
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    if-nez v0, :cond_6

    .line 1175
    invoke-direct {p0}, Lcom/htc/view/VolumePanel;->createSliders()V

    .line 1177
    :cond_6
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/view/VolumePanel;->removeMessages(I)V

    .line 1178
    invoke-virtual {p0, v3, p1, p2}, Lcom/htc/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1179
    iput p2, p0, Lcom/htc/view/VolumePanel;->mLastFlags:I

    .line 1180
    sget-boolean v0, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_1

    const-string v0, "VolumePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--postVolumeChanged(streamType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method protected resetPenelRotation()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1742
    iput-boolean v2, p0, Lcom/htc/view/VolumePanel;->isRotate:Z

    .line 1743
    iput-boolean v2, p0, Lcom/htc/view/VolumePanel;->needRotate:Z

    .line 1744
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mRotateRelativeLayout:Landroid/widget/RotateRelativeLayout;

    if-nez v2, :cond_1

    .line 1761
    :cond_0
    :goto_0
    return-void

    .line 1746
    :cond_1
    sget v2, Lcom/htc/view/VolumePanel;->SCREEN_MODE_PORTRAIT:I

    iput v2, p0, Lcom/htc/view/VolumePanel;->panel_orientation:I

    .line 1747
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mRotateRelativeLayout:Landroid/widget/RotateRelativeLayout;

    sget v3, Lcom/htc/view/VolumePanel;->SCREEN_MODE_PORTRAIT:I

    invoke-virtual {v2, v3}, Landroid/widget/RotateRelativeLayout;->setRotation(I)V

    .line 1748
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mRotateRelativeLayout:Landroid/widget/RotateRelativeLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/RotateRelativeLayout;->setGravity(I)V

    .line 1749
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 1750
    .local v1, window:Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1751
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    iget v2, p0, Lcom/htc/view/VolumePanel;->mScreenWidth:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1752
    const/4 v2, -0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1753
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1755
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_0

    .line 1757
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0
.end method

.method public resetProgressBar(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 550
    sget-boolean v0, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    .line 551
    const-string v0, "VolumePanel"

    const-string v1, "resetProgressBar"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    .line 553
    return-void
.end method

.method public setVolumePanelOrientation(I)V
    .locals 3
    .parameter "orientation"

    .prologue
    .line 1571
    sget-boolean v0, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    .line 1572
    const-string v0, "VolumePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVolumePanelOrientation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1574
    :cond_0
    sget v0, Lcom/htc/view/VolumePanel;->SCREEN_MODE_PORTRAIT:I

    if-eq p1, v0, :cond_1

    sget v0, Lcom/htc/view/VolumePanel;->SCREEN_MODE_IPORTRAIT:I

    if-eq p1, v0, :cond_1

    sget v0, Lcom/htc/view/VolumePanel;->SCREEN_MODE_LANDSCAPE:I

    if-eq p1, v0, :cond_1

    sget v0, Lcom/htc/view/VolumePanel;->SCREEN_MODE_ILANDSCAPE:I

    if-ne p1, v0, :cond_2

    .line 1578
    :cond_1
    iput p1, p0, Lcom/htc/view/VolumePanel;->panel_orientation:I

    .line 1579
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/view/VolumePanel;->needRotate:Z

    .line 1580
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1582
    iget-object v0, p0, Lcom/htc/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1588
    :cond_2
    return-void
.end method

.method protected updatePanelRotation()V
    .locals 8

    .prologue
    const/16 v7, 0x10

    const/4 v6, 0x1

    const/4 v5, -0x2

    .line 1607
    iget-boolean v2, p0, Lcom/htc/view/VolumePanel;->needRotate:Z

    if-nez v2, :cond_1

    .line 1660
    :cond_0
    :goto_0
    return-void

    .line 1609
    :cond_1
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mRotateRelativeLayout:Landroid/widget/RotateRelativeLayout;

    if-eqz v2, :cond_0

    .line 1612
    sget-boolean v2, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v2, :cond_2

    .line 1613
    const-string v2, "VolumePanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updatePanelRotation"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/view/VolumePanel;->panel_orientation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1622
    :cond_2
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 1623
    .local v1, window:Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1625
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    iget v2, p0, Lcom/htc/view/VolumePanel;->panel_orientation:I

    sget v3, Lcom/htc/view/VolumePanel;->SCREEN_MODE_PORTRAIT:I

    if-ne v2, v3, :cond_4

    .line 1627
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mRotateRelativeLayout:Landroid/widget/RotateRelativeLayout;

    iget v3, p0, Lcom/htc/view/VolumePanel;->panel_orientation:I

    invoke-virtual {v2, v3}, Landroid/widget/RotateRelativeLayout;->setRotation(I)V

    .line 1628
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mRotateRelativeLayout:Landroid/widget/RotateRelativeLayout;

    invoke-virtual {v2, v6}, Landroid/widget/RotateRelativeLayout;->setGravity(I)V

    .line 1629
    iget v2, p0, Lcom/htc/view/VolumePanel;->mScreenWidth:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1630
    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1656
    :cond_3
    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1657
    iput-boolean v6, p0, Lcom/htc/view/VolumePanel;->isRotate:Z

    .line 1658
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/view/VolumePanel;->needRotate:Z

    goto :goto_0

    .line 1632
    :cond_4
    iget v2, p0, Lcom/htc/view/VolumePanel;->panel_orientation:I

    sget v3, Lcom/htc/view/VolumePanel;->SCREEN_MODE_LANDSCAPE:I

    if-ne v2, v3, :cond_5

    .line 1634
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mRotateRelativeLayout:Landroid/widget/RotateRelativeLayout;

    sget v3, Lcom/htc/view/VolumePanel;->SCREEN_MODE_ILANDSCAPE:I

    invoke-virtual {v2, v3}, Landroid/widget/RotateRelativeLayout;->setRotation(I)V

    .line 1635
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mRotateRelativeLayout:Landroid/widget/RotateRelativeLayout;

    invoke-virtual {v2, v7}, Landroid/widget/RotateRelativeLayout;->setGravity(I)V

    .line 1636
    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1637
    iget v2, p0, Lcom/htc/view/VolumePanel;->mScreenWidth:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_1

    .line 1639
    :cond_5
    iget v2, p0, Lcom/htc/view/VolumePanel;->panel_orientation:I

    sget v3, Lcom/htc/view/VolumePanel;->SCREEN_MODE_IPORTRAIT:I

    if-ne v2, v3, :cond_6

    .line 1641
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mRotateRelativeLayout:Landroid/widget/RotateRelativeLayout;

    iget v3, p0, Lcom/htc/view/VolumePanel;->panel_orientation:I

    invoke-virtual {v2, v3}, Landroid/widget/RotateRelativeLayout;->setRotation(I)V

    .line 1642
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mRotateRelativeLayout:Landroid/widget/RotateRelativeLayout;

    invoke-virtual {v2, v6}, Landroid/widget/RotateRelativeLayout;->setGravity(I)V

    .line 1643
    iget v2, p0, Lcom/htc/view/VolumePanel;->mScreenWidth:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1644
    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_1

    .line 1646
    :cond_6
    iget v2, p0, Lcom/htc/view/VolumePanel;->panel_orientation:I

    sget v3, Lcom/htc/view/VolumePanel;->SCREEN_MODE_ILANDSCAPE:I

    if-ne v2, v3, :cond_3

    .line 1648
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mRotateRelativeLayout:Landroid/widget/RotateRelativeLayout;

    sget v3, Lcom/htc/view/VolumePanel;->SCREEN_MODE_LANDSCAPE:I

    invoke-virtual {v2, v3}, Landroid/widget/RotateRelativeLayout;->setRotation(I)V

    .line 1649
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mRotateRelativeLayout:Landroid/widget/RotateRelativeLayout;

    invoke-virtual {v2, v7}, Landroid/widget/RotateRelativeLayout;->setGravity(I)V

    .line 1650
    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1651
    iget v2, p0, Lcom/htc/view/VolumePanel;->mScreenWidth:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_1
.end method

.method public updateSlientSetting(II)V
    .locals 6
    .parameter "VolumeSetting"
    .parameter "sStreamType"

    .prologue
    const/4 v5, 0x2

    .line 1815
    sget-boolean v2, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v2, :cond_0

    const-string v2, "VolumePanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSlientSetting VolumeSetting = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " sStreamType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1818
    :cond_0
    if-eq p2, v5, :cond_3

    const/4 v2, 0x5

    if-eq p2, v2, :cond_1

    const/4 v2, 0x3

    if-ne p2, v2, :cond_2

    :cond_1
    iget-boolean v2, p0, Lcom/htc/view/VolumePanel;->mVoiceCapable:Z

    if-eqz v2, :cond_3

    .line 1856
    :cond_2
    :goto_0
    return-void

    .line 1826
    :cond_3
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    .line 1827
    .local v0, currentSlientSetting:I
    sget-boolean v2, Lcom/htc/view/VolumePanel;->LOGD:Z

    if-eqz v2, :cond_4

    const-string v2, "VolumePanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSlientSetting currentSlientSetting = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1829
    :cond_4
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1838
    :pswitch_0
    if-lez p1, :cond_5

    .line 1840
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v5}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    .line 1832
    :pswitch_1
    if-nez p1, :cond_2

    .line 1834
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    .line 1844
    :cond_5
    new-instance v1, Landroid/os/Vibrator;

    invoke-direct {v1}, Landroid/os/Vibrator;-><init>()V

    .line 1845
    .local v1, vibrator:Landroid/os/Vibrator;
    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 1846
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    .line 1850
    .end local v1           #vibrator:Landroid/os/Vibrator;
    :pswitch_2
    if-lez p1, :cond_2

    .line 1852
    iget-object v2, p0, Lcom/htc/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v5}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    .line 1829
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
