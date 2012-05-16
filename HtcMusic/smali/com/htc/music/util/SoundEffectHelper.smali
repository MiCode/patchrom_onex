.class public Lcom/htc/music/util/SoundEffectHelper;
.super Ljava/lang/Object;
.source "SoundEffectHelper.java"


# static fields
.field public static final APP_NAME:Ljava/lang/String; = "HtcMusic"

.field static final AP_TAG:Ljava/lang/String; = "active_ap=Music;"

.field static final AudioEffectParameter:Ljava/lang/String; = "dolby_srs_eq"

.field static final AudioParameterStartWith:Ljava/lang/String; = "active_ap=Music;dolby_srs_eq="

.field public static BEATS_Beats:I = 0x0

.field public static BEATS_Original:I = 0x0

.field public static BEATS_SRS:I = 0x0

.field public static Beats:I = 0x0

.field public static Dolby:I = 0x0

.field private static final EQSettingPreference:Ljava/lang/String; = "Equalizer"

.field public static final EQStylesNotFromDevice:[Ljava/lang/String; = null

.field private static final EQ_PARAMETERS_1:Ljava/lang/String; = "srsfx_sidechain="

.field private static final EQ_PARAMETERS_2:Ljava/lang/String; = ",geq10"

.field public static Equalizer:I = 0x0

.field public static final EqualizerStyle:[Ljava/lang/String; = null

.field public static EqualizerStylesFromDevice:[Ljava/lang/String; = null

.field private static final LastAudioSetting:Ljava/lang/String; = "LastAudioSetting"

.field private static final LastEQPreferencekey:Ljava/lang/String; = "LastEQStyle"

.field public static Original:I = 0x0

.field public static final SOUNDEFFECT_STYLE_BEATS:Ljava/lang/String; = "Beats"

.field public static final SOUNDEFFECT_STYLE_DOLBY:Ljava/lang/String; = "Dolby"

.field public static final SOUNDEFFECT_STYLE_EQ:Ljava/lang/String; = "Equalizer"

.field public static final SOUNDEFFECT_STYLE_ORIGINAL:Ljava/lang/String; = "Original"

.field public static final SOUNDEFFECT_STYLE_SRS:Ljava/lang/String; = "SRS"

.field public static final SOUNDEFFECT_STYLE_WIDE:Ljava/lang/String; = "Wide"

.field public static SRS:I = 0x0

.field private static final SRS_PARAMETERS_1:Ljava/lang/String; = "srsfx_sidechain="

.field private static final SRS_PARAMETERS_2:Ljava/lang/String; = ",trumedia,/system/etc/soundimage/srsfx_trumedia_music.cfg"

.field private static SoundBeatsEffectIcon:[I = null

.field private static SoundBeatsEffetcStyle:[Ljava/lang/String; = null

.field private static SoundEffectIcon:[I = null

.field private static SoundEffetcStyle:[Ljava/lang/String; = null

.field private static final SoundSettingPreference:Ljava/lang/String; = "SoundEffect"

.field private static final SoundSettingPreferenceKey:Ljava/lang/String; = "SoundEffectStyle"

.field private static final TAG:Ljava/lang/String; = "[SoundEffectHelper]"

.field private static final TempSoundSettingPreferenceKey:Ljava/lang/String; = "TempSoundEffectStyle"

.field static final TurnOffEnhancer:Ljava/lang/String; = "active_ap=Music;sound_effect_enable=off"

.field static final TurnOnEnhancer:Ljava/lang/String; = "active_ap=Music;sound_effect_enable=on"

.field private static final WIDE_PARAMETERS_2:Ljava/lang/String; = ",trumedia,/system/etc/soundimage/srsfx_trumedia_music_wide.cfg"

.field private static iDefaultEQIdx:I

.field private static mAudioEffectLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private static mCurrentSessionID:I

.field private static mEqualizer:Landroid/media/audiofx/Equalizer;

.field private static mSRS:Landroid/media/audiofx/BassBoost;

.field private static mWide:Landroid/media/audiofx/BassBoost;

.field private static szDefaultEQStr:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 50
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/music/util/SoundEffectHelper;->EqualizerStylesFromDevice:[Ljava/lang/String;

    .line 52
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Bass Booster"

    aput-object v1, v0, v5

    const-string v1, "Mid Booster"

    aput-object v1, v0, v3

    const-string v1, "Treble Booster"

    aput-object v1, v0, v6

    const-string v1, "Loudness"

    aput-object v1, v0, v4

    const-string v1, "Live"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Dance"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Warmth"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Sweetener"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Wide"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/music/util/SoundEffectHelper;->EqualizerStyle:[Ljava/lang/String;

    .line 63
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "Wide"

    aput-object v1, v0, v5

    sput-object v0, Lcom/htc/music/util/SoundEffectHelper;->EQStylesNotFromDevice:[Ljava/lang/String;

    .line 66
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Original"

    aput-object v1, v0, v5

    const-string v1, "Dolby"

    aput-object v1, v0, v3

    const-string v1, "SRS"

    aput-object v1, v0, v6

    const-string v1, "Equalizer"

    aput-object v1, v0, v4

    const-string v1, "Beats"

    aput-object v1, v0, v7

    sput-object v0, Lcom/htc/music/util/SoundEffectHelper;->SoundEffetcStyle:[Ljava/lang/String;

    .line 81
    new-array v0, v7, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/music/util/SoundEffectHelper;->SoundEffectIcon:[I

    .line 88
    sput v5, Lcom/htc/music/util/SoundEffectHelper;->Original:I

    .line 89
    sput v3, Lcom/htc/music/util/SoundEffectHelper;->Dolby:I

    .line 90
    sput v6, Lcom/htc/music/util/SoundEffectHelper;->SRS:I

    .line 91
    sput v4, Lcom/htc/music/util/SoundEffectHelper;->Equalizer:I

    .line 92
    sput v7, Lcom/htc/music/util/SoundEffectHelper;->Beats:I

    .line 94
    const-string v0, "Loudness"

    sput-object v0, Lcom/htc/music/util/SoundEffectHelper;->szDefaultEQStr:Ljava/lang/String;

    .line 95
    sput v4, Lcom/htc/music/util/SoundEffectHelper;->iDefaultEQIdx:I

    .line 105
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/music/util/SoundEffectHelper;->mSRS:Landroid/media/audiofx/BassBoost;

    .line 106
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/music/util/SoundEffectHelper;->mWide:Landroid/media/audiofx/BassBoost;

    .line 107
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/music/util/SoundEffectHelper;->mEqualizer:Landroid/media/audiofx/Equalizer;

    .line 114
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "Original"

    aput-object v1, v0, v5

    const-string v1, "SRS"

    aput-object v1, v0, v3

    const-string v1, "Beats"

    aput-object v1, v0, v6

    sput-object v0, Lcom/htc/music/util/SoundEffectHelper;->SoundBeatsEffetcStyle:[Ljava/lang/String;

    .line 119
    new-array v0, v4, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/htc/music/util/SoundEffectHelper;->SoundBeatsEffectIcon:[I

    .line 125
    sput v5, Lcom/htc/music/util/SoundEffectHelper;->BEATS_Original:I

    .line 126
    sput v3, Lcom/htc/music/util/SoundEffectHelper;->BEATS_SRS:I

    .line 127
    sput v6, Lcom/htc/music/util/SoundEffectHelper;->BEATS_Beats:I

    .line 134
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isDolbyEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "Original"

    aput-object v1, v0, v5

    const-string v1, "SRS"

    aput-object v1, v0, v3

    const-string v1, "Equalizer"

    aput-object v1, v0, v6

    const-string v1, "Beats"

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/music/util/SoundEffectHelper;->SoundEffetcStyle:[Ljava/lang/String;

    .line 149
    const/4 v0, -0x1

    sput v0, Lcom/htc/music/util/SoundEffectHelper;->Dolby:I

    .line 150
    sput v3, Lcom/htc/music/util/SoundEffectHelper;->SRS:I

    .line 151
    sput v6, Lcom/htc/music/util/SoundEffectHelper;->Equalizer:I

    .line 152
    sput v4, Lcom/htc/music/util/SoundEffectHelper;->Beats:I

    .line 515
    :cond_0
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/htc/music/util/SoundEffectHelper;->mAudioEffectLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-void

    .line 81
    :array_0
    .array-data 0x4
        0x52t 0x0t 0x8t 0x2t
        0xc8t 0x0t 0x8t 0x2t
        0x23t 0x0t 0x2t 0x7ft
        0xa0t 0x0t 0x8t 0x2t
    .end array-data

    .line 119
    :array_1
    .array-data 0x4
        0x8dt 0x0t 0x8t 0x2t
        0x50t 0x0t 0x8t 0x2t
        0xa0t 0x0t 0x8t 0x2t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static IsBeatsCanBeEnable(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 722
    invoke-static {p0}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 726
    invoke-static {p0}, Lcom/htc/music/util/HeadSetHelper;->isHeadsetPlugged(Landroid/content/Context;)Z

    move-result v0

    .line 728
    .local v0, bHeadsetPlugged:Z
    if-eqz v0, :cond_0

    .line 729
    const/4 v1, 0x1

    .line 747
    .end local v0           #bHeadsetPlugged:Z
    :cond_0
    return v1
.end method

.method public static IsSupportBeats(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 702
    const/4 v0, 0x1

    return v0
.end method

.method private static disableBeats(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 487
    sget-object v0, Lcom/htc/music/util/SoundEffectHelper;->mAudioEffectLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 508
    sget-object v0, Lcom/htc/music/util/SoundEffectHelper;->mAudioEffectLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 510
    return-void
.end method

.method private static disableEqualizer()V
    .locals 2

    .prologue
    .line 471
    sget-object v0, Lcom/htc/music/util/SoundEffectHelper;->mAudioEffectLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 473
    :try_start_0
    sget-object v0, Lcom/htc/music/util/SoundEffectHelper;->mEqualizer:Landroid/media/audiofx/Equalizer;

    if-eqz v0, :cond_0

    .line 474
    sget-object v0, Lcom/htc/music/util/SoundEffectHelper;->mEqualizer:Landroid/media/audiofx/Equalizer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/audiofx/Equalizer;->setEnabled(Z)I

    .line 475
    const-string v0, "[SoundEffectHelper]"

    const-string v1, "disableEqualizer(), +++"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    sget-object v0, Lcom/htc/music/util/SoundEffectHelper;->mEqualizer:Landroid/media/audiofx/Equalizer;

    invoke-virtual {v0}, Landroid/media/audiofx/Equalizer;->release()V

    .line 477
    const-string v0, "[SoundEffectHelper]"

    const-string v1, "disableEqualizer(), ---"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/music/util/SoundEffectHelper;->mEqualizer:Landroid/media/audiofx/Equalizer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 482
    :cond_0
    sget-object v0, Lcom/htc/music/util/SoundEffectHelper;->mAudioEffectLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 484
    return-void

    .line 482
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/htc/music/util/SoundEffectHelper;->mAudioEffectLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private static disableSRS()V
    .locals 2

    .prologue
    .line 439
    sget-object v0, Lcom/htc/music/util/SoundEffectHelper;->mAudioEffectLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 441
    :try_start_0
    sget-object v0, Lcom/htc/music/util/SoundEffectHelper;->mSRS:Landroid/media/audiofx/BassBoost;

    if-eqz v0, :cond_0

    .line 442
    sget-object v0, Lcom/htc/music/util/SoundEffectHelper;->mSRS:Landroid/media/audiofx/BassBoost;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/audiofx/BassBoost;->setEnabled(Z)I

    .line 443
    const-string v0, "[SoundEffectHelper]"

    const-string v1, "disableSRS(), +++"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    sget-object v0, Lcom/htc/music/util/SoundEffectHelper;->mSRS:Landroid/media/audiofx/BassBoost;

    invoke-virtual {v0}, Landroid/media/audiofx/BassBoost;->release()V

    .line 445
    const-string v0, "[SoundEffectHelper]"

    const-string v1, "disableSRS(), ---"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/music/util/SoundEffectHelper;->mSRS:Landroid/media/audiofx/BassBoost;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 450
    :cond_0
    sget-object v0, Lcom/htc/music/util/SoundEffectHelper;->mAudioEffectLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 452
    return-void

    .line 450
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/htc/music/util/SoundEffectHelper;->mAudioEffectLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public static disableSoundEffect(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 429
    const-string v0, "[SoundEffectHelper]"

    const-string v1, "restoreSoundEffect to original"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    invoke-static {}, Lcom/htc/music/util/SoundEffectHelper;->disableSRS()V

    .line 431
    invoke-static {}, Lcom/htc/music/util/SoundEffectHelper;->disableWide()V

    .line 432
    invoke-static {}, Lcom/htc/music/util/SoundEffectHelper;->disableEqualizer()V

    .line 433
    invoke-static {p0}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    invoke-static {p0}, Lcom/htc/music/util/SoundEffectHelper;->disableBeats(Landroid/content/Context;)V

    .line 436
    :cond_0
    return-void
.end method

.method private static disableWide()V
    .locals 2

    .prologue
    .line 455
    sget-object v0, Lcom/htc/music/util/SoundEffectHelper;->mAudioEffectLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 457
    :try_start_0
    sget-object v0, Lcom/htc/music/util/SoundEffectHelper;->mWide:Landroid/media/audiofx/BassBoost;

    if-eqz v0, :cond_0

    .line 458
    sget-object v0, Lcom/htc/music/util/SoundEffectHelper;->mWide:Landroid/media/audiofx/BassBoost;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/audiofx/BassBoost;->setEnabled(Z)I

    .line 459
    const-string v0, "[SoundEffectHelper]"

    const-string v1, "disableWide(), +++"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    sget-object v0, Lcom/htc/music/util/SoundEffectHelper;->mWide:Landroid/media/audiofx/BassBoost;

    invoke-virtual {v0}, Landroid/media/audiofx/BassBoost;->release()V

    .line 461
    const-string v0, "[SoundEffectHelper]"

    const-string v1, "disableWide(), ---"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/music/util/SoundEffectHelper;->mWide:Landroid/media/audiofx/BassBoost;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 466
    :cond_0
    sget-object v0, Lcom/htc/music/util/SoundEffectHelper;->mAudioEffectLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 468
    return-void

    .line 466
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/htc/music/util/SoundEffectHelper;->mAudioEffectLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public static enableCurrentSoundEffect(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "audioSessionID"

    .prologue
    .line 399
    const-string v1, "[SoundEffectHelper]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyCurrentSoundEffect, context:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", audioSessionID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    invoke-static {p0}, Lcom/htc/music/util/SoundEffectHelper;->getTempAudioStyle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 403
    .local v0, style:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 404
    invoke-static {p0}, Lcom/htc/music/util/SoundEffectHelper;->getCurrentAudioStyle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 425
    :goto_0
    invoke-static {p0, v0, p1}, Lcom/htc/music/util/SoundEffectHelper;->setAudioEffect(Landroid/content/Context;Ljava/lang/String;I)V

    .line 426
    return-void

    .line 407
    :cond_0
    const-string v1, "[SoundEffectHelper]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableCurrentSoundEffect, temp style is not null~ style: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getCurrentAudioEffectStyleIndex(Landroid/content/Context;Lcom/htc/music/IMediaPlaybackService;)I
    .locals 8
    .parameter "context"
    .parameter "service"

    .prologue
    const/4 v1, 0x0

    .line 848
    invoke-static {p0}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 849
    invoke-static {p0}, Lcom/htc/music/util/SoundEffectHelper;->isBeatsEffectOn(Landroid/content/Context;)Z

    move-result v3

    .line 850
    .local v3, isBeatsOn:Z
    invoke-static {p0}, Lcom/htc/music/util/HeadSetHelper;->isBeatsHeadset(Landroid/content/Context;)Z

    move-result v2

    .line 852
    .local v2, isBeatHeadset:Z
    if-eqz v3, :cond_1

    .line 853
    sget v1, Lcom/htc/music/util/SoundEffectHelper;->BEATS_Beats:I

    .line 885
    .end local v2           #isBeatHeadset:Z
    .end local v3           #isBeatsOn:Z
    :cond_0
    :goto_0
    return v1

    .line 856
    .restart local v2       #isBeatHeadset:Z
    .restart local v3       #isBeatsOn:Z
    :cond_1
    if-eqz v2, :cond_2

    .line 857
    sget v1, Lcom/htc/music/util/SoundEffectHelper;->BEATS_Original:I

    goto :goto_0

    .line 860
    :cond_2
    sget v1, Lcom/htc/music/util/SoundEffectHelper;->BEATS_SRS:I

    goto :goto_0

    .line 865
    .end local v2           #isBeatHeadset:Z
    .end local v3           #isBeatsOn:Z
    :cond_3
    if-nez p1, :cond_4

    .line 866
    const-string v5, "[SoundEffectHelper]"

    const-string v6, "getCurrentAudioEffectStyleIndex, mService is null. return 0"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 870
    :cond_4
    const/4 v4, 0x0

    .line 873
    .local v4, style:Ljava/lang/String;
    :try_start_0
    invoke-interface {p1}, Lcom/htc/music/IMediaPlaybackService;->getAudioEffect()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 879
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    sget-object v5, Lcom/htc/music/util/SoundEffectHelper;->SoundEffetcStyle:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_5

    .line 880
    sget-object v5, Lcom/htc/music/util/SoundEffectHelper;->SoundEffetcStyle:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 879
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 874
    .end local v1           #i:I
    :catch_0
    move-exception v0

    .line 875
    .local v0, e:Landroid/os/RemoteException;
    const-string v5, "[SoundEffectHelper]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCurrentAudioEffectStyleIndex, RemoteException, e: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 885
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #i:I
    :cond_5
    sget v1, Lcom/htc/music/util/SoundEffectHelper;->Equalizer:I

    goto :goto_0
.end method

.method public static getCurrentAudioStyle(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter "context"

    .prologue
    .line 239
    const-string v3, "SoundEffect"

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 240
    .local v1, preferences:Landroid/content/SharedPreferences;
    const/4 v2, 0x0

    .line 242
    .local v2, style:Ljava/lang/String;
    invoke-static {p0}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 243
    invoke-static {p0}, Lcom/htc/music/util/SoundEffectHelper;->isBeatsEffectOn(Landroid/content/Context;)Z

    move-result v0

    .line 244
    .local v0, isBeatsOn:Z
    if-eqz v0, :cond_2

    .line 245
    const-string v2, "Beats"

    .line 294
    .end local v0           #isBeatsOn:Z
    :goto_0
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    const-string v2, "Original"

    .line 296
    .end local v2           #style:Ljava/lang/String;
    :cond_1
    return-object v2

    .line 248
    .restart local v0       #isBeatsOn:Z
    .restart local v2       #style:Ljava/lang/String;
    :cond_2
    invoke-static {p0}, Lcom/htc/music/util/HeadSetHelper;->isBeatsHeadset(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 249
    const-string v2, "Original"

    goto :goto_0

    .line 252
    :cond_3
    const-string v2, "SRS"

    goto :goto_0

    .line 291
    .end local v0           #isBeatsOn:Z
    :cond_4
    const-string v3, "SoundEffectStyle"

    invoke-static {}, Lcom/htc/music/util/SoundEffectHelper;->getDefaultEffectStr()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getCurrentAudioStyleIndex(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 215
    invoke-static {p0}, Lcom/htc/music/util/SoundEffectHelper;->getCurrentAudioStyle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 217
    .local v1, style:Ljava/lang/String;
    invoke-static {p0}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 218
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v2, Lcom/htc/music/util/SoundEffectHelper;->SoundBeatsEffetcStyle:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 219
    sget-object v2, Lcom/htc/music/util/SoundEffectHelper;->SoundBeatsEffetcStyle:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    .line 233
    :goto_1
    return v2

    .line 218
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 224
    :cond_1
    sget v2, Lcom/htc/music/util/SoundEffectHelper;->BEATS_SRS:I

    goto :goto_1

    .line 227
    .end local v0           #i:I
    :cond_2
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    sget-object v2, Lcom/htc/music/util/SoundEffectHelper;->SoundEffetcStyle:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 228
    sget-object v2, Lcom/htc/music/util/SoundEffectHelper;->SoundEffetcStyle:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v0

    .line 229
    goto :goto_1

    .line 227
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 233
    :cond_4
    sget v2, Lcom/htc/music/util/SoundEffectHelper;->Equalizer:I

    goto :goto_1
.end method

.method public static getCurrentEqualizerStyleIndex(Landroid/content/Context;)I
    .locals 6
    .parameter "context"

    .prologue
    .line 346
    const-string v3, "Equalizer"

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 347
    .local v1, preferences:Landroid/content/SharedPreferences;
    if-eqz v1, :cond_2

    .line 348
    const-string v3, "LastEQStyle"

    sget-object v4, Lcom/htc/music/util/SoundEffectHelper;->EqualizerStyle:[Ljava/lang/String;

    sget v5, Lcom/htc/music/util/SoundEffectHelper;->iDefaultEQIdx:I

    aget-object v4, v4, v5

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 349
    .local v2, style:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v3, Lcom/htc/music/util/SoundEffectHelper;->EqualizerStyle:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 350
    sget-object v3, Lcom/htc/music/util/SoundEffectHelper;->EqualizerStyle:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 362
    .end local v0           #i:I
    .end local v2           #style:Ljava/lang/String;
    :goto_1
    return v0

    .line 349
    .restart local v0       #i:I
    .restart local v2       #style:Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 355
    :cond_1
    const-string v3, "[SoundEffectHelper]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "style is EQ, but we can\'t find match style? style: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    .end local v0           #i:I
    .end local v2           #style:Ljava/lang/String;
    :goto_2
    sget v0, Lcom/htc/music/util/SoundEffectHelper;->iDefaultEQIdx:I

    goto :goto_1

    .line 358
    :cond_2
    const-string v3, "[SoundEffectHelper]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCurrentEqualizerStyleIndex, One is null, preferences: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", EqualizerStylesFromDevice: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/htc/music/util/SoundEffectHelper;->EqualizerStylesFromDevice:[Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static getDefaultEffectStr()Ljava/lang/String;
    .locals 2

    .prologue
    .line 161
    sget-object v0, Lcom/htc/music/util/SoundEffectHelper;->SoundEffetcStyle:[Ljava/lang/String;

    invoke-static {}, Lcom/htc/music/util/SoundEffectHelper;->getDefaultEffectType()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static getDefaultEffectType()I
    .locals 2

    .prologue
    .line 169
    sget v0, Lcom/htc/music/util/SoundEffectHelper;->Original:I

    .line 171
    .local v0, defaultEffectType:I
    invoke-static {}, Lcom/htc/music/util/ProjectSettings;->isSrsAsDefaultSoundEffect()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    sget v0, Lcom/htc/music/util/SoundEffectHelper;->SRS:I

    .line 174
    :cond_0
    return v0
.end method

.method public static getLastAudioEffect(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 752
    const-string v1, "SoundEffect"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 753
    .local v0, preferences:Landroid/content/SharedPreferences;
    invoke-static {p0}, Lcom/htc/music/util/SoundEffectHelper;->IsBeatsCanBeEnable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 754
    const-string v1, "LastAudioSetting"

    const-string v2, "Beats"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 757
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "LastAudioSetting"

    const-string v2, "Original"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getSoundEffectIconResourceId(ILandroid/content/Context;)I
    .locals 2
    .parameter "soundStyle"
    .parameter "context"

    .prologue
    .line 382
    move v0, p0

    .line 383
    .local v0, index:I
    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 385
    :cond_0
    invoke-static {p1}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 386
    sget-object v1, Lcom/htc/music/util/SoundEffectHelper;->SoundBeatsEffectIcon:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_1

    sget-object v1, Lcom/htc/music/util/SoundEffectHelper;->SoundBeatsEffectIcon:[I

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .line 387
    :cond_1
    sget-object v1, Lcom/htc/music/util/SoundEffectHelper;->SoundBeatsEffectIcon:[I

    aget v1, v1, v0

    .line 391
    :goto_0
    return v1

    .line 390
    :cond_2
    sget-object v1, Lcom/htc/music/util/SoundEffectHelper;->SoundEffectIcon:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_3

    sget-object v1, Lcom/htc/music/util/SoundEffectHelper;->SoundEffectIcon:[I

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .line 391
    :cond_3
    sget-object v1, Lcom/htc/music/util/SoundEffectHelper;->SoundEffectIcon:[I

    aget v1, v1, v0

    goto :goto_0
.end method

.method public static getSoundEffectStyleByIndex(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "styleIndex"

    .prologue
    .line 903
    invoke-static {p0}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 904
    sget-object v0, Lcom/htc/music/util/SoundEffectHelper;->SoundBeatsEffetcStyle:[Ljava/lang/String;

    aget-object v0, v0, p1

    .line 907
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/htc/music/util/SoundEffectHelper;->SoundEffetcStyle:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public static getSoundEffectStyleSize(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 890
    const/4 v0, 0x0

    .line 891
    .local v0, size:I
    invoke-static {p0}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 892
    sget-object v1, Lcom/htc/music/util/SoundEffectHelper;->SoundBeatsEffetcStyle:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 893
    sget-object v1, Lcom/htc/music/util/SoundEffectHelper;->SoundBeatsEffetcStyle:[Ljava/lang/String;

    array-length v0, v1

    .line 899
    :cond_0
    :goto_0
    return v0

    .line 896
    :cond_1
    sget-object v1, Lcom/htc/music/util/SoundEffectHelper;->SoundEffetcStyle:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 897
    sget-object v1, Lcom/htc/music/util/SoundEffectHelper;->SoundEffetcStyle:[Ljava/lang/String;

    array-length v0, v1

    goto :goto_0
.end method

.method public static getTempAudioStyle(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 922
    const-string v2, "SoundEffect"

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 923
    .local v0, preferences:Landroid/content/SharedPreferences;
    const/4 v1, 0x0

    .line 924
    .local v1, style:Ljava/lang/String;
    const-string v2, "TempSoundEffectStyle"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 925
    return-object v1
.end method

.method public static initEqualizerStlyes(Landroid/content/Context;I)V
    .locals 7
    .parameter "context"
    .parameter "audioSessionId"

    .prologue
    .line 658
    sget-object v4, Lcom/htc/music/util/SoundEffectHelper;->EqualizerStylesFromDevice:[Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 659
    const-string v4, "[SoundEffectHelper]"

    const-string v5, "EqualizerStylesFromDevice array is ready. No need to initial again."

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    :goto_0
    return-void

    .line 663
    :cond_0
    const-string v4, "audio"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 664
    .local v0, audioManager:Landroid/media/AudioManager;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "srsfx_sidechain="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",geq10"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 665
    new-instance v2, Landroid/media/audiofx/Equalizer;

    const/4 v4, 0x0

    invoke-direct {v2, v4, p1}, Landroid/media/audiofx/Equalizer;-><init>(II)V

    .line 666
    .local v2, equalizer:Landroid/media/audiofx/Equalizer;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "srsfx_sidechain="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 668
    invoke-virtual {v2}, Landroid/media/audiofx/Equalizer;->getNumberOfPresets()S

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    sput-object v4, Lcom/htc/music/util/SoundEffectHelper;->EqualizerStylesFromDevice:[Ljava/lang/String;

    .line 670
    const/4 v1, 0x0

    .line 672
    .local v1, eqStyleTemp:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    sget-object v4, Lcom/htc/music/util/SoundEffectHelper;->EqualizerStylesFromDevice:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_2

    .line 673
    int-to-short v4, v3

    invoke-virtual {v2, v4}, Landroid/media/audiofx/Equalizer;->getPresetName(S)Ljava/lang/String;

    move-result-object v1

    .line 675
    sget-object v4, Lcom/htc/music/util/SoundEffectHelper;->EqualizerStylesFromDevice:[Ljava/lang/String;

    aput-object v1, v4, v3

    .line 676
    sget-object v4, Lcom/htc/music/util/SoundEffectHelper;->szDefaultEQStr:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 677
    sput v3, Lcom/htc/music/util/SoundEffectHelper;->iDefaultEQIdx:I

    .line 679
    :cond_1
    const-string v4, "[SoundEffectHelper]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initEqualizerStlyes, mEqualizerStyles["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/htc/music/util/SoundEffectHelper;->EqualizerStylesFromDevice:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 682
    :cond_2
    invoke-virtual {v2}, Landroid/media/audiofx/Equalizer;->release()V

    goto/16 :goto_0
.end method

.method public static isBeatsEffectOn(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 698
    const/4 v0, 0x0

    return v0
.end method

.method public static setAudioEffect(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 9
    .parameter "context"
    .parameter "setting"
    .parameter "audioSessionID"

    .prologue
    const/4 v8, 0x1

    .line 522
    sget-object v5, Lcom/htc/music/util/SoundEffectHelper;->mAudioEffectLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 524
    :try_start_0
    const-string v5, "[SoundEffectHelper]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setAudioEffect, setting: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", audioSessionID: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    const-string v5, "[SoundEffectHelper]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setAudioEffect, Original mCurrentSessionID: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/htc/music/util/SoundEffectHelper;->mCurrentSessionID:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    const/4 v4, 0x0

    .line 528
    .local v4, sessionIdChanged:Z
    sget v5, Lcom/htc/music/util/SoundEffectHelper;->mCurrentSessionID:I

    if-lez v5, :cond_0

    sget v5, Lcom/htc/music/util/SoundEffectHelper;->mCurrentSessionID:I

    if-eq v5, p2, :cond_1

    .line 529
    :cond_0
    invoke-static {p0}, Lcom/htc/music/util/SoundEffectHelper;->disableSoundEffect(Landroid/content/Context;)V

    .line 530
    sput p2, Lcom/htc/music/util/SoundEffectHelper;->mCurrentSessionID:I

    .line 531
    const/4 v4, 0x1

    .line 534
    :cond_1
    const-string v5, "Original"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 535
    invoke-static {p0}, Lcom/htc/music/util/SoundEffectHelper;->disableSoundEffect(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 641
    :cond_2
    :goto_0
    sget-object v5, Lcom/htc/music/util/SoundEffectHelper;->mAudioEffectLock:Ljava/util/concurrent/locks/ReentrantLock;

    .end local v4           #sessionIdChanged:Z
    :goto_1
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 643
    return-void

    .line 537
    .restart local v4       #sessionIdChanged:Z
    :cond_3
    :try_start_1
    const-string v5, "SRS"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 538
    invoke-static {p0}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 539
    invoke-static {p0}, Lcom/htc/music/util/SoundEffectHelper;->disableBeats(Landroid/content/Context;)V

    .line 546
    :goto_2
    sget-object v5, Lcom/htc/music/util/SoundEffectHelper;->mSRS:Landroid/media/audiofx/BassBoost;

    if-eqz v5, :cond_5

    sget-object v5, Lcom/htc/music/util/SoundEffectHelper;->mSRS:Landroid/media/audiofx/BassBoost;

    invoke-virtual {v5}, Landroid/media/audiofx/BassBoost;->getEnabled()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v5

    if-ne v8, v5, :cond_5

    if-nez v4, :cond_5

    .line 641
    sget-object v5, Lcom/htc/music/util/SoundEffectHelper;->mAudioEffectLock:Ljava/util/concurrent/locks/ReentrantLock;

    goto :goto_1

    .line 542
    :cond_4
    :try_start_2
    invoke-static {}, Lcom/htc/music/util/SoundEffectHelper;->disableWide()V

    .line 543
    invoke-static {}, Lcom/htc/music/util/SoundEffectHelper;->disableEqualizer()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 637
    .end local v4           #sessionIdChanged:Z
    :catch_0
    move-exception v1

    .line 638
    .local v1, ex:Ljava/lang/IllegalStateException;
    :try_start_3
    const-string v5, "[SoundEffectHelper]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setAudioEffect, IllegalStateException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 641
    sget-object v5, Lcom/htc/music/util/SoundEffectHelper;->mAudioEffectLock:Ljava/util/concurrent/locks/ReentrantLock;

    goto :goto_1

    .line 550
    .end local v1           #ex:Ljava/lang/IllegalStateException;
    .restart local v4       #sessionIdChanged:Z
    :cond_5
    :try_start_4
    const-string v5, "audio"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 551
    .local v0, audioManager:Landroid/media/AudioManager;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "srsfx_sidechain="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",trumedia,/system/etc/soundimage/srsfx_trumedia_music.cfg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 552
    sget-object v5, Lcom/htc/music/util/SoundEffectHelper;->mSRS:Landroid/media/audiofx/BassBoost;

    if-nez v5, :cond_6

    .line 553
    new-instance v5, Landroid/media/audiofx/BassBoost;

    const/4 v6, 0x0

    invoke-direct {v5, v6, p2}, Landroid/media/audiofx/BassBoost;-><init>(II)V

    sput-object v5, Lcom/htc/music/util/SoundEffectHelper;->mSRS:Landroid/media/audiofx/BassBoost;

    .line 554
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "srsfx_sidechain="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 555
    sget-object v5, Lcom/htc/music/util/SoundEffectHelper;->mSRS:Landroid/media/audiofx/BassBoost;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/media/audiofx/BassBoost;->setEnabled(Z)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 641
    .end local v0           #audioManager:Landroid/media/AudioManager;
    .end local v4           #sessionIdChanged:Z
    :catchall_0
    move-exception v5

    sget-object v6, Lcom/htc/music/util/SoundEffectHelper;->mAudioEffectLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v5

    .line 557
    .restart local v4       #sessionIdChanged:Z
    :cond_7
    :try_start_5
    const-string v5, "Beats"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 558
    invoke-static {p0}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 559
    invoke-static {}, Lcom/htc/music/util/SoundEffectHelper;->disableSRS()V

    .line 560
    invoke-static {}, Lcom/htc/music/util/SoundEffectHelper;->disableEqualizer()V

    goto/16 :goto_0

    .line 577
    :cond_8
    const-string v5, "[SoundEffectHelper]"

    const-string v6, "setAudioEffect, device does not support Beats, can\'t set SoundEffect as Beats!"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 580
    :cond_9
    const-string v5, "Wide"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 581
    invoke-static {p0}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 582
    invoke-static {p0}, Lcom/htc/music/util/SoundEffectHelper;->disableBeats(Landroid/content/Context;)V

    .line 589
    :goto_3
    sget-object v5, Lcom/htc/music/util/SoundEffectHelper;->mWide:Landroid/media/audiofx/BassBoost;

    if-eqz v5, :cond_b

    sget-object v5, Lcom/htc/music/util/SoundEffectHelper;->mWide:Landroid/media/audiofx/BassBoost;

    invoke-virtual {v5}, Landroid/media/audiofx/BassBoost;->getEnabled()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_0

    move-result v5

    if-ne v8, v5, :cond_b

    if-nez v4, :cond_b

    .line 641
    sget-object v5, Lcom/htc/music/util/SoundEffectHelper;->mAudioEffectLock:Ljava/util/concurrent/locks/ReentrantLock;

    goto/16 :goto_1

    .line 585
    :cond_a
    :try_start_6
    invoke-static {}, Lcom/htc/music/util/SoundEffectHelper;->disableSRS()V

    .line 586
    invoke-static {}, Lcom/htc/music/util/SoundEffectHelper;->disableEqualizer()V

    goto :goto_3

    .line 593
    :cond_b
    const-string v5, "audio"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 594
    .restart local v0       #audioManager:Landroid/media/AudioManager;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "srsfx_sidechain="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",trumedia,/system/etc/soundimage/srsfx_trumedia_music_wide.cfg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 595
    sget-object v5, Lcom/htc/music/util/SoundEffectHelper;->mWide:Landroid/media/audiofx/BassBoost;

    if-nez v5, :cond_c

    .line 596
    new-instance v5, Landroid/media/audiofx/BassBoost;

    const/4 v6, 0x0

    invoke-direct {v5, v6, p2}, Landroid/media/audiofx/BassBoost;-><init>(II)V

    sput-object v5, Lcom/htc/music/util/SoundEffectHelper;->mWide:Landroid/media/audiofx/BassBoost;

    .line 597
    :cond_c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "srsfx_sidechain="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 598
    sget-object v5, Lcom/htc/music/util/SoundEffectHelper;->mWide:Landroid/media/audiofx/BassBoost;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/media/audiofx/BassBoost;->setEnabled(Z)I

    goto/16 :goto_0

    .line 601
    .end local v0           #audioManager:Landroid/media/AudioManager;
    :cond_d
    invoke-static {}, Lcom/htc/music/util/SoundEffectHelper;->disableSRS()V

    .line 602
    invoke-static {}, Lcom/htc/music/util/SoundEffectHelper;->disableWide()V

    .line 604
    const/4 v3, -0x1

    .line 606
    .local v3, selectedPos:S
    invoke-static {p0, p2}, Lcom/htc/music/util/SoundEffectHelper;->initEqualizerStlyes(Landroid/content/Context;I)V

    .line 608
    const/4 v2, 0x0

    .local v2, i:I
    :goto_4
    sget-object v5, Lcom/htc/music/util/SoundEffectHelper;->EqualizerStylesFromDevice:[Ljava/lang/String;

    array-length v5, v5

    if-ge v2, v5, :cond_e

    .line 609
    sget-object v5, Lcom/htc/music/util/SoundEffectHelper;->EqualizerStylesFromDevice:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 610
    int-to-short v3, v2

    .line 615
    :cond_e
    if-ltz v3, :cond_2

    .line 616
    const-string v5, "audio"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 617
    .restart local v0       #audioManager:Landroid/media/AudioManager;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "srsfx_sidechain="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",geq10"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 618
    sget-object v5, Lcom/htc/music/util/SoundEffectHelper;->mEqualizer:Landroid/media/audiofx/Equalizer;

    if-nez v5, :cond_f

    .line 619
    new-instance v5, Landroid/media/audiofx/Equalizer;

    const/4 v6, 0x0

    invoke-direct {v5, v6, p2}, Landroid/media/audiofx/Equalizer;-><init>(II)V

    sput-object v5, Lcom/htc/music/util/SoundEffectHelper;->mEqualizer:Landroid/media/audiofx/Equalizer;

    .line 620
    :cond_f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "srsfx_sidechain="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 622
    sget-object v5, Lcom/htc/music/util/SoundEffectHelper;->mEqualizer:Landroid/media/audiofx/Equalizer;

    invoke-virtual {v5}, Landroid/media/audiofx/Equalizer;->getCurrentPreset()S
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_0

    move-result v5

    if-eq v5, v3, :cond_11

    .line 624
    :try_start_7
    sget-object v5, Lcom/htc/music/util/SoundEffectHelper;->mEqualizer:Landroid/media/audiofx/Equalizer;

    invoke-virtual {v5, v3}, Landroid/media/audiofx/Equalizer;->usePreset(S)V

    .line 625
    sget-object v5, Lcom/htc/music/util/SoundEffectHelper;->mEqualizer:Landroid/media/audiofx/Equalizer;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/media/audiofx/Equalizer;->setEnabled(Z)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0

    .line 627
    :catch_1
    move-exception v1

    .line 628
    .local v1, ex:Ljava/lang/UnsupportedOperationException;
    :try_start_8
    const-string v5, "[SoundEffectHelper]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setAudioEffect, mEqualizer.hasControl(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/htc/music/util/SoundEffectHelper;->mEqualizer:Landroid/media/audiofx/Equalizer;

    invoke-virtual {v7}, Landroid/media/audiofx/Equalizer;->hasControl()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", UnsupportedOperationException ex: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/UnsupportedOperationException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 608
    .end local v0           #audioManager:Landroid/media/AudioManager;
    .end local v1           #ex:Ljava/lang/UnsupportedOperationException;
    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_4

    .line 632
    .restart local v0       #audioManager:Landroid/media/AudioManager;
    :cond_11
    const-string v5, "[SoundEffectHelper]"

    const-string v6, "setAudioEffect, the same Equalizer, no need to reset."

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_0
.end method

.method public static setAudioEffectStyleByIndex(Landroid/content/Context;Lcom/htc/music/IMediaPlaybackService;I)V
    .locals 4
    .parameter "context"
    .parameter "service"
    .parameter "index"

    .prologue
    .line 809
    invoke-static {p0}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 810
    if-gez p2, :cond_1

    .line 811
    const/4 p2, 0x0

    .line 815
    :cond_0
    :goto_0
    if-eqz p1, :cond_2

    .line 818
    :try_start_0
    sget-object v1, Lcom/htc/music/util/SoundEffectHelper;->SoundBeatsEffetcStyle:[Ljava/lang/String;

    aget-object v1, v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-interface {p1, v1, v2, v3}, Lcom/htc/music/IMediaPlaybackService;->setAudioEffect(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 845
    :goto_1
    return-void

    .line 812
    :cond_1
    sget-object v1, Lcom/htc/music/util/SoundEffectHelper;->SoundBeatsEffetcStyle:[Ljava/lang/String;

    array-length v1, v1

    if-gt v1, p2, :cond_0

    .line 813
    sget-object v1, Lcom/htc/music/util/SoundEffectHelper;->SoundBeatsEffetcStyle:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 p2, v1, -0x1

    goto :goto_0

    .line 819
    :catch_0
    move-exception v0

    .line 820
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 824
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    const-string v1, "[SoundEffectHelper]"

    const-string v2, "setAudioEffectStyleByIndex, mService is null."

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 828
    :cond_3
    if-gez p2, :cond_5

    .line 829
    const/4 p2, 0x0

    .line 833
    :cond_4
    :goto_2
    if-eqz p1, :cond_6

    .line 836
    :try_start_1
    sget-object v1, Lcom/htc/music/util/SoundEffectHelper;->SoundEffetcStyle:[Ljava/lang/String;

    aget-object v1, v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-interface {p1, v1, v2, v3}, Lcom/htc/music/IMediaPlaybackService;->setAudioEffect(Ljava/lang/String;ZI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 837
    :catch_1
    move-exception v0

    .line 838
    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 830
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_5
    sget-object v1, Lcom/htc/music/util/SoundEffectHelper;->SoundEffetcStyle:[Ljava/lang/String;

    array-length v1, v1

    if-gt v1, p2, :cond_4

    .line 831
    sget-object v1, Lcom/htc/music/util/SoundEffectHelper;->SoundEffetcStyle:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 p2, v1, -0x1

    goto :goto_2

    .line 842
    :cond_6
    const-string v1, "[SoundEffectHelper]"

    const-string v2, "setAudioEffectStyleByIndex, mService is null."

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static setAudioStyle(Ljava/lang/String;Landroid/content/Context;)V
    .locals 5
    .parameter "setting"
    .parameter "context"

    .prologue
    .line 181
    const-string v2, "[SoundEffectHelper]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set audio parameter: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    const-string v2, "SoundEffect"

    const/4 v3, 0x3

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 186
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 187
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "SoundEffectStyle"

    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 189
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public static setAudioStyleByIndex(ILandroid/content/Context;)V
    .locals 1
    .parameter "index"
    .parameter "context"

    .prologue
    .line 193
    invoke-static {p1}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    :goto_0
    return-void

    .line 202
    :cond_0
    if-gez p0, :cond_2

    .line 203
    const/4 p0, 0x0

    .line 207
    :cond_1
    :goto_1
    sget-object v0, Lcom/htc/music/util/SoundEffectHelper;->SoundEffetcStyle:[Ljava/lang/String;

    aget-object v0, v0, p0

    invoke-static {v0, p1}, Lcom/htc/music/util/SoundEffectHelper;->setAudioStyle(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 204
    :cond_2
    sget-object v0, Lcom/htc/music/util/SoundEffectHelper;->SoundEffetcStyle:[Ljava/lang/String;

    array-length v0, v0

    if-gt v0, p0, :cond_1

    .line 205
    sget-object v0, Lcom/htc/music/util/SoundEffectHelper;->SoundEffetcStyle:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 p0, v0, -0x1

    goto :goto_1
.end method

.method public static setEqualizerStyle(Ljava/lang/String;Landroid/content/Context;)V
    .locals 7
    .parameter "setting"
    .parameter "context"

    .prologue
    .line 301
    invoke-static {p1}, Lcom/htc/music/util/SoundEffectHelper;->IsSupportBeats(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 327
    :cond_0
    :goto_0
    return-void

    .line 306
    :cond_1
    const-string v4, "[SoundEffectHelper]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setEqualizerStyle, setting: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    .line 310
    const/4 v2, 0x1

    .line 311
    .local v2, isEQ:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    sget-object v4, Lcom/htc/music/util/SoundEffectHelper;->SoundEffetcStyle:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_2

    .line 312
    sget-object v4, Lcom/htc/music/util/SoundEffectHelper;->SoundEffetcStyle:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 313
    const/4 v2, 0x0

    .line 318
    :cond_2
    if-nez v2, :cond_4

    .line 319
    const-string v4, "[SoundEffectHelper]"

    const-string v5, "setEqualizerStyle, not EQ setting."

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 311
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 323
    :cond_4
    const-string v4, "Equalizer"

    const/4 v5, 0x3

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 324
    .local v3, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 325
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "LastEQStyle"

    invoke-interface {v0, v4, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 326
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public static setLastAudioEffect(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "szSetting"

    .prologue
    .line 763
    const-string v2, "SoundEffect"

    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 764
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 765
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "LastAudioSetting"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 766
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 767
    return-void
.end method

.method public static setTempAudioStyle(Ljava/lang/String;Landroid/content/Context;)V
    .locals 5
    .parameter "setting"
    .parameter "context"

    .prologue
    .line 912
    const-string v2, "[SoundEffectHelper]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setTempAudioStyle, set audio setting: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    const-string v2, "SoundEffect"

    const/4 v3, 0x3

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 915
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 916
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "TempSoundEffectStyle"

    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 918
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 919
    return-void
.end method
