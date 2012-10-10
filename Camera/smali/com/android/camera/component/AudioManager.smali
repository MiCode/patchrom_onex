.class final Lcom/android/camera/component/AudioManager;
.super Lcom/android/camera/component/CameraCompoment;
.source "AudioManager.java"

# interfaces
.implements Lcom/android/camera/IAudioManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/component/AudioManager$6;,
        Lcom/android/camera/component/AudioManager$StreamHandle;,
        Lcom/android/camera/component/AudioManager$SoundHandle;
    }
.end annotation


# static fields
.field private static final MSG_ABANDON_AUDIO_FOCUS:I = 0x2711

.field static final NAME:Ljava/lang/String; = "Audio Manager"

.field private static final SCREEN_MODE_ILANDSCAPE:I = 0x3

.field private static final SCREEN_MODE_IPORTRAIT:I = 0x2

.field private static final SCREEN_MODE_LANDSCAPE:I = 0x1

.field private static final SCREEN_MODE_PORTRAIT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AudioManager(Camera)"

.field private static volatile m_IsAlarmVolumeAdjusted:Z

.field private static volatile m_IsRingVolumeAdjusted:Z

.field private static volatile m_OriginalVolumeAlarm:I

.field private static volatile m_OriginalVolumeRing:I


# instance fields
.field private final m_AudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private final m_HtcAudioManager:Landroid/media/HtcIfAudioManager;

.field private final m_SoundHandles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/component/AudioManager$SoundHandle;",
            ">;"
        }
    .end annotation
.end field

.field private final m_SoundLoadedListener:Landroid/media/SoundPool$OnLoadCompleteListener;

.field private m_SoundPool:Landroid/media/SoundPool;

.field private final m_SysAudioManager:Landroid/media/AudioManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 47
    sput v0, Lcom/android/camera/component/AudioManager;->m_OriginalVolumeAlarm:I

    .line 48
    sput v0, Lcom/android/camera/component/AudioManager;->m_OriginalVolumeRing:I

    return-void
.end method

.method constructor <init>(Lcom/android/camera/HTCCamera;Lcom/android/camera/CameraThread;)V
    .locals 4
    .parameter "cameraActivity"
    .parameter "cameraThread"

    .prologue
    const/4 v3, 0x1

    .line 166
    const-string v0, "Audio Manager"

    invoke-direct {p0, v0, v3, p1, p2}, Lcom/android/camera/component/CameraCompoment;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;Lcom/android/camera/CameraThread;)V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/component/AudioManager;->m_SoundHandles:Ljava/util/ArrayList;

    .line 50
    new-instance v1, Landroid/media/SoundPool;

    invoke-static {}, Lcom/android/camera/DisplayDevice;->forceSutterSound()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    :goto_0
    const/4 v2, 0x0

    invoke-direct {v1, v3, v0, v2}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v1, p0, Lcom/android/camera/component/AudioManager;->m_SoundPool:Landroid/media/SoundPool;

    .line 99
    new-instance v0, Lcom/android/camera/component/AudioManager$1;

    invoke-direct {v0, p0}, Lcom/android/camera/component/AudioManager$1;-><init>(Lcom/android/camera/component/AudioManager;)V

    iput-object v0, p0, Lcom/android/camera/component/AudioManager;->m_AudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 123
    new-instance v0, Lcom/android/camera/component/AudioManager$2;

    invoke-direct {v0, p0}, Lcom/android/camera/component/AudioManager$2;-><init>(Lcom/android/camera/component/AudioManager;)V

    iput-object v0, p0, Lcom/android/camera/component/AudioManager;->m_SoundLoadedListener:Landroid/media/SoundPool$OnLoadCompleteListener;

    .line 167
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Lcom/android/camera/HTCCamera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/camera/component/AudioManager;->m_SysAudioManager:Landroid/media/AudioManager;

    .line 168
    iget-object v0, p0, Lcom/android/camera/component/AudioManager;->m_SoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/camera/component/AudioManager;->m_SoundLoadedListener:Landroid/media/SoundPool$OnLoadCompleteListener;

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 169
    iget-object v0, p0, Lcom/android/camera/component/AudioManager;->m_SysAudioManager:Landroid/media/AudioManager;

    check-cast v0, Landroid/media/HtcIfAudioManager;

    iput-object v0, p0, Lcom/android/camera/component/AudioManager;->m_HtcAudioManager:Landroid/media/HtcIfAudioManager;

    .line 170
    return-void

    .line 50
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/camera/component/AudioManager;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/camera/component/AudioManager;->m_SoundHandles:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/component/AudioManager;Lcom/android/camera/component/AudioManager$StreamHandle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/android/camera/component/AudioManager;->playInMemorySound(Lcom/android/camera/component/AudioManager$StreamHandle;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/component/AudioManager;)Landroid/media/HtcIfAudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/camera/component/AudioManager;->m_HtcAudioManager:Landroid/media/HtcIfAudioManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/component/AudioManager;Lcom/android/camera/rotate/UIRotation;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/android/camera/component/AudioManager;->setVolumePanelOrientation(Lcom/android/camera/rotate/UIRotation;)V

    return-void
.end method

.method private getAdjustedVolume(I)I
    .locals 4
    .parameter "max"

    .prologue
    .line 222
    invoke-static {}, Lcom/android/camera/DisplayDevice;->forceSutterSound()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/HeadsetHelper;->isHeadsetPlugged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    int-to-double v0, p1

    const-wide v2, 0x3feccccccccccccdL

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 233
    :goto_0
    return v0

    .line 225
    :cond_0
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xd2

    if-ne v0, v1, :cond_2

    .line 227
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x7b

    if-ne v0, v1, :cond_1

    .line 228
    int-to-double v0, p1

    const-wide v2, 0x3fe999999999999aL

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_0

    .line 230
    :cond_1
    mul-int/lit8 v0, p1, 0x1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_0

    .line 233
    :cond_2
    mul-int/lit8 v0, p1, 0x1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_0
.end method

.method private playInMemorySound(Lcom/android/camera/component/AudioManager$StreamHandle;)V
    .locals 8
    .parameter "streamHandle"

    .prologue
    .line 422
    iget-boolean v0, p1, Lcom/android/camera/component/AudioManager$StreamHandle;->audioFocus:Z

    if-eqz v0, :cond_0

    .line 424
    const-string v0, "AudioManager(Camera)"

    const-string v1, "playInMemorySound() - Request audio focus"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    invoke-virtual {p0}, Lcom/android/camera/component/AudioManager;->requestAudioFocus()V

    .line 431
    :cond_0
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 433
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/component/AudioManager;->m_SoundPool:Landroid/media/SoundPool;

    iget-object v1, p1, Lcom/android/camera/component/AudioManager$StreamHandle;->sound:Lcom/android/camera/component/AudioManager$SoundHandle;

    iget v1, v1, Lcom/android/camera/component/AudioManager$SoundHandle;->soundId:I

    const/high16 v2, 0x3f80

    const/high16 v3, 0x3f80

    const/4 v4, 0x1

    iget v5, p1, Lcom/android/camera/component/AudioManager$StreamHandle;->loopCount:I

    const/high16 v6, 0x3f80

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v7

    .line 434
    .local v7, streamID:I
    if-eqz v7, :cond_2

    .line 435
    iput v7, p1, Lcom/android/camera/component/AudioManager$StreamHandle;->streamId:I

    .line 438
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 443
    iget-boolean v0, p1, Lcom/android/camera/component/AudioManager$StreamHandle;->audioFocus:Z

    if-eqz v0, :cond_1

    .line 445
    const-string v0, "AudioManager(Camera)"

    const-string v1, "playInMemorySound() - Abandon audio focus"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    invoke-virtual {p0}, Lcom/android/camera/component/AudioManager;->abandonAudioFocus()V

    .line 449
    :cond_1
    return-void

    .line 437
    :cond_2
    :try_start_2
    const-string v0, "AudioManager(Camera)"

    const-string v1, "playInMemorySound() - Failed"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 438
    .end local v7           #streamID:I
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 443
    :catchall_1
    move-exception v0

    iget-boolean v1, p1, Lcom/android/camera/component/AudioManager$StreamHandle;->audioFocus:Z

    if-eqz v1, :cond_3

    .line 445
    const-string v1, "AudioManager(Camera)"

    const-string v2, "playInMemorySound() - Abandon audio focus"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    invoke-virtual {p0}, Lcom/android/camera/component/AudioManager;->abandonAudioFocus()V

    :cond_3
    throw v0
.end method

.method private setAudioStreamVolume(I)V
    .locals 6
    .parameter "audioStreamType"

    .prologue
    const/4 v5, 0x7

    const/4 v3, 0x2

    const/4 v4, -0x1

    .line 520
    const-class v2, Lcom/android/camera/component/AudioManager;

    monitor-enter v2

    .line 522
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/component/AudioManager;->m_SysAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-eq v1, v3, :cond_0

    invoke-static {}, Lcom/android/camera/DisplayDevice;->forceSutterSound()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 526
    :cond_0
    if-ne p1, v5, :cond_1

    sget-boolean v1, Lcom/android/camera/component/AudioManager;->m_IsAlarmVolumeAdjusted:Z

    if-eqz v1, :cond_1

    .line 527
    monitor-exit v2

    .line 558
    :goto_0
    return-void

    .line 528
    :cond_1
    if-ne p1, v3, :cond_2

    sget-boolean v1, Lcom/android/camera/component/AudioManager;->m_IsRingVolumeAdjusted:Z

    if-eqz v1, :cond_2

    .line 529
    monitor-exit v2

    goto :goto_0

    .line 557
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 532
    :cond_2
    :try_start_1
    const-string v1, "AudioManager(Camera)"

    const-string v3, "Backup audio stream volume"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    if-ne p1, v5, :cond_5

    .line 535
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/camera/component/AudioManager;->m_IsAlarmVolumeAdjusted:Z

    .line 536
    sget v1, Lcom/android/camera/component/AudioManager;->m_OriginalVolumeAlarm:I

    if-ne v1, v4, :cond_3

    .line 538
    iget-object v1, p0, Lcom/android/camera/component/AudioManager;->m_SysAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    sput v1, Lcom/android/camera/component/AudioManager;->m_OriginalVolumeAlarm:I

    .line 539
    const-string v1, "AudioManager(Camera)"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Original alarm volume = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/camera/component/AudioManager;->m_OriginalVolumeAlarm:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    :cond_3
    :goto_1
    const-string v1, "AudioManager(Camera)"

    const-string v3, "Set audio stream volume"

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    iget-object v1, p0, Lcom/android/camera/component/AudioManager;->m_SysAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    .line 555
    .local v0, maxVoluume:I
    iget-object v1, p0, Lcom/android/camera/component/AudioManager;->m_SysAudioManager:Landroid/media/AudioManager;

    invoke-direct {p0, v0}, Lcom/android/camera/component/AudioManager;->getAdjustedVolume(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, p1, v3, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 557
    .end local v0           #maxVoluume:I
    :cond_4
    monitor-exit v2

    goto :goto_0

    .line 544
    :cond_5
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/camera/component/AudioManager;->m_IsRingVolumeAdjusted:Z

    .line 545
    sget v1, Lcom/android/camera/component/AudioManager;->m_OriginalVolumeRing:I

    if-ne v1, v4, :cond_3

    .line 547
    iget-object v1, p0, Lcom/android/camera/component/AudioManager;->m_SysAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    sput v1, Lcom/android/camera/component/AudioManager;->m_OriginalVolumeRing:I

    .line 548
    const-string v1, "AudioManager(Camera)"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Original ring volume = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/camera/component/AudioManager;->m_OriginalVolumeRing:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private setVolumePanelOrientation(Lcom/android/camera/rotate/UIRotation;)V
    .locals 3
    .parameter "rotation"

    .prologue
    .line 575
    sget-object v1, Lcom/android/camera/component/AudioManager$6;->$SwitchMap$com$android$camera$rotate$UIRotation:[I

    invoke-virtual {p1}, Lcom/android/camera/rotate/UIRotation;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 587
    const/4 v0, 0x1

    .line 590
    .local v0, panelRotation:I
    :goto_0
    iget-object v1, p0, Lcom/android/camera/component/AudioManager;->m_HtcAudioManager:Landroid/media/HtcIfAudioManager;

    invoke-interface {v1, v0}, Landroid/media/HtcIfAudioManager;->setVolumePanelOrientation(I)V

    .line 591
    return-void

    .line 578
    .end local v0           #panelRotation:I
    :pswitch_0
    const/4 v0, 0x0

    .line 579
    .restart local v0       #panelRotation:I
    goto :goto_0

    .line 581
    .end local v0           #panelRotation:I
    :pswitch_1
    const/4 v0, 0x2

    .line 582
    .restart local v0       #panelRotation:I
    goto :goto_0

    .line 584
    .end local v0           #panelRotation:I
    :pswitch_2
    const/4 v0, 0x3

    .line 585
    .restart local v0       #panelRotation:I
    goto :goto_0

    .line 575
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public abandonAudioFocus()V
    .locals 6

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/android/camera/component/AudioManager;->getCameraMode()Lcom/android/camera/CameraMode;

    move-result-object v0

    sget-object v1, Lcom/android/camera/CameraMode;->Photo:Lcom/android/camera/CameraMode;

    if-ne v0, v1, :cond_0

    .line 197
    const/16 v2, 0x2711

    const-wide/16 v3, 0x96

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/component/AudioManager;->sendMessage(Lcom/android/camera/component/Component;IJZ)Z

    .line 199
    :cond_0
    return-void
.end method

.method protected deinitializeOverride()V
    .locals 1

    .prologue
    .line 208
    monitor-enter p0

    .line 210
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/component/AudioManager;->m_SoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 211
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    invoke-super {p0}, Lcom/android/camera/component/CameraCompoment;->deinitializeOverride()V

    .line 215
    return-void

    .line 211
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected getCameraMode()Lcom/android/camera/CameraMode;
    .locals 2

    .prologue
    .line 253
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/component/AudioManager;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 254
    invoke-virtual {p0}, Lcom/android/camera/component/AudioManager;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->mode:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/CameraMode;

    .line 255
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/component/AudioManager;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->cameraMode:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/CameraMode;

    goto :goto_0
.end method

.method protected getCameraType()Lcom/android/camera/CameraType;
    .locals 2

    .prologue
    .line 264
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/component/AudioManager;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 265
    invoke-virtual {p0}, Lcom/android/camera/component/AudioManager;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/CameraThread;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/CameraType;

    .line 266
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/component/AudioManager;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->cameraType:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/CameraType;

    goto :goto_0
.end method

.method public final getStreamVolume(I)I
    .locals 1
    .parameter "audioStreamType"

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/camera/component/AudioManager;->m_SysAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    return v0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 178
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 184
    invoke-super {p0, p1}, Lcom/android/camera/component/CameraCompoment;->handleMessage(Landroid/os/Message;)V

    .line 187
    :goto_0
    return-void

    .line 181
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/component/AudioManager;->m_SysAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/camera/component/AudioManager;->m_AudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    goto :goto_0

    .line 178
    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 5

    .prologue
    .line 276
    invoke-super {p0}, Lcom/android/camera/component/CameraCompoment;->initializeOverride()V

    .line 279
    invoke-virtual {p0}, Lcom/android/camera/component/AudioManager;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    .line 280
    .local v0, cameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 282
    iget-object v1, p0, Lcom/android/camera/component/Component;->triggers:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/camera/component/AudioManager$3;

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/android/camera/component/AudioManager$3;-><init>(Lcom/android/camera/component/AudioManager;Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->rotation:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/AudioManager$4;

    invoke-direct {v2, p0}, Lcom/android/camera/component/AudioManager$4;-><init>(Lcom/android/camera/component/AudioManager;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 305
    iget-object v1, v0, Lcom/android/camera/HTCCamera;->actionScreenState:Lcom/android/camera/property/Property;

    new-instance v2, Lcom/android/camera/component/AudioManager$5;

    invoke-direct {v2, p0}, Lcom/android/camera/component/AudioManager$5;-><init>(Lcom/android/camera/component/AudioManager;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    .line 317
    :cond_0
    invoke-static {}, Lcom/android/camera/FeatureConfig;->canChangeZoomByVolumeKeys()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 318
    invoke-static {}, Lcom/android/camera/DisplayDevice;->forceSutterSound()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x7

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/camera/component/AudioManager;->setAudioStreamVolume(I)V

    .line 319
    :cond_1
    return-void

    .line 318
    :cond_2
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public loadSoundToMemory(I)Lcom/android/camera/Handle;
    .locals 6
    .parameter "audioResId"

    .prologue
    .line 327
    const-string v2, "AudioManager(Camera)"

    const-string v3, "loadSoundToMemory("

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, ")"

    invoke-static {v2, v3, v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 330
    invoke-virtual {p0}, Lcom/android/camera/component/AudioManager;->threadAccessCheck()V

    .line 331
    invoke-virtual {p0}, Lcom/android/camera/component/AudioManager;->getState()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 333
    const-string v2, "AudioManager(Camera)"

    const-string v3, "loadSoundToMemory() - Component is not running"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const/4 v0, 0x0

    .line 344
    :goto_0
    return-object v0

    .line 338
    :cond_0
    monitor-enter p0

    .line 340
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/component/AudioManager;->m_SoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcom/android/camera/component/AudioManager;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, p1, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    .line 341
    .local v1, soundId:I
    new-instance v0, Lcom/android/camera/component/AudioManager$SoundHandle;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resource-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/android/camera/component/AudioManager$SoundHandle;-><init>(Ljava/lang/String;I)V

    .line 342
    .local v0, handle:Lcom/android/camera/component/AudioManager$SoundHandle;
    iget-object v2, p0, Lcom/android/camera/component/AudioManager;->m_SoundHandles:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    const-string v2, "AudioManager(Camera)"

    const-string v3, "loadSoundToMemory() - Sound ID = "

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 344
    monitor-exit p0

    goto :goto_0

    .line 345
    .end local v0           #handle:Lcom/android/camera/component/AudioManager$SoundHandle;
    .end local v1           #soundId:I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public playInMemorySound(Lcom/android/camera/Handle;IZ)Lcom/android/camera/Handle;
    .locals 8
    .parameter "sound"
    .parameter "loopCount"
    .parameter "audioFocus"

    .prologue
    const/4 v7, 0x0

    .line 377
    if-nez p1, :cond_0

    .line 379
    const-string v0, "AudioManager(Camera)"

    const-string v1, "playInMemorySound() - Null handle"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    :goto_0
    return-object v7

    .line 382
    :cond_0
    instance-of v0, p1, Lcom/android/camera/component/AudioManager$SoundHandle;

    if-nez v0, :cond_1

    .line 384
    const-string v0, "AudioManager(Camera)"

    const-string v1, "playInMemorySound() - Invalid handle"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 389
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/component/AudioManager;->threadAccessCheck()V

    .line 390
    invoke-virtual {p0}, Lcom/android/camera/component/AudioManager;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 392
    const-string v0, "AudioManager(Camera)"

    const-string v1, "playInMemorySound() - Component is not running"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 396
    :cond_2
    const-string v0, "AudioManager(Camera)"

    const-string v1, "playInMemorySound("

    iget-object v2, p1, Lcom/android/camera/Handle;->name:Ljava/lang/String;

    const-string v3, ")"

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v6, p1

    .line 399
    check-cast v6, Lcom/android/camera/component/AudioManager$SoundHandle;

    .line 400
    .local v6, soundHandle:Lcom/android/camera/component/AudioManager$SoundHandle;
    new-instance v7, Lcom/android/camera/component/AudioManager$StreamHandle;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stream-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v6, Lcom/android/camera/Handle;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0, v6, p2, p3}, Lcom/android/camera/component/AudioManager$StreamHandle;-><init>(Ljava/lang/String;Lcom/android/camera/component/AudioManager$SoundHandle;IZ)V

    .line 402
    .local v7, streamHandle:Lcom/android/camera/component/AudioManager$StreamHandle;
    const-string v0, "AudioManager(Camera)"

    const-string v1, "playInMemorySound() - Stream handle : "

    iget-object v2, v7, Lcom/android/camera/Handle;->name:Ljava/lang/String;

    const-string v3, " ["

    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "]"

    invoke-static/range {v0 .. v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 405
    monitor-enter p0

    .line 407
    :try_start_0
    iget-boolean v0, v6, Lcom/android/camera/component/AudioManager$SoundHandle;->isLoaded:Z

    if-nez v0, :cond_3

    .line 409
    iget-object v0, v6, Lcom/android/camera/component/AudioManager$SoundHandle;->pendingStreams:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 410
    const-string v0, "AudioManager(Camera)"

    const-string v1, "playInMemorySound() - Sound is not loaded yet, play later"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    monitor-exit p0

    goto :goto_0

    .line 413
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 416
    invoke-direct {p0, v7}, Lcom/android/camera/component/AudioManager;->playInMemorySound(Lcom/android/camera/component/AudioManager$StreamHandle;)V

    goto :goto_0
.end method

.method public requestAudioFocus()V
    .locals 1

    .prologue
    .line 356
    const/16 v0, 0x2711

    invoke-virtual {p0, v0}, Lcom/android/camera/component/AudioManager;->removeMessages(I)V

    .line 358
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/camera/component/AudioManager;->requestAudioFocus(I)V

    .line 359
    return-void
.end method

.method public requestAudioFocus(I)V
    .locals 3
    .parameter "durationHint"

    .prologue
    .line 363
    iget-object v0, p0, Lcom/android/camera/component/AudioManager;->m_SysAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/camera/component/AudioManager;->m_AudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, p1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 368
    return-void
.end method

.method public restoreAudioStreamVolume()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 496
    const-string v0, "AudioManager(Camera)"

    const-string v1, "restoreAudioStreamVolume()"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    const-class v1, Lcom/android/camera/component/AudioManager;

    monitor-enter v1

    .line 500
    :try_start_0
    sget v0, Lcom/android/camera/component/AudioManager;->m_OriginalVolumeAlarm:I

    if-eq v0, v5, :cond_0

    .line 502
    iget-object v0, p0, Lcom/android/camera/component/AudioManager;->m_SysAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x7

    sget v3, Lcom/android/camera/component/AudioManager;->m_OriginalVolumeAlarm:I

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 503
    const/4 v0, -0x1

    sput v0, Lcom/android/camera/component/AudioManager;->m_OriginalVolumeAlarm:I

    .line 505
    :cond_0
    sget v0, Lcom/android/camera/component/AudioManager;->m_OriginalVolumeRing:I

    if-eq v0, v5, :cond_1

    .line 507
    iget-object v0, p0, Lcom/android/camera/component/AudioManager;->m_SysAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x2

    sget v3, Lcom/android/camera/component/AudioManager;->m_OriginalVolumeRing:I

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 508
    const/4 v0, -0x1

    sput v0, Lcom/android/camera/component/AudioManager;->m_OriginalVolumeRing:I

    .line 510
    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/camera/component/AudioManager;->m_IsAlarmVolumeAdjusted:Z

    .line 511
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/camera/component/AudioManager;->m_IsRingVolumeAdjusted:Z

    .line 512
    monitor-exit v1

    .line 513
    return-void

    .line 512
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setParameters(Ljava/lang/String;)V
    .locals 1
    .parameter "values"

    .prologue
    .line 566
    iget-object v0, p0, Lcom/android/camera/component/AudioManager;->m_SysAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 567
    return-void
.end method

.method public stopInMemorySound(Lcom/android/camera/Handle;)V
    .locals 6
    .parameter "handle"

    .prologue
    .line 458
    if-nez p1, :cond_0

    .line 460
    const-string v2, "AudioManager(Camera)"

    const-string v3, "stopInMemorySound() - Null handle"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    :goto_0
    return-void

    .line 463
    :cond_0
    instance-of v2, p1, Lcom/android/camera/component/AudioManager$StreamHandle;

    if-nez v2, :cond_1

    .line 465
    const-string v2, "AudioManager(Camera)"

    const-string v3, "stopInMemorySound() - Invalid handle"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 470
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/component/AudioManager;->threadAccessCheck()V

    .line 471
    invoke-virtual {p0}, Lcom/android/camera/component/AudioManager;->getState()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    .line 473
    const-string v2, "AudioManager(Camera)"

    const-string v3, "stopInMemorySound() - Component is not running"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 477
    :cond_2
    const-string v2, "AudioManager(Camera)"

    const-string v3, "stopInMemorySound("

    iget-object v4, p1, Lcom/android/camera/Handle;->name:Ljava/lang/String;

    const-string v5, ")"

    invoke-static {v2, v3, v4, v5}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 480
    monitor-enter p0

    .line 482
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/android/camera/component/AudioManager$StreamHandle;

    move-object v1, v0

    .line 483
    .local v1, streamHandle:Lcom/android/camera/component/AudioManager$StreamHandle;
    iget-object v2, v1, Lcom/android/camera/component/AudioManager$StreamHandle;->sound:Lcom/android/camera/component/AudioManager$SoundHandle;

    iget-boolean v2, v2, Lcom/android/camera/component/AudioManager$SoundHandle;->isLoaded:Z

    if-eqz v2, :cond_3

    .line 484
    iget-object v2, p0, Lcom/android/camera/component/AudioManager;->m_SoundPool:Landroid/media/SoundPool;

    iget v3, v1, Lcom/android/camera/component/AudioManager$StreamHandle;->streamId:I

    invoke-virtual {v2, v3}, Landroid/media/SoundPool;->stop(I)V

    .line 487
    :goto_1
    monitor-exit p0

    goto :goto_0

    .end local v1           #streamHandle:Lcom/android/camera/component/AudioManager$StreamHandle;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 486
    .restart local v1       #streamHandle:Lcom/android/camera/component/AudioManager$StreamHandle;
    :cond_3
    :try_start_1
    iget-object v2, v1, Lcom/android/camera/component/AudioManager$StreamHandle;->sound:Lcom/android/camera/component/AudioManager$SoundHandle;

    iget-object v2, v2, Lcom/android/camera/component/AudioManager$SoundHandle;->pendingStreams:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
