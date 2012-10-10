.class public Lcom/htc/music/util/MusicUtils;
.super Ljava/lang/Object;
.source "MusicUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/util/MusicUtils$Media2;,
        Lcom/htc/music/util/MusicUtils$Albums2;,
        Lcom/htc/music/util/MusicUtils$Artists2;,
        Lcom/htc/music/util/MusicUtils$FastBitmapDrawable;,
        Lcom/htc/music/util/MusicUtils$ServiceBinder;,
        Lcom/htc/music/util/MusicUtils$ServiceOwner;,
        Lcom/htc/music/util/MusicUtils$DrmWarningMode;,
        Lcom/htc/music/util/MusicUtils$DrmStatus;,
        Lcom/htc/music/util/MusicUtils$Defs;
    }
.end annotation


# static fields
.field public static final ATSTAG:Ljava/lang/String; = "MASD"

.field static final DEBUG:Z = true

.field public static final DEFAULT_QUERY_TABLE:I = 0x0

.field public static final FIRST_QUERY_TABLE:I = 0x1

.field private static final INTERNAL_MEMORY_THRESOLD:J = 0x500000L

.field public static final IS_MUSIC_DRM_FILTER:Ljava/lang/String; = "is_music>1"

.field public static final IS_MUSIC_FILTER:Ljava/lang/String; = "is_music>=1"

.field public static final IS_MUSIC_FILTER_FOR_GENRE:Ljava/lang/String; = "audio_meta.is_music>=1"

.field public static final IS_RINGTONE_FILTER:Ljava/lang/String; = "is_ringtone>=1"

.field private static IsInternalEnough:Z = false

.field private static final PATH:Ljava/lang/String; = null

.field public static final SECOND_QUERY_TABLE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "[MusicUtils]"

.field public static final TRIGGER_PLAY_IN_LIBRARY:Ljava/lang/String; = "com.htc.music.triggerplayinlibrary"

.field public static final YOUTUBE_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.youtube"

.field private static final hexdigits:[C

.field private static mCachedArt:[B

.field private static mCachedBit:Landroid/graphics/Bitmap;

.field private static final mCoverPaint:Landroid/graphics/Paint;

.field public static mPluginManager:Lcom/htc/music/MusicPluginManager;

.field private static final sArtCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private static sArtCacheId:I

.field private static sArtId:I

.field private static final sArtworkUri:Landroid/net/Uri;

.field private static final sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

.field private static final sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

.field private static sConnectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/htc/music/util/MusicUtils$ServiceOwner;",
            "Lcom/htc/music/util/MusicUtils$ServiceBinder;",
            ">;"
        }
    .end annotation
.end field

.field public static final sDlColumns:[Ljava/lang/String;

.field private static final sEmptyList:[I

.field private static sFormatBuilder:Ljava/lang/StringBuilder;

.field private static sFormatter:Ljava/util/Formatter;

.field public static sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

.field public static final sMdColumns:[Ljava/lang/String;

.field public static sService:Lcom/htc/music/IMediaPlaybackService;

.field private static final sTimeArgs:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v2, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 146
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "album_key"

    aput-object v1, v0, v3

    const-string v1, "album_art"

    aput-object v1, v0, v2

    sput-object v0, Lcom/htc/music/util/MusicUtils;->sMdColumns:[Ljava/lang/String;

    .line 152
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "dl_album_id"

    aput-object v1, v0, v4

    const-string v1, "dl_album_key"

    aput-object v1, v0, v3

    const-string v1, "dl_data"

    aput-object v1, v0, v2

    sput-object v0, Lcom/htc/music/util/MusicUtils;->sDlColumns:[Ljava/lang/String;

    .line 214
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/music/util/MusicUtils;->hexdigits:[C

    .line 247
    new-instance v0, Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Lcom/htc/music/util/MemoryCacheMBitmapByTime;-><init>(I)V

    sput-object v0, Lcom/htc/music/util/MusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    .line 283
    sput-object v5, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    .line 286
    sput-object v5, Lcom/htc/music/util/MusicUtils;->mPluginManager:Lcom/htc/music/MusicPluginManager;

    .line 315
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/music/util/MusicUtils;->sConnectionMap:Ljava/util/HashMap;

    .line 428
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/music/util/MusicUtils;->PATH:Ljava/lang/String;

    .line 429
    sput-boolean v3, Lcom/htc/music/util/MusicUtils;->IsInternalEnough:Z

    .line 545
    new-array v0, v4, [I

    sput-object v0, Lcom/htc/music/util/MusicUtils;->sEmptyList:[I

    .line 1748
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/htc/music/util/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    .line 1750
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/htc/music/util/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/htc/music/util/MusicUtils;->sFormatter:Ljava/util/Formatter;

    .line 1752
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/htc/music/util/MusicUtils;->sTimeArgs:[Ljava/lang/Object;

    .line 2135
    const/4 v0, -0x2

    sput v0, Lcom/htc/music/util/MusicUtils;->sArtId:I

    .line 2139
    sput-object v5, Lcom/htc/music/util/MusicUtils;->mCachedBit:Landroid/graphics/Bitmap;

    .line 2141
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Lcom/htc/music/util/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    .line 2143
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Lcom/htc/music/util/MusicUtils;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 2145
    const-string v0, "content://media/external/audio/albumart"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/music/util/MusicUtils;->sArtworkUri:Landroid/net/Uri;

    .line 2147
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/music/util/MusicUtils;->sArtCache:Ljava/util/HashMap;

    .line 2151
    const/4 v0, -0x1

    sput v0, Lcom/htc/music/util/MusicUtils;->sArtCacheId:I

    .line 2158
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 2159
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 2161
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 2162
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 4641
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/htc/music/util/MusicUtils;->mCoverPaint:Landroid/graphics/Paint;

    .line 4642
    sget-object v0, Lcom/htc/music/util/MusicUtils;->mCoverPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 4643
    sget-object v0, Lcom/htc/music/util/MusicUtils;->mCoverPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 4644
    sget-object v0, Lcom/htc/music/util/MusicUtils;->mCoverPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 4645
    return-void

    .line 214
    nop

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 116
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 5064
    return-void
.end method

.method public static CheckDLNAStatus(Landroid/content/Context;)I
    .locals 7
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3931
    const-string v5, "[MusicUtils]"

    const-string v6, "CheckDLNAStatus"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3932
    if-nez p0, :cond_0

    .line 3933
    const-string v4, "[MusicUtils]"

    const-string v5, "CheckDLNAStatus with null Context!!"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3967
    :goto_0
    return v3

    .line 3937
    :cond_0
    const-string v5, "DLNA"

    const/4 v6, 0x7

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 3940
    .local v2, Preferences:Landroid/content/SharedPreferences;
    const-string v5, "server"

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3944
    .local v1, DMS:Ljava/lang/String;
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->getCurDMR(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 3946
    .local v0, DMR:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 3947
    if-eqz v0, :cond_1

    .line 3948
    const-string v3, "[MusicUtils]"

    const-string v5, "initial, DLNA mode = DLNA_DMC"

    invoke-static {v3, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3951
    const-string v3, "[MusicUtils]"

    const-string v5, "type = null, DLNA mode switch to DLNA_DMC"

    invoke-static {v3, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3952
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v5, "switchDMC"

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3953
    const/4 v3, 0x2

    goto :goto_0

    .line 3956
    :cond_1
    const-string v3, "[MusicUtils]"

    const-string v5, "DLNA mode = DLNA_DMP"

    invoke-static {v3, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v4

    .line 3957
    goto :goto_0

    .line 3961
    :cond_2
    if-eqz v0, :cond_3

    .line 3962
    const-string v3, "[MusicUtils]"

    const-string v4, "initial, DLNA mode = DLNA_PUSH"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3963
    const/4 v3, 0x3

    goto :goto_0

    .line 3966
    :cond_3
    const-string v4, "[MusicUtils]"

    const-string v5, "DLNA mode = DLNA_LOCAL"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static IsInternalStorage()Z
    .locals 2

    .prologue
    .line 4806
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->hasInternalFat()Z

    move-result v0

    .line 4808
    .local v0, isInternalStorage:Z
    if-nez v0, :cond_0

    .line 4809
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->hasPhoneStorage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4811
    const/4 v0, 0x1

    .line 4815
    :cond_0
    return v0
.end method

.method public static IsOnlyInternalStorage()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 4819
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->IsInternalStorage()Z

    move-result v2

    if-nez v2, :cond_1

    .line 4829
    .local v0, both:Z
    :cond_0
    :goto_0
    return v1

    .line 4824
    .end local v0           #both:Z
    :cond_1
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->hasRemovableStorageSlot()Z

    move-result v0

    .line 4826
    .restart local v0       #both:Z
    if-nez v0, :cond_0

    .line 4829
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static IsReloadAllMusicForQueue(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    .line 4676
    const-string v3, "Music"

    const/4 v4, 0x3

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 4677
    .local v1, pref:Landroid/content/SharedPreferences;
    const/4 v0, 0x1

    .line 4678
    .local v0, IsLaunchBefore:Z
    const-string v3, "LaunchedBefore"

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    .line 4680
    if-nez v0, :cond_0

    .line 4681
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "LaunchedBefore"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 4685
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static SetDLNASuffleMode(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 4112
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->CheckDLNAStatus(Landroid/content/Context;)I

    move-result v0

    .line 4114
    .local v0, DlnaMode:I
    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 4115
    const-string v2, "DLNA"

    const/4 v3, 0x7

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 4117
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "shuffle"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4119
    .end local v1           #pref:Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method public static addToCurrentPlaylist(Landroid/content/Context;[I)V
    .locals 7
    .parameter "context"
    .parameter "list"

    .prologue
    .line 1461
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v1, :cond_0

    .line 1471
    :goto_0
    return-void

    .line 1465
    :cond_0
    :try_start_0
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v2, 0x3

    invoke-interface {v1, p1, v2}, Lcom/htc/music/IMediaPlaybackService;->enqueue([II)V

    .line 1466
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0003

    array-length v3, p1

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    array-length v6, p1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1468
    .local v0, message:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1469
    .end local v0           #message:Ljava/lang/String;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static addToPlaylist(Landroid/content/Context;[IJ)V
    .locals 1
    .parameter "context"
    .parameter "ids"
    .parameter "playlistid"

    .prologue
    .line 1474
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJZ)V

    .line 1475
    return-void
.end method

.method public static addToPlaylist(Landroid/content/Context;[IJZ)V
    .locals 16
    .parameter "context"
    .parameter "ids"
    .parameter "playlistid"
    .parameter "showToast"

    .prologue
    .line 1478
    if-nez p1, :cond_1

    .line 1481
    const-string v5, "[MusicUtils]"

    const-string v6, "ListSelection null"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1512
    :cond_0
    :goto_0
    return-void

    .line 1483
    :cond_1
    move-object/from16 v0, p1

    array-length v12, v0

    .line 1484
    .local v12, size:I
    new-array v13, v12, [Landroid/content/ContentValues;

    .line 1485
    .local v13, values:[Landroid/content/ContentValues;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1488
    .local v2, resolver:Landroid/content/ContentResolver;
    const/4 v5, 0x1

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "count(*)"

    aput-object v6, v4, v5

    .line 1491
    .local v4, cols:[Ljava/lang/String;
    const-string v5, "external"

    move-wide/from16 v0, p2

    invoke-static {v5, v0, v1}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v3

    .line 1492
    .local v3, uri:Landroid/net/Uri;
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1493
    .local v9, cur:Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1494
    const/4 v5, 0x0

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 1495
    .local v8, base:I
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1496
    const/4 v9, 0x0

    .line 1498
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    if-ge v10, v12, :cond_2

    .line 1499
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    aput-object v5, v13, v10

    .line 1500
    aget-object v5, v13, v10

    const-string v6, "play_order"

    add-int v7, v8, v10

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1502
    aget-object v5, v13, v10

    const-string v6, "audio_id"

    aget v7, p1, v10

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1498
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1504
    :cond_2
    invoke-virtual {v2, v3, v13}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 1505
    if-eqz p4, :cond_0

    .line 1506
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0003

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v7, v14

    invoke-virtual {v5, v6, v12, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 1508
    .local v11, message:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v11, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public static appExist(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v0, 0x0

    .line 4489
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 4490
    .local v1, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v0, 0x1

    .line 4491
    .local v0, appExist:Z
    :cond_0
    return v0
.end method

.method public static appendUnknownComposerFilter(Ljava/lang/StringBuilder;)V
    .locals 1
    .parameter "where"

    .prologue
    .line 4344
    const-string v0, " (composer ISNULL"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4345
    const-string v0, " OR composer = \'\'"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4346
    const-string v0, " OR composer = \'<unknown>\' )"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4349
    return-void
.end method

.method public static arrayDeepClone([I[II)V
    .locals 2
    .parameter "src"
    .parameter "dst"
    .parameter "length"

    .prologue
    .line 4316
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 4322
    :cond_0
    return-void

    .line 4317
    :cond_1
    array-length v1, p0

    if-lt v1, p2, :cond_0

    array-length v1, p1

    if-lt v1, p2, :cond_0

    .line 4319
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 4320
    aget v1, p0, v0

    aput v1, p1, v0

    .line 4319
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static bindToService(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .parameter "context"
    .parameter "id"

    .prologue
    .line 319
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/htc/music/util/MusicUtils;->bindToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/ServiceConnection;)Z

    move-result v0

    return v0
.end method

.method public static bindToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/ServiceConnection;)Z
    .locals 7
    .parameter "context"
    .parameter "id"
    .parameter "callback"

    .prologue
    .line 323
    new-instance v3, Lcom/htc/music/util/MusicUtils$ServiceOwner;

    invoke-direct {v3, p1, p0}, Lcom/htc/music/util/MusicUtils$ServiceOwner;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 325
    .local v3, serviceOwner:Lcom/htc/music/util/MusicUtils$ServiceOwner;
    sget-object v4, Lcom/htc/music/util/MusicUtils;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 326
    sget-object v4, Lcom/htc/music/util/MusicUtils;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/util/MusicUtils$ServiceBinder;

    .line 328
    .local v2, sbRemove:Lcom/htc/music/util/MusicUtils$ServiceBinder;
    if-eqz v2, :cond_0

    .line 330
    :try_start_0
    iget-object v4, v3, Lcom/htc/music/util/MusicUtils$ServiceOwner;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    :goto_0
    const-string v4, "[MusicUtils]"

    const-string v5, "Unbind previous binding service"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    .end local v2           #sbRemove:Lcom/htc/music/util/MusicUtils$ServiceBinder;
    :cond_0
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/htc/music/MediaPlaybackService;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 341
    new-instance v1, Lcom/htc/music/util/MusicUtils$ServiceBinder;

    invoke-direct {v1, p2}, Lcom/htc/music/util/MusicUtils$ServiceBinder;-><init>(Landroid/content/ServiceConnection;)V

    .line 342
    .local v1, sb:Lcom/htc/music/util/MusicUtils$ServiceBinder;
    sget-object v4, Lcom/htc/music/util/MusicUtils;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-class v5, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v4, p0, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v1, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v4

    return v4

    .line 332
    .end local v1           #sb:Lcom/htc/music/util/MusicUtils$ServiceBinder;
    .restart local v2       #sbRemove:Lcom/htc/music/util/MusicUtils$ServiceBinder;
    :catch_0
    move-exception v0

    .line 333
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const-string v4, "[MusicUtils]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mContext unbind service fail => "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/htc/music/util/MusicUtils$ServiceOwner;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static canBeShareTrack(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 11
    .parameter "context"
    .parameter "trackPath"
    .parameter "audioId"

    .prologue
    const/4 v8, 0x0

    .line 4374
    if-eqz p1, :cond_0

    if-gez p2, :cond_1

    :cond_0
    move v0, v8

    .line 4444
    :goto_0
    return v0

    .line 4377
    :cond_1
    invoke-static {p0, p2}, Lcom/htc/music/util/MusicUtils;->getTrack(Landroid/content/Context;I)Landroid/database/Cursor;

    move-result-object v1

    .line 4378
    .local v1, cursor:Landroid/database/Cursor;
    if-nez v1, :cond_2

    move v0, v8

    .line 4379
    goto :goto_0

    .line 4381
    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v9

    if-nez v9, :cond_5

    .line 4382
    :cond_3
    if-eqz v1, :cond_4

    .line 4383
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    move v0, v8

    .line 4384
    goto :goto_0

    .line 4387
    :cond_5
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4388
    const/4 v0, 0x0

    .line 4391
    .local v0, canBeShared:I
    const-string v9, "is_music"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 4392
    .local v5, musicType:J
    const-string v9, "_data"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 4395
    .local v7, path:Ljava/lang/String;
    const/4 v4, 0x0

    .line 4397
    .local v4, mimeType:Ljava/lang/String;
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isWMDRMSupported()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 4398
    const-string v9, "mime_type"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 4402
    :cond_6
    const-wide/16 v9, 0x1

    cmp-long v9, v5, v9

    if-lez v9, :cond_a

    .line 4404
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/htc/music/util/MusicUtils;->getDrmCursor(Landroid/content/Context;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v3

    .line 4405
    .local v3, drmCursor:Landroid/database/Cursor;
    if-nez v3, :cond_7

    .line 4406
    const-string v9, "[MusicUtils]"

    const-string v10, "MusicUtils.getDrmCursor return null!!"

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4407
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 4408
    const/4 v1, 0x0

    move v0, v8

    .line 4409
    goto :goto_0

    .line 4412
    :cond_7
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-lez v8, :cond_9

    .line 4413
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4415
    const-string v8, "delivery_type"

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 4417
    .local v2, deliveryType:I
    const/4 v8, 0x4

    if-eq v8, v2, :cond_8

    const/4 v8, 0x3

    if-ne v8, v2, :cond_9

    .line 4419
    :cond_8
    const/4 v0, 0x2

    .line 4423
    .end local v2           #deliveryType:I
    :cond_9
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 4441
    .end local v3           #drmCursor:Landroid/database/Cursor;
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 4442
    const/4 v1, 0x0

    .line 4444
    goto :goto_0

    .line 4427
    :cond_a
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isWMDRMSupported()Z

    move-result v8

    if-eqz v8, :cond_b

    if-eqz v4, :cond_b

    const-string v8, "audio/x-wma-drm"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 4428
    const-string v8, "[MusicUtils]"

    const-string v9, "canShare()....This file is WMDRM...."

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4429
    const/4 v0, 0x0

    goto :goto_1

    .line 4434
    :cond_b
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static canRewind(Landroid/net/Uri;Landroid/content/Context;)Z
    .locals 1
    .parameter "uri"
    .parameter "context"

    .prologue
    .line 3575
    const/4 v0, 0x1

    return v0
.end method

.method public static checkDLNAMode(Landroid/content/Context;[IIZ)I
    .locals 13
    .parameter "context"
    .parameter "list"
    .parameter "position"
    .parameter "playAtGlance"

    .prologue
    .line 3994
    const-string v8, "DLNA"

    const/4 v9, 0x7

    invoke-virtual {p0, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 3997
    .local v2, Preferences:Landroid/content/SharedPreferences;
    const-string v8, "server"

    const/4 v9, 0x0

    invoke-interface {v2, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4001
    .local v1, DMS:Ljava/lang/String;
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->getCurDMR(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 4004
    .local v0, DMR:Ljava/lang/String;
    const-string v8, "container"

    const/4 v9, 0x0

    invoke-interface {v2, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4005
    .local v4, container:Ljava/lang/String;
    const-string v8, "content"

    const/4 v9, 0x0

    invoke-interface {v2, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4008
    .local v5, content:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 4009
    const-string v8, "[MusicUtils]"

    const-string v9, "input list != null, clear server and content info"

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4010
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "server"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "content"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 4012
    const/4 v1, 0x0

    .line 4015
    :cond_0
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->CheckDLNAStatus(Landroid/content/Context;)I

    move-result v6

    .line 4019
    .local v6, dlnaMode:I
    packed-switch v6, :pswitch_data_0

    .line 4105
    const-string v8, "[MusicUtils]"

    const-string v9, "check dlna mode failed"

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4106
    const/4 v8, 0x0

    :goto_0
    return v8

    .line 4021
    :pswitch_0
    const-string v8, "[MusicUtils]"

    const-string v9, "DLNA_DMP mode"

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4022
    if-nez p3, :cond_2

    .line 4023
    const-string v8, "switchDMP"

    const/4 v9, 0x0

    invoke-interface {v2, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 4025
    .local v3, Switch:Z
    if-eqz v3, :cond_1

    .line 4026
    const-string v8, "[MusicUtils]"

    const-string v9, "called from DMC, need to update DMP info"

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4042
    :cond_1
    const/4 v8, 0x1

    goto :goto_0

    .line 4044
    .end local v3           #Switch:Z
    :cond_2
    const-string v8, "[MusicUtils]"

    const-string v9, "play at glance, clear dlna info"

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4045
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->clearDlnaInfo(Landroid/content/Context;)V

    .line 4046
    const/4 v8, 0x0

    goto :goto_0

    .line 4051
    :pswitch_1
    const-string v8, "[MusicUtils]"

    const-string v9, "DLNA_LOCAL mode"

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4052
    const/4 v8, 0x0

    goto :goto_0

    .line 4055
    :pswitch_2
    const-string v8, "[MusicUtils]"

    const-string v9, "DLNA_DMC mode, send intent"

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4056
    if-nez p3, :cond_3

    .line 4059
    const-string v8, "[MusicUtils]"

    const-string v9, "type = null, DLNA mode switch to DLNA_DMC"

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4060
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "switchDMC"

    const/4 v10, 0x1

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4063
    const-string v8, "[MusicUtils]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "intent Server = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4064
    const-string v8, "[MusicUtils]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "intent Render = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4065
    const-string v8, "[MusicUtils]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "intent container = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "container"

    const/4 v11, 0x0

    invoke-interface {v2, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4066
    const-string v8, "[MusicUtils]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "intent content = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "content"

    const/4 v11, 0x0

    invoke-interface {v2, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4067
    const-string v8, "[MusicUtils]"

    const-string v9, "intent cookie = 1"

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4068
    const-string v8, "[MusicUtils]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "intent filePath = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "filePath"

    const/4 v11, 0x0

    invoke-interface {v2, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4069
    const-string v8, "[MusicUtils]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "intent shuffle = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "shuffle"

    const/4 v11, 0x0

    invoke-interface {v2, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4070
    const-string v8, "[MusicUtils]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "intent startIdx = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "startIdx"

    const-wide/16 v11, -0x1

    invoke-interface {v2, v10, v11, v12}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4071
    const-string v8, "[MusicUtils]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "intent endIdx = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "endIdx"

    const-wide/16 v11, -0x1

    invoke-interface {v2, v10, v11, v12}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4072
    const-string v8, "[MusicUtils]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "intent direction ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "direction"

    const/4 v11, 0x0

    invoke-interface {v2, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4073
    const/4 v8, 0x2

    goto/16 :goto_0

    .line 4075
    :cond_3
    const-string v8, "[MusicUtils]"

    const-string v9, "play at glance, clear dlna info"

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4076
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->clearDlnaInfo(Landroid/content/Context;)V

    .line 4077
    if-eqz p0, :cond_4

    .line 4078
    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.htc.dmc.poweroff"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4079
    .local v7, intentOffDmc:Landroid/content/Intent;
    invoke-virtual {p0, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4081
    .end local v7           #intentOffDmc:Landroid/content/Intent;
    :cond_4
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 4086
    :pswitch_3
    const-string v8, "[MusicUtils]"

    const-string v9, "DLNA_PUSH mode"

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4087
    if-nez p3, :cond_5

    .line 4090
    const-string v8, "[MusicUtils]"

    const-string v9, "type = null, DLNA mode switch to DLNA_PUSH"

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4091
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "switchDMC"

    const/4 v10, 0x1

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4093
    const/4 v8, 0x3

    goto/16 :goto_0

    .line 4095
    :cond_5
    const-string v8, "[MusicUtils]"

    const-string v9, "play at glance, switch to local mode"

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4096
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->clearDlnaInfo(Landroid/content/Context;)V

    .line 4097
    if-eqz p0, :cond_6

    .line 4098
    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.htc.dmc.poweroff"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4099
    .restart local v7       #intentOffDmc:Landroid/content/Intent;
    invoke-virtual {p0, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4101
    .end local v7           #intentOffDmc:Landroid/content/Intent;
    :cond_6
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 4019
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static declared-synchronized checkInternalMemory()J
    .locals 11

    .prologue
    .line 495
    const-class v8, Lcom/htc/music/util/MusicUtils;

    monitor-enter v8

    :try_start_0
    new-instance v4, Landroid/os/StatFs;

    sget-object v7, Lcom/htc/music/util/MusicUtils;->PATH:Ljava/lang/String;

    invoke-direct {v4, v7}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 496
    .local v4, fileStats:Landroid/os/StatFs;
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v7

    int-to-long v0, v7

    .line 497
    .local v0, availableBlocks:J
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v7

    int-to-long v2, v7

    .line 498
    .local v2, blockSize:J
    mul-long v5, v0, v2

    .line 499
    .local v5, size:J
    const-string v7, "[MusicUtils]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "internal memory: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 500
    monitor-exit v8

    return-wide v5

    .line 495
    .end local v0           #availableBlocks:J
    .end local v2           #blockSize:J
    .end local v5           #size:J
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7
.end method

.method public static checkLocalHasSong(Landroid/content/Context;)Z
    .locals 10
    .parameter "context"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 4945
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v8, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v9

    const-string v3, "is_music>=1"

    const/4 v4, 0x0

    const-string v5, "_id LIMIT 0,1"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 4949
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_2

    .line 4957
    :cond_0
    if-eqz v6, :cond_1

    .line 4958
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4959
    const/4 v6, 0x0

    :cond_1
    move v0, v9

    .line 4962
    :goto_0
    return v0

    .line 4957
    :cond_2
    if-eqz v6, :cond_3

    .line 4958
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4959
    const/4 v6, 0x0

    :cond_3
    move v0, v8

    .line 4953
    goto :goto_0

    .line 4954
    :catch_0
    move-exception v7

    .line 4955
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "[MusicUtils]"

    const-string v1, "[checkLocalHasSong] Exception!"

    invoke-static {v0, v1, v7}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4957
    if-eqz v6, :cond_4

    .line 4958
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4959
    const/4 v6, 0x0

    :cond_4
    move v0, v9

    .line 4962
    goto :goto_0

    .line 4957
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 4958
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4959
    const/4 v6, 0x0

    .line 4957
    :cond_5
    throw v0
.end method

.method public static checkPlaylistCount(Landroid/content/Context;)I
    .locals 8
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 4858
    const/4 v6, 0x0

    .line 4859
    .local v6, count:I
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v0

    const/4 v0, 0x1

    const-string v4, "name"

    aput-object v4, v2, v0

    .line 4863
    .local v2, cols:[Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 4864
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v4, "limit"

    const-string v5, "1"

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    .line 4866
    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 4867
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 4868
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 4869
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 4872
    :cond_0
    return v6
.end method

.method public static checkSizeLimit(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 5
    .parameter "context"
    .parameter "path"
    .parameter "audioId"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4474
    const/4 v1, 0x0

    .line 4476
    .local v1, overSizeLimit:Z
    invoke-static {p0}, Lcom/htc/music/util/ProjectSettings;->getMaxRingtoneSize(Landroid/content/Context;)I

    move-result v4

    mul-int/lit16 v0, v4, 0x400

    .line 4477
    .local v0, maxRingtoneSize:I
    if-lez v0, :cond_0

    .line 4478
    invoke-static {p1}, Lcom/htc/music/util/MusicUtils;->wasDRMFilePlaying(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4479
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/htc/music/util/MusicUtils;->getDrmTrackSize(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v4

    if-le v4, v0, :cond_1

    move v1, v2

    .line 4485
    :cond_0
    :goto_0
    if-nez v1, :cond_4

    :goto_1
    return v2

    :cond_1
    move v1, v3

    .line 4479
    goto :goto_0

    .line 4481
    :cond_2
    invoke-static {p0, p2}, Lcom/htc/music/util/MusicUtils;->getTrackSize(Landroid/content/Context;I)I

    move-result v4

    if-le v4, v0, :cond_3

    move v1, v2

    :goto_2
    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_2

    :cond_4
    move v2, v3

    .line 4485
    goto :goto_1
.end method

.method public static checkedInternalStorageWhenResume(Landroid/content/Context;)Z
    .locals 3
    .parameter "fromCtx"

    .prologue
    const/4 v1, 0x1

    .line 433
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->isInternalStorageEnough(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 435
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 436
    .local v0, targetIntent:Landroid/content/Intent;
    const-class v2, Lcom/htc/music/MediaPlaybackErrorActivity;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 437
    const-string v2, "disablelib"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 438
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 439
    const/4 v1, 0x0

    .line 441
    .end local v0           #targetIntent:Landroid/content/Intent;
    :cond_0
    return v1
.end method

.method public static clearAlbumArtCache()V
    .locals 6

    .prologue
    .line 2178
    sget-object v5, Lcom/htc/music/util/MusicUtils;->sArtCache:Ljava/util/HashMap;

    monitor-enter v5

    .line 2179
    :try_start_0
    sget-object v4, Lcom/htc/music/util/MusicUtils;->sArtCache:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 2180
    .local v3, keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2181
    .local v2, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2182
    .local v0, artIndex:Ljava/lang/Integer;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2183
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #artIndex:Ljava/lang/Integer;
    check-cast v0, Ljava/lang/Integer;

    .line 2184
    .restart local v0       #artIndex:Ljava/lang/Integer;
    sget-object v4, Lcom/htc/music/util/MusicUtils;->sArtCache:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/util/MusicUtils$FastBitmapDrawable;

    .line 2185
    .local v1, bm:Lcom/htc/music/util/MusicUtils$FastBitmapDrawable;
    if-eqz v1, :cond_0

    .line 2186
    invoke-virtual {v1}, Lcom/htc/music/util/MusicUtils$FastBitmapDrawable;->recycle()V

    goto :goto_0

    .line 2191
    .end local v0           #artIndex:Ljava/lang/Integer;
    .end local v1           #bm:Lcom/htc/music/util/MusicUtils$FastBitmapDrawable;
    .end local v2           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 2190
    .restart local v0       #artIndex:Ljava/lang/Integer;
    .restart local v2       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_1
    :try_start_1
    sget-object v4, Lcom/htc/music/util/MusicUtils;->sArtCache:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 2191
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2192
    return-void
.end method

.method public static clearDlnaInfo(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const-wide/16 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 3975
    const-string v2, "DLNA"

    const/4 v3, 0x7

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3977
    .local v0, Preferences:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 3978
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    if-eqz v1, :cond_0

    .line 3979
    const-string v2, "container"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3980
    const-string v2, "content"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3981
    const-string v2, "filepath"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3982
    const-string v2, "shuffle"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3983
    const-string v2, "startIdx"

    invoke-interface {v1, v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 3984
    const-string v2, "endIdx"

    invoke-interface {v1, v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 3985
    const-string v2, "direction"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3986
    const-string v2, "server"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3987
    const-string v2, "Render"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3988
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3990
    :cond_0
    return-void
.end method

.method public static clearPlaylist(Landroid/content/Context;I)V
    .locals 12
    .parameter "context"
    .parameter "plid"

    .prologue
    const/4 v3, 0x0

    .line 1264
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    .line 1268
    .local v2, ccols:[Ljava/lang/String;
    const-string v0, "external"

    int-to-long v4, p1

    invoke-static {v0, v4, v5}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    const-string v5, "play_order"

    move-object v0, p0

    move-object v4, v3

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1271
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 1296
    :goto_0
    return-void

    .line 1282
    :cond_0
    :try_start_0
    const-string v0, "external"

    int-to-long v3, p1

    invoke-static {v0, v3, v4}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v11

    .line 1283
    .local v11, uri:Landroid/net/Uri;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1284
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 1285
    .local v6, colidx:I
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1286
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 1287
    .local v9, id:J
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v11, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1288
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1290
    .end local v6           #colidx:I
    .end local v9           #id:J
    .end local v11           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v8

    .line 1291
    .local v8, ex:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "[MusicUtils]"

    const-string v1, "Failed to clear playlist."

    invoke-static {v0, v1, v8}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1293
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1294
    .end local v8           #ex:Ljava/lang/Exception;
    :goto_2
    const/4 v7, 0x0

    goto :goto_0

    .line 1293
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1294
    const/4 v7, 0x0

    .line 1293
    throw v0

    .restart local v6       #colidx:I
    .restart local v11       #uri:Landroid/net/Uri;
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2
.end method

.method public static clearQueue()V
    .locals 3

    .prologue
    .line 2089
    :try_start_0
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v1, 0x0

    const v2, 0x7fffffff

    invoke-interface {v0, v1, v2}, Lcom/htc/music/IMediaPlaybackService;->removeTracks(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2092
    :goto_0
    return-void

    .line 2090
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static createBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "drawable"

    .prologue
    .line 4205
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 4206
    .local v1, width:I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 4207
    .local v0, height:I
    invoke-static {p0, v0, v1}, Lcom/htc/music/util/MusicUtils;->createBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method private static createBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "drawable"
    .parameter "height"
    .parameter "width"

    .prologue
    const/4 v5, 0x0

    .line 4211
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 4214
    .local v2, config:Landroid/graphics/Bitmap$Config;
    :goto_0
    invoke-static {p2, p1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 4215
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 4216
    .local v1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {p0, v5, v5, p2, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4217
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4218
    return-object v0

    .line 4211
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #canvas:Landroid/graphics/Canvas;
    .end local v2           #config:Landroid/graphics/Bitmap$Config;
    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_0
.end method

.method public static createPlaylist(Landroid/content/Context;Ljava/lang/String;)I
    .locals 7
    .parameter "context"
    .parameter "name"

    .prologue
    .line 4879
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 4880
    :cond_0
    const/4 v0, -0x1

    .line 4900
    :cond_1
    :goto_0
    return v0

    .line 4882
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 4883
    .local v1, resolver:Landroid/content/ContentResolver;
    invoke-static {p0, p1}, Lcom/htc/music/util/MusicUtils;->getPlaylistId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 4884
    .local v0, id:I
    const/4 v2, 0x0

    .line 4885
    .local v2, uri:Landroid/net/Uri;
    if-ltz v0, :cond_3

    .line 4886
    sget-object v4, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    int-to-long v5, v0

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 4887
    invoke-static {p0, v0}, Lcom/htc/music/util/MusicUtils;->clearPlaylist(Landroid/content/Context;I)V

    goto :goto_0

    .line 4889
    :cond_3
    new-instance v3, Landroid/content/ContentValues;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 4890
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "name"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4891
    sget-object v4, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 4892
    invoke-static {p0, v2}, Lcom/htc/music/util/MusicUtils;->getPlaylistId(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v0

    .line 4895
    if-lez v0, :cond_1

    .line 4896
    invoke-static {p0}, Lcom/htc/music/util/ShowMeHelper;->notifyCreatePlaylist(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static deleteArrayItem([III)V
    .locals 2
    .parameter "list"
    .parameter "length"
    .parameter "position"

    .prologue
    .line 4325
    if-eqz p0, :cond_0

    if-ltz p2, :cond_0

    if-ge p2, p1, :cond_0

    array-length v1, p0

    if-ge v1, p1, :cond_1

    .line 4331
    :cond_0
    return-void

    .line 4328
    :cond_1
    move v0, p2

    .local v0, i:I
    :goto_0
    add-int/lit8 v1, p1, -0x1

    if-ge v0, v1, :cond_0

    .line 4329
    add-int/lit8 v1, v0, 0x1

    aget v1, p0, v1

    aput v1, p0, v0

    .line 4328
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static deleteDrmTracks(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 6
    .parameter "context"
    .parameter "uri"

    .prologue
    const/4 v4, 0x0

    .line 1447
    const/4 v3, 0x3

    new-array v0, v3, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v0, v4

    const/4 v3, 0x1

    const-string v4, "_data"

    aput-object v4, v0, v3

    const/4 v3, 0x2

    const-string v4, "title"

    aput-object v4, v0, v3

    .line 1451
    .local v0, cols:[Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, p1, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1452
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0700a1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1453
    .local v2, message:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1454
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "content://drm"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1458
    .end local v2           #message:Ljava/lang/String;
    :goto_0
    return-void

    .line 1455
    :catch_0
    move-exception v1

    .line 1456
    .local v1, ex:Ljava/lang/SecurityException;
    const-string v3, "[MusicUtils]"

    const-string v4, "deleteDrmTracks SecurityException"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static deletePlaylistTrack(Landroid/content/Context;J)V
    .locals 5
    .parameter "context"
    .parameter "plid"

    .prologue
    .line 1299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1300
    .local v0, where:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audio_playlists_map.playlist_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1301
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "external"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1302
    return-void
.end method

.method public static deletePlaylistTrack(Landroid/content/Context;J[I)V
    .locals 9
    .parameter "context"
    .parameter "plid"
    .parameter "list"

    .prologue
    const/4 v8, 0x0

    .line 1305
    if-eqz p3, :cond_2

    array-length v4, p3

    if-lez v4, :cond_2

    .line 1306
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1307
    .local v3, where:Ljava/lang/StringBuilder;
    const-string v4, "audio_playlists_map._id IN ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1308
    array-length v2, p3

    .line 1309
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 1310
    aget v4, p3, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1311
    add-int/lit8 v4, v2, -0x1

    if-ge v0, v4, :cond_0

    .line 1312
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1309
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1315
    :cond_1
    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1316
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "external"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1320
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0006

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v2, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1321
    .local v1, message:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 1327
    .end local v0           #i:I
    .end local v1           #message:Ljava/lang/String;
    .end local v2           #size:I
    .end local v3           #where:Ljava/lang/StringBuilder;
    :cond_2
    return-void
.end method

.method public static deletePlaylists(Landroid/content/Context;[I)V
    .locals 9
    .parameter "context"
    .parameter "list"

    .prologue
    const/4 v8, 0x0

    .line 1330
    if-eqz p1, :cond_2

    array-length v4, p1

    if-lez v4, :cond_2

    .line 1331
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1332
    .local v3, where:Ljava/lang/StringBuilder;
    const-string v4, "_id IN ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1333
    array-length v2, p1

    .line 1334
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 1335
    aget v4, p1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1336
    add-int/lit8 v4, v2, -0x1

    if-ge v0, v4, :cond_0

    .line 1337
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1334
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1340
    :cond_1
    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1341
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1344
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0005

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v2, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1346
    .local v1, message:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 1352
    .end local v0           #i:I
    .end local v1           #message:Ljava/lang/String;
    .end local v2           #size:I
    .end local v3           #where:Ljava/lang/StringBuilder;
    :cond_2
    return-void
.end method

.method public static deleteTracks(Landroid/content/Context;[I)V
    .locals 18
    .parameter "context"
    .parameter "list"

    .prologue
    .line 1356
    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v3, v1

    const/4 v1, 0x1

    const-string v2, "_data"

    aput-object v2, v3, v1

    const/4 v1, 0x2

    const-string v2, "album_id"

    aput-object v2, v3, v1

    .line 1360
    .local v3, cols:[Ljava/lang/String;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 1361
    .local v16, where:Ljava/lang/StringBuilder;
    const-string v1, "_id IN ("

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1362
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    move-object/from16 v0, p1

    array-length v1, v0

    if-ge v12, v1, :cond_1

    .line 1363
    aget v1, p1, v12

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1364
    move-object/from16 v0, p1

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge v12, v1, :cond_0

    .line 1365
    const-string v1, ","

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1362
    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 1368
    :cond_1
    const-string v1, ")"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1369
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v6}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1372
    .local v9, c:Landroid/database/Cursor;
    if-eqz v9, :cond_8

    .line 1376
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v1, :cond_3

    .line 1378
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1379
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1381
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 1382
    .local v13, id:I
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1, v13}, Lcom/htc/music/IMediaPlaybackService;->removeTrack(I)I

    .line 1384
    const/4 v1, 0x2

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 1385
    .local v7, artIndex:I
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sArtCache:Ljava/util/HashMap;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1386
    :try_start_1
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sArtCache:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/music/util/MusicUtils$FastBitmapDrawable;

    .line 1387
    .local v8, bm:Lcom/htc/music/util/MusicUtils$FastBitmapDrawable;
    if-eqz v8, :cond_2

    .line 1388
    invoke-virtual {v8}, Lcom/htc/music/util/MusicUtils$FastBitmapDrawable;->recycle()V

    .line 1389
    const/4 v8, 0x0

    .line 1391
    :cond_2
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sArtCache:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1392
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1393
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 1395
    .end local v7           #artIndex:I
    .end local v8           #bm:Lcom/htc/music/util/MusicUtils$FastBitmapDrawable;
    .end local v13           #id:I
    :catch_0
    move-exception v1

    .line 1400
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1404
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1405
    :cond_4
    :goto_2
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_7

    .line 1406
    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 1407
    .local v15, name:Ljava/lang/String;
    const-string v1, "[MusicUtils]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delete tracks:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1408
    if-eqz v15, :cond_4

    .line 1409
    const-string v1, "content://drm/"

    invoke-virtual {v15, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1410
    const-string v1, "[MusicUtils]"

    const-string v2, "delete drm file"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1411
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->deleteDrmFile(Landroid/content/ContentResolver;Landroid/net/Uri;)I

    .line 1412
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2

    .line 1392
    .end local v15           #name:Ljava/lang/String;
    .restart local v7       #artIndex:I
    .restart local v13       #id:I
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1414
    .end local v7           #artIndex:I
    .end local v13           #id:I
    .restart local v15       #name:Ljava/lang/String;
    :cond_5
    const-string v1, "[MusicUtils]"

    const-string v2, "delete local file"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1415
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1417
    .local v11, f:Ljava/io/File;
    :try_start_5
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_6

    .line 1421
    const-string v1, "[MusicUtils]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to delete file "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1423
    :cond_6
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 1424
    :catch_1
    move-exception v10

    .line 1425
    .local v10, ex:Ljava/lang/SecurityException;
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2

    .line 1432
    .end local v10           #ex:Ljava/lang/SecurityException;
    .end local v11           #f:Ljava/io/File;
    .end local v15           #name:Ljava/lang/String;
    :cond_7
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1433
    const/4 v9, 0x0

    .line 1436
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0002

    move-object/from16 v0, p1

    array-length v4, v0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v5, v6

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 1439
    .local v14, message:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v14, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1443
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://media"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1444
    return-void
.end method

.method public static deleteTracksByCursor(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .parameter "context"
    .parameter "cursor"
    .parameter "where"

    .prologue
    .line 3189
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v10

    if-nez v10, :cond_1

    .line 3190
    :cond_0
    const/4 v8, 0x0

    .line 3266
    :goto_0
    return-object v8

    .line 3193
    :cond_1
    :try_start_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v7

    .line 3197
    .local v7, len:I
    :try_start_1
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3198
    :goto_1
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v10

    if-nez v10, :cond_3

    .line 3200
    const/4 v10, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 3201
    .local v6, id:I
    sget-object v10, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v10, v6}, Lcom/htc/music/IMediaPlaybackService;->removeTrack(I)I

    .line 3203
    const/4 v10, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 3204
    .local v1, artIndex:I
    sget-object v11, Lcom/htc/music/util/MusicUtils;->sArtCache:Ljava/util/HashMap;

    monitor-enter v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_2

    .line 3205
    :try_start_2
    sget-object v10, Lcom/htc/music/util/MusicUtils;->sArtCache:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/util/MusicUtils$FastBitmapDrawable;

    .line 3206
    .local v2, bm:Lcom/htc/music/util/MusicUtils$FastBitmapDrawable;
    if-eqz v2, :cond_2

    .line 3207
    invoke-virtual {v2}, Lcom/htc/music/util/MusicUtils$FastBitmapDrawable;->recycle()V

    .line 3208
    const/4 v2, 0x0

    .line 3210
    :cond_2
    sget-object v10, Lcom/htc/music/util/MusicUtils;->sArtCache:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3211
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3212
    :try_start_3
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 3214
    .end local v1           #artIndex:I
    .end local v2           #bm:Lcom/htc/music/util/MusicUtils$FastBitmapDrawable;
    .end local v6           #id:I
    :catch_0
    move-exception v10

    .line 3218
    :cond_3
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v11, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v10, v11, v0, v12}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 3220
    .local v3, delete_row_number:I
    const-string v10, "[MusicUtils]"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "deleteTracksByCursor,delete row numbers:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " in music db."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3223
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3224
    :cond_4
    :goto_2
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v10

    if-nez v10, :cond_7

    .line 3225
    const/4 v10, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 3226
    .local v9, name:Ljava/lang/String;
    if-eqz v9, :cond_4

    .line 3227
    const-string v10, "content://drm/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 3228
    const-string v10, "[MusicUtils]"

    const-string v11, "deleteTracksByCursor,delete drm file"

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_4 .. :try_end_4} :catch_2

    .line 3230
    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->deleteDrmFile(Landroid/content/ContentResolver;Landroid/net/Uri;)I

    .line 3231
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 3232
    :catch_1
    move-exception v4

    .line 3233
    .local v4, ex:Ljava/lang/SecurityException;
    :try_start_6
    const-string v10, "[MusicUtils]"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to delete file "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3234
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    .line 3264
    .end local v3           #delete_row_number:I
    .end local v4           #ex:Ljava/lang/SecurityException;
    .end local v7           #len:I
    .end local v9           #name:Ljava/lang/String;
    :catch_2
    move-exception v4

    .line 3265
    .local v4, ex:Ljava/lang/UnsupportedOperationException;
    :try_start_7
    const-string v10, "[MusicUtils]"

    const-string v11, "UnsupportedOperationException:"

    invoke-static {v10, v11, v4}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 3266
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 3211
    .end local v4           #ex:Ljava/lang/UnsupportedOperationException;
    .restart local v1       #artIndex:I
    .restart local v6       #id:I
    .restart local v7       #len:I
    :catchall_0
    move-exception v10

    :try_start_8
    monitor-exit v11
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    throw v10
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_9 .. :try_end_9} :catch_2

    .line 3267
    .end local v1           #artIndex:I
    .end local v6           #id:I
    .end local v7           #len:I
    :catchall_1
    move-exception v10

    throw v10

    .line 3237
    .restart local v3       #delete_row_number:I
    .restart local v7       #len:I
    .restart local v9       #name:Ljava/lang/String;
    :cond_5
    :try_start_a
    const-string v10, "[MusicUtils]"

    const-string v11, "deleteTracksByCursor,delete local file"

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3238
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_a .. :try_end_a} :catch_2

    .line 3240
    .local v5, f:Ljava/io/File;
    :try_start_b
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v10

    if-nez v10, :cond_6

    .line 3244
    const-string v10, "[MusicUtils]"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to delete file "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3246
    :cond_6
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_b .. :try_end_b} :catch_2

    goto/16 :goto_2

    .line 3247
    :catch_3
    move-exception v4

    .line 3248
    .local v4, ex:Ljava/lang/SecurityException;
    :try_start_c
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_2

    .line 3256
    .end local v4           #ex:Ljava/lang/SecurityException;
    .end local v5           #f:Ljava/io/File;
    .end local v9           #name:Ljava/lang/String;
    :cond_7
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0d0002

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v7, v12}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 3262
    .local v8, message:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "content://media"

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_c .. :try_end_c} :catch_2

    goto/16 :goto_0
.end method

.method public static deleteTracksForAlbum(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "table"
    .parameter "albumId"
    .parameter "artistId"
    .parameter "genreId"
    .parameter "composerId"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x2

    .line 3279
    const/4 v0, 0x4

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v3, v0

    const/4 v0, 0x1

    const-string v1, "_data"

    aput-object v1, v3, v0

    const-string v0, "album_id"

    aput-object v0, v3, v6

    const/4 v0, 0x3

    const-string v1, "artist_id"

    aput-object v1, v3, v0

    .line 3284
    .local v3, ccols:[Ljava/lang/String;
    invoke-static {p2, p3, p4, p5}, Lcom/htc/music/util/MusicUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3285
    .local v4, where:Ljava/lang/String;
    const-string v0, "[MusicUtils]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query String    :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3287
    if-ne p1, v6, :cond_0

    move-object v0, p0

    .line 3288
    check-cast v0, Lcom/htc/music/widget/MusicMaActivity;

    sget-object v2, Lcom/htc/music/util/MusicUtils$Media2;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v6, "track"

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/music/widget/MusicMaActivity;->deleteTracks(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 3292
    :goto_0
    return-void

    :cond_0
    move-object v0, p0

    .line 3290
    check-cast v0, Lcom/htc/music/widget/MusicMaActivity;

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v6, "track"

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/music/widget/MusicMaActivity;->deleteTracks(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static deleteTracksForAlbum(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "albumId"
    .parameter "artistId"
    .parameter "genreId"
    .parameter "composerId"

    .prologue
    .line 3274
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->deleteTracksForAlbum(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3275
    return-void
.end method

.method public static deleteTracksForArtist(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "table"
    .parameter "artistId"
    .parameter "genreId"
    .parameter "composerId"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 3301
    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v3, v0

    const/4 v0, 0x1

    const-string v1, "_data"

    aput-object v1, v3, v0

    const-string v0, "album_id"

    aput-object v0, v3, v6

    .line 3306
    .local v3, ccols:[Ljava/lang/String;
    invoke-static {v5, p2, p3, p4}, Lcom/htc/music/util/MusicUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3307
    .local v4, where:Ljava/lang/String;
    const-string v0, "[MusicUtils]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query String    :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3309
    if-ne p1, v6, :cond_0

    move-object v0, p0

    .line 3310
    check-cast v0, Lcom/htc/music/widget/MusicMaActivity;

    sget-object v2, Lcom/htc/music/util/MusicUtils$Media2;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v6, "album_key,track"

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/music/widget/MusicMaActivity;->deleteTracks(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 3320
    :goto_0
    return-void

    :cond_0
    move-object v0, p0

    .line 3315
    check-cast v0, Lcom/htc/music/widget/MusicMaActivity;

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v6, "album_key,track"

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/music/widget/MusicMaActivity;->deleteTracks(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static deleteTracksForArtist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "artistId"
    .parameter "genreId"
    .parameter "composerId"

    .prologue
    .line 3296
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2, p3}, Lcom/htc/music/util/MusicUtils;->deleteTracksForArtist(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3297
    return-void
.end method

.method public static deleteTracksForComposer(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "name"

    .prologue
    const/4 v5, 0x0

    .line 3347
    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v3, v0

    const/4 v0, 0x1

    const-string v1, "_data"

    aput-object v1, v3, v0

    const/4 v0, 0x2

    const-string v1, "album_id"

    aput-object v1, v3, v0

    .line 3354
    .local v3, ccols:[Ljava/lang/String;
    invoke-static {p1}, Lcom/htc/music/util/MusicUtils;->isUnknownComposer(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3355
    const-string v0, "<unknown>"

    invoke-static {v5, v5, v5, v0}, Lcom/htc/music/util/MusicUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3359
    .local v4, where:Ljava/lang/String;
    :goto_0
    const-string v0, "[MusicUtils]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query String    :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    .line 3361
    check-cast v0, Lcom/htc/music/widget/MusicMaActivity;

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v6, "track"

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/music/widget/MusicMaActivity;->deleteTracks(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 3364
    return-void

    .line 3357
    .end local v4           #where:Ljava/lang/String;
    :cond_0
    invoke-static {v5, v5, v5, p1}, Lcom/htc/music/util/MusicUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #where:Ljava/lang/String;
    goto :goto_0
.end method

.method public static deleteTracksForGenre(Landroid/content/Context;Ljava/lang/String;)V
    .locals 9
    .parameter "context"
    .parameter "genreId"

    .prologue
    const/4 v5, 0x0

    .line 3323
    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v3, v0

    const/4 v0, 0x1

    const-string v1, "_data"

    aput-object v1, v3, v0

    const/4 v0, 0x2

    const-string v1, "album_id"

    aput-object v1, v3, v0

    .line 3328
    .local v3, ccols:[Ljava/lang/String;
    invoke-static {v5, v5, p1, v5}, Lcom/htc/music/util/MusicUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3329
    .local v4, where:Ljava/lang/String;
    const-string v0, "[MusicUtils]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query String    :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3331
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v7, v0

    .line 3333
    .local v7, id:J
    const-wide/16 v0, -0x1

    cmp-long v0, v7, v0

    if-nez v0, :cond_0

    move-object v0, p0

    .line 3334
    check-cast v0, Lcom/htc/music/widget/MusicMaActivity;

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v6, "title_key"

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/music/widget/MusicMaActivity;->deleteTracks(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 3344
    :goto_0
    return-void

    :cond_0
    move-object v0, p0

    .line 3338
    check-cast v0, Lcom/htc/music/widget/MusicMaActivity;

    const-string v1, "external"

    invoke-static {v1, v7, v8}, Landroid/provider/MediaStore$Audio$Genres$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v2

    const-string v6, "title_key"

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/music/widget/MusicMaActivity;->deleteTracks(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static disableKeyguard(Landroid/app/Activity;)V
    .locals 6
    .parameter "activity"

    .prologue
    .line 4966
    const-string v3, "[MusicUtils]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bp - disable. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4967
    const/4 v1, 0x0

    .line 4968
    .local v1, win:Landroid/view/Window;
    invoke-virtual {p0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 4969
    .local v0, parent:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 4970
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 4975
    :goto_0
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 4976
    .local v2, winParams:Landroid/view/WindowManager$LayoutParams;
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x48

    or-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 4978
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 4979
    return-void

    .line 4972
    .end local v2           #winParams:Landroid/view/WindowManager$LayoutParams;
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    goto :goto_0
.end method

.method public static displayDatabaseError(Landroid/app/Activity;)V
    .locals 10
    .parameter "a"

    .prologue
    const v9, 0x7f080092

    .line 1665
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    .line 1668
    .local v2, status:Ljava/lang/String;
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->IsInternalStorage()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1669
    const v3, 0x7f07004c

    .line 1674
    .local v3, title:I
    :goto_0
    const v1, 0x20400a0

    .line 1676
    .local v1, message:I
    const-string v6, "shared"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1677
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->IsInternalStorage()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1678
    const v3, 0x7f070047

    .line 1679
    const v1, 0x7f070049

    .line 1704
    :goto_1
    invoke-virtual {p0, v3}, Landroid/app/Activity;->setTitle(I)V

    .line 1705
    invoke-virtual {p0, v9}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 1706
    .local v5, v:Landroid/view/View;
    if-eqz v5, :cond_0

    .line 1707
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1713
    :cond_0
    const v6, 0x102000a

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 1714
    if-eqz v5, :cond_1

    .line 1715
    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1717
    :cond_1
    invoke-virtual {p0, v9}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1718
    .local v4, tv:Landroid/widget/TextView;
    if-eqz v4, :cond_2

    .line 1719
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1720
    :cond_2
    return-void

    .line 1671
    .end local v1           #message:I
    .end local v3           #title:I
    .end local v4           #tv:Landroid/widget/TextView;
    .end local v5           #v:Landroid/view/View;
    :cond_3
    const v3, 0x7f07004b

    .restart local v3       #title:I
    goto :goto_0

    .line 1681
    .restart local v1       #message:I
    :cond_4
    const v3, 0x7f070046

    .line 1682
    const v1, 0x7f070048

    goto :goto_1

    .line 1685
    :cond_5
    const-string v6, "removed"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1686
    const v3, 0x20401f5

    .line 1687
    const v1, 0x20400a0

    goto :goto_1

    .line 1688
    :cond_6
    const-string v6, "unmounted"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1689
    const v3, 0x20401f5

    .line 1690
    const v1, 0x20401fa

    goto :goto_1

    .line 1691
    :cond_7
    const-string v6, "mounted"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1696
    const-string v6, ""

    invoke-virtual {p0, v6}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1697
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1698
    .local v0, intent:Landroid/content/Intent;
    const-class v6, Lcom/htc/music/ScanningProgressActivity;

    invoke-virtual {v0, p0, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1699
    const/16 v6, 0xb

    invoke-virtual {p0, v0, v6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 1701
    .end local v0           #intent:Landroid/content/Intent;
    :cond_8
    const-string v6, "[MusicUtils]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sd card: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public static enableKeyguard(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 4982
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/htc/music/util/MusicUtils;->enableKeyguard(Landroid/app/Activity;Z)V

    .line 4983
    return-void
.end method

.method public static enableKeyguard(Landroid/app/Activity;Z)V
    .locals 6
    .parameter "activity"
    .parameter "onlyShowWhenLocked"

    .prologue
    .line 4986
    invoke-static {}, Lcom/htc/music/util/ProjectSettings;->isSupportBypassPincode()Z

    move-result v3

    if-nez v3, :cond_0

    .line 4987
    const-string v3, "[MusicUtils]"

    const-string v4, "bp - Not support for this project."

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5008
    :goto_0
    return-void

    .line 4991
    :cond_0
    const-string v3, "[MusicUtils]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bp - enable. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4993
    const/4 v1, 0x0

    .line 4994
    .local v1, win:Landroid/view/Window;
    invoke-virtual {p0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 4995
    .local v0, parent:Landroid/app/Activity;
    if-eqz v0, :cond_2

    .line 4996
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 5001
    :goto_1
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 5002
    .local v2, winParams:Landroid/view/WindowManager$LayoutParams;
    if-nez p1, :cond_1

    .line 5003
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v4, -0x400001

    and-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 5005
    :cond_1
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v4, -0x80001

    and-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 5006
    const-string v3, "[MusicUtils]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bp - enable. value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5007
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0

    .line 4998
    .end local v2           #winParams:Landroid/view/WindowManager$LayoutParams;
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    goto :goto_1
.end method

.method public static enableKeyguardNow(Landroid/content/Context;)V
    .locals 2
    .parameter "ctx"

    .prologue
    .line 5023
    const-string v0, "[MusicUtils]"

    const-string v1, "bp - send broadcast."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5024
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.enablekeyguard"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 5025
    return-void
.end method

.method public static getAlbumArtBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "albumArtPath"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 2287
    const/4 v3, 0x1

    .line 2288
    .local v3, sampleSize:I
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 2289
    .local v0, bitmapOptions:Landroid/graphics/BitmapFactory$Options;
    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v6, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 2290
    iput-boolean v8, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 2292
    iput v7, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 2293
    iput-boolean v7, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 2295
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 2297
    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    shr-int/lit8 v2, v6, 0x1

    .line 2298
    .local v2, nextWidth:I
    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    shr-int/lit8 v1, v6, 0x1

    .line 2299
    .local v1, nextHeight:I
    :goto_0
    if-le v2, p1, :cond_0

    if-le v1, p2, :cond_0

    .line 2300
    shl-int/lit8 v3, v3, 0x1

    .line 2301
    shr-int/lit8 v2, v2, 0x1

    .line 2302
    shr-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2305
    :cond_0
    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 2306
    iput-boolean v8, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 2307
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 2308
    .local v4, tempBitmap:Landroid/graphics/Bitmap;
    if-eqz v4, :cond_2

    .line 2309
    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-ne v6, p1, :cond_1

    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-eq v6, p2, :cond_2

    .line 2310
    :cond_1
    invoke-static {v4, p1, p2, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 2311
    .local v5, tmp:Landroid/graphics/Bitmap;
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 2312
    move-object v4, v5

    .line 2315
    .end local v5           #tmp:Landroid/graphics/Bitmap;
    :cond_2
    return-object v4
.end method

.method public static getAlbumListForArtist(Landroid/content/Context;I)[I
    .locals 1
    .parameter "context"
    .parameter "id"

    .prologue
    .line 952
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/htc/music/util/MusicUtils;->getAlbumListForArtist(Landroid/content/Context;II)[I

    move-result-object v0

    return-object v0
.end method

.method public static getAlbumListForArtist(Landroid/content/Context;II)[I
    .locals 8
    .parameter "context"
    .parameter "table"
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x2

    .line 956
    new-array v2, v5, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "artist_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "album_id"

    aput-object v1, v2, v0

    .line 959
    .local v2, ccols:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "artist_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "is_music>=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 961
    .local v3, where:Ljava/lang/String;
    const/4 v6, 0x0

    .line 962
    .local v6, cursor:Landroid/database/Cursor;
    if-ne p1, v5, :cond_0

    .line 963
    sget-object v1, Lcom/htc/music/util/MusicUtils$Media2;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v5, "album COLLATE NOCASE ASC, track"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 970
    :goto_0
    if-eqz v6, :cond_1

    .line 971
    invoke-static {v6}, Lcom/htc/music/util/MusicUtils;->getAlbumListForCursor(Landroid/database/Cursor;)[I

    move-result-object v7

    .line 972
    .local v7, list:[I
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 973
    const/4 v6, 0x0

    .line 976
    .end local v7           #list:[I
    :goto_1
    return-object v7

    .line 966
    :cond_0
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v5, "album COLLATE NOCASE ASC, track"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    goto :goto_0

    .line 976
    :cond_1
    sget-object v7, Lcom/htc/music/util/MusicUtils;->sEmptyList:[I

    goto :goto_1
.end method

.method public static getAlbumListForCursor(Landroid/database/Cursor;)[I
    .locals 7
    .parameter "cursor"

    .prologue
    .line 566
    if-nez p0, :cond_1

    .line 567
    const-string v5, "[MusicUtils]"

    const-string v6, "getAlbumListForCursor, cursor is  null, return empty list"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    sget-object v4, Lcom/htc/music/util/MusicUtils;->sEmptyList:[I

    .line 579
    :cond_0
    return-object v4

    .line 570
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 571
    .local v3, len:I
    new-array v4, v3, [I

    .line 572
    .local v4, list:[I
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 573
    const-string v5, "album_id"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 574
    .local v0, colidx:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 575
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 576
    .local v2, id:I
    aput v2, v4, v1

    .line 577
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 574
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getAlbumListForGenre(Landroid/content/Context;I)[I
    .locals 11
    .parameter "context"
    .parameter "id"

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1043
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v5

    const-string v0, "album_id"

    aput-object v0, v2, v1

    .line 1046
    .local v2, ccols:[Ljava/lang/String;
    const-string v0, "%d"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v4, v0, v4}, Lcom/htc/music/util/MusicUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1047
    .local v8, where:Ljava/lang/String;
    const-string v0, "[MusicUtils]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSongListForGenre,Query : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1048
    const/4 v6, 0x0

    .line 1049
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 1050
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "title_key"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1058
    :goto_0
    if-eqz v6, :cond_1

    .line 1059
    invoke-static {v6}, Lcom/htc/music/util/MusicUtils;->getAlbumListForCursor(Landroid/database/Cursor;)[I

    move-result-object v7

    .line 1060
    .local v7, list:[I
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1061
    const/4 v6, 0x0

    .line 1064
    .end local v7           #list:[I
    :goto_1
    return-object v7

    .line 1053
    :cond_0
    const-string v0, "external"

    int-to-long v9, p1

    invoke-static {v0, v9, v10}, Landroid/provider/MediaStore$Audio$Genres$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "title_key"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    goto :goto_0

    .line 1064
    :cond_1
    sget-object v7, Lcom/htc/music/util/MusicUtils;->sEmptyList:[I

    goto :goto_1
.end method

.method public static getAlbumListForPlaylist(Landroid/content/Context;J)[I
    .locals 8
    .parameter "context"
    .parameter "plid"

    .prologue
    const/4 v3, 0x0

    .line 1156
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "album_id"

    aput-object v1, v2, v0

    .line 1159
    .local v2, ccols:[Ljava/lang/String;
    const-string v0, "external"

    invoke-static {v0, p1, p2}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    const-string v5, "play_order"

    move-object v0, p0

    move-object v4, v3

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1162
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 1163
    invoke-static {v6}, Lcom/htc/music/util/MusicUtils;->getAlbumListForCursor(Landroid/database/Cursor;)[I

    move-result-object v7

    .line 1164
    .local v7, list:[I
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1165
    const/4 v6, 0x0

    .line 1168
    .end local v7           #list:[I
    :goto_0
    return-object v7

    :cond_0
    sget-object v7, Lcom/htc/music/util/MusicUtils;->sEmptyList:[I

    goto :goto_0
.end method

.method public static getAlbumListForSong(Landroid/content/Context;I)[I
    .locals 8
    .parameter "context"
    .parameter "audioId"

    .prologue
    .line 998
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "album_id"

    aput-object v1, v2, v0

    .line 1001
    .local v2, ccols:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "is_music>=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1003
    .local v3, where:Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "track"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1006
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 1007
    invoke-static {v6}, Lcom/htc/music/util/MusicUtils;->getAlbumListForCursor(Landroid/database/Cursor;)[I

    move-result-object v7

    .line 1008
    .local v7, list:[I
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1009
    const/4 v6, 0x0

    .line 1013
    .end local v7           #list:[I
    :goto_0
    return-object v7

    :cond_0
    sget-object v7, Lcom/htc/music/util/MusicUtils;->sEmptyList:[I

    goto :goto_0
.end method

.method public static getAllSongs(Landroid/content/Context;)[I
    .locals 11
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1190
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v3

    const-string v3, "is_music>=1"

    move-object v0, p0

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1194
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_2

    .line 1209
    :cond_0
    if-eqz v6, :cond_1

    .line 1210
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1211
    :goto_0
    const/4 v6, 0x0

    .line 1214
    :cond_1
    :goto_1
    return-object v4

    .line 1197
    :cond_2
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 1198
    .local v9, len:I
    new-array v10, v9, [I

    .line 1199
    .local v10, list:[I
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1200
    const/4 v8, 0x0

    .local v8, i:I
    :goto_2
    if-ge v8, v9, :cond_3

    .line 1201
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    aput v0, v10, v8

    .line 1202
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1200
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1209
    :cond_3
    if-eqz v6, :cond_4

    .line 1210
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1211
    const/4 v6, 0x0

    :cond_4
    move-object v4, v10

    .line 1205
    goto :goto_1

    .line 1206
    .end local v8           #i:I
    .end local v9           #len:I
    .end local v10           #list:[I
    :catch_0
    move-exception v7

    .line 1207
    .local v7, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1209
    if-eqz v6, :cond_1

    .line 1210
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1209
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 1210
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1211
    const/4 v6, 0x0

    .line 1209
    :cond_5
    throw v0
.end method

.method public static getAllSongsAndPrepare(Landroid/content/Context;)[I
    .locals 11
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 899
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v3

    const-string v0, "album_id"

    aput-object v0, v2, v5

    const-string v3, "is_music>=1"

    const-string v5, "title COLLATE NOCASE ASC"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 903
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    .line 917
    :cond_0
    if-eqz v7, :cond_1

    .line 918
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v10, v4

    .line 915
    :cond_2
    :goto_0
    return-object v10

    .line 906
    :cond_3
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 907
    .local v9, len:I
    new-array v10, v9, [I

    .line 908
    .local v10, list:[I
    new-array v6, v9, [I

    .line 909
    .local v6, albumlist:[I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    if-ge v8, v9, :cond_4

    .line 910
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 911
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    aput v0, v10, v8

    .line 912
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    aput v0, v6, v8

    .line 909
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 914
    :cond_4
    invoke-static {v6}, Lcom/htc/music/util/MusicUtils;->prepareAlbumList([I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 917
    if-eqz v7, :cond_2

    .line 918
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 917
    .end local v6           #albumlist:[I
    .end local v8           #i:I
    .end local v9           #len:I
    .end local v10           #list:[I
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_5

    .line 918
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 917
    :cond_5
    throw v0
.end method

.method public static getAppLaunchIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 6
    .parameter "packageName"
    .parameter "className"

    .prologue
    .line 5034
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 5035
    :cond_0
    const-string v3, "[MusicUtils]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAppLaunchIntent, packageName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " className = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 5036
    const/4 v2, 0x0

    .line 5047
    :goto_0
    return-object v2

    .line 5040
    :cond_1
    const/high16 v0, 0x1020

    .line 5041
    .local v0, DEFAULT_LAUNCH_FLAG:I
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p0, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5042
    .local v1, component:Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5043
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 5044
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 5045
    const/high16 v3, 0x1020

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static getAppName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 4689
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isSupportListenStore()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4690
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070065

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4692
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070066

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getApplyMaskBitmap(Landroid/content/res/Resources;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "res"
    .parameter "bmSrc"
    .parameter "nMaskID"

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x0

    .line 4173
    if-nez p1, :cond_1

    .line 4174
    const-string v6, "[MusicUtils]"

    const-string v7, "getApplyMaskBitmap()...bmSrc is null..."

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v5

    .line 4200
    :cond_0
    :goto_0
    return-object v2

    .line 4178
    :cond_1
    invoke-static {p0, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 4179
    .local v1, bmMask:Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 4180
    .local v0, bmAlpha:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 4181
    .local v2, bmRet:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 4182
    .local v3, c:Landroid/graphics/Canvas;
    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v6, v10, v10, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-direct {v7, v10, v10, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, p1, v6, v7, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 4183
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 4184
    .local v4, p:Landroid/graphics/Paint;
    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 4185
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v5, v10, v10, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v6, v10, v10, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v0, v5, v6, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 4186
    if-eqz v1, :cond_2

    .line 4188
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 4189
    const/4 v1, 0x0

    .line 4191
    :cond_2
    if-eqz v0, :cond_3

    .line 4193
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 4194
    const/4 v0, 0x0

    .line 4196
    :cond_3
    if-eqz p1, :cond_0

    .line 4198
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method public static getArtWorkPath(Landroid/content/Context;I)Ljava/lang/String;
    .locals 11
    .parameter "context"
    .parameter "album_id"

    .prologue
    const/4 v10, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 2335
    if-gez p1, :cond_1

    .line 2366
    :cond_0
    :goto_0
    return-object v3

    .line 2338
    :cond_1
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sArtworkUri:Landroid/net/Uri;

    int-to-long v4, p1

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 2339
    .local v1, uri:Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 2340
    new-array v2, v10, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v7

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2341
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 2342
    .local v7, count:I
    :cond_2
    if-eq v7, v10, :cond_4

    .line 2345
    if-eqz v6, :cond_3

    .line 2346
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2348
    :cond_3
    if-nez v7, :cond_0

    goto :goto_0

    .line 2354
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2355
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 2356
    .local v8, i:I
    if-ltz v8, :cond_5

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2357
    .local v9, path:Ljava/lang/String;
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2358
    if-eqz v9, :cond_0

    move-object v3, v9

    .line 2362
    goto :goto_0

    .end local v9           #path:Ljava/lang/String;
    :cond_5
    move-object v9, v3

    .line 2356
    goto :goto_1
.end method

.method public static getArtworkQuick(Landroid/content/Context;III)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "context"
    .parameter "album_id"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 2235
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 2236
    .local v5, res:Landroid/content/ContentResolver;
    sget-object v9, Lcom/htc/music/util/MusicUtils;->sArtworkUri:Landroid/net/Uri;

    int-to-long v10, p1

    invoke-static {v9, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    .line 2237
    .local v8, uri:Landroid/net/Uri;
    if-eqz v8, :cond_4

    .line 2238
    const/4 v2, 0x0

    .line 2240
    .local v2, fd:Landroid/os/ParcelFileDescriptor;
    :try_start_0
    const-string v9, "r"

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 2241
    const/4 v6, 0x1

    .line 2246
    .local v6, sampleSize:I
    sget-object v9, Lcom/htc/music/util/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    const/4 v10, 0x1

    iput-boolean v10, v9, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 2247
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    const/4 v10, 0x0

    sget-object v11, Lcom/htc/music/util/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v9, v10, v11}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 2249
    sget-object v9, Lcom/htc/music/util/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iget v9, v9, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    shr-int/lit8 v4, v9, 0x1

    .line 2250
    .local v4, nextWidth:I
    sget-object v9, Lcom/htc/music/util/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iget v9, v9, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    shr-int/lit8 v3, v9, 0x1

    .line 2251
    .local v3, nextHeight:I
    :goto_0
    if-le v4, p2, :cond_0

    if-le v3, p3, :cond_0

    .line 2252
    shl-int/lit8 v6, v6, 0x1

    .line 2253
    shr-int/lit8 v4, v4, 0x1

    .line 2254
    shr-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2257
    :cond_0
    sget-object v9, Lcom/htc/music/util/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iput v6, v9, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 2258
    sget-object v9, Lcom/htc/music/util/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    const/4 v10, 0x0

    iput-boolean v10, v9, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 2259
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    const/4 v10, 0x0

    sget-object v11, Lcom/htc/music/util/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v9, v10, v11}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2262
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    .line 2264
    sget-object v9, Lcom/htc/music/util/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iget v9, v9, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-ne v9, p2, :cond_1

    sget-object v9, Lcom/htc/music/util/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iget v9, v9, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-eq v9, p3, :cond_2

    .line 2265
    :cond_1
    const/4 v9, 0x1

    invoke-static {v0, p2, p3, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 2266
    .local v7, tmp:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2267
    move-object v0, v7

    .line 2277
    .end local v7           #tmp:Landroid/graphics/Bitmap;
    :cond_2
    if-eqz v2, :cond_3

    .line 2278
    :try_start_1
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 2283
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v2           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v3           #nextHeight:I
    .end local v4           #nextWidth:I
    .end local v6           #sampleSize:I
    :cond_3
    :goto_1
    return-object v0

    .line 2273
    .restart local v2       #fd:Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v1

    .line 2274
    .local v1, ex:Ljava/lang/Exception;
    :try_start_2
    const-string v9, "[MusicUtils]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getArtworkQuick failed album_id= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2277
    if-eqz v2, :cond_4

    .line 2278
    :try_start_3
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 2283
    .end local v1           #ex:Ljava/lang/Exception;
    .end local v2           #fd:Landroid/os/ParcelFileDescriptor;
    :cond_4
    :goto_2
    const/4 v0, 0x0

    goto :goto_1

    .line 2276
    .restart local v2       #fd:Landroid/os/ParcelFileDescriptor;
    :catchall_0
    move-exception v9

    .line 2277
    if-eqz v2, :cond_5

    .line 2278
    :try_start_4
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 2276
    :cond_5
    :goto_3
    throw v9

    .line 2272
    :catch_1
    move-exception v9

    .line 2277
    if-eqz v2, :cond_4

    .line 2278
    :try_start_5
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 2279
    :catch_2
    move-exception v9

    goto :goto_2

    :catch_3
    move-exception v10

    goto :goto_3

    .restart local v0       #b:Landroid/graphics/Bitmap;
    .restart local v3       #nextHeight:I
    .restart local v4       #nextWidth:I
    .restart local v6       #sampleSize:I
    :catch_4
    move-exception v9

    goto :goto_1
.end method

.method public static getAudioType(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2
    .parameter "context"
    .parameter "audioPath"

    .prologue
    .line 4455
    const/4 v0, 0x0

    .line 4458
    .local v0, currentAudioType:I
    invoke-static {p1}, Lcom/htc/music/util/MusicUtils;->wasDRMFilePlaying(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4459
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/htc/music/util/MusicUtils;->getDrmType(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v0

    .line 4470
    :cond_0
    return v0
.end method

.method public static getCachedArtwork(Landroid/content/Context;ILandroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/Drawable;
    .locals 10
    .parameter "context"
    .parameter "artIndex"
    .parameter "defaultArtwork"

    .prologue
    .line 2196
    const/4 v2, 0x0

    .line 2197
    .local v2, d:Landroid/graphics/drawable/Drawable;
    sget-object v8, Lcom/htc/music/util/MusicUtils;->sArtCache:Ljava/util/HashMap;

    monitor-enter v8

    .line 2198
    :try_start_0
    sget-object v7, Lcom/htc/music/util/MusicUtils;->sArtCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Landroid/graphics/drawable/Drawable;

    move-object v2, v0

    .line 2199
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2200
    if-nez v2, :cond_0

    .line 2201
    move-object v2, p2

    .line 2202
    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 2203
    .local v4, icon:Landroid/graphics/Bitmap;
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 2204
    .local v6, w:I
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 2205
    .local v3, h:I
    invoke-static {p0, p1, v6, v3}, Lcom/htc/music/util/MusicUtils;->getArtworkQuick(Landroid/content/Context;III)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2206
    .local v1, b:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 2207
    new-instance v2, Lcom/htc/music/util/MusicUtils$FastBitmapDrawable;

    .end local v2           #d:Landroid/graphics/drawable/Drawable;
    invoke-direct {v2, v1}, Lcom/htc/music/util/MusicUtils$FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 2208
    .restart local v2       #d:Landroid/graphics/drawable/Drawable;
    sget-object v8, Lcom/htc/music/util/MusicUtils;->sArtCache:Ljava/util/HashMap;

    monitor-enter v8

    .line 2210
    :try_start_1
    sget-object v7, Lcom/htc/music/util/MusicUtils;->sArtCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/Drawable;

    .line 2211
    .local v5, value:Landroid/graphics/drawable/Drawable;
    if-nez v5, :cond_1

    .line 2212
    sget-object v7, Lcom/htc/music/util/MusicUtils;->sArtCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2216
    :goto_0
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2219
    .end local v1           #b:Landroid/graphics/Bitmap;
    .end local v3           #h:I
    .end local v4           #icon:Landroid/graphics/Bitmap;
    .end local v5           #value:Landroid/graphics/drawable/Drawable;
    .end local v6           #w:I
    :cond_0
    return-object v2

    .line 2199
    :catchall_0
    move-exception v7

    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    .line 2214
    .restart local v1       #b:Landroid/graphics/Bitmap;
    .restart local v3       #h:I
    .restart local v4       #icon:Landroid/graphics/Bitmap;
    .restart local v5       #value:Landroid/graphics/drawable/Drawable;
    .restart local v6       #w:I
    :cond_1
    move-object v2, v5

    goto :goto_0

    .line 2216
    .end local v5           #value:Landroid/graphics/drawable/Drawable;
    :catchall_1
    move-exception v7

    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v7
.end method

.method public static getConstraintMessage(Landroid/content/Context;Landroid/provider/DrmStore$DrmConstraint;)Ljava/lang/String;
    .locals 14
    .parameter "context"
    .parameter "drmConstraint"

    .prologue
    const/4 v11, 0x2

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 3538
    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/htc/music/util/ProjectSettings;->getEnableDrmWarning(Landroid/content/Context;)I

    move-result v9

    if-nez v9, :cond_2

    .line 3539
    :cond_0
    const/4 v7, 0x0

    .line 3568
    :cond_1
    :goto_0
    return-object v7

    .line 3541
    :cond_2
    invoke-virtual {p1}, Landroid/provider/DrmStore$DrmConstraint;->getCount()I

    move-result v8

    .line 3542
    .local v8, nCount:I
    invoke-virtual {p1}, Landroid/provider/DrmStore$DrmConstraint;->getStartDate()Ljava/util/Date;

    move-result-object v4

    .line 3543
    .local v4, dateStart:Ljava/util/Date;
    invoke-virtual {p1}, Landroid/provider/DrmStore$DrmConstraint;->getEndDate()Ljava/util/Date;

    move-result-object v3

    .line 3544
    .local v3, dateEnd:Ljava/util/Date;
    invoke-virtual {p1}, Landroid/provider/DrmStore$DrmConstraint;->getInterval()J

    move-result-wide v5

    .line 3545
    .local v5, lInterval:J
    const/4 v7, 0x0

    .line 3546
    .local v7, message:Ljava/lang/String;
    const-wide/16 v9, -0x1

    cmp-long v9, v5, v9

    if-eqz v9, :cond_3

    .line 3550
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 3551
    .local v1, currentTime:Landroid/text/format/Time;
    if-eqz v1, :cond_1

    .line 3552
    invoke-virtual {v1}, Landroid/text/format/Time;->setToNow()V

    .line 3553
    new-instance v2, Ljava/util/Date;

    invoke-virtual {v1, v12}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v9

    add-long/2addr v9, v5

    invoke-direct {v2, v9, v10}, Ljava/util/Date;-><init>(J)V

    .line 3554
    .local v2, date:Ljava/util/Date;
    if-eqz v2, :cond_1

    .line 3555
    const v9, 0x7f0700c2

    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-array v10, v13, [Ljava/lang/Object;

    invoke-static {p0, v2}, Lcom/htc/music/util/MusicUtils;->getDate(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 3557
    .end local v1           #currentTime:Landroid/text/format/Time;
    .end local v2           #date:Ljava/util/Date;
    :cond_3
    const/4 v9, -0x1

    if-eq v8, v9, :cond_5

    .line 3558
    if-ne v8, v13, :cond_4

    .line 3559
    const v9, 0x7f0700be

    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 3560
    :cond_4
    invoke-static {p0}, Lcom/htc/music/util/ProjectSettings;->getEnableDrmWarning(Landroid/content/Context;)I

    move-result v9

    if-ne v9, v11, :cond_1

    .line 3561
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Landroid/provider/DrmStore$DrmConstraint;->getCount()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3562
    .local v0, count:Ljava/lang/String;
    const v9, 0x7f0700bf

    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-array v10, v13, [Ljava/lang/Object;

    aput-object v0, v10, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 3563
    goto :goto_0

    .line 3564
    .end local v0           #count:Ljava/lang/String;
    :cond_5
    invoke-static {p0}, Lcom/htc/music/util/ProjectSettings;->getEnableDrmWarning(Landroid/content/Context;)I

    move-result v9

    if-ne v9, v11, :cond_6

    if-eqz v4, :cond_6

    if-eqz v3, :cond_6

    .line 3565
    const v9, 0x7f0700c0

    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-array v10, v11, [Ljava/lang/Object;

    invoke-static {p0, v4}, Lcom/htc/music/util/MusicUtils;->getDate(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-static {p0, v3}, Lcom/htc/music/util/MusicUtils;->getDate(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v13

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 3567
    :cond_6
    const-string v9, "[MusicUtils]"

    const-string v10, "DRM Constraint without Interval, Start Date, End Date and Count."

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected static getContentURIForPath(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .parameter "path"

    .prologue
    .line 1739
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getCurDMR(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    .line 3697
    const-string v2, "[MusicUtils]"

    const-string v3, "getCurDMR()+"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3703
    new-instance v0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-direct {v0, p0, v4, v4}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;-><init>(Landroid/content/Context;II)V

    .line 3706
    .local v0, dlnaManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;
    invoke-virtual {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->getRenderer()Ljava/lang/String;

    move-result-object v1

    .line 3708
    .local v1, szDMR:Ljava/lang/String;
    const-string v2, "[MusicUtils]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCurDMR():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3710
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_0

    const/4 v1, 0x0

    .line 3713
    :cond_0
    if-eqz v1, :cond_1

    const-string v2, "My Device"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    .line 3715
    :cond_1
    const-string v2, "[MusicUtils]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCurDMR()- ... "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3716
    return-object v1
.end method

.method public static getCurrentAlbumId()I
    .locals 1

    .prologue
    .line 386
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 388
    :try_start_0
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/htc/music/IMediaPlaybackService;->getAlbumId()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 392
    :goto_0
    return v0

    .line 389
    :catch_0
    move-exception v0

    .line 392
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getCurrentArtistId()I
    .locals 1

    .prologue
    .line 396
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 398
    :try_start_0
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/htc/music/IMediaPlaybackService;->getArtistId()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 402
    :goto_0
    return v0

    .line 399
    :catch_0
    move-exception v0

    .line 402
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getCurrentAudioId()I
    .locals 1

    .prologue
    .line 406
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 408
    :try_start_0
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/htc/music/IMediaPlaybackService;->getAudioId()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 412
    :goto_0
    return v0

    .line 409
    :catch_0
    move-exception v0

    .line 412
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getCurrentPluginDescription()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 3646
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v2, :cond_0

    .line 3648
    :try_start_0
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v3, -0x1

    invoke-interface {v2, v3}, Lcom/htc/music/IMediaPlaybackService;->getPluginDescription(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3655
    .local v0, e:Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-object v1

    .line 3649
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_0
    move-exception v0

    .line 3650
    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 3651
    const-string v2, "[MusicUtils]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCurrentPluginDescription: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getCurrentShuffleMode()I
    .locals 2

    .prologue
    .line 416
    const/4 v0, 0x0

    .line 417
    .local v0, mode:I
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v1, :cond_0

    .line 419
    :try_start_0
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->getShuffleMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 423
    :cond_0
    :goto_0
    return v0

    .line 420
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getCursorForArtist(Landroid/content/Context;I)Landroid/database/Cursor;
    .locals 1
    .parameter "context"
    .parameter "id"

    .prologue
    .line 705
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/htc/music/util/MusicUtils;->getCursorForArtist(Landroid/content/Context;II)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static getCursorForArtist(Landroid/content/Context;II)Landroid/database/Cursor;
    .locals 7
    .parameter "context"
    .parameter "table"
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x2

    .line 709
    new-array v2, v5, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "album_id"

    aput-object v1, v2, v0

    .line 712
    .local v2, ccols:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "artist_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "is_music>=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 714
    .local v3, where:Ljava/lang/String;
    const/4 v6, 0x0

    .line 715
    .local v6, cursor:Landroid/database/Cursor;
    if-ne p1, v5, :cond_0

    .line 716
    sget-object v1, Lcom/htc/music/util/MusicUtils$Media2;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v5, "album COLLATE NOCASE ASC,track"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 723
    :goto_0
    return-object v6

    .line 719
    :cond_0
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v5, "album COLLATE NOCASE ASC,track"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    goto :goto_0
.end method

.method public static getCursorForGenre(Landroid/content/Context;I)Landroid/database/Cursor;
    .locals 10
    .parameter "context"
    .parameter "id"

    .prologue
    const/4 v1, 0x1

    const/4 v8, 0x0

    const/4 v4, 0x0

    .line 754
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v8

    const-string v0, "album_id"

    aput-object v0, v2, v1

    .line 757
    .local v2, ccols:[Ljava/lang/String;
    const-string v5, "album COLLATE NOCASE ASC, track"

    .line 759
    .local v5, sortOrder:Ljava/lang/String;
    const-string v0, "%d"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v8

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v4, v0, v4}, Lcom/htc/music/util/MusicUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 760
    .local v7, where:Ljava/lang/String;
    const-string v0, "[MusicUtils]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSongListForGenreAndPrepare,Query : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 763
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 771
    .local v6, cursor:Landroid/database/Cursor;
    :goto_0
    return-object v6

    .line 766
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_0
    const-string v0, "external"

    int-to-long v8, p1

    invoke-static {v0, v8, v9}, Landroid/provider/MediaStore$Audio$Genres$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .restart local v6       #cursor:Landroid/database/Cursor;
    goto :goto_0
.end method

.method public static getDLNAArtwork(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "context"
    .parameter "filepath"
    .parameter "width"

    .prologue
    .line 2394
    invoke-static {p0, p1}, Lcom/htc/music/util/MusicUtils;->getDLNAThumb(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2395
    .local v2, thumb:Landroid/graphics/Bitmap;
    move v0, p2

    .line 2396
    .local v0, defSize:I
    const/4 v1, 0x0

    .line 2398
    .local v1, fin:Landroid/graphics/Bitmap;
    if-eqz v2, :cond_0

    if-lez v0, :cond_0

    .line 2399
    const/4 v3, 0x1

    invoke-static {v2, v0, v0, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2401
    :cond_0
    return-object v1
.end method

.method public static getDLNAArtwork(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "context"
    .parameter "filepath"
    .parameter "icon"

    .prologue
    .line 2371
    invoke-static {p0, p1}, Lcom/htc/music/util/MusicUtils;->getDLNAThumb(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2374
    .local v2, thumb:Landroid/graphics/Bitmap;
    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 2375
    .local v0, defSize:I
    const/4 v1, 0x0

    .line 2382
    .local v1, fin:Landroid/graphics/Bitmap;
    if-eqz v2, :cond_0

    if-lez v0, :cond_0

    .line 2383
    const/4 v3, 0x1

    invoke-static {v2, v0, v0, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2390
    :cond_0
    return-object v1
.end method

.method public static getDLNAAssetFileDescriptor(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 7
    .parameter "context"
    .parameter "filepath"

    .prologue
    const/4 v4, 0x0

    .line 2409
    const/4 v1, 0x0

    .line 2412
    .local v1, cpClient:Landroid/content/ContentProviderClient;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "content://dlna/images"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v1

    if-nez v1, :cond_1

    move-object v0, v4

    .line 2436
    :cond_0
    :goto_0
    return-object v0

    .line 2417
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 2419
    .local v3, uri:Landroid/net/Uri;
    const/4 v0, 0x0

    .line 2422
    .local v0, afDescriptor:Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    const-string v5, "r"

    invoke-virtual {v1, v3, v5}, Landroid/content/ContentProviderClient;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 2431
    :goto_1
    if-nez v0, :cond_0

    move-object v0, v4

    .line 2436
    goto :goto_0

    .line 2423
    :catch_0
    move-exception v2

    .line 2425
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 2426
    .end local v2           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 2428
    .local v2, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getDLNAThumb(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "context"
    .parameter "filepath"

    .prologue
    const/4 v6, 0x0

    .line 2442
    const/4 v2, 0x0

    .line 2445
    .local v2, cpClient:Landroid/content/ContentProviderClient;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "content://dlna/images"

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v2

    if-nez v2, :cond_1

    move-object v1, v6

    .line 2509
    :cond_0
    :goto_0
    return-object v1

    .line 2451
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "file://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 2457
    .local v5, uri:Landroid/net/Uri;
    const/4 v0, 0x0

    .line 2458
    .local v0, afDescriptor:Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    const-string v7, "r"

    invoke-virtual {v2, v5, v7}, Landroid/content/ContentProviderClient;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2470
    const/4 v1, 0x0

    .line 2471
    .local v1, bitmap:Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .line 2472
    .local v4, pfDescriptor:Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 2474
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 2475
    .local v3, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v7, 0x1

    iput-boolean v7, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 2476
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8, v3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 2480
    const/4 v7, 0x0

    iput-boolean v7, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 2481
    const/4 v7, 0x0

    iput-boolean v7, v3, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 2482
    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v7, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 2485
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8, v3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2495
    .end local v3           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_2
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2506
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v4           #pfDescriptor:Landroid/os/ParcelFileDescriptor;
    :cond_3
    :goto_1
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    .line 2507
    const/4 v2, 0x0

    move-object v1, v6

    .line 2509
    goto :goto_0

    .line 2501
    :catch_0
    move-exception v7

    goto :goto_1
.end method

.method public static getDate(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "date"

    .prologue
    .line 3520
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "date_format"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3521
    .local v0, format:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 3522
    const-string v0, "MM-dd-yyyy"

    .line 3524
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "time_12_24"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3525
    .local v3, setting:Ljava/lang/String;
    const-string v4, "24"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 3527
    .local v2, is24Hour:Z
    if-eqz v2, :cond_1

    .line 3528
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " kk:mm:ss"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3533
    :goto_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 3534
    .local v1, formatter:Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 3530
    .end local v1           #formatter:Ljava/text/SimpleDateFormat;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " hh:mm:ss a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getDrmCursor(Landroid/content/Context;Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 7
    .parameter "context"
    .parameter "uri"

    .prologue
    const/4 v3, 0x0

    .line 2892
    const/16 v0, 0xb

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "title"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "_data"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "content_offset"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "content_id"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string v1, "content_boundary_offset"

    aput-object v1, v2, v0

    const/4 v0, 0x6

    const-string v1, "delivery_type"

    aput-object v1, v2, v0

    const/4 v0, 0x7

    const-string v1, "mime_type"

    aput-object v1, v2, v0

    const/16 v0, 0x8

    const-string v1, "message_type"

    aput-object v1, v2, v0

    const/16 v0, 0x9

    const-string v1, "existence"

    aput-object v1, v2, v0

    const/16 v0, 0xa

    const-string v1, "date_added"

    aput-object v1, v2, v0

    .local v2, cols:[Ljava/lang/String;
    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    .line 2899
    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2900
    .local v6, cursor:Landroid/database/Cursor;
    return-object v6
.end method

.method public static getDrmStatus(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 12
    .parameter "context"
    .parameter "uri"

    .prologue
    const/4 v11, 0x1

    const/4 v7, -0x1

    .line 2904
    const-string v8, "[MusicUtils]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getDrmStatus uri= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2905
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 2906
    .local v6, resolver:Landroid/content/ContentResolver;
    invoke-static {p0, p1}, Lcom/htc/music/util/MusicUtils;->getDrmCursor(Landroid/content/Context;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v3

    .line 2907
    .local v3, drmCursor:Landroid/database/Cursor;
    if-nez v3, :cond_0

    .line 2908
    const-string v8, "[MusicUtils]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cursor = null, uri= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2994
    :goto_0
    return v7

    .line 2912
    :cond_0
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-nez v8, :cond_1

    .line 2913
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 2914
    const/4 v3, 0x0

    .line 2915
    const-string v8, "[MusicUtils]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Count = 0, uri= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2919
    :cond_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2920
    const/4 v7, 0x0

    .line 2922
    .local v7, status:I
    const-string v8, "message_type"

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2924
    .local v5, messageType:Ljava/lang/String;
    const-string v8, "delivery_type"

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 2926
    .local v1, deliveryType:I
    const-string v8, "_data"

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2927
    .local v0, data:Ljava/lang/String;
    const/4 v2, 0x0

    .line 2928
    .local v2, drmConstraint:Landroid/provider/DrmStore$DrmConstraint;
    const-string v8, "[MusicUtils]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "deliveryType= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2931
    packed-switch v1, :pswitch_data_0

    .line 2987
    const-string v8, "[MusicUtils]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No such Delivery Type= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2988
    const/4 v7, -0x1

    .line 2992
    :goto_1
    :pswitch_0
    :sswitch_0
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 2993
    const/4 v3, 0x0

    .line 2994
    goto :goto_0

    .line 2937
    :pswitch_1
    invoke-static {v6, p1, v11}, Landroid/provider/DrmStore;->getDrmConstraint(Landroid/content/ContentResolver;Landroid/net/Uri;I)Landroid/provider/DrmStore$DrmConstraint;

    move-result-object v2

    .line 2939
    if-nez v2, :cond_2

    .line 2940
    const-string v8, "[MusicUtils]"

    const-string v9, "COMBINED DELIVERY: No rights"

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2941
    const/4 v7, 0x1

    goto :goto_1

    .line 2943
    :cond_2
    invoke-static {v6, v2, p1}, Landroid/provider/DrmStore;->checkExpiration(Landroid/content/ContentResolver;Landroid/provider/DrmStore$DrmConstraint;Landroid/net/Uri;)I

    move-result v4

    .line 2944
    .local v4, error:I
    const-string v8, "[MusicUtils]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "checkExpiration retCode= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2945
    sparse-switch v4, :sswitch_data_0

    .line 2953
    const/4 v7, 0x1

    goto :goto_1

    .line 2949
    :sswitch_1
    const/4 v7, 0x4

    .line 2950
    goto :goto_1

    .line 2961
    .end local v4           #error:I
    :pswitch_2
    invoke-static {v6, p1, v11}, Landroid/provider/DrmStore;->getDrmConstraint(Landroid/content/ContentResolver;Landroid/net/Uri;I)Landroid/provider/DrmStore$DrmConstraint;

    move-result-object v2

    .line 2963
    if-nez v2, :cond_3

    .line 2964
    const-string v8, "[MusicUtils]"

    const-string v9, "DRM SEPARATE DELIVERY: No rights"

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2965
    const/4 v7, 0x3

    goto :goto_1

    .line 2967
    :cond_3
    invoke-static {v6, v2, p1}, Landroid/provider/DrmStore;->checkExpiration(Landroid/content/ContentResolver;Landroid/provider/DrmStore$DrmConstraint;Landroid/net/Uri;)I

    move-result v4

    .line 2968
    .restart local v4       #error:I
    const-string v8, "[MusicUtils]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "checkExpiration retCode= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2969
    packed-switch v4, :pswitch_data_1

    .line 2980
    :pswitch_3
    const/4 v7, 0x2

    goto :goto_1

    .line 2973
    :pswitch_4
    const/4 v7, 0x4

    .line 2974
    goto :goto_1

    .line 2976
    :pswitch_5
    const/4 v7, 0x3

    .line 2977
    goto :goto_1

    .line 2931
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 2945
    :sswitch_data_0
    .sparse-switch
        -0x5 -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch

    .line 2969
    :pswitch_data_1
    .packed-switch -0x5
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public static getDrmTrackSize(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 10
    .parameter "context"
    .parameter "uri"

    .prologue
    const/4 v9, 0x1

    const/4 v3, 0x0

    .line 2852
    const/4 v8, -0x1

    .line 2853
    .local v8, sizeInBytes:I
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const-string v0, "_size"

    aput-object v0, v2, v9

    const/4 v0, 0x2

    const-string v1, "_data"

    aput-object v1, v2, v0

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2856
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lt v0, v9, :cond_0

    .line 2857
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2858
    const-string v0, "_size"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 2859
    .local v7, i:I
    if-ltz v7, :cond_0

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_0

    .line 2860
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 2863
    .end local v7           #i:I
    :cond_0
    if-eqz v6, :cond_1

    .line 2864
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2865
    const/4 v6, 0x0

    .line 2867
    :cond_1
    return v8
.end method

.method public static getDrmType(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 6
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 2998
    const/4 v0, 0x0

    .line 3000
    .local v0, deliveryType:I
    invoke-static {p0, p1}, Lcom/htc/music/util/MusicUtils;->getDrmCursor(Landroid/content/Context;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v2

    .line 3001
    .local v2, drmCursor:Landroid/database/Cursor;
    if-nez v2, :cond_0

    .line 3002
    const-string v3, "[MusicUtils]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cursor = null, uri= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 3021
    .end local v0           #deliveryType:I
    .local v1, deliveryType:I
    :goto_0
    return v1

    .line 3006
    .end local v1           #deliveryType:I
    .restart local v0       #deliveryType:I
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 3007
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 3008
    const/4 v2, 0x0

    .line 3009
    const-string v3, "[MusicUtils]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Count = 0, uri= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 3010
    .end local v0           #deliveryType:I
    .restart local v1       #deliveryType:I
    goto :goto_0

    .line 3013
    .end local v1           #deliveryType:I
    .restart local v0       #deliveryType:I
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3015
    const-string v3, "delivery_type"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 3017
    const-string v3, "[MusicUtils]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deliveryType= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3019
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 3020
    const/4 v2, 0x0

    move v1, v0

    .line 3021
    .end local v0           #deliveryType:I
    .restart local v1       #deliveryType:I
    goto :goto_0
.end method

.method public static getDrmType(Landroid/content/Context;Ljava/lang/String;)I
    .locals 9
    .parameter "context"
    .parameter "data"

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 3025
    const/4 v7, 0x0

    .line 3027
    .local v7, deliveryType:I
    const-string v3, "_data=?"

    .line 3028
    .local v3, where:Ljava/lang/String;
    new-array v4, v5, [Ljava/lang/String;

    aput-object p1, v4, v1

    .line 3032
    .local v4, selectionArgs:[Ljava/lang/String;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v1

    const-string v0, "delivery_type"

    aput-object v0, v2, v5

    .line 3035
    .local v2, cols:[Ljava/lang/String;
    sget-object v1, Landroid/provider/DrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3036
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 3037
    const-string v0, "[MusicUtils]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cursor = null, data= "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v7

    .line 3053
    .end local v7           #deliveryType:I
    .local v8, deliveryType:I
    :goto_0
    return v8

    .line 3041
    .end local v8           #deliveryType:I
    .restart local v7       #deliveryType:I
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 3042
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3043
    const/4 v6, 0x0

    .line 3044
    const-string v0, "[MusicUtils]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Count = 0, data= "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v7

    .line 3045
    .end local v7           #deliveryType:I
    .restart local v8       #deliveryType:I
    goto :goto_0

    .line 3048
    .end local v8           #deliveryType:I
    .restart local v7       #deliveryType:I
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3049
    const-string v0, "delivery_type"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 3050
    const-string v0, "[MusicUtils]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deliveryType= "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3051
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3052
    const/4 v6, 0x0

    move v8, v7

    .line 3053
    .end local v7           #deliveryType:I
    .restart local v8       #deliveryType:I
    goto :goto_0
.end method

.method private static getFileSize(Ljava/io/File;)J
    .locals 9
    .parameter "file"

    .prologue
    .line 504
    const-wide/16 v5, 0x0

    .line 506
    .local v5, size:J
    if-nez p0, :cond_0

    .line 507
    const-wide/16 v7, 0x0

    .line 516
    :goto_0
    return-wide v7

    .line 508
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 509
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v7

    goto :goto_0

    .line 511
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 512
    .local v2, files:[Ljava/io/File;
    if-eqz v2, :cond_2

    .line 513
    move-object v0, v2

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v1, v0, v3

    .line 514
    .local v1, currentFile:Ljava/io/File;
    invoke-static {v1}, Lcom/htc/music/util/MusicUtils;->getFileSize(Ljava/io/File;)J

    move-result-wide v7

    add-long/2addr v5, v7

    .line 513
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0           #arr$:[Ljava/io/File;
    .end local v1           #currentFile:Ljava/io/File;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_2
    move-wide v7, v5

    .line 516
    goto :goto_0
.end method

.method public static getIntPref(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 3
    .parameter "context"
    .parameter "name"
    .parameter "def"

    .prologue
    .line 2516
    const-string v1, "com.htc.music"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2518
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static declared-synchronized getIsInternalEnough()Z
    .locals 2

    .prologue
    .line 446
    const-class v0, Lcom/htc/music/util/MusicUtils;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/htc/music/util/MusicUtils;->IsInternalEnough:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getLaunchAmazonIntent()Landroid/content/Intent;
    .locals 6

    .prologue
    .line 4236
    const-string v0, "android.intent.action.MAIN"

    .line 4237
    .local v0, ACTION_LAUNCH:Ljava/lang/String;
    new-instance v2, Landroid/content/ComponentName;

    const-string v4, "com.amazon.mp3"

    const-string v5, "com.amazon.mp3.client.activity.LauncherActivity"

    invoke-direct {v2, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4238
    .local v2, Mp3Component:Landroid/content/ComponentName;
    const/high16 v1, 0x1000

    .line 4240
    .local v1, FLAG_ACTIVITY_NEW_TASK:I
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 4241
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4242
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4246
    invoke-virtual {v3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4247
    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 4249
    return-object v3
.end method

.method public static getLaunchVMMIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 4615
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.vmm.music.ListView"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4616
    .local v0, intent:Landroid/content/Intent;
    return-object v0
.end method

.method public static getLaunchVerizonMODIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 4225
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.pv.verizon.mod.ACTION_START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4226
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "getContent"

    const-string v2, "wh|track"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4228
    return-object v0
.end method

.method public static getMarkedString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 9
    .parameter "context"
    .parameter "text"
    .parameter "filter"

    .prologue
    const/4 v3, 0x0

    const/16 v8, 0x21

    const/4 v7, -0x1

    .line 4352
    if-nez p0, :cond_1

    .line 4370
    :cond_0
    :goto_0
    return-object v3

    .line 4353
    :cond_1
    if-eqz p1, :cond_0

    .line 4354
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 4355
    .local v3, markedString:Landroid/text/SpannableString;
    if-eqz p2, :cond_0

    .line 4358
    const/4 v2, -0x1

    .line 4359
    .local v2, index:I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 4360
    .local v1, filterLength:I
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, p2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-le v2, v7, :cond_0

    .line 4361
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v5, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int v6, v1, v2

    invoke-virtual {v3, v5, v2, v6, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 4363
    const-string v5, "com.htc.R.color.link_highlight"

    invoke-static {v5}, Lcom/htc/util/res/HtcResUtil;->getPrivateResID(Ljava/lang/String;)I

    move-result v0

    .line 4364
    .local v0, color:I
    if-eqz v0, :cond_0

    .line 4365
    const-string v5, "input_text_selection_highlight"

    invoke-static {p0, v5, v0}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinColorResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    .line 4366
    .local v4, textviewHightlightColorId:I
    new-instance v5, Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    add-int v6, v1, v2

    invoke-virtual {v3, v5, v2, v6, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0
.end method

.method public static getPlaylistId(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 9
    .parameter "context"
    .parameter "uri"

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 4927
    if-nez p1, :cond_1

    .line 4928
    const/4 v7, -0x1

    .line 4941
    :cond_0
    :goto_0
    return v7

    .line 4930
    :cond_1
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v8

    const-string v5, "name"

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 4933
    .local v6, c:Landroid/database/Cursor;
    const/4 v7, -0x1

    .line 4934
    .local v7, id:I
    if-eqz v6, :cond_0

    .line 4935
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4936
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4937
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 4939
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public static getPlaylistId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 9
    .parameter "context"
    .parameter "name"

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 4906
    sget-object v1, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v8

    const-string v3, "name=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v8

    const-string v5, "name"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 4912
    .local v6, c:Landroid/database/Cursor;
    const/4 v7, -0x1

    .line 4913
    .local v7, id:I
    if-eqz v6, :cond_1

    .line 4914
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4915
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4916
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 4918
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4919
    const/4 v6, 0x0

    .line 4921
    :cond_1
    return v7
.end method

.method public static getPluginArtWorkPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 2320
    :try_start_0
    invoke-static {p0}, Lcom/htc/music/util/ProjectSettings;->getEnablePlugin(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->isPluginMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2321
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getAlbumArtPath()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2330
    :cond_0
    :goto_0
    return-object v1

    .line 2325
    :catch_0
    move-exception v0

    .line 2326
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2328
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2329
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "albumId"
    .parameter "artistId"
    .parameter "genreId"
    .parameter "composerId"

    .prologue
    .line 3480
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 3481
    .local v3, where:Ljava/lang/StringBuilder;
    const-string v4, "title != \'\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3482
    if-eqz p0, :cond_0

    .line 3483
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AND album_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3487
    :cond_0
    if-eqz p1, :cond_1

    .line 3488
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AND artist_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3491
    :cond_1
    if-eqz p3, :cond_2

    .line 3492
    invoke-static {p3}, Lcom/htc/music/util/MusicUtils;->isUnknownComposer(Ljava/lang/String;)Z

    move-result v2

    .line 3493
    .local v2, unknown:Z
    if-eqz v2, :cond_4

    .line 3494
    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3495
    invoke-static {v3}, Lcom/htc/music/util/MusicUtils;->appendUnknownComposerFilter(Ljava/lang/StringBuilder;)V

    .line 3502
    .end local v2           #unknown:Z
    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    .line 3503
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v0, v4

    .line 3504
    .local v0, gid:J
    const-wide/16 v4, -0x1

    cmp-long v4, v0, v4

    if-nez v4, :cond_5

    .line 3505
    const-string v4, " AND _id NOT IN (SELECT audio_id FROM audio_genres_map)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3511
    .end local v0           #gid:J
    :cond_3
    :goto_1
    const-string v4, " AND is_music>=1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3513
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 3497
    .restart local v2       #unknown:Z
    :cond_4
    const-string v4, "\'"

    const-string v5, "\'\'"

    invoke-virtual {p3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 3498
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AND composer = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3507
    .end local v2           #unknown:Z
    .restart local v0       #gid:J
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AND _id IN (SELECT audio_id FROM audio_genres_map WHERE genre_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static getReflectionBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "resource"
    .parameter "height"

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x0

    .line 4148
    if-nez p0, :cond_0

    .line 4149
    const-string v0, "[MusicUtils]"

    const-string v1, "getReflectionBitmap()...resource is null..."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4163
    :goto_0
    return-object v7

    .line 4153
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-gt v0, p1, :cond_1

    .line 4154
    const-string v0, "[MusicUtils]"

    const-string v1, "resource.getHeight() <= height!!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4158
    :cond_1
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 4159
    .local v5, matrix:Landroid/graphics/Matrix;
    const/high16 v0, 0x3f80

    const/high16 v2, -0x4080

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 4160
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    sub-int v2, v0, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    move-object v0, p0

    move v4, p1

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 4163
    .local v7, bitmap:Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public static getReflectionBitmap(Landroid/graphics/Bitmap;ILandroid/graphics/Xfermode;Landroid/graphics/Shader;)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "art"
    .parameter "reflectionHeight"
    .parameter "mode"
    .parameter "gradient"

    .prologue
    .line 4648
    sget-object v5, Lcom/htc/music/util/MusicUtils;->mCoverPaint:Landroid/graphics/Paint;

    monitor-enter v5

    .line 4649
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    add-int/2addr v6, p1

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 4651
    .local v2, cleanAlbum:Landroid/graphics/Bitmap;
    const-string v4, "[MusicUtils]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getReflectionBitmap:cleanAlbum size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " x "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4653
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    .line 4654
    .local v1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 4655
    sget-object v4, Lcom/htc/music/util/MusicUtils;->mCoverPaint:Landroid/graphics/Paint;

    const/16 v6, 0xff

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 4656
    const/4 v4, 0x0

    const/4 v6, 0x0

    sget-object v7, Lcom/htc/music/util/MusicUtils;->mCoverPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p0, v4, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 4658
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v4, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v6, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v2, v4, v6}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 4659
    .local v0, bsh:Landroid/graphics/BitmapShader;
    new-instance v3, Landroid/graphics/ComposeShader;

    invoke-direct {v3, v0, p3, p2}, Landroid/graphics/ComposeShader;-><init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/Xfermode;)V

    .line 4660
    .local v3, reflectionShader:Landroid/graphics/ComposeShader;
    const/high16 v4, 0x3f80

    const/high16 v6, -0x4080

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v1, v4, v6, v7, v8}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 4662
    sget-object v4, Lcom/htc/music/util/MusicUtils;->mCoverPaint:Landroid/graphics/Paint;

    const/16 v6, 0x40

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 4663
    sget-object v4, Lcom/htc/music/util/MusicUtils;->mCoverPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 4664
    new-instance v4, Landroid/graphics/Rect;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    sub-int/2addr v9, p1

    invoke-direct {v4, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v6, Lcom/htc/music/util/MusicUtils;->mCoverPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 4665
    sget-object v4, Lcom/htc/music/util/MusicUtils;->mCoverPaint:Landroid/graphics/Paint;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 4667
    if-eqz p0, :cond_0

    .line 4668
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 4671
    :cond_0
    monitor-exit v5

    return-object v2

    .line 4672
    .end local v0           #bsh:Landroid/graphics/BitmapShader;
    .end local v1           #canvas:Landroid/graphics/Canvas;
    .end local v2           #cleanAlbum:Landroid/graphics/Bitmap;
    .end local v3           #reflectionShader:Landroid/graphics/ComposeShader;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public static getReflectionBitmap(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "resource"
    .parameter "height"

    .prologue
    .line 4167
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->createBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 4168
    .local v0, photo:Landroid/graphics/Bitmap;
    invoke-static {v0, p1}, Lcom/htc/music/util/MusicUtils;->getReflectionBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static getShareMusicText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "context"
    .parameter "szTrackName"
    .parameter "szAlbumName"
    .parameter "szArtistName"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 4759
    if-nez p0, :cond_0

    .line 4760
    const-string v4, "[MusicUtils]"

    const-string v5, "context can\'t be null!!"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4761
    const/4 v3, 0x0

    .line 4793
    :goto_0
    return-object v3

    .line 4764
    :cond_0
    move-object v0, p2

    .line 4765
    .local v0, albumName:Ljava/lang/String;
    move-object v1, p3

    .line 4766
    .local v1, artistName:Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v4, "<unknown>"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4767
    :cond_1
    const v4, 0x7f07004e

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4769
    :cond_2
    if-eqz v1, :cond_3

    const-string v4, "<unknown>"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 4770
    :cond_3
    const v4, 0x7f07004d

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4774
    :cond_4
    const/4 v3, 0x0

    .line 4776
    .local v3, result:Ljava/lang/String;
    if-eqz p1, :cond_6

    .line 4777
    const v4, 0x7f070120

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4778
    .local v2, f:Ljava/lang/String;
    const-string v4, "%1s"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 4779
    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "%1s"

    invoke-virtual {v4, v5, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "%2s"

    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "%3s"

    invoke-virtual {v4, v5, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 4782
    :cond_5
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    aput-object v0, v4, v6

    aput-object v1, v4, v7

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 4785
    .end local v2           #f:Ljava/lang/String;
    :cond_6
    const v4, 0x7f070121

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4786
    .restart local v2       #f:Ljava/lang/String;
    const-string v4, "%2s"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 4787
    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "%2s"

    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "%3s"

    invoke-virtual {v4, v5, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 4789
    :cond_7
    new-array v4, v7, [Ljava/lang/Object;

    aput-object v0, v4, v5

    aput-object v1, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0
.end method

.method public static getSongListForAlbum(Landroid/content/Context;I)[I
    .locals 8
    .parameter "context"
    .parameter "id"

    .prologue
    .line 980
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    .line 983
    .local v2, ccols:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "album_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "is_music>=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 985
    .local v3, where:Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "track"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 988
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 989
    invoke-static {v6}, Lcom/htc/music/util/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v7

    .line 990
    .local v7, list:[I
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 991
    const/4 v6, 0x0

    .line 994
    .end local v7           #list:[I
    :goto_0
    return-object v7

    :cond_0
    sget-object v7, Lcom/htc/music/util/MusicUtils;->sEmptyList:[I

    goto :goto_0
.end method

.method public static getSongListForAlbum(Landroid/content/Context;III)[I
    .locals 1
    .parameter "context"
    .parameter "type"
    .parameter "id"
    .parameter "albumId"

    .prologue
    .line 1097
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2, p3}, Lcom/htc/music/util/MusicUtils;->getSongListForAlbum(Landroid/content/Context;IIII)[I

    move-result-object v0

    return-object v0
.end method

.method public static getSongListForAlbum(Landroid/content/Context;IIII)[I
    .locals 12
    .parameter "context"
    .parameter "table"
    .parameter "type"
    .parameter "id"
    .parameter "albumId"

    .prologue
    .line 1101
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "album_id"

    aput-object v1, v2, v0

    .line 1105
    .local v2, ccols:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 1106
    .local v6, artistId:Ljava/lang/String;
    const/4 v9, 0x0

    .line 1107
    .local v9, genreId:Ljava/lang/String;
    const/4 v7, 0x0

    .line 1109
    .local v7, composerId:Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 1118
    :goto_0
    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6, v9, v7}, Lcom/htc/music/util/MusicUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1119
    .local v11, where:Ljava/lang/String;
    const/4 v8, 0x0

    .line 1120
    .local v8, cursor:Landroid/database/Cursor;
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 1121
    sget-object v1, Lcom/htc/music/util/MusicUtils$Media2;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v11}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "track"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1128
    :goto_1
    if-eqz v8, :cond_1

    .line 1129
    invoke-static {v8}, Lcom/htc/music/util/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v10

    .line 1130
    .local v10, list:[I
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1131
    const/4 v8, 0x0

    .line 1135
    .end local v10           #list:[I
    :goto_2
    return-object v10

    .line 1111
    .end local v8           #cursor:Landroid/database/Cursor;
    .end local v11           #where:Ljava/lang/String;
    :pswitch_0
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 1112
    goto :goto_0

    .line 1114
    :pswitch_1
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 1124
    .restart local v8       #cursor:Landroid/database/Cursor;
    .restart local v11       #where:Ljava/lang/String;
    :cond_0
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v11}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "track"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto :goto_1

    .line 1135
    :cond_1
    sget-object v10, Lcom/htc/music/util/MusicUtils;->sEmptyList:[I

    goto :goto_2

    .line 1109
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getSongListForAlbum(Landroid/content/Context;ILjava/lang/String;)[I
    .locals 8
    .parameter "context"
    .parameter "table"
    .parameter "where"

    .prologue
    const/4 v4, 0x0

    .line 3371
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    .line 3374
    .local v2, ccols:[Ljava/lang/String;
    const-string v5, "album COLLATE NOCASE ASC , title COLLATE NOCASE ASC"

    .line 3376
    .local v5, mSortOrder:Ljava/lang/String;
    const/4 v6, 0x0

    .line 3377
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 3378
    sget-object v1, Lcom/htc/music/util/MusicUtils$Media2;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v0, p0

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3385
    :goto_0
    if-eqz v6, :cond_1

    .line 3386
    invoke-static {v6}, Lcom/htc/music/util/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v7

    .line 3387
    .local v7, list:[I
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3388
    const/4 v6, 0x0

    .line 3391
    .end local v7           #list:[I
    :goto_1
    return-object v7

    .line 3381
    :cond_0
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v0, p0

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    goto :goto_0

    .line 3391
    :cond_1
    sget-object v7, Lcom/htc/music/util/MusicUtils;->sEmptyList:[I

    goto :goto_1
.end method

.method public static getSongListForAlbum(Landroid/content/Context;Ljava/lang/String;)[I
    .locals 1
    .parameter "context"
    .parameter "where"

    .prologue
    .line 3367
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/htc/music/util/MusicUtils;->getSongListForAlbum(Landroid/content/Context;ILjava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public static getSongListForAlbumAndPrepare(Landroid/content/Context;I)[I
    .locals 11
    .parameter "context"
    .parameter "id"

    .prologue
    .line 804
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "album_id"

    aput-object v1, v2, v0

    .line 807
    .local v2, ccols:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "album_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "is_music>=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 809
    .local v3, where:Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "track"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 812
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 813
    invoke-static {v7}, Lcom/htc/music/util/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v10

    .line 814
    .local v10, list:[I
    array-length v9, v10

    .line 815
    .local v9, len:I
    new-array v6, v9, [I

    .line 816
    .local v6, albumlist:[I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-ge v8, v9, :cond_0

    .line 817
    aput p1, v6, v8

    .line 816
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 818
    :cond_0
    invoke-static {v6}, Lcom/htc/music/util/MusicUtils;->prepareAlbumList([I)V

    .line 819
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 820
    const/4 v7, 0x0

    .line 823
    .end local v6           #albumlist:[I
    .end local v8           #i:I
    .end local v9           #len:I
    .end local v10           #list:[I
    :goto_1
    return-object v10

    :cond_1
    sget-object v10, Lcom/htc/music/util/MusicUtils;->sEmptyList:[I

    goto :goto_1
.end method

.method public static getSongListForAlbumAndPrepare(Landroid/content/Context;ILjava/lang/String;I)[I
    .locals 11
    .parameter "context"
    .parameter "table"
    .parameter "where"
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 3429
    new-array v2, v3, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "album_id"

    aput-object v1, v2, v0

    .line 3432
    .local v2, ccols:[Ljava/lang/String;
    const-string v5, "album COLLATE NOCASE ASC , track COLLATE NOCASE ASC"

    .line 3434
    .local v5, mSortOrder:Ljava/lang/String;
    const/4 v7, 0x0

    .line 3435
    .local v7, cursor:Landroid/database/Cursor;
    if-ne p1, v3, :cond_0

    .line 3436
    sget-object v1, Lcom/htc/music/util/MusicUtils$Media2;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v0, p0

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 3443
    :goto_0
    if-eqz v7, :cond_2

    .line 3444
    invoke-static {v7}, Lcom/htc/music/util/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v10

    .line 3445
    .local v10, list:[I
    array-length v9, v10

    .line 3446
    .local v9, len:I
    new-array v6, v9, [I

    .line 3447
    .local v6, albumlist:[I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    if-ge v8, v9, :cond_1

    .line 3448
    aput p3, v6, v8

    .line 3447
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 3439
    .end local v6           #albumlist:[I
    .end local v8           #i:I
    .end local v9           #len:I
    .end local v10           #list:[I
    :cond_0
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v0, p0

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    goto :goto_0

    .line 3449
    .restart local v6       #albumlist:[I
    .restart local v8       #i:I
    .restart local v9       #len:I
    .restart local v10       #list:[I
    :cond_1
    invoke-static {v6}, Lcom/htc/music/util/MusicUtils;->prepareAlbumList([I)V

    .line 3450
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 3451
    const/4 v7, 0x0

    .line 3454
    .end local v6           #albumlist:[I
    .end local v8           #i:I
    .end local v9           #len:I
    .end local v10           #list:[I
    :goto_2
    return-object v10

    :cond_2
    sget-object v10, Lcom/htc/music/util/MusicUtils;->sEmptyList:[I

    goto :goto_2
.end method

.method public static getSongListForAlbumAndPrepare(Landroid/content/Context;Ljava/lang/String;I)[I
    .locals 1
    .parameter "context"
    .parameter "where"
    .parameter "id"

    .prologue
    .line 3425
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lcom/htc/music/util/MusicUtils;->getSongListForAlbumAndPrepare(Landroid/content/Context;ILjava/lang/String;I)[I

    move-result-object v0

    return-object v0
.end method

.method private static getSongListForAllPlaylistAndPrepare(Landroid/content/Context;)[I
    .locals 20
    .parameter "context"

    .prologue
    .line 827
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v3, v1

    .line 830
    .local v3, ccolsPlaylist:[Ljava/lang/String;
    const/4 v1, 0x3

    new-array v10, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "audio_id"

    aput-object v2, v10, v1

    const/4 v1, 0x1

    const-string v2, "album_id"

    aput-object v2, v10, v1

    const/4 v1, 0x2

    const-string v2, "title_key"

    aput-object v2, v10, v1

    .line 835
    .local v10, ccols:[Ljava/lang/String;
    const/16 v16, 0x0

    .line 836
    .local v16, playlistCursor:Landroid/database/Cursor;
    const/16 v18, 0x0

    .line 837
    .local v18, result:Landroid/database/Cursor;
    const/4 v12, 0x0

    .line 838
    .local v12, cursors:[Landroid/database/Cursor;
    const/4 v14, 0x0

    .line 840
    .local v14, len:I
    :try_start_0
    const-string v1, "external"

    invoke-static {v1}, Landroid/provider/MediaStore$Audio$Playlists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "name"

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v6}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 843
    if-eqz v16, :cond_a

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_a

    .line 844
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v14

    .line 845
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    .line 846
    const-string v1, "_id"

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 847
    .local v11, colidx:I
    new-array v12, v14, [Landroid/database/Cursor;

    .line 848
    const/4 v13, 0x0

    .local v13, i:I
    :goto_0
    if-ge v13, v14, :cond_0

    .line 849
    move-object/from16 v0, v16

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 850
    .local v17, plid:I
    const-string v1, "external"

    move/from16 v0, v17

    int-to-long v4, v0

    invoke-static {v1, v4, v5}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "play_order"

    move-object/from16 v4, p0

    move-object v6, v10

    invoke-static/range {v4 .. v9}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    aput-object v1, v12, v13

    .line 853
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    .line 848
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 855
    .end local v17           #plid:I
    :cond_0
    new-instance v19, Landroid/database/MergeCursor;

    move-object/from16 v0, v19

    invoke-direct {v0, v12}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 856
    .end local v18           #result:Landroid/database/Cursor;
    .local v19, result:Landroid/database/Cursor;
    if-eqz v19, :cond_9

    .line 857
    :try_start_1
    invoke-static/range {v19 .. v19}, Lcom/htc/music/util/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v15

    .line 858
    .local v15, list:[I
    invoke-static/range {v19 .. v19}, Lcom/htc/music/util/MusicUtils;->prepareAlbumList(Landroid/database/Cursor;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 863
    if-eqz v16, :cond_1

    .line 864
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 865
    const/16 v16, 0x0

    .line 867
    :cond_1
    if-eqz v19, :cond_e

    .line 868
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 869
    const/16 v18, 0x0

    .line 871
    .end local v19           #result:Landroid/database/Cursor;
    .restart local v18       #result:Landroid/database/Cursor;
    :goto_1
    const/4 v13, 0x0

    :goto_2
    if-ge v13, v14, :cond_5

    .line 872
    aget-object v1, v12, v13

    if-eqz v1, :cond_2

    .line 873
    aget-object v1, v12, v13

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 874
    const/4 v1, 0x0

    aput-object v1, v12, v13

    .line 871
    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 863
    .end local v11           #colidx:I
    .end local v15           #list:[I
    :cond_3
    throw v1

    .line 878
    :cond_4
    sget-object v15, Lcom/htc/music/util/MusicUtils;->sEmptyList:[I

    :cond_5
    return-object v15

    .line 863
    .end local v13           #i:I
    :catchall_0
    move-exception v1

    :goto_3
    if-eqz v16, :cond_6

    .line 864
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 865
    const/16 v16, 0x0

    .line 867
    :cond_6
    if-eqz v18, :cond_7

    .line 868
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 869
    const/16 v18, 0x0

    .line 871
    :cond_7
    const/4 v13, 0x0

    .restart local v13       #i:I
    :goto_4
    if-ge v13, v14, :cond_3

    .line 872
    aget-object v2, v12, v13

    if-eqz v2, :cond_8

    .line 873
    aget-object v2, v12, v13

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 874
    const/4 v2, 0x0

    aput-object v2, v12, v13

    .line 871
    :cond_8
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .end local v18           #result:Landroid/database/Cursor;
    .restart local v11       #colidx:I
    .restart local v19       #result:Landroid/database/Cursor;
    :cond_9
    move-object/from16 v18, v19

    .line 863
    .end local v11           #colidx:I
    .end local v13           #i:I
    .end local v19           #result:Landroid/database/Cursor;
    .restart local v18       #result:Landroid/database/Cursor;
    :cond_a
    if-eqz v16, :cond_b

    .line 864
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 865
    const/16 v16, 0x0

    .line 867
    :cond_b
    if-eqz v18, :cond_c

    .line 868
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 869
    const/16 v18, 0x0

    .line 871
    :cond_c
    const/4 v13, 0x0

    .restart local v13       #i:I
    :goto_5
    if-ge v13, v14, :cond_4

    .line 872
    aget-object v1, v12, v13

    if-eqz v1, :cond_d

    .line 873
    aget-object v1, v12, v13

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 874
    const/4 v1, 0x0

    aput-object v1, v12, v13

    .line 871
    :cond_d
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 863
    .end local v18           #result:Landroid/database/Cursor;
    .restart local v11       #colidx:I
    .restart local v19       #result:Landroid/database/Cursor;
    :catchall_1
    move-exception v1

    move-object/from16 v18, v19

    .end local v19           #result:Landroid/database/Cursor;
    .restart local v18       #result:Landroid/database/Cursor;
    goto :goto_3

    .end local v18           #result:Landroid/database/Cursor;
    .restart local v15       #list:[I
    .restart local v19       #result:Landroid/database/Cursor;
    :cond_e
    move-object/from16 v18, v19

    .end local v19           #result:Landroid/database/Cursor;
    .restart local v18       #result:Landroid/database/Cursor;
    goto :goto_1
.end method

.method public static getSongListForArtist(Landroid/content/Context;I)[I
    .locals 1
    .parameter "context"
    .parameter "id"

    .prologue
    .line 925
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/htc/music/util/MusicUtils;->getSongListForArtist(Landroid/content/Context;II)[I

    move-result-object v0

    return-object v0
.end method

.method public static getSongListForArtist(Landroid/content/Context;II)[I
    .locals 8
    .parameter "context"
    .parameter "table"
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    .line 929
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    .line 932
    .local v2, ccols:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "artist_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "is_music>=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 934
    .local v3, where:Ljava/lang/String;
    const/4 v6, 0x0

    .line 935
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 936
    sget-object v1, Lcom/htc/music/util/MusicUtils$Media2;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v5, "album COLLATE NOCASE ASC,track"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 942
    :goto_0
    if-eqz v6, :cond_1

    .line 943
    invoke-static {v6}, Lcom/htc/music/util/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v7

    .line 944
    .local v7, list:[I
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 945
    const/4 v6, 0x0

    .line 948
    .end local v7           #list:[I
    :goto_1
    return-object v7

    .line 939
    :cond_0
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v5, "album COLLATE NOCASE ASC,track"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    goto :goto_0

    .line 948
    :cond_1
    sget-object v7, Lcom/htc/music/util/MusicUtils;->sEmptyList:[I

    goto :goto_1
.end method

.method public static getSongListForArtist(Landroid/content/Context;ILjava/lang/String;)[I
    .locals 8
    .parameter "context"
    .parameter "table"
    .parameter "where"

    .prologue
    const/4 v4, 0x0

    .line 3399
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    .line 3403
    .local v2, ccols:[Ljava/lang/String;
    const-string v5, "artist COLLATE NOCASE ASC , title COLLATE NOCASE ASC"

    .line 3406
    .local v5, mSortOrder:Ljava/lang/String;
    const/4 v6, 0x0

    .line 3407
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 3408
    sget-object v1, Lcom/htc/music/util/MusicUtils$Media2;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v0, p0

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3415
    :goto_0
    if-eqz v6, :cond_1

    .line 3416
    invoke-static {v6}, Lcom/htc/music/util/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v7

    .line 3417
    .local v7, list:[I
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3418
    const/4 v6, 0x0

    .line 3421
    .end local v7           #list:[I
    :goto_1
    return-object v7

    .line 3411
    :cond_0
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v0, p0

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    goto :goto_0

    .line 3421
    :cond_1
    sget-object v7, Lcom/htc/music/util/MusicUtils;->sEmptyList:[I

    goto :goto_1
.end method

.method public static getSongListForArtist(Landroid/content/Context;Ljava/lang/String;)[I
    .locals 1
    .parameter "context"
    .parameter "where"

    .prologue
    .line 3395
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/htc/music/util/MusicUtils;->getSongListForArtist(Landroid/content/Context;ILjava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public static getSongListForArtistAndPrepare(Landroid/content/Context;I)[I
    .locals 1
    .parameter "context"
    .parameter "id"

    .prologue
    .line 674
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/htc/music/util/MusicUtils;->getSongListForArtistAndPrepare(Landroid/content/Context;II)[I

    move-result-object v0

    return-object v0
.end method

.method public static getSongListForArtistAndPrepare(Landroid/content/Context;II)[I
    .locals 8
    .parameter "context"
    .parameter "table"
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x2

    .line 678
    new-array v2, v5, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "album_id"

    aput-object v1, v2, v0

    .line 681
    .local v2, ccols:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "artist_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "is_music>=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 683
    .local v3, where:Ljava/lang/String;
    const/4 v6, 0x0

    .line 684
    .local v6, cursor:Landroid/database/Cursor;
    if-ne p1, v5, :cond_0

    .line 685
    sget-object v1, Lcom/htc/music/util/MusicUtils$Media2;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v5, "album COLLATE NOCASE ASC,album_id, track, title COLLATE NOCASE ASC"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 694
    :goto_0
    if-eqz v6, :cond_1

    .line 695
    invoke-static {v6}, Lcom/htc/music/util/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v7

    .line 696
    .local v7, list:[I
    invoke-static {v6}, Lcom/htc/music/util/MusicUtils;->prepareAlbumList(Landroid/database/Cursor;)Z

    .line 697
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 698
    const/4 v6, 0x0

    .line 701
    .end local v7           #list:[I
    :goto_1
    return-object v7

    .line 689
    :cond_0
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v5, "album COLLATE NOCASE ASC,album_id, track, title COLLATE NOCASE ASC"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    goto :goto_0

    .line 701
    :cond_1
    sget-object v7, Lcom/htc/music/util/MusicUtils;->sEmptyList:[I

    goto :goto_1
.end method

.method public static getSongListForArtistAndPrepare(Landroid/content/Context;Ljava/lang/String;)[I
    .locals 8
    .parameter "context"
    .parameter "where"

    .prologue
    .line 3458
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "album_id"

    aput-object v1, v2, v0

    .line 3462
    .local v2, ccols:[Ljava/lang/String;
    const-string v5, "artist COLLATE NOCASE ASC , title COLLATE NOCASE ASC"

    .line 3465
    .local v5, mSortOrder:Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3468
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 3469
    invoke-static {v6}, Lcom/htc/music/util/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v7

    .line 3470
    .local v7, list:[I
    invoke-static {v6}, Lcom/htc/music/util/MusicUtils;->prepareAlbumList(Landroid/database/Cursor;)Z

    .line 3471
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3472
    const/4 v6, 0x0

    .line 3475
    .end local v7           #list:[I
    :goto_0
    return-object v7

    :cond_0
    sget-object v7, Lcom/htc/music/util/MusicUtils;->sEmptyList:[I

    goto :goto_0
.end method

.method public static getSongListForComposer(Landroid/content/Context;Ljava/lang/String;)[I
    .locals 9
    .parameter "context"
    .parameter "name"

    .prologue
    .line 1068
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "album_id"

    aput-object v1, v2, v0

    .line 1072
    .local v2, ccols:[Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1073
    .local v8, where:Ljava/lang/StringBuilder;
    invoke-static {p1}, Lcom/htc/music/util/MusicUtils;->isUnknownComposer(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1074
    const-string v0, "is_music>=1"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1075
    const-string v0, " AND "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1076
    invoke-static {v8}, Lcom/htc/music/util/MusicUtils;->appendUnknownComposerFilter(Ljava/lang/StringBuilder;)V

    .line 1083
    :goto_0
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "track"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1086
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 1087
    invoke-static {v6}, Lcom/htc/music/util/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v7

    .line 1088
    .local v7, list:[I
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1089
    const/4 v6, 0x0

    .line 1092
    .end local v7           #list:[I
    :goto_1
    return-object v7

    .line 1078
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_0
    const-string v0, "\'"

    const-string v1, "\'\'"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1079
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "composer = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "is_music>=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1092
    .restart local v6       #cursor:Landroid/database/Cursor;
    :cond_1
    sget-object v7, Lcom/htc/music/util/MusicUtils;->sEmptyList:[I

    goto :goto_1
.end method

.method public static getSongListForComposerAndPrepare(Landroid/content/Context;Ljava/lang/String;)[I
    .locals 9
    .parameter "context"
    .parameter "name"

    .prologue
    .line 775
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "album_id"

    aput-object v1, v2, v0

    .line 779
    .local v2, ccols:[Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 780
    .local v8, where:Ljava/lang/StringBuilder;
    invoke-static {p1}, Lcom/htc/music/util/MusicUtils;->isUnknownComposer(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 781
    const-string v0, "is_music>=1"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 782
    const-string v0, " AND "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 783
    invoke-static {v8}, Lcom/htc/music/util/MusicUtils;->appendUnknownComposerFilter(Ljava/lang/StringBuilder;)V

    .line 790
    :goto_0
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "track"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 793
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 794
    invoke-static {v6}, Lcom/htc/music/util/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v7

    .line 795
    .local v7, list:[I
    invoke-static {v6}, Lcom/htc/music/util/MusicUtils;->prepareAlbumList(Landroid/database/Cursor;)Z

    .line 796
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 797
    const/4 v6, 0x0

    .line 800
    .end local v7           #list:[I
    :goto_1
    return-object v7

    .line 785
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_0
    const-string v0, "\'"

    const-string v1, "\'\'"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 786
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "composer = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "is_music>=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 800
    .restart local v6       #cursor:Landroid/database/Cursor;
    :cond_1
    sget-object v7, Lcom/htc/music/util/MusicUtils;->sEmptyList:[I

    goto :goto_1
.end method

.method public static getSongListForCursor(Landroid/database/Cursor;)[I
    .locals 5
    .parameter "cursor"

    .prologue
    .line 548
    if-nez p0, :cond_1

    .line 549
    sget-object v3, Lcom/htc/music/util/MusicUtils;->sEmptyList:[I

    .line 562
    :cond_0
    return-object v3

    .line 551
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 552
    .local v2, len:I
    new-array v3, v2, [I

    .line 553
    .local v3, list:[I
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 554
    const-string v4, "audio_id"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 555
    .local v0, colidx:I
    if-gez v0, :cond_2

    .line 556
    const-string v4, "_id"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 558
    :cond_2
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 559
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    aput v4, v3, v1

    .line 560
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 558
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getSongListForGenre(Landroid/content/Context;I)[I
    .locals 11
    .parameter "context"
    .parameter "id"

    .prologue
    const/4 v1, 0x1

    const/4 v9, 0x0

    const/4 v4, 0x0

    .line 1017
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v9

    const-string v0, "album_id"

    aput-object v0, v2, v1

    .line 1020
    .local v2, ccols:[Ljava/lang/String;
    const-string v5, "album COLLATE NOCASE ASC, track"

    .line 1022
    .local v5, sortOrder:Ljava/lang/String;
    const-string v0, "%d"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v9

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v4, v0, v4}, Lcom/htc/music/util/MusicUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1023
    .local v8, where:Ljava/lang/String;
    const-string v0, "[MusicUtils]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSongListForGenre,Query : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1024
    const/4 v6, 0x0

    .line 1025
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 1026
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1033
    :goto_0
    if-eqz v6, :cond_1

    .line 1034
    invoke-static {v6}, Lcom/htc/music/util/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v7

    .line 1035
    .local v7, list:[I
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1036
    const/4 v6, 0x0

    .line 1039
    .end local v7           #list:[I
    :goto_1
    return-object v7

    .line 1029
    :cond_0
    const-string v0, "external"

    int-to-long v9, p1

    invoke-static {v0, v9, v10}, Landroid/provider/MediaStore$Audio$Genres$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    goto :goto_0

    .line 1039
    :cond_1
    sget-object v7, Lcom/htc/music/util/MusicUtils;->sEmptyList:[I

    goto :goto_1
.end method

.method public static getSongListForGenreAndPrepare(Landroid/content/Context;I)[I
    .locals 11
    .parameter "context"
    .parameter "id"

    .prologue
    const/4 v1, 0x1

    const/4 v9, 0x0

    const/4 v4, 0x0

    .line 727
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v9

    const-string v0, "album_id"

    aput-object v0, v2, v1

    .line 730
    .local v2, ccols:[Ljava/lang/String;
    const-string v5, "album COLLATE NOCASE ASC,album_id, track, title COLLATE NOCASE ASC"

    .line 732
    .local v5, sortOrder:Ljava/lang/String;
    const-string v0, "%d"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v9

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v4, v0, v4}, Lcom/htc/music/util/MusicUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 733
    .local v8, where:Ljava/lang/String;
    const-string v0, "[MusicUtils]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSongListForGenreAndPrepare,Query : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 736
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 743
    .local v6, cursor:Landroid/database/Cursor;
    :goto_0
    if-eqz v6, :cond_1

    .line 744
    invoke-static {v6}, Lcom/htc/music/util/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v7

    .line 745
    .local v7, list:[I
    invoke-static {v6}, Lcom/htc/music/util/MusicUtils;->prepareAlbumList(Landroid/database/Cursor;)Z

    .line 746
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 747
    const/4 v6, 0x0

    .line 750
    .end local v7           #list:[I
    :goto_1
    return-object v7

    .line 739
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_0
    const-string v0, "external"

    int-to-long v9, p1

    invoke-static {v0, v9, v10}, Landroid/provider/MediaStore$Audio$Genres$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .restart local v6       #cursor:Landroid/database/Cursor;
    goto :goto_0

    .line 750
    :cond_1
    sget-object v7, Lcom/htc/music/util/MusicUtils;->sEmptyList:[I

    goto :goto_1
.end method

.method public static getSongListForPlaylist(Landroid/content/Context;J)[I
    .locals 8
    .parameter "context"
    .parameter "plid"

    .prologue
    const/4 v3, 0x0

    .line 1140
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "audio_id"

    aput-object v1, v2, v0

    .line 1143
    .local v2, ccols:[Ljava/lang/String;
    const-string v0, "external"

    invoke-static {v0, p1, p2}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    const-string v5, "play_order"

    move-object v0, p0

    move-object v4, v3

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1146
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 1147
    invoke-static {v6}, Lcom/htc/music/util/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v7

    .line 1148
    .local v7, list:[I
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1149
    const/4 v6, 0x0

    .line 1152
    .end local v7           #list:[I
    :goto_0
    return-object v7

    :cond_0
    sget-object v7, Lcom/htc/music/util/MusicUtils;->sEmptyList:[I

    goto :goto_0
.end method

.method public static getSongListForPlaylistAndPrepare(Landroid/content/Context;J)[I
    .locals 8
    .parameter "context"
    .parameter "plid"

    .prologue
    const/4 v3, 0x0

    .line 882
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "audio_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "album_id"

    aput-object v1, v2, v0

    .line 885
    .local v2, ccols:[Ljava/lang/String;
    const-string v0, "external"

    invoke-static {v0, p1, p2}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    const-string v5, "play_order"

    move-object v0, p0

    move-object v4, v3

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 888
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 889
    invoke-static {v6}, Lcom/htc/music/util/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v7

    .line 890
    .local v7, list:[I
    invoke-static {v6}, Lcom/htc/music/util/MusicUtils;->prepareAlbumList(Landroid/database/Cursor;)Z

    .line 891
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 892
    const/4 v6, 0x0

    .line 895
    .end local v7           #list:[I
    :goto_0
    return-object v7

    :cond_0
    sget-object v7, Lcom/htc/music/util/MusicUtils;->sEmptyList:[I

    goto :goto_0
.end method

.method public static getStorageState()Ljava/lang/String;
    .locals 2

    .prologue
    .line 4834
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->hasPhoneStorage()Z

    move-result v0

    .line 4835
    .local v0, iseMMC:Z
    if-eqz v0, :cond_0

    .line 4836
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->getPhoneStorageState()Ljava/lang/String;

    move-result-object v1

    .line 4841
    .local v1, state:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 4838
    .end local v1           #state:Ljava/lang/String;
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #state:Ljava/lang/String;
    goto :goto_0
.end method

.method public static getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "name"
    .parameter "def"

    .prologue
    .line 2530
    const-string v1, "com.htc.music"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2532
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getTabActivityResult(Landroid/content/Context;I)I
    .locals 1
    .parameter "context"
    .parameter "def"

    .prologue
    .line 3114
    const-string v0, "result"

    invoke-static {p0, v0, p1}, Lcom/htc/music/util/MusicUtils;->getIntPref(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getTabActivitySelectedId(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 11
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3142
    const-string v9, "selectedid"

    const-string v10, ""

    invoke-static {p0, v9, v10}, Lcom/htc/music/util/MusicUtils;->getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3143
    .local v7, q:Ljava/lang/String;
    const/4 v5, 0x0

    .line 3144
    .local v5, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_3

    .line 3145
    const-string v9, ";"

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 3146
    .local v1, entries:[Ljava/lang/String;
    array-length v4, v1

    .line 3147
    .local v4, len:I
    new-instance v5, Ljava/util/ArrayList;

    .end local v5           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3148
    .restart local v5       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_3

    .line 3150
    aget-object v8, v1, v2

    .line 3151
    .local v8, revhex:Ljava/lang/String;
    const/4 v6, 0x0

    .line 3152
    .local v6, n:I
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v3, v9, -0x1

    .local v3, j:I
    :goto_1
    if-ltz v3, :cond_2

    .line 3153
    shl-int/lit8 v6, v6, 0x4

    .line 3154
    invoke-virtual {v8, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 3155
    .local v0, c:C
    const/16 v9, 0x30

    if-lt v0, v9, :cond_0

    const/16 v9, 0x39

    if-gt v0, v9, :cond_0

    .line 3156
    add-int/lit8 v9, v0, -0x30

    add-int/2addr v6, v9

    .line 3152
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 3157
    :cond_0
    const/16 v9, 0x61

    if-lt v0, v9, :cond_1

    const/16 v9, 0x66

    if-gt v0, v9, :cond_1

    .line 3158
    add-int/lit8 v9, v0, 0xa

    add-int/lit8 v9, v9, -0x61

    add-int/2addr v6, v9

    goto :goto_2

    .line 3161
    :cond_1
    const/4 v4, 0x0

    .line 3165
    .end local v0           #c:C
    :cond_2
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3148
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3171
    .end local v1           #entries:[Ljava/lang/String;
    .end local v2           #i:I
    .end local v3           #j:I
    .end local v4           #len:I
    .end local v6           #n:I
    .end local v8           #revhex:Ljava/lang/String;
    :cond_3
    return-object v5
.end method

.method public static getTrack(Landroid/content/Context;I)Landroid/database/Cursor;
    .locals 8
    .parameter "context"
    .parameter "id"

    .prologue
    .line 3057
    const/4 v7, 0x0

    .line 3058
    .local v7, path:Ljava/lang/String;
    const/4 v2, 0x0

    .line 3060
    .local v2, cols:[Ljava/lang/String;
    const/16 v0, 0xd

    new-array v2, v0, [Ljava/lang/String;

    .end local v2           #cols:[Ljava/lang/String;
    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "artist"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "album"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "title"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "_data"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string v1, "mime_type"

    aput-object v1, v2, v0

    const/4 v0, 0x6

    const-string v1, "album_id"

    aput-object v1, v2, v0

    const/4 v0, 0x7

    const-string v1, "artist_id"

    aput-object v1, v2, v0

    const/16 v0, 0x8

    const-string v1, "composer"

    aput-object v1, v2, v0

    const/16 v0, 0x9

    const-string v1, "year"

    aput-object v1, v2, v0

    const/16 v0, 0xa

    const-string v1, "track"

    aput-object v1, v2, v0

    const/16 v0, 0xb

    const-string v1, "is_music"

    aput-object v1, v2, v0

    const/16 v0, 0xc

    const-string v1, "duration"

    aput-object v1, v2, v0

    .line 3081
    .restart local v2       #cols:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 3083
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3084
    .local v3, where:Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 3089
    return-object v6

    .line 3086
    .end local v3           #where:Ljava/lang/String;
    :catchall_0
    move-exception v0

    throw v0
.end method

.method public static getTrackSize(Landroid/content/Context;I)I
    .locals 10
    .parameter "context"
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x1

    .line 2871
    const/4 v8, -0x1

    .line 2872
    .local v8, sizeInBytes:I
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const-string v0, "_data"

    aput-object v0, v2, v9

    const/4 v0, 0x2

    const-string v3, "_size"

    aput-object v3, v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2876
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lt v0, v9, :cond_0

    .line 2877
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2878
    const-string v0, "_size"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 2879
    .local v7, i:I
    if-ltz v7, :cond_0

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_0

    .line 2880
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 2883
    .end local v7           #i:I
    :cond_0
    if-eqz v6, :cond_1

    .line 2884
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2885
    const/4 v6, 0x0

    .line 2887
    :cond_1
    return v8
.end method

.method public static hideDatabaseError(Landroid/app/Activity;)V
    .locals 2
    .parameter "a"

    .prologue
    .line 1724
    const v1, 0x7f080092

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1725
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1726
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1732
    :cond_0
    const v1, 0x102000a

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1733
    if-eqz v0, :cond_1

    .line 1734
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1736
    :cond_1
    return-void
.end method

.method public static idealByteArraySize(I)I
    .locals 3
    .parameter "need"

    .prologue
    const/4 v2, 0x1

    .line 4850
    const/4 v0, 0x4

    .local v0, i:I
    :goto_0
    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    .line 4851
    shl-int v1, v2, v0

    add-int/lit8 v1, v1, -0xc

    if-gt p0, v1, :cond_1

    .line 4852
    shl-int v1, v2, v0

    add-int/lit8 p0, v1, -0xc

    .line 4854
    .end local p0
    :cond_0
    return p0

    .line 4850
    .restart local p0
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static idealIntArraySize(I)I
    .locals 1
    .parameter "need"

    .prologue
    .line 4846
    mul-int/lit8 v0, p0, 0x4

    invoke-static {v0}, Lcom/htc/music/util/MusicUtils;->idealByteArraySize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public static initAlbumArtCache()V
    .locals 3

    .prologue
    .line 2167
    :try_start_0
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getMediaMountedCount()I

    move-result v1

    .line 2168
    .local v1, id:I
    sget v2, Lcom/htc/music/util/MusicUtils;->sArtCacheId:I

    if-eq v1, v2, :cond_0

    .line 2169
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->clearAlbumArtCache()V

    .line 2170
    sput v1, Lcom/htc/music/util/MusicUtils;->sArtCacheId:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2175
    :cond_0
    :goto_0
    return-void

    .line 2172
    :catch_0
    move-exception v0

    .line 2173
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static intToFloatArray([I)[F
    .locals 3
    .parameter "intArray"

    .prologue
    .line 4568
    if-eqz p0, :cond_0

    array-length v2, p0

    if-gtz v2, :cond_2

    .line 4569
    :cond_0
    const/4 v0, 0x0

    .line 4577
    :cond_1
    return-object v0

    .line 4572
    :cond_2
    array-length v2, p0

    new-array v0, v2, [F

    .line 4573
    .local v0, floatArray:[F
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 4574
    aget v2, p0, v1

    int-to-float v2, v2

    aput v2, v0, v1

    .line 4573
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static intToFloatArray([II)[F
    .locals 4
    .parameter "intArray"
    .parameter "divider"

    .prologue
    .line 4581
    if-eqz p0, :cond_0

    array-length v2, p0

    if-gtz v2, :cond_2

    .line 4582
    :cond_0
    const/4 v0, 0x0

    .line 4590
    :cond_1
    return-object v0

    .line 4585
    :cond_2
    array-length v2, p0

    new-array v0, v2, [F

    .line 4586
    .local v0, floatArray:[F
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 4587
    aget v2, p0, v1

    int-to-float v2, v2

    int-to-float v3, p1

    div-float/2addr v2, v3

    aput v2, v0, v1

    .line 4586
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static isBypassPincodeSettingsEnabled(Landroid/content/Context;)Z
    .locals 5
    .parameter "ctx"

    .prologue
    .line 5012
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "htc_music_bypass_enabled"

    invoke-static {v2, v3}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    .line 5014
    .local v1, result:Z
    const-string v2, "[MusicUtils]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bp - settings="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5018
    .end local v1           #result:Z
    :goto_0
    return v1

    .line 5016
    :catch_0
    move-exception v0

    .line 5017
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "[MusicUtils]"

    const-string v3, "bp - No settings"

    invoke-static {v2, v3, v0}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5018
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isConnectionFail(Landroid/content/Context;)Z
    .locals 6
    .parameter "cotext"

    .prologue
    .line 4594
    const/4 v2, 0x1

    .line 4595
    .local v2, isConnectionFail:Z
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 4598
    .local v1, connectivityManager:Landroid/net/ConnectivityManager;
    if-eqz v1, :cond_2

    .line 4599
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 4600
    .local v0, activeNetworkInfo:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-nez v3, :cond_1

    .line 4601
    :cond_0
    const-string v3, "[MusicUtils]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Network is not connected : activeNetworkInfo = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4602
    const/4 v2, 0x1

    .line 4610
    .end local v0           #activeNetworkInfo:Landroid/net/NetworkInfo;
    :goto_0
    return v2

    .line 4604
    .restart local v0       #activeNetworkInfo:Landroid/net/NetworkInfo;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 4607
    .end local v0           #activeNetworkInfo:Landroid/net/NetworkInfo;
    :cond_2
    const-string v3, "[MusicUtils]"

    const-string v4, "Can\'t get connectivitManager"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isDMPMode(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 3679
    :try_start_0
    sget-object v3, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->isPluginMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3680
    sget-object v3, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v4, -0x1

    invoke-interface {v3, v4}, Lcom/htc/music/IMediaPlaybackService;->getPluginClass(I)Ljava/lang/String;

    move-result-object v0

    .line 3681
    .local v0, clsName:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v3, "com.htc.music.DMPMusicPlaybackService"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-eqz v3, :cond_0

    .line 3682
    const/4 v2, 0x1

    .line 3692
    .end local v0           #clsName:Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    .line 3686
    :catch_0
    move-exception v1

    .line 3687
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v3, "[MusicUtils]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isDMPMode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3689
    .end local v1           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 3690
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 3691
    const-string v3, "[MusicUtils]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isDMPMode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isExternalPackageExist(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 4
    .parameter "cxt"
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 4797
    if-nez p0, :cond_1

    .line 4802
    :cond_0
    :goto_0
    return v2

    .line 4798
    :cond_1
    if-eqz p1, :cond_0

    .line 4799
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 4800
    .local v0, pm:Landroid/content/pm/PackageManager;
    const/high16 v3, 0x1

    invoke-virtual {v0, p1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 4801
    .local v1, shareApList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isExternalPluginExist()Z
    .locals 1

    .prologue
    .line 4144
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-static {v0}, Lcom/htc/music/util/MusicUtils;->isExternalPluginExist(Lcom/htc/music/IMediaPlaybackService;)Z

    move-result v0

    return v0
.end method

.method public static isExternalPluginExist(Lcom/htc/music/IMediaPlaybackService;)Z
    .locals 4
    .parameter "pServicwe"

    .prologue
    .line 4122
    const/4 v1, 0x0

    .line 4124
    .local v1, hasPlugin:Z
    if-nez p0, :cond_0

    .line 4125
    const-string v2, "[MusicUtils]"

    const-string v3, "sService not initialize??"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4126
    const/4 v2, 0x0

    .line 4139
    :goto_0
    return v2

    .line 4131
    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/htc/music/IMediaPlaybackService;->getExternalPluginCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_1

    .line 4133
    const/4 v1, 0x1

    :cond_1
    :goto_1
    move v2, v1

    .line 4139
    goto :goto_0

    .line 4135
    :catch_0
    move-exception v0

    .line 4136
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static isExternalStorage(Landroid/content/Intent;)Z
    .locals 5
    .parameter "intent"

    .prologue
    .line 482
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 483
    .local v1, externalStorageOpath:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 485
    .local v0, data:Landroid/net/Uri;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 488
    const-string v2, "[MusicUtils]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "receive External storage intent:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    const/4 v2, 0x1

    .line 491
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isExternalStorageUnMount(Landroid/content/Intent;)Z
    .locals 5
    .parameter "UnMountIntent"

    .prologue
    .line 469
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 470
    .local v1, externalStorageOpath:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 472
    .local v0, data:Landroid/net/Uri;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 475
    const-string v2, "[MusicUtils]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "receive another(External) storage unmount:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    const/4 v2, 0x1

    .line 478
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isHVGA(Landroid/util/DisplayMetrics;)Z
    .locals 4
    .parameter "metrics"

    .prologue
    const/4 v1, 0x0

    .line 5028
    if-nez p0, :cond_1

    .line 5030
    :cond_0
    :goto_0
    return v1

    .line 5029
    :cond_1
    iget v2, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v2, v3, :cond_2

    iget v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 5030
    .local v0, length:I
    :goto_1
    const/16 v2, 0x1e0

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 5029
    .end local v0           #length:I
    :cond_2
    iget v0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_1
.end method

.method public static declared-synchronized isInternalStorageEnough(Landroid/content/Context;)Z
    .locals 9
    .parameter "ctx"

    .prologue
    const-wide/32 v7, 0x500000

    .line 450
    const-class v4, Lcom/htc/music/util/MusicUtils;

    monitor-enter v4

    :try_start_0
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->checkInternalMemory()J

    move-result-wide v1

    .line 452
    .local v1, size:J
    cmp-long v3, v1, v7

    if-lez v3, :cond_0

    .line 453
    const/4 v3, 0x1

    sput-boolean v3, Lcom/htc/music/util/MusicUtils;->IsInternalEnough:Z

    .line 454
    sget-boolean v3, Lcom/htc/music/util/MusicUtils;->IsInternalEnough:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 465
    :goto_0
    monitor-exit v4

    return v3

    .line 457
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 458
    .local v0, file:Ljava/io/File;
    invoke-static {v0}, Lcom/htc/music/util/MusicUtils;->getFileSize(Ljava/io/File;)J

    move-result-wide v5

    add-long/2addr v5, v1

    cmp-long v3, v5, v7

    if-lez v3, :cond_1

    .line 459
    const/4 v3, 0x1

    sput-boolean v3, Lcom/htc/music/util/MusicUtils;->IsInternalEnough:Z

    .line 460
    sget-boolean v3, Lcom/htc/music/util/MusicUtils;->IsInternalEnough:Z

    goto :goto_0

    .line 463
    :cond_1
    const-string v3, "[MusicUtils]"

    const-string v5, "Internal Storage is not Enough."

    invoke-static {v3, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    const/4 v3, 0x0

    sput-boolean v3, Lcom/htc/music/util/MusicUtils;->IsInternalEnough:Z

    .line 465
    sget-boolean v3, Lcom/htc/music/util/MusicUtils;->IsInternalEnough:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 450
    .end local v0           #file:Ljava/io/File;
    .end local v1           #size:J
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static isMediaScannerScanning(Landroid/content/Context;)Z
    .locals 11
    .parameter "context"

    .prologue
    const/4 v10, 0x1

    const/4 v3, 0x0

    const/4 v9, 0x0

    .line 1614
    if-nez p0, :cond_1

    move v7, v9

    .line 1629
    :cond_0
    :goto_0
    return v7

    .line 1615
    :cond_1
    const/4 v7, 0x0

    .line 1616
    .local v7, result:Z
    invoke-static {}, Landroid/provider/MediaStore;->getMediaScannerUri()Landroid/net/Uri;

    move-result-object v8

    .line 1617
    .local v8, uri:Landroid/net/Uri;
    invoke-static {}, Landroid/provider/MediaStore;->getMediaScannerUri()Landroid/net/Uri;

    move-result-object v1

    new-array v2, v10, [Ljava/lang/String;

    const-string v0, "volume"

    aput-object v0, v2, v9

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1620
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 1621
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v10, :cond_2

    .line 1622
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1623
    const-string v0, "external"

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 1625
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1626
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public static isMusicEnhancerEnabled(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 4307
    invoke-static {p0}, Lcom/htc/music/util/ProjectSettings;->getEnableEnhancer(Landroid/content/Context;)Z

    move-result v0

    .line 4308
    .local v0, projectSetting:Z
    if-nez v0, :cond_0

    .line 4309
    const/4 v1, 0x0

    .line 4312
    :goto_0
    return v1

    :cond_0
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->isMusicEnhancerExist(Landroid/content/Context;)Z

    move-result v1

    goto :goto_0
.end method

.method private static isMusicEnhancerExist(Landroid/content/Context;)Z
    .locals 7
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 4292
    const-string v1, "com.htc.musicenhancer"

    .line 4293
    .local v1, packageName:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 4295
    .local v3, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v5, "com.htc.musicenhancer"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 4296
    .local v2, pkgInfo:Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_0

    .line 4297
    const/4 v4, 0x1

    .line 4302
    .end local v2           #pkgInfo:Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return v4

    .line 4301
    :catch_0
    move-exception v0

    .line 4302
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public static isMusicLoaded()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 526
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v1, :cond_0

    .line 528
    :try_start_0
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->getPath()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 532
    :cond_0
    :goto_0
    return v0

    .line 529
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static isPluginMode()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 3631
    :try_start_0
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v2, :cond_0

    .line 3632
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->isPluginMode()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 3641
    :cond_0
    :goto_0
    return v1

    .line 3635
    :catch_0
    move-exception v0

    .line 3636
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v2, "[MusicUtils]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isPluginMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3638
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 3639
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 3640
    const-string v2, "[MusicUtils]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isPluginMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isSystemReady()Z
    .locals 1

    .prologue
    .line 536
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 538
    :try_start_0
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/htc/music/IMediaPlaybackService;->isSystemReady()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 542
    :goto_0
    return v0

    .line 539
    :catch_0
    move-exception v0

    .line 542
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUnknownComposer(Ljava/lang/String;)Z
    .locals 1
    .parameter "composer"

    .prologue
    .line 4334
    if-eqz p0, :cond_0

    const-string v0, "<unknown>"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4336
    :cond_0
    const/4 v0, 0x1

    .line 4339
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isWMDRMSupported()Z
    .locals 1

    .prologue
    .line 3673
    const/4 v0, 0x1

    return v0
.end method

.method public static isYoutubeExist(Landroid/content/Context;)Z
    .locals 7
    .parameter "cxt"

    .prologue
    const/high16 v6, 0x1

    .line 4253
    const/4 v2, 0x0

    .line 4255
    .local v2, retval:Z
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4256
    .local v0, launchYoutubeIntent:Landroid/content/Intent;
    const-string v4, "android.intent.action.MEDIA_SEARCH"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4257
    const/high16 v4, 0x1000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4258
    const-string v4, "android.intent.extra.focus"

    const-string v5, "audio/*"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4259
    const-string v4, "com.google.android.youtube"

    const-string v5, "com.google.android.youtube.VideoListActivity"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4261
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 4262
    .local v1, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v1, v0, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 4264
    .local v3, shareApList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 4265
    const/4 v2, 0x1

    .line 4287
    :cond_0
    :goto_0
    const-string v4, "[MusicUtils]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "is youtube exist = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4288
    return v2

    .line 4267
    :cond_1
    const-string v4, "com.google.android.youtube"

    const-string v5, "com.google.android.youtube.ResultsActivity"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4269
    invoke-virtual {v1, v0, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 4271
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 4272
    const/4 v2, 0x1

    goto :goto_0

    .line 4278
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4279
    const-string v4, "com.google.android.youtube"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4280
    invoke-virtual {v1, v0, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 4282
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 4283
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static makeAlbumsSongsLabel(Landroid/content/Context;IIZ)Ljava/lang/String;
    .locals 8
    .parameter "context"
    .parameter "numalbums"
    .parameter "numsongs"
    .parameter "isUnknown"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 262
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 264
    .local v2, songs_albums:Ljava/lang/StringBuilder;
    if-ne p2, v7, :cond_0

    .line 265
    const v3, 0x7f070004

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 267
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 268
    .local v1, r:Landroid/content/res/Resources;
    if-nez p3, :cond_1

    .line 269
    const v3, 0x7f0d0001

    invoke-virtual {v1, v3, p1}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 270
    .local v0, f:Ljava/lang/String;
    sget-object v3, Lcom/htc/music/util/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 271
    sget-object v3, Lcom/htc/music/util/MusicUtils;->sFormatter:Ljava/util/Formatter;

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v3, v0, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 272
    sget-object v3, Lcom/htc/music/util/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 273
    const v3, 0x7f0701dc

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .end local v0           #f:Ljava/lang/String;
    :cond_1
    const/high16 v3, 0x7f0d

    invoke-virtual {v1, v3, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 276
    .restart local v0       #f:Ljava/lang/String;
    sget-object v3, Lcom/htc/music/util/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 277
    sget-object v3, Lcom/htc/music/util/MusicUtils;->sFormatter:Ljava/util/Formatter;

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v3, v0, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 278
    sget-object v3, Lcom/htc/music/util/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static makePlaylistMenu(Landroid/content/Context;Landroid/view/SubMenu;)V
    .locals 10
    .parameter "context"
    .parameter "sub"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1228
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v2, v8

    const-string v1, "name"

    aput-object v1, v2, v9

    .line 1231
    .local v2, cols:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1232
    .local v0, resolver:Landroid/content/ContentResolver;
    if-nez v0, :cond_1

    .line 1233
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "resolver = null"

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1261
    :cond_0
    :goto_0
    return-void

    .line 1235
    :cond_1
    const-string v3, "name != \'\'"

    .line 1236
    .local v3, whereclause:Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "name"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1238
    .local v6, cur:Landroid/database/Cursor;
    invoke-interface {p1}, Landroid/view/SubMenu;->clear()V

    .line 1240
    const/4 v1, 0x4

    const v4, 0x7f07005c

    invoke-interface {p1, v9, v1, v8, v4}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1241
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 1243
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1244
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1245
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 1246
    .local v7, intent:Landroid/content/Intent;
    const-string v1, "playlist"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v7, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1251
    const/4 v1, 0x3

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v9, v1, v8, v4}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1253
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 1256
    .end local v7           #intent:Landroid/content/Intent;
    :cond_2
    if-eqz v6, :cond_0

    .line 1257
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public static makeTimeString(Landroid/content/Context;J)Ljava/lang/String;
    .locals 10
    .parameter "context"
    .parameter "secs"

    .prologue
    const-wide/16 v8, 0xe10

    const/4 v5, 0x0

    const-wide/16 v6, 0x3c

    .line 1755
    const v3, 0x7f070005

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1756
    .local v0, durationformat:Ljava/lang/String;
    const v3, 0x7f070006

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1761
    .local v1, durationformat_h:Ljava/lang/String;
    sget-object v3, Lcom/htc/music/util/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1763
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sTimeArgs:[Ljava/lang/Object;

    .line 1764
    .local v2, timeArgs:[Ljava/lang/Object;
    div-long v3, p1, v8

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    .line 1765
    const/4 v3, 0x1

    div-long v4, p1, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1766
    const/4 v3, 0x2

    div-long v4, p1, v6

    rem-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1767
    const/4 v3, 0x3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1768
    const/4 v3, 0x4

    rem-long v4, p1, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1770
    div-long v3, p1, v8

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 1771
    sget-object v3, Lcom/htc/music/util/MusicUtils;->sFormatter:Ljava/util/Formatter;

    invoke-virtual {v3, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1773
    :goto_0
    return-object v3

    :cond_0
    sget-object v3, Lcom/htc/music/util/MusicUtils;->sFormatter:Ljava/util/Formatter;

    invoke-virtual {v3, v0, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static mergeArtCover(Landroid/content/res/Resources;Landroid/graphics/Bitmap;IIIII)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "resources"
    .parameter "art"
    .parameter "coverResId"
    .parameter "offsetX"
    .parameter "offsetY"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 4621
    invoke-static {p0, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 4622
    .local v0, albumCover:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 4624
    .local v1, canvasBitmap:Landroid/graphics/Bitmap;
    const-string v3, "[MusicUtils]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mergeArtCover:canvasBitmap size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " x "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4625
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 4626
    .local v2, mReflection:Landroid/graphics/Canvas;
    new-instance v3, Landroid/graphics/Rect;

    add-int v4, p5, p3

    add-int v5, p6, p4

    invoke-direct {v3, p3, p4, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, p1, v6, v3, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 4627
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v3, v7, v7, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v0, v6, v3, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 4629
    if-eqz v0, :cond_0

    .line 4630
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 4632
    :cond_0
    if-eqz p1, :cond_1

    .line 4633
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 4636
    :cond_1
    return-object v1
.end method

.method public static varargs mergeCursors(Landroid/database/Cursor;Landroid/database/Cursor;[Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 8
    .parameter "c1"
    .parameter "c2"
    .parameter "cursorEtc"

    .prologue
    const/4 v5, 0x0

    .line 4696
    array-length v6, p2

    if-nez v6, :cond_6

    .line 4698
    if-eqz p0, :cond_2

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_2

    .line 4699
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_1

    .line 4700
    new-instance v5, Landroid/database/MergeCursor;

    const/4 v6, 0x2

    new-array v6, v6, [Landroid/database/Cursor;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    invoke-direct {v5, v6}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    move-object p0, v5

    .line 4752
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 4702
    .restart local p0
    :cond_1
    if-eqz p1, :cond_0

    .line 4703
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 4709
    :cond_2
    if-eqz p0, :cond_3

    .line 4710
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 4713
    :cond_3
    if-eqz p1, :cond_4

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_4

    move-object p0, p1

    .line 4714
    goto :goto_0

    .line 4716
    :cond_4
    if-eqz p1, :cond_5

    .line 4717
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_5
    move-object p0, v5

    .line 4720
    goto :goto_0

    .line 4724
    :cond_6
    new-instance v2, Ljava/util/ArrayList;

    array-length v6, p2

    add-int/lit8 v6, v6, 0x2

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 4725
    .local v2, cursorList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/database/Cursor;>;"
    if-eqz p0, :cond_7

    .line 4726
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_a

    .line 4727
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4732
    :cond_7
    :goto_1
    if-eqz p1, :cond_8

    .line 4733
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_b

    .line 4734
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4739
    :cond_8
    :goto_2
    move-object v0, p2

    .local v0, arr$:[Landroid/database/Cursor;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_3
    if-ge v3, v4, :cond_d

    aget-object v1, v0, v3

    .line 4740
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_9

    .line 4741
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_c

    .line 4742
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4739
    :cond_9
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 4729
    .end local v0           #arr$:[Landroid/database/Cursor;
    .end local v1           #cursor:Landroid/database/Cursor;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_a
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 4736
    :cond_b
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 4744
    .restart local v0       #arr$:[Landroid/database/Cursor;
    .restart local v1       #cursor:Landroid/database/Cursor;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    :cond_c
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_4

    .line 4749
    .end local v1           #cursor:Landroid/database/Cursor;
    :cond_d
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_e

    .line 4750
    new-instance p0, Landroid/database/MergeCursor;

    .end local p0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Landroid/database/Cursor;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/database/Cursor;

    invoke-direct {p0, v5}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    goto :goto_0

    .restart local p0
    :cond_e
    move-object p0, v5

    .line 4752
    goto :goto_0
.end method

.method public static mergeDlAlbumArt(Landroid/content/Context;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 12
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 1543
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_1

    .line 1608
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 1547
    .restart local p1
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1548
    .local v0, cr:Landroid/content/ContentResolver;
    if-eqz v0, :cond_0

    .line 1552
    const-string v1, "album_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 1553
    .local v10, mdAlbumIdIdx:I
    if-gez v10, :cond_2

    .line 1554
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 1556
    :cond_2
    if-gez v10, :cond_3

    .line 1557
    const-string v1, "[MusicUtils]"

    const-string v2, "mergeDlAlbumArt: cannot find album id column"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1562
    :cond_3
    :try_start_0
    const-string v1, "album_art"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1568
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 1569
    .local v11, selection:Ljava/lang/StringBuilder;
    const-string v1, "dl_album_id IN ("

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1570
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 1572
    .local v6, albumIdSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    const/4 v9, 0x0

    .line 1573
    .local v9, id:I
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1575
    :cond_4
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 1576
    if-gez v9, :cond_8

    .line 1584
    :cond_5
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1586
    :cond_6
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1587
    const-string v1, ")"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1590
    const/4 v1, -0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1593
    :try_start_1
    sget-object v1, Lcom/htc/musicenhancer/DownloadStore$AlbumArt;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/music/util/MusicUtils;->sDlColumns:[Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1595
    .local v7, dlCursor:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 1599
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_7

    .line 1601
    const-string v1, "[MusicUtils]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mergeDlAlbumArt: dlCursor.getCount() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1604
    :cond_7
    new-instance v1, Lcom/htc/music/util/AlbumArtMergeCursor;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v7, v2}, Lcom/htc/music/util/AlbumArtMergeCursor;-><init>(Landroid/database/Cursor;Landroid/database/Cursor;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object p1, v1

    goto/16 :goto_0

    .line 1563
    .end local v6           #albumIdSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v7           #dlCursor:Landroid/database/Cursor;
    .end local v9           #id:I
    .end local v11           #selection:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v8

    .line 1564
    .local v8, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "[MusicUtils]"

    const-string v2, "mergeDlAlbumArt: cannot find album art column"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1580
    .end local v8           #e:Ljava/lang/IllegalArgumentException;
    .restart local v6       #albumIdSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .restart local v9       #id:I
    .restart local v11       #selection:Ljava/lang/StringBuilder;
    :cond_8
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1581
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1582
    const-string v1, ","

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1605
    :catch_1
    move-exception v8

    .line 1606
    .local v8, e:Ljava/lang/Exception;
    const-string v1, "[MusicUtils]"

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1607
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public static varargs playAll(Landroid/content/Context;Landroid/database/Cursor;ILcom/htc/music/NpCategory;[I)V
    .locals 6
    .parameter "context"
    .parameter "cursor"
    .parameter "position"
    .parameter "npc"
    .parameter "varargs"

    .prologue
    const/4 v3, 0x0

    .line 1826
    const/4 v0, 0x1

    new-array v5, v0, [I

    array-length v0, p4

    if-nez v0, :cond_0

    move v0, v3

    :goto_0
    aput v0, v5, v3

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;IZLcom/htc/music/NpCategory;[I)V

    .line 1827
    return-void

    .line 1826
    :cond_0
    aget v0, p4, v3

    goto :goto_0
.end method

.method private static varargs playAll(Landroid/content/Context;Landroid/database/Cursor;IZLcom/htc/music/NpCategory;[I)V
    .locals 7
    .parameter "context"
    .parameter "cursor"
    .parameter "position"
    .parameter "force_shuffle"
    .parameter "npc"
    .parameter "varargs"

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 1916
    if-nez p0, :cond_0

    .line 1917
    const-string v0, "[MusicUtils]"

    const-string v2, "playAll with null Context!!"

    invoke-static {v0, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1923
    :goto_0
    return-void

    .line 1920
    :cond_0
    invoke-static {p1}, Lcom/htc/music/util/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v1

    .line 1921
    .local v1, list:[I
    invoke-static {p1}, Lcom/htc/music/util/MusicUtils;->prepareAlbumList(Landroid/database/Cursor;)Z

    .line 1922
    new-array v6, v4, [I

    array-length v0, p5

    if-nez v0, :cond_1

    move v0, v2

    :goto_1
    aput v0, v6, v2

    move-object v0, p0

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-static/range {v0 .. v6}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;[IIZZLcom/htc/music/NpCategory;[I)Z

    goto :goto_0

    :cond_1
    aget v0, p5, v2

    goto :goto_1
.end method

.method private static playAll(Landroid/content/Context;Landroid/database/Cursor;IZZLcom/htc/music/NpCategory;)V
    .locals 7
    .parameter "context"
    .parameter "cursor"
    .parameter "position"
    .parameter "force_shuffle"
    .parameter "isPlay"
    .parameter "npc"

    .prologue
    .line 1910
    invoke-static {p1}, Lcom/htc/music/util/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v1

    .line 1911
    .local v1, list:[I
    invoke-static {p1}, Lcom/htc/music/util/MusicUtils;->prepareAlbumList(Landroid/database/Cursor;)Z

    .line 1912
    const/4 v0, 0x0

    new-array v6, v0, [I

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;[IIZZLcom/htc/music/NpCategory;[I)Z

    .line 1913
    return-void
.end method

.method public static playAll(Landroid/content/Context;Landroid/database/Cursor;Lcom/htc/music/NpCategory;)V
    .locals 6
    .parameter "context"
    .parameter "cursor"
    .parameter "npc"

    .prologue
    const/4 v2, 0x0

    .line 1786
    new-array v5, v2, [I

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;IZLcom/htc/music/NpCategory;[I)V

    .line 1787
    return-void
.end method

.method public static playAll(Landroid/content/Context;[IILcom/htc/music/NpCategory;)V
    .locals 7
    .parameter "context"
    .parameter "list"
    .parameter "position"
    .parameter "npc"

    .prologue
    const/4 v3, 0x0

    .line 1840
    const/4 v4, 0x1

    new-array v6, v3, [I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, p3

    invoke-static/range {v0 .. v6}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;[IIZZLcom/htc/music/NpCategory;[I)Z

    .line 1841
    return-void
.end method

.method public static varargs playAll(Landroid/content/Context;[IILcom/htc/music/NpCategory;[I)V
    .locals 7
    .parameter "context"
    .parameter "list"
    .parameter "position"
    .parameter "npc"
    .parameter "varargs"

    .prologue
    .line 1844
    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;[IIZZLcom/htc/music/NpCategory;[I)Z

    .line 1845
    return-void
.end method

.method public static playAll(Lcom/htc/music/IMediaPlaybackService;Landroid/content/Context;[IILcom/htc/music/NpCategory;)V
    .locals 8
    .parameter "service"
    .parameter "context"
    .parameter "list"
    .parameter "position"
    .parameter "npc"

    .prologue
    const/4 v4, 0x0

    .line 1851
    const/4 v5, 0x1

    new-array v7, v4, [I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, p4

    invoke-static/range {v0 .. v7}, Lcom/htc/music/util/MusicUtils;->playAll(Lcom/htc/music/IMediaPlaybackService;Landroid/content/Context;[IIZZLcom/htc/music/NpCategory;[I)Z

    .line 1852
    return-void
.end method

.method public static varargs playAll(Landroid/content/Context;[IIZZLcom/htc/music/NpCategory;[I)Z
    .locals 8
    .parameter "context"
    .parameter "list"
    .parameter "position"
    .parameter "force_shuffle"
    .parameter "ifrun"
    .parameter "npc"
    .parameter "varargs"

    .prologue
    const/4 v2, 0x0

    .line 1929
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v1, 0x1

    new-array v7, v1, [I

    array-length v1, p6

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    aput v1, v7, v2

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v7}, Lcom/htc/music/util/MusicUtils;->playAll(Lcom/htc/music/IMediaPlaybackService;Landroid/content/Context;[IIZZLcom/htc/music/NpCategory;[I)Z

    move-result v0

    return v0

    :cond_0
    aget v1, p6, v2

    goto :goto_0
.end method

.method private static varargs playAll(Lcom/htc/music/IMediaPlaybackService;Landroid/content/Context;[IIZZLcom/htc/music/NpCategory;[I)Z
    .locals 16
    .parameter "service"
    .parameter "context"
    .parameter "list"
    .parameter "position"
    .parameter "force_shuffle"
    .parameter "ifrun"
    .parameter "npc"
    .parameter "varargs"

    .prologue
    .line 1948
    if-nez p0, :cond_0

    .line 1949
    const-string v12, "[MusicUtils]"

    const-string v13, "[playAll] Service is null."

    invoke-static {v12, v13}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1950
    const/4 v12, 0x0

    .line 2084
    :goto_0
    return v12

    .line 1953
    :cond_0
    move-object/from16 v0, p2

    array-length v12, v0

    if-nez v12, :cond_2

    .line 1954
    const-string v12, "[MusicUtils]"

    const-string v13, "attempt to play empty song list"

    invoke-static {v12, v13}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1956
    const/4 v12, 0x1

    move/from16 v0, p5

    if-ne v0, v12, :cond_1

    .line 1957
    const v12, 0x7f07005f

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p2

    array-length v15, v0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 1958
    .local v10, message:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v12, v10, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    .line 1960
    .end local v10           #message:Ljava/lang/String;
    :cond_1
    const/4 v12, 0x0

    goto :goto_0

    .line 1963
    :cond_2
    const/4 v6, -0x1

    .line 1965
    .local v6, dlnaMode:I
    if-eqz p5, :cond_3

    .line 1966
    const/4 v12, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-static {v0, v1, v2, v12}, Lcom/htc/music/util/MusicUtils;->checkDLNAMode(Landroid/content/Context;[IIZ)I

    move-result v6

    .line 1972
    :cond_3
    const/4 v9, 0x0

    .line 1975
    .local v9, isMirrorPlayOnTV:Z
    const/4 v12, 0x3

    if-eq v6, v12, :cond_4

    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/htc/music/util/ProjectSettings;->getEnablePlugin(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface/range {p0 .. p0}, Lcom/htc/music/IMediaPlaybackService;->isPluginMode()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1976
    if-eqz p5, :cond_4

    .line 1977
    invoke-interface/range {p0 .. p0}, Lcom/htc/music/IMediaPlaybackService;->stopActivePlugin()V

    .line 1981
    :cond_4
    if-eqz p5, :cond_9

    if-eqz p1, :cond_9

    invoke-static/range {p1 .. p1}, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;->isTVOn(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-interface/range {p0 .. p0}, Lcom/htc/music/IMediaPlaybackService;->isDmcOrPushMode()Z

    move-result v12

    if-nez v12, :cond_9

    const/4 v9, 0x1

    .line 1982
    :goto_1
    const-string v12, "[MusicUtils]"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "playAll, isMirrorPlayOnTV: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1984
    invoke-interface/range {p0 .. p0}, Lcom/htc/music/IMediaPlaybackService;->getAudioId()I

    move-result v4

    .line 1985
    .local v4, curid:I
    invoke-interface/range {p0 .. p0}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v5

    .line 1986
    .local v5, curpos:I
    const/4 v12, -0x1

    move/from16 v0, p3

    if-eq v0, v12, :cond_a

    move/from16 v0, p3

    if-ne v5, v0, :cond_a

    aget v12, p2, p3

    if-ne v4, v12, :cond_a

    .line 1990
    invoke-interface/range {p0 .. p0}, Lcom/htc/music/IMediaPlaybackService;->getQueue()[I

    move-result-object v11

    .line 1991
    .local v11, playlist:[I
    move-object/from16 v0, p2

    invoke-static {v0, v11}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 1994
    if-eqz p4, :cond_5

    .line 1995
    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-interface {v0, v12}, Lcom/htc/music/IMediaPlaybackService;->setShuffleMode(I)V

    .line 1996
    invoke-interface/range {p0 .. p0}, Lcom/htc/music/IMediaPlaybackService;->getRepeatMode()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_5

    .line 1997
    const/4 v12, 0x2

    move-object/from16 v0, p0

    invoke-interface {v0, v12}, Lcom/htc/music/IMediaPlaybackService;->setRepeatMode(I)V

    .line 2001
    :cond_5
    if-eqz p5, :cond_6

    if-nez v6, :cond_6

    if-nez v9, :cond_6

    .line 2002
    invoke-interface/range {p0 .. p0}, Lcom/htc/music/IMediaPlaybackService;->play()V

    .line 2005
    :cond_6
    const/4 v12, 0x3

    if-ne v6, v12, :cond_7

    .line 2006
    invoke-static/range {p1 .. p3}, Lcom/htc/music/util/MusicUtils;->switchToPUSH(Landroid/content/Context;[II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2009
    :cond_7
    const/4 v13, 0x1

    .line 2046
    if-eqz v9, :cond_27

    .line 2047
    const-string v12, "[MusicUtils]"

    const-string v14, "playAll, TV is on"

    invoke-static {v12, v14}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2048
    new-instance v8, Landroid/content/Intent;

    const-string v12, "com.htc.music.triggerplayinlibrary"

    invoke-direct {v8, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2049
    .local v8, intent:Landroid/content/Intent;
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .end local v8           #intent:Landroid/content/Intent;
    :cond_8
    :goto_2
    move v12, v13

    .line 2009
    goto/16 :goto_0

    .line 1981
    .end local v4           #curid:I
    .end local v5           #curpos:I
    .end local v11           #playlist:[I
    :cond_9
    const/4 v9, 0x0

    goto :goto_1

    .line 2012
    .restart local v4       #curid:I
    .restart local v5       #curpos:I
    :cond_a
    if-gez p3, :cond_b

    .line 2013
    const/16 p3, 0x0

    .line 2015
    :cond_b
    if-eqz p6, :cond_11

    .line 2016
    if-eqz p4, :cond_10

    const/4 v12, -0x1

    :goto_3
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    invoke-interface {v0, v1, v12, v2}, Lcom/htc/music/IMediaPlaybackService;->openWithCategory([IILcom/htc/music/NpCategory;)V

    .line 2021
    :goto_4
    if-eqz p4, :cond_c

    .line 2022
    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-interface {v0, v12}, Lcom/htc/music/IMediaPlaybackService;->setShuffleMode(I)V

    .line 2023
    invoke-interface/range {p0 .. p0}, Lcom/htc/music/IMediaPlaybackService;->getRepeatMode()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_c

    .line 2024
    const/4 v12, 0x2

    move-object/from16 v0, p0

    invoke-interface {v0, v12}, Lcom/htc/music/IMediaPlaybackService;->setRepeatMode(I)V

    .line 2028
    :cond_c
    if-eqz p5, :cond_d

    if-nez v6, :cond_d

    if-nez v9, :cond_d

    .line 2029
    invoke-interface/range {p0 .. p0}, Lcom/htc/music/IMediaPlaybackService;->play()V

    .line 2039
    :cond_d
    const/4 v12, 0x3

    if-ne v6, v12, :cond_e

    .line 2040
    invoke-static/range {p1 .. p3}, Lcom/htc/music/util/MusicUtils;->switchToPUSH(Landroid/content/Context;[II)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2046
    :cond_e
    if-eqz v9, :cond_30

    .line 2047
    const-string v12, "[MusicUtils]"

    const-string v13, "playAll, TV is on"

    invoke-static {v12, v13}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2048
    new-instance v8, Landroid/content/Intent;

    const-string v12, "com.htc.music.triggerplayinlibrary"

    invoke-direct {v8, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2049
    .end local v4           #curid:I
    .end local v5           #curpos:I
    .restart local v8       #intent:Landroid/content/Intent;
    :goto_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2084
    .end local v8           #intent:Landroid/content/Intent;
    :cond_f
    :goto_6
    const/4 v12, 0x1

    goto/16 :goto_0

    .restart local v4       #curid:I
    .restart local v5       #curpos:I
    :cond_10
    move/from16 v12, p3

    .line 2016
    goto :goto_3

    .line 2018
    :cond_11
    if-eqz p4, :cond_12

    const/4 v12, -0x1

    :goto_7
    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-interface {v0, v1, v12}, Lcom/htc/music/IMediaPlaybackService;->open([II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    .line 2044
    .end local v4           #curid:I
    .end local v5           #curpos:I
    :catch_0
    move-exception v12

    .line 2046
    if-eqz v9, :cond_14

    .line 2047
    const-string v12, "[MusicUtils]"

    const-string v13, "playAll, TV is on"

    invoke-static {v12, v13}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2048
    new-instance v8, Landroid/content/Intent;

    const-string v12, "com.htc.music.triggerplayinlibrary"

    invoke-direct {v8, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_5

    .restart local v4       #curid:I
    .restart local v5       #curpos:I
    :cond_12
    move/from16 v12, p3

    .line 2018
    goto :goto_7

    .line 2046
    .end local v4           #curid:I
    .end local v5           #curpos:I
    :catchall_0
    move-exception v12

    move-object v13, v12

    if-eqz v9, :cond_1e

    .line 2047
    const-string v12, "[MusicUtils]"

    const-string v14, "playAll, TV is on"

    invoke-static {v12, v14}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2048
    new-instance v8, Landroid/content/Intent;

    const-string v12, "com.htc.music.triggerplayinlibrary"

    invoke-direct {v8, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2049
    .restart local v8       #intent:Landroid/content/Intent;
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2046
    .end local v8           #intent:Landroid/content/Intent;
    :cond_13
    :goto_8
    throw v13

    .line 2051
    :cond_14
    if-eqz p5, :cond_f

    move-object/from16 v0, p7

    array-length v12, v0

    if-nez v12, :cond_17

    const/4 v12, 0x0

    :goto_9
    if-nez v12, :cond_f

    if-eqz v6, :cond_15

    const/4 v12, 0x3

    if-ne v6, v12, :cond_f

    .line 2052
    :cond_15
    new-instance v8, Landroid/content/Intent;

    const-string v12, "com.htc.music.PLAYBACK_VIEWER"

    invoke-direct {v8, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2053
    .restart local v8       #intent:Landroid/content/Intent;
    move-object/from16 v0, p1

    instance-of v12, v0, Landroid/app/Activity;

    if-eqz v12, :cond_18

    .line 2054
    const/high16 v12, 0x400

    invoke-virtual {v8, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2059
    :cond_16
    :goto_a
    const-string v12, "showEmptyQueue"

    const/4 v13, 0x1

    invoke-virtual {v8, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2061
    const/4 v7, 0x1

    .line 2062
    .local v7, fromLockScreen:Z
    move-object/from16 v0, p1

    instance-of v12, v0, Landroid/app/Activity;

    if-eqz v12, :cond_1a

    move-object/from16 v3, p1

    .line 2063
    check-cast v3, Landroid/app/Activity;

    .line 2064
    .local v3, activity:Landroid/app/Activity;
    :goto_b
    invoke-virtual {v3}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v12

    if-eqz v12, :cond_19

    .line 2065
    invoke-virtual {v3}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v3

    goto :goto_b

    .line 2051
    .end local v3           #activity:Landroid/app/Activity;
    .end local v7           #fromLockScreen:Z
    .end local v8           #intent:Landroid/content/Intent;
    :cond_17
    const/4 v12, 0x0

    aget v12, p7, v12

    goto :goto_9

    .line 2055
    .restart local v8       #intent:Landroid/content/Intent;
    :cond_18
    move-object/from16 v0, p1

    instance-of v12, v0, Landroid/app/Service;

    if-eqz v12, :cond_16

    .line 2056
    const/high16 v12, 0x1400

    invoke-virtual {v8, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_a

    .line 2067
    .restart local v3       #activity:Landroid/app/Activity;
    .restart local v7       #fromLockScreen:Z
    :cond_19
    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v12

    const-string v13, "from-lockscreen"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 2069
    const-string v12, "[MusicUtils]"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[playall] bp. flag="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2071
    .end local v3           #activity:Landroid/app/Activity;
    :cond_1a
    const-string v12, "from-lockscreen"

    invoke-virtual {v8, v12, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2073
    move-object/from16 v0, p1

    instance-of v12, v0, Lcom/htc/music/HtcMusic;

    if-eqz v12, :cond_1b

    .line 2074
    const-string v13, "ShowNowPlaying"

    move-object/from16 v12, p1

    check-cast v12, Lcom/htc/music/HtcMusic;

    invoke-virtual {v12}, Lcom/htc/music/HtcMusic;->isShowNowPlaying()Z

    move-result v12

    invoke-virtual {v8, v13, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2077
    :cond_1b
    move-object/from16 v0, p1

    instance-of v12, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;

    if-eqz v12, :cond_1d

    move-object/from16 v12, p1

    check-cast v12, Lcom/htc/music/browserlayer/TrackBrowserActivity;

    iget-boolean v12, v12, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-eqz v12, :cond_1d

    .line 2079
    :cond_1c
    :goto_c
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 2081
    :cond_1d
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_6

    .line 2051
    .end local v7           #fromLockScreen:Z
    .end local v8           #intent:Landroid/content/Intent;
    :cond_1e
    if-eqz p5, :cond_13

    move-object/from16 v0, p7

    array-length v12, v0

    if-nez v12, :cond_21

    const/4 v12, 0x0

    :goto_d
    if-nez v12, :cond_13

    if-eqz v6, :cond_1f

    const/4 v12, 0x3

    if-ne v6, v12, :cond_13

    .line 2052
    :cond_1f
    new-instance v8, Landroid/content/Intent;

    const-string v12, "com.htc.music.PLAYBACK_VIEWER"

    invoke-direct {v8, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2053
    .restart local v8       #intent:Landroid/content/Intent;
    move-object/from16 v0, p1

    instance-of v12, v0, Landroid/app/Activity;

    if-eqz v12, :cond_22

    .line 2054
    const/high16 v12, 0x400

    invoke-virtual {v8, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2059
    :cond_20
    :goto_e
    const-string v12, "showEmptyQueue"

    const/4 v14, 0x1

    invoke-virtual {v8, v12, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2061
    const/4 v7, 0x1

    .line 2062
    .restart local v7       #fromLockScreen:Z
    move-object/from16 v0, p1

    instance-of v12, v0, Landroid/app/Activity;

    if-eqz v12, :cond_24

    move-object/from16 v3, p1

    .line 2063
    check-cast v3, Landroid/app/Activity;

    .line 2064
    .restart local v3       #activity:Landroid/app/Activity;
    :goto_f
    invoke-virtual {v3}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v12

    if-eqz v12, :cond_23

    .line 2065
    invoke-virtual {v3}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v3

    goto :goto_f

    .line 2051
    .end local v3           #activity:Landroid/app/Activity;
    .end local v7           #fromLockScreen:Z
    .end local v8           #intent:Landroid/content/Intent;
    :cond_21
    const/4 v12, 0x0

    aget v12, p7, v12

    goto :goto_d

    .line 2055
    .restart local v8       #intent:Landroid/content/Intent;
    :cond_22
    move-object/from16 v0, p1

    instance-of v12, v0, Landroid/app/Service;

    if-eqz v12, :cond_20

    .line 2056
    const/high16 v12, 0x1400

    invoke-virtual {v8, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_e

    .line 2067
    .restart local v3       #activity:Landroid/app/Activity;
    .restart local v7       #fromLockScreen:Z
    :cond_23
    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v12

    const-string v14, "from-lockscreen"

    const/4 v15, 0x0

    invoke-virtual {v12, v14, v15}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 2069
    const-string v12, "[MusicUtils]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[playall] bp. flag="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2071
    .end local v3           #activity:Landroid/app/Activity;
    :cond_24
    const-string v12, "from-lockscreen"

    invoke-virtual {v8, v12, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2073
    move-object/from16 v0, p1

    instance-of v12, v0, Lcom/htc/music/HtcMusic;

    if-eqz v12, :cond_25

    .line 2074
    const-string v14, "ShowNowPlaying"

    move-object/from16 v12, p1

    check-cast v12, Lcom/htc/music/HtcMusic;

    invoke-virtual {v12}, Lcom/htc/music/HtcMusic;->isShowNowPlaying()Z

    move-result v12

    invoke-virtual {v8, v14, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2077
    :cond_25
    move-object/from16 v0, p1

    instance-of v12, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;

    if-eqz v12, :cond_26

    move-object/from16 v12, p1

    check-cast v12, Lcom/htc/music/browserlayer/TrackBrowserActivity;

    iget-boolean v12, v12, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-nez v12, :cond_1c

    .line 2081
    :cond_26
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_8

    .line 2051
    .end local v7           #fromLockScreen:Z
    .end local v8           #intent:Landroid/content/Intent;
    .restart local v4       #curid:I
    .restart local v5       #curpos:I
    .restart local v11       #playlist:[I
    :cond_27
    if-eqz p5, :cond_8

    move-object/from16 v0, p7

    array-length v12, v0

    if-nez v12, :cond_2a

    const/4 v12, 0x0

    :goto_10
    if-nez v12, :cond_8

    if-eqz v6, :cond_28

    const/4 v12, 0x3

    if-ne v6, v12, :cond_8

    .line 2052
    :cond_28
    new-instance v8, Landroid/content/Intent;

    const-string v12, "com.htc.music.PLAYBACK_VIEWER"

    invoke-direct {v8, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2053
    .restart local v8       #intent:Landroid/content/Intent;
    move-object/from16 v0, p1

    instance-of v12, v0, Landroid/app/Activity;

    if-eqz v12, :cond_2b

    .line 2054
    const/high16 v12, 0x400

    invoke-virtual {v8, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2059
    :cond_29
    :goto_11
    const-string v12, "showEmptyQueue"

    const/4 v14, 0x1

    invoke-virtual {v8, v12, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2061
    const/4 v7, 0x1

    .line 2062
    .restart local v7       #fromLockScreen:Z
    move-object/from16 v0, p1

    instance-of v12, v0, Landroid/app/Activity;

    if-eqz v12, :cond_2d

    move-object/from16 v3, p1

    .line 2063
    check-cast v3, Landroid/app/Activity;

    .line 2064
    .restart local v3       #activity:Landroid/app/Activity;
    :goto_12
    invoke-virtual {v3}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v12

    if-eqz v12, :cond_2c

    .line 2065
    invoke-virtual {v3}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v3

    goto :goto_12

    .line 2051
    .end local v3           #activity:Landroid/app/Activity;
    .end local v7           #fromLockScreen:Z
    .end local v8           #intent:Landroid/content/Intent;
    :cond_2a
    const/4 v12, 0x0

    aget v12, p7, v12

    goto :goto_10

    .line 2055
    .restart local v8       #intent:Landroid/content/Intent;
    :cond_2b
    move-object/from16 v0, p1

    instance-of v12, v0, Landroid/app/Service;

    if-eqz v12, :cond_29

    .line 2056
    const/high16 v12, 0x1400

    invoke-virtual {v8, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_11

    .line 2067
    .restart local v3       #activity:Landroid/app/Activity;
    .restart local v7       #fromLockScreen:Z
    :cond_2c
    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v12

    const-string v14, "from-lockscreen"

    const/4 v15, 0x0

    invoke-virtual {v12, v14, v15}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 2069
    const-string v12, "[MusicUtils]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[playall] bp. flag="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2071
    .end local v3           #activity:Landroid/app/Activity;
    :cond_2d
    const-string v12, "from-lockscreen"

    invoke-virtual {v8, v12, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2073
    move-object/from16 v0, p1

    instance-of v12, v0, Lcom/htc/music/HtcMusic;

    if-eqz v12, :cond_2e

    .line 2074
    const-string v14, "ShowNowPlaying"

    move-object/from16 v12, p1

    check-cast v12, Lcom/htc/music/HtcMusic;

    invoke-virtual {v12}, Lcom/htc/music/HtcMusic;->isShowNowPlaying()Z

    move-result v12

    invoke-virtual {v8, v14, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2077
    :cond_2e
    move-object/from16 v0, p1

    instance-of v12, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;

    if-eqz v12, :cond_2f

    move-object/from16 v12, p1

    check-cast v12, Lcom/htc/music/browserlayer/TrackBrowserActivity;

    iget-boolean v12, v12, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-nez v12, :cond_1c

    .line 2081
    :cond_2f
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 2051
    .end local v7           #fromLockScreen:Z
    .end local v8           #intent:Landroid/content/Intent;
    .end local v11           #playlist:[I
    :cond_30
    if-eqz p5, :cond_f

    move-object/from16 v0, p7

    array-length v12, v0

    if-nez v12, :cond_33

    const/4 v12, 0x0

    :goto_13
    if-nez v12, :cond_f

    if-eqz v6, :cond_31

    const/4 v12, 0x3

    if-ne v6, v12, :cond_f

    .line 2052
    :cond_31
    new-instance v8, Landroid/content/Intent;

    const-string v12, "com.htc.music.PLAYBACK_VIEWER"

    invoke-direct {v8, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2053
    .restart local v8       #intent:Landroid/content/Intent;
    move-object/from16 v0, p1

    instance-of v12, v0, Landroid/app/Activity;

    if-eqz v12, :cond_34

    .line 2054
    const/high16 v12, 0x400

    invoke-virtual {v8, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2059
    :cond_32
    :goto_14
    const-string v12, "showEmptyQueue"

    const/4 v13, 0x1

    invoke-virtual {v8, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2061
    const/4 v7, 0x1

    .line 2062
    .restart local v7       #fromLockScreen:Z
    move-object/from16 v0, p1

    instance-of v12, v0, Landroid/app/Activity;

    if-eqz v12, :cond_36

    move-object/from16 v3, p1

    .line 2063
    check-cast v3, Landroid/app/Activity;

    .line 2064
    .restart local v3       #activity:Landroid/app/Activity;
    :goto_15
    invoke-virtual {v3}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v12

    if-eqz v12, :cond_35

    .line 2065
    invoke-virtual {v3}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v3

    goto :goto_15

    .line 2051
    .end local v3           #activity:Landroid/app/Activity;
    .end local v7           #fromLockScreen:Z
    .end local v8           #intent:Landroid/content/Intent;
    :cond_33
    const/4 v12, 0x0

    aget v12, p7, v12

    goto :goto_13

    .line 2055
    .restart local v8       #intent:Landroid/content/Intent;
    :cond_34
    move-object/from16 v0, p1

    instance-of v12, v0, Landroid/app/Service;

    if-eqz v12, :cond_32

    .line 2056
    const/high16 v12, 0x1400

    invoke-virtual {v8, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_14

    .line 2067
    .restart local v3       #activity:Landroid/app/Activity;
    .restart local v7       #fromLockScreen:Z
    :cond_35
    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v12

    const-string v13, "from-lockscreen"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 2069
    const-string v12, "[MusicUtils]"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[playall] bp. flag="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2071
    .end local v3           #activity:Landroid/app/Activity;
    :cond_36
    const-string v12, "from-lockscreen"

    invoke-virtual {v8, v12, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2073
    move-object/from16 v0, p1

    instance-of v12, v0, Lcom/htc/music/HtcMusic;

    if-eqz v12, :cond_37

    .line 2074
    const-string v13, "ShowNowPlaying"

    move-object/from16 v12, p1

    check-cast v12, Lcom/htc/music/HtcMusic;

    invoke-virtual {v12}, Lcom/htc/music/HtcMusic;->isShowNowPlaying()Z

    move-result v12

    invoke-virtual {v8, v13, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2077
    :cond_37
    move-object/from16 v0, p1

    instance-of v12, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;

    if-eqz v12, :cond_1d

    move-object/from16 v12, p1

    check-cast v12, Lcom/htc/music/browserlayer/TrackBrowserActivity;

    iget-boolean v12, v12, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-eqz v12, :cond_1d

    goto/16 :goto_c
.end method

.method public static playAllAndPrepare(Landroid/content/Context;[IILcom/htc/music/NpCategory;)V
    .locals 17
    .parameter "context"
    .parameter "list"
    .parameter "position"
    .parameter "npc"

    .prologue
    .line 1855
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v1, :cond_1

    .line 1856
    const-string v1, "[MusicUtils]"

    const-string v2, "[playAllAndPrepare] Service is null."

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1893
    :cond_0
    :goto_0
    return-void

    .line 1860
    :cond_1
    move-object/from16 v0, p1

    array-length v1, v0

    if-nez v1, :cond_2

    .line 1861
    const-string v1, "[MusicUtils]"

    const-string v2, "attempt to play empty song list"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1863
    const v1, 0x7f07005f

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    array-length v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 1864
    .local v13, message:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v13, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1869
    .end local v13           #message:Ljava/lang/String;
    :cond_2
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 1870
    .local v16, where:Ljava/lang/StringBuilder;
    const-string v1, "_id IN ("

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1871
    move-object/from16 v0, p1

    array-length v15, v0

    .line 1872
    .local v15, size:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_1
    if-ge v12, v15, :cond_4

    .line 1873
    aget v1, p1, v12

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1874
    add-int/lit8 v1, v15, -0x1

    if-ge v12, v1, :cond_3

    .line 1875
    const-string v1, ","

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1872
    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 1878
    :cond_4
    const-string v1, ")"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1879
    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v3, v1

    const/4 v1, 0x1

    const-string v2, "album_id"

    aput-object v2, v3, v1

    .line 1882
    .local v3, ccols:[Ljava/lang/String;
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "track"

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v6}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1886
    .local v11, cursor:Landroid/database/Cursor;
    invoke-static {v11}, Lcom/htc/music/util/MusicUtils;->prepareAlbumList(Landroid/database/Cursor;)Z

    move-result v14

    .line 1887
    .local v14, result:Z
    if-eqz v11, :cond_5

    .line 1888
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1889
    const/4 v11, 0x0

    .line 1891
    :cond_5
    if-eqz v14, :cond_0

    .line 1892
    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v1, 0x0

    new-array v10, v1, [I

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    move-object/from16 v9, p3

    invoke-static/range {v4 .. v10}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;[IIZZLcom/htc/music/NpCategory;[I)Z

    goto/16 :goto_0
.end method

.method public static varargs playAllNotReShuffle(Landroid/content/Context;Landroid/database/Cursor;ILcom/htc/music/NpCategory;[I)V
    .locals 7
    .parameter "context"
    .parameter "cursor"
    .parameter "position"
    .parameter "npc"
    .parameter "varargs"

    .prologue
    .line 1834
    invoke-static {p1}, Lcom/htc/music/util/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v1

    .line 1835
    .local v1, list:[I
    invoke-static {p1}, Lcom/htc/music/util/MusicUtils;->prepareAlbumList(Landroid/database/Cursor;)Z

    .line 1836
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v0, 0x2

    new-array v6, v0, [I

    fill-array-data v6, :array_0

    move-object v0, p0

    move v2, p2

    move-object v5, p3

    invoke-static/range {v0 .. v6}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;[IIZZLcom/htc/music/NpCategory;[I)Z

    .line 1837
    return-void

    .line 1836
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public static playAllNotRun(Landroid/content/Context;Landroid/database/Cursor;ILcom/htc/music/NpCategory;)V
    .locals 6
    .parameter "context"
    .parameter "cursor"
    .parameter "position"
    .parameter "npc"

    .prologue
    const/4 v3, 0x0

    .line 1830
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, v3

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;IZZLcom/htc/music/NpCategory;)V

    .line 1831
    return-void
.end method

.method private static playAllNotRun(Landroid/content/Context;Landroid/database/Cursor;IZLcom/htc/music/NpCategory;)V
    .locals 7
    .parameter "context"
    .parameter "cursor"
    .parameter "position"
    .parameter "force_shuffle"
    .parameter "npc"

    .prologue
    const/4 v4, 0x0

    .line 1902
    invoke-static {p1}, Lcom/htc/music/util/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v1

    .line 1903
    .local v1, list:[I
    invoke-static {p1}, Lcom/htc/music/util/MusicUtils;->prepareAlbumList(Landroid/database/Cursor;)Z

    .line 1904
    new-array v6, v4, [I

    move-object v0, p0

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-static/range {v0 .. v6}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;[IIZZLcom/htc/music/NpCategory;[I)Z

    .line 1905
    return-void
.end method

.method public static playAllNotRun(Landroid/content/Context;Landroid/database/Cursor;Lcom/htc/music/NpCategory;)V
    .locals 1
    .parameter "context"
    .parameter "cursor"
    .parameter "npc"

    .prologue
    const/4 v0, 0x0

    .line 1790
    invoke-static {p0, p1, v0, v0, p2}, Lcom/htc/music/util/MusicUtils;->playAllNotRun(Landroid/content/Context;Landroid/database/Cursor;IZLcom/htc/music/NpCategory;)V

    .line 1791
    return-void
.end method

.method public static playAllNotRun(Landroid/content/Context;[IILcom/htc/music/NpCategory;)V
    .locals 7
    .parameter "context"
    .parameter "list"
    .parameter "position"
    .parameter "npc"

    .prologue
    const/4 v3, 0x0

    .line 1896
    new-array v6, v3, [I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, v3

    move-object v5, p3

    invoke-static/range {v0 .. v6}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;[IIZZLcom/htc/music/NpCategory;[I)Z

    .line 1897
    return-void
.end method

.method public static playAllNotRun(Lcom/htc/music/IMediaPlaybackService;Landroid/content/Context;Landroid/database/Cursor;Lcom/htc/music/NpCategory;)Z
    .locals 8
    .parameter "service"
    .parameter "context"
    .parameter "cursor"
    .parameter "npc"

    .prologue
    const/4 v3, 0x0

    .line 1934
    if-nez p0, :cond_0

    .line 1935
    const-string v0, "[MusicUtils]"

    const-string v1, "Can\'t play all with service = null."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1943
    :goto_0
    return v3

    .line 1938
    :cond_0
    if-nez p1, :cond_1

    .line 1939
    const-string v0, "[MusicUtils]"

    const-string v1, "Can\'t play all with context = null."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1943
    :cond_1
    invoke-static {p2}, Lcom/htc/music/util/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v2

    new-array v7, v3, [I

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    move v5, v3

    move-object v6, p3

    invoke-static/range {v0 .. v7}, Lcom/htc/music/util/MusicUtils;->playAll(Lcom/htc/music/IMediaPlaybackService;Landroid/content/Context;[IIZZLcom/htc/music/NpCategory;[I)Z

    move-result v3

    goto :goto_0
.end method

.method public static playAllPlaylist(Landroid/content/Context;ZLcom/htc/music/NpCategory;)V
    .locals 7
    .parameter "context"
    .parameter "force_shuffle"
    .parameter "npc"

    .prologue
    .line 1183
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->getSongListForAllPlaylistAndPrepare(Landroid/content/Context;)[I

    move-result-object v1

    .line 1184
    .local v1, list:[I
    if-eqz v1, :cond_0

    .line 1185
    const/4 v2, -0x1

    const/4 v4, 0x1

    const/4 v0, 0x0

    new-array v6, v0, [I

    move-object v0, p0

    move v3, p1

    move-object v5, p2

    invoke-static/range {v0 .. v6}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;[IIZZLcom/htc/music/NpCategory;[I)Z

    .line 1187
    :cond_0
    return-void
.end method

.method public static playPlaylist(Landroid/content/Context;JLcom/htc/music/NpCategory;)Z
    .locals 7
    .parameter "context"
    .parameter "plid"
    .parameter "npc"

    .prologue
    const/4 v3, 0x0

    .line 1173
    invoke-static {p0, p1, p2}, Lcom/htc/music/util/MusicUtils;->getSongListForPlaylistAndPrepare(Landroid/content/Context;J)[I

    move-result-object v1

    .line 1175
    .local v1, list:[I
    if-eqz v1, :cond_0

    .line 1176
    const/4 v2, -0x1

    const/4 v4, 0x1

    new-array v6, v3, [I

    move-object v0, p0

    move-object v5, p3

    invoke-static/range {v0 .. v6}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;[IIZZLcom/htc/music/NpCategory;[I)Z

    move-result v3

    .line 1178
    :cond_0
    return v3
.end method

.method public static playQueueNotRun(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 1794
    sget-object v3, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v3, :cond_1

    .line 1823
    :cond_0
    :goto_0
    return-void

    .line 1797
    :cond_1
    const-string v3, "[MusicUtils]"

    const-string v4, "playQueueNotRun"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1799
    const/4 v1, 0x0

    .line 1800
    .local v1, pos:I
    const/4 v0, 0x0

    .line 1801
    .local v0, list:[I
    :try_start_0
    sget-object v3, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->isSystemReady()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1802
    sget-object v3, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->reloadQueue()V

    .line 1803
    sget-object v3, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->getQueueSize()I

    move-result v2

    .line 1804
    .local v2, queueSize:I
    if-gtz v2, :cond_2

    .line 1805
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->getAllSongsAndPrepare(Landroid/content/Context;)[I

    move-result-object v0

    .line 1806
    const/4 v1, 0x0

    .line 1816
    .end local v2           #queueSize:I
    :goto_1
    if-eqz v0, :cond_0

    array-length v3, v0

    if-eqz v3, :cond_0

    .line 1819
    new-instance v3, Lcom/htc/music/NpCategory;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/htc/music/NpCategory;-><init>(S)V

    invoke-static {p0, v0, v1, v3}, Lcom/htc/music/util/MusicUtils;->playAllNotRun(Landroid/content/Context;[IILcom/htc/music/NpCategory;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1822
    :goto_2
    const-string v3, "[MusicUtils]"

    const-string v4, "playQueueNotRun finished"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1808
    .restart local v2       #queueSize:I
    :cond_2
    :try_start_1
    sget-object v3, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v1

    .line 1809
    sget-object v3, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->getQueue()[I

    move-result-object v0

    goto :goto_1

    .line 1813
    .end local v2           #queueSize:I
    :cond_3
    sget-object v3, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v1

    .line 1814
    sget-object v3, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->getQueue()[I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1

    .line 1820
    :catch_0
    move-exception v3

    goto :goto_2
.end method

.method public static prepareAlbumList([I)V
    .locals 2
    .parameter "albumlist"

    .prologue
    .line 601
    array-length v0, p0

    if-lez v0, :cond_0

    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 603
    :try_start_0
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v0, p0}, Lcom/htc/music/IMediaPlaybackService;->setAlbumQueue([I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 611
    :goto_0
    return-void

    .line 608
    :cond_0
    const-string v0, "[MusicUtils]"

    const-string v1, "Bad! sService is  null"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 604
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static prepareAlbumList(Landroid/database/Cursor;)Z
    .locals 5
    .parameter "cursor"

    .prologue
    const/4 v2, 0x0

    .line 584
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->getAlbumListForCursor(Landroid/database/Cursor;)[I

    move-result-object v0

    .line 585
    .local v0, albumlist:[I
    array-length v3, v0

    if-lez v3, :cond_0

    sget-object v3, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v3, :cond_0

    .line 587
    :try_start_0
    sget-object v3, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3, v0}, Lcom/htc/music/IMediaPlaybackService;->setAlbumQueue([I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 588
    const/4 v2, 0x1

    .line 595
    :goto_0
    return v2

    .line 589
    :catch_0
    move-exception v1

    .line 590
    .local v1, e:Landroid/os/RemoteException;
    goto :goto_0

    .line 594
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_0
    const-string v3, "[MusicUtils]"

    const-string v4, "Bad! sService is  null"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static prepareAlbumListByTrackId(Landroid/content/Context;[I)V
    .locals 17
    .parameter "context"
    .parameter "tracklist"

    .prologue
    .line 614
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 670
    :cond_0
    :goto_0
    return-void

    .line 615
    :cond_1
    move-object/from16 v0, p1

    array-length v1, v0

    if-lez v1, :cond_7

    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v1, :cond_7

    .line 617
    const/4 v1, 0x2

    :try_start_0
    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v3, v1

    const/4 v1, 0x1

    const-string v2, "album_id"

    aput-object v2, v3, v1

    .line 621
    .local v3, ccols:[Ljava/lang/String;
    new-instance v16, Ljava/lang/StringBuilder;

    const/16 v1, 0x400

    move-object/from16 v0, v16

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 622
    .local v16, where:Ljava/lang/StringBuilder;
    const-string v1, "_id"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    const-string v1, " in ("

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    const/4 v13, 0x0

    .local v13, i:I
    :goto_1
    move-object/from16 v0, p1

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge v13, v1, :cond_2

    .line 625
    aget v1, p1, v13

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 626
    const-string v1, ","

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 628
    :cond_2
    move-object/from16 v0, p1

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget v1, p1, v1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 629
    const-string v1, ") AND "

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    const-string v1, "is_music>=1"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v6}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 635
    .local v12, cursor:Landroid/database/Cursor;
    new-instance v10, Ljava/util/HashMap;

    const/16 v1, 0x30

    invoke-direct {v10, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 636
    .local v10, albumMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v12, :cond_4

    .line 637
    const-string v1, "_id"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 638
    .local v15, idColume:I
    const-string v1, "album_id"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 639
    .local v8, albumColume:I
    const/4 v1, -0x1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->move(I)Z

    .line 640
    const/4 v14, -0x1

    .line 641
    .local v14, id:I
    const/4 v9, -0x1

    .line 642
    .local v9, albumId:I
    :goto_2
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 643
    invoke-interface {v12, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 644
    invoke-interface {v12, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 645
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 663
    .end local v3           #ccols:[Ljava/lang/String;
    .end local v8           #albumColume:I
    .end local v9           #albumId:I
    .end local v10           #albumMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v12           #cursor:Landroid/database/Cursor;
    .end local v13           #i:I
    .end local v14           #id:I
    .end local v15           #idColume:I
    .end local v16           #where:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v1

    goto/16 :goto_0

    .line 647
    .restart local v3       #ccols:[Ljava/lang/String;
    .restart local v8       #albumColume:I
    .restart local v9       #albumId:I
    .restart local v10       #albumMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local v12       #cursor:Landroid/database/Cursor;
    .restart local v13       #i:I
    .restart local v14       #id:I
    .restart local v15       #idColume:I
    .restart local v16       #where:Ljava/lang/StringBuilder;
    :cond_3
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 651
    .end local v8           #albumColume:I
    .end local v9           #albumId:I
    .end local v14           #id:I
    .end local v15           #idColume:I
    :cond_4
    move-object/from16 v0, p1

    array-length v1, v0

    new-array v11, v1, [I

    .line 652
    .local v11, albumlist:[I
    const/4 v7, 0x0

    .line 653
    .local v7, album:Ljava/lang/Integer;
    const/4 v13, 0x0

    :goto_3
    move-object/from16 v0, p1

    array-length v1, v0

    if-ge v13, v1, :cond_6

    .line 654
    aget v1, p1, v13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #album:Ljava/lang/Integer;
    check-cast v7, Ljava/lang/Integer;

    .line 655
    .restart local v7       #album:Ljava/lang/Integer;
    if-eqz v7, :cond_5

    .line 656
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, v11, v13

    .line 653
    :goto_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 658
    :cond_5
    aput v13, v11, v13

    .line 659
    const-string v1, "[MusicUtils]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can\'t find track\'s album!! track:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v4, p1, v13

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 662
    :cond_6
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1, v11}, Lcom/htc/music/IMediaPlaybackService;->setAlbumQueue([I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 667
    .end local v3           #ccols:[Ljava/lang/String;
    .end local v7           #album:Ljava/lang/Integer;
    .end local v10           #albumMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v11           #albumlist:[I
    .end local v12           #cursor:Landroid/database/Cursor;
    .end local v13           #i:I
    .end local v16           #where:Ljava/lang/StringBuilder;
    :cond_7
    const-string v1, "[MusicUtils]"

    const-string v2, "Bad! sService is  null"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "context"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v7, 0x0

    .line 1517
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1518
    .local v0, resolver:Landroid/content/ContentResolver;
    if-nez v0, :cond_0

    move-object v1, v7

    .line 1530
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :goto_0
    return-object v1

    .restart local v0       #resolver:Landroid/content/ContentResolver;
    :cond_0
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 1521
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    goto :goto_0

    .line 1522
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :catch_0
    move-exception v6

    .line 1523
    .local v6, ex:Ljava/lang/UnsupportedOperationException;
    const-string v1, "[MusicUtils]"

    const-string v2, "error UnsupportedOperationException"

    invoke-static {v1, v2, v6}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v7

    .line 1524
    goto :goto_0

    .line 1525
    .end local v6           #ex:Ljava/lang/UnsupportedOperationException;
    :catch_1
    move-exception v6

    .line 1526
    .local v6, ex:Ljava/lang/IllegalStateException;
    const-string v1, "[MusicUtils]"

    const-string v2, "error IllegalStateException"

    invoke-static {v1, v2, v6}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v7

    .line 1527
    goto :goto_0

    .line 1528
    .end local v6           #ex:Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v6

    .line 1529
    .local v6, ex:Landroid/database/sqlite/SQLiteException;
    const-string v1, "[MusicUtils]"

    const-string v2, "error SQLiteException"

    invoke-static {v1, v2, v6}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v7

    .line 1530
    goto :goto_0
.end method

.method public static searchViaAlbumName(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "albumName"

    .prologue
    .line 4522
    const/4 v2, 0x0

    .line 4523
    .local v2, title:Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 4525
    .local v1, query:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4526
    .local v0, i:Landroid/content/Intent;
    const-string v3, "android.intent.action.MEDIA_SEARCH"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4528
    if-eqz p1, :cond_0

    const-string v3, "<unknown>"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4529
    :cond_0
    const v3, 0x7f07004e

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4530
    :cond_1
    move-object v2, p1

    .line 4532
    move-object v1, p1

    .line 4534
    const-string v3, "android.intent.extra.album"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4535
    const-string v3, "android.intent.extra.focus"

    const-string v4, "audio/*"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4536
    const v3, 0x7f07006c

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 4537
    const-string v3, "query"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4539
    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 4540
    return-void
.end method

.method public static searchViaArtistName(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "artistName"

    .prologue
    .line 4543
    const/4 v2, 0x0

    .line 4544
    .local v2, title:Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 4546
    .local v1, query:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4547
    .local v0, i:Landroid/content/Intent;
    const-string v3, "android.intent.action.MEDIA_SEARCH"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4550
    move-object v2, p1

    .line 4551
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 4552
    :cond_0
    const-string p1, "<unknown>"

    .line 4555
    :cond_1
    move-object v1, p1

    .line 4557
    const-string v3, "android.intent.extra.artist"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4558
    const-string v3, "android.intent.extra.focus"

    const-string v4, "audio/*"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4559
    const v3, 0x7f07006c

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 4560
    const-string v3, "query"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4562
    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 4563
    return-void
.end method

.method public static searchViaTrackName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "trackName"
    .parameter "artistName"

    .prologue
    .line 4496
    const/4 v2, 0x0

    .line 4497
    .local v2, title:Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 4499
    .local v1, query:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4500
    .local v0, i:Landroid/content/Intent;
    const-string v3, "android.intent.action.MEDIA_SEARCH"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4503
    move-object v2, p1

    .line 4504
    if-eqz p2, :cond_0

    const-string v3, "<unknown>"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4506
    :cond_0
    move-object v1, p1

    .line 4511
    :goto_0
    const-string v3, "android.intent.extra.title"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4512
    const-string v3, "android.intent.extra.artist"

    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4514
    const-string v3, "android.intent.extra.focus"

    const-string v4, "audio/*"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4515
    const v3, 0x7f07006c

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 4516
    const-string v3, "query"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4518
    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 4519
    return-void

    .line 4508
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static setContactRingtone(Landroid/content/Context;JLjava/util/ArrayList;)V
    .locals 1
    .parameter "context"
    .parameter "id"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2665
    .local p3, contactList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcom/htc/music/util/MusicUtils;->setContactRingtone(Landroid/content/Context;JLjava/util/ArrayList;Z)V

    .line 2666
    return-void
.end method

.method public static setContactRingtone(Landroid/content/Context;JLjava/util/ArrayList;Z)V
    .locals 17
    .parameter "context"
    .parameter "id"
    .parameter
    .parameter "showToast"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 2669
    .local p3, contactList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz p3, :cond_0

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 2735
    :cond_0
    :goto_0
    return-void

    .line 2672
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    .line 2673
    .local v13, resolver:Landroid/content/ContentResolver;
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p1

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v14

    .line 2674
    .local v14, ringUri:Landroid/net/Uri;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 2675
    .local v8, batchwhere:Ljava/lang/StringBuilder;
    const-string v2, "_id IN ("

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2677
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    :try_start_0
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v11, v2, :cond_3

    .line 2684
    const-string v2, "[MusicUtils]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Set as ringtone for:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2685
    if-lez v11, :cond_2

    .line 2686
    const-string v2, ","

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2687
    :cond_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2677
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 2689
    :cond_3
    const-string v2, ")"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2690
    const-string v2, "[MusicUtils]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "where= "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2691
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 2692
    .local v15, values:Landroid/content/ContentValues;
    const-string v2, "custom_ringtone"

    invoke-virtual {v14}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2693
    const-string v2, "content://com.android.contacts/contacts"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v13, v2, v15, v3, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2702
    :try_start_1
    new-instance v16, Landroid/content/ContentValues;

    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2703
    .end local v15           #values:Landroid/content/ContentValues;
    .local v16, values:Landroid/content/ContentValues;
    :try_start_2
    const-string v2, "is_ringtone"

    const-string v3, "1"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2704
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v13, v14, v0, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2711
    if-eqz p4, :cond_0

    .line 2712
    const/4 v2, 0x3

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "_data"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string v3, "title"

    aput-object v3, v4, v2

    .line 2717
    .local v4, cols:[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2718
    .local v5, where:Ljava/lang/String;
    const/4 v9, 0x0

    .line 2720
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_3
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 2722
    if-eqz v9, :cond_4

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 2723
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2724
    const v2, 0x7f0700b4

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x2

    invoke-interface {v9, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 2726
    .local v12, message:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v12, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2729
    .end local v12           #message:Ljava/lang/String;
    :cond_4
    if-eqz v9, :cond_0

    .line 2730
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2731
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 2694
    .end local v4           #cols:[Ljava/lang/String;
    .end local v5           #where:Ljava/lang/String;
    .end local v9           #cursor:Landroid/database/Cursor;
    .end local v16           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v10

    .line 2696
    .local v10, ex:Ljava/lang/UnsupportedOperationException;
    const-string v2, "[MusicUtils]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "couldn\'t set contact ringtone flag for id "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p1

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2705
    .end local v10           #ex:Ljava/lang/UnsupportedOperationException;
    .restart local v15       #values:Landroid/content/ContentValues;
    :catch_1
    move-exception v10

    .line 2706
    .restart local v10       #ex:Ljava/lang/UnsupportedOperationException;
    :goto_2
    const-string v2, "[MusicUtils]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "couldn\'t set ringtone flag for id "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p1

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2729
    .end local v10           #ex:Ljava/lang/UnsupportedOperationException;
    .end local v15           #values:Landroid/content/ContentValues;
    .restart local v4       #cols:[Ljava/lang/String;
    .restart local v5       #where:Ljava/lang/String;
    .restart local v9       #cursor:Landroid/database/Cursor;
    .restart local v16       #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v2

    if-eqz v9, :cond_5

    .line 2730
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2731
    const/4 v9, 0x0

    .line 2729
    :cond_5
    throw v2

    .line 2705
    .end local v4           #cols:[Ljava/lang/String;
    .end local v5           #where:Ljava/lang/String;
    .end local v9           #cursor:Landroid/database/Cursor;
    :catch_2
    move-exception v10

    move-object/from16 v15, v16

    .end local v16           #values:Landroid/content/ContentValues;
    .restart local v15       #values:Landroid/content/ContentValues;
    goto :goto_2
.end method

.method public static setDRMContactRingtone(Landroid/content/Context;Landroid/net/Uri;Ljava/util/ArrayList;)V
    .locals 1
    .parameter "context"
    .parameter "uri"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2763
    .local p2, contactList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/htc/music/util/MusicUtils;->setDRMContactRingtone(Landroid/content/Context;Landroid/net/Uri;Ljava/util/ArrayList;Z)V

    .line 2764
    return-void
.end method

.method public static setDRMContactRingtone(Landroid/content/Context;Landroid/net/Uri;Ljava/util/ArrayList;Z)V
    .locals 15
    .parameter "context"
    .parameter "uri"
    .parameter
    .parameter "showToast"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 2767
    .local p2, contactList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 2828
    :cond_0
    :goto_0
    return-void

    .line 2770
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    .line 2771
    .local v12, resolver:Landroid/content/ContentResolver;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 2772
    .local v7, batchwhere:Ljava/lang/StringBuilder;
    const-string v1, "_id IN ("

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2774
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v10, v1, :cond_3

    .line 2781
    const-string v1, "[MusicUtils]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set as ringtone for:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2782
    if-lez v10, :cond_2

    .line 2783
    const-string v1, ","

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2784
    :cond_2
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2774
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 2786
    :cond_3
    const-string v1, ")"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2787
    const-string v1, "[MusicUtils]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "where= "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2788
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 2789
    .local v13, values:Landroid/content/ContentValues;
    const-string v1, "custom_ringtone"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2790
    const-string v1, "content://com.android.contacts/contacts"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v12, v1, v13, v2, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2799
    :try_start_1
    new-instance v14, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v14, v1}, Landroid/content/ContentValues;-><init>(I)V
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2800
    .end local v13           #values:Landroid/content/ContentValues;
    .local v14, values:Landroid/content/ContentValues;
    :try_start_2
    const-string v1, "is_ringtone"

    const-string v2, "1"

    invoke-virtual {v14, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2801
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v14, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2808
    if-eqz p3, :cond_0

    .line 2809
    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v3, v1

    const/4 v1, 0x1

    const-string v2, "_data"

    aput-object v2, v3, v1

    const/4 v1, 0x2

    const-string v2, "title"

    aput-object v2, v3, v1

    .line 2812
    .local v3, cols:[Ljava/lang/String;
    const/4 v8, 0x0

    .line 2814
    .local v8, cursor:Landroid/database/Cursor;
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    :try_start_3
    invoke-static/range {v1 .. v6}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2815
    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 2816
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2817
    const v1, 0x7f0700b4

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-interface {v8, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 2819
    .local v11, message:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v11, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2822
    .end local v11           #message:Ljava/lang/String;
    :cond_4
    if-eqz v8, :cond_0

    .line 2823
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2824
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 2791
    .end local v3           #cols:[Ljava/lang/String;
    .end local v8           #cursor:Landroid/database/Cursor;
    .end local v14           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v9

    .line 2793
    .local v9, ex:Ljava/lang/UnsupportedOperationException;
    const-string v1, "[MusicUtils]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "couldn\'t set contact ringtone flag for uri, "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2802
    .end local v9           #ex:Ljava/lang/UnsupportedOperationException;
    .restart local v13       #values:Landroid/content/ContentValues;
    :catch_1
    move-exception v9

    .line 2803
    .restart local v9       #ex:Ljava/lang/UnsupportedOperationException;
    :goto_2
    const-string v1, "[MusicUtils]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "couldn\'t set ringtone flag for uri, "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2822
    .end local v9           #ex:Ljava/lang/UnsupportedOperationException;
    .end local v13           #values:Landroid/content/ContentValues;
    .restart local v3       #cols:[Ljava/lang/String;
    .restart local v8       #cursor:Landroid/database/Cursor;
    .restart local v14       #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_5

    .line 2823
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2824
    const/4 v8, 0x0

    .line 2822
    :cond_5
    throw v1

    .line 2802
    .end local v3           #cols:[Ljava/lang/String;
    .end local v8           #cursor:Landroid/database/Cursor;
    :catch_2
    move-exception v9

    move-object v13, v14

    .end local v14           #values:Landroid/content/ContentValues;
    .restart local v13       #values:Landroid/content/ContentValues;
    goto :goto_2
.end method

.method public static setDRMNotificationRingtone(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 2611
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lcom/htc/music/util/MusicUtils;->setDRMRingtone(Landroid/content/Context;Landroid/net/Uri;ZZ)V

    .line 2612
    return-void
.end method

.method public static setDRMRingtone(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 2607
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/htc/music/util/MusicUtils;->setDRMRingtone(Landroid/content/Context;Landroid/net/Uri;ZZ)V

    .line 2608
    return-void
.end method

.method public static setDRMRingtone(Landroid/content/Context;Landroid/net/Uri;ZZ)V
    .locals 11
    .parameter "context"
    .parameter "uri"
    .parameter "isRingtone"
    .parameter "isNotification"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 2615
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v1

    const-string v0, "_data"

    aput-object v0, v2, v3

    const-string v0, "title"

    aput-object v0, v2, v4

    .line 2618
    .local v2, cols:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 2624
    .local v9, resolver:Landroid/content/ContentResolver;
    :try_start_0
    new-instance v10, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v10, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 2625
    .local v10, values:Landroid/content/ContentValues;
    if-eqz p2, :cond_0

    .line 2626
    const-string v0, "is_ringtone"

    const-string v1, "1"

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2630
    :cond_0
    if-eqz p3, :cond_1

    .line 2631
    const-string v0, "is_notification"

    const-string v1, "1"

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2632
    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {v9, p1, v10, v0, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2638
    const/4 v6, 0x0

    .line 2640
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    :try_start_1
    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2641
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 2642
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2643
    if-eqz p2, :cond_4

    .line 2644
    const-string v0, "ringtone"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v0, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2645
    const v0, 0x7f070057

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 2646
    .local v8, message:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v8, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2657
    .end local v8           #message:Ljava/lang/String;
    :cond_2
    :goto_0
    if-eqz v6, :cond_3

    .line 2658
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2659
    const/4 v6, 0x0

    .line 2662
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v10           #values:Landroid/content/ContentValues;
    :cond_3
    :goto_1
    return-void

    .line 2633
    :catch_0
    move-exception v7

    .line 2636
    .local v7, ex:Ljava/lang/UnsupportedOperationException;
    goto :goto_1

    .line 2647
    .end local v7           #ex:Ljava/lang/UnsupportedOperationException;
    .restart local v6       #cursor:Landroid/database/Cursor;
    .restart local v10       #values:Landroid/content/ContentValues;
    :cond_4
    if-eqz p3, :cond_2

    .line 2648
    :try_start_2
    const-string v0, "notification_sound"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v0, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2650
    const v0, 0x7f0700b3

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 2652
    .restart local v8       #message:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v8, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2657
    .end local v8           #message:Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 2658
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2659
    const/4 v6, 0x0

    .line 2657
    :cond_5
    throw v0
.end method

.method public static setIntPref(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 4
    .parameter "context"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 2522
    const-string v2, "com.htc.music"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2524
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2525
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2526
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2527
    return-void
.end method

.method public static setNotificationRingtone(Landroid/content/Context;J)V
    .locals 2
    .parameter "context"
    .parameter "id"

    .prologue
    .line 2548
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, p2, v0, v1}, Lcom/htc/music/util/MusicUtils;->setRingtone(Landroid/content/Context;JZZ)V

    .line 2549
    return-void
.end method

.method public static setPlaylist(Landroid/database/Cursor;)Z
    .locals 8
    .parameter "cursor"

    .prologue
    const/4 v5, 0x0

    .line 3594
    sget-object v6, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v6, :cond_0

    .line 3595
    const-string v6, "[MusicUtils]"

    const-string v7, "[setPlaylist] Service is null."

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3625
    :goto_0
    return v5

    .line 3599
    :cond_0
    if-nez p0, :cond_1

    .line 3600
    const-string v6, "[MusicUtils]"

    const-string v7, "setPlaylist: attempt to set empty song list"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3605
    :cond_1
    :try_start_0
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v4

    .line 3606
    .local v4, slist:[I
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->getAlbumListForCursor(Landroid/database/Cursor;)[I

    move-result-object v0

    .line 3607
    .local v0, alist:[I
    sget-object v6, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v6}, Lcom/htc/music/IMediaPlaybackService;->getQueue()[I

    move-result-object v3

    .line 3610
    .local v3, playlist:[I
    const/4 v2, 0x1

    .line 3611
    .local v2, newlist:Z
    array-length v6, v4

    array-length v7, v3

    if-ne v6, v7, :cond_2

    .line 3612
    const/4 v2, 0x0

    .line 3614
    :cond_2
    if-nez v2, :cond_3

    .line 3616
    const-string v6, "[MusicUtils]"

    const-string v7, "We don\'t need to set the same list."

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3623
    .end local v0           #alist:[I
    .end local v2           #newlist:Z
    .end local v3           #playlist:[I
    .end local v4           #slist:[I
    :catch_0
    move-exception v1

    .line 3624
    .local v1, ex:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 3620
    .end local v1           #ex:Landroid/os/RemoteException;
    .restart local v0       #alist:[I
    .restart local v2       #newlist:Z
    .restart local v3       #playlist:[I
    .restart local v4       #slist:[I
    :cond_3
    :try_start_1
    invoke-static {v0}, Lcom/htc/music/util/MusicUtils;->prepareAlbumList([I)V

    .line 3621
    sget-object v6, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v6, v4}, Lcom/htc/music/IMediaPlaybackService;->setPlaylist([I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3622
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public static setRingtone(Landroid/content/Context;J)V
    .locals 2
    .parameter "context"
    .parameter "id"

    .prologue
    .line 2544
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/htc/music/util/MusicUtils;->setRingtone(Landroid/content/Context;JZZ)V

    .line 2545
    return-void
.end method

.method public static setRingtone(Landroid/content/Context;JZZ)V
    .locals 12
    .parameter "context"
    .parameter "id"
    .parameter "isRingtone"
    .parameter "isNotification"

    .prologue
    .line 2552
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 2554
    .local v9, resolver:Landroid/content/ContentResolver;
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    .line 2558
    .local v10, ringUri:Landroid/net/Uri;
    :try_start_0
    new-instance v11, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v11, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 2559
    .local v11, values:Landroid/content/ContentValues;
    if-eqz p3, :cond_0

    .line 2560
    const-string v0, "is_ringtone"

    const-string v1, "1"

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2564
    :cond_0
    if-eqz p4, :cond_1

    .line 2565
    const-string v0, "is_notification"

    const-string v1, "1"

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2566
    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {v9, v10, v11, v0, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2573
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "_data"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "title"

    aput-object v1, v2, v0

    .line 2578
    .local v2, cols:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2579
    .local v3, where:Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2582
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 2584
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2585
    if-eqz p3, :cond_4

    .line 2586
    const-string v0, "ringtone"

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v0, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2588
    const v0, 0x7f070057

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 2589
    .local v8, message:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v8, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2599
    .end local v8           #message:Ljava/lang/String;
    :cond_2
    :goto_0
    if-eqz v6, :cond_3

    .line 2600
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2601
    const/4 v6, 0x0

    .line 2604
    .end local v2           #cols:[Ljava/lang/String;
    .end local v3           #where:Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v11           #values:Landroid/content/ContentValues;
    :cond_3
    :goto_1
    return-void

    .line 2567
    :catch_0
    move-exception v7

    .line 2569
    .local v7, ex:Ljava/lang/UnsupportedOperationException;
    const-string v0, "[MusicUtils]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "couldn\'t set ringtone flag for id "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2590
    .end local v7           #ex:Ljava/lang/UnsupportedOperationException;
    .restart local v2       #cols:[Ljava/lang/String;
    .restart local v3       #where:Ljava/lang/String;
    .restart local v6       #cursor:Landroid/database/Cursor;
    .restart local v11       #values:Landroid/content/ContentValues;
    :cond_4
    if-eqz p4, :cond_2

    .line 2591
    :try_start_2
    const-string v0, "notification_sound"

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v0, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2593
    const v0, 0x7f0700b3

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 2595
    .restart local v8       #message:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v8, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2599
    .end local v8           #message:Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 2600
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2601
    const/4 v6, 0x0

    .line 2599
    :cond_5
    throw v0
.end method

.method public static setStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 2536
    const-string v2, "com.htc.music"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2538
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2539
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2540
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2541
    return-void
.end method

.method public static setTabActivityResult(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "result"

    .prologue
    .line 3110
    const-string v0, "result"

    invoke-static {p0, v0, p1}, Lcom/htc/music/util/MusicUtils;->setIntPref(Landroid/content/Context;Ljava/lang/String;I)V

    .line 3111
    return-void
.end method

.method public static setTabActivitySelectedId(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 8
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3122
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 3123
    .local v4, q:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3124
    .local v2, len:I
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saveQueue mPlayListLen : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 3125
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 3126
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 3127
    .local v3, n:I
    if-nez v3, :cond_0

    .line 3128
    const-string v5, "0;"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3125
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3130
    :cond_0
    :goto_2
    if-eqz v3, :cond_1

    .line 3131
    and-int/lit8 v0, v3, 0xf

    .line 3132
    .local v0, digit:I
    shr-int/lit8 v3, v3, 0x4

    .line 3133
    sget-object v5, Lcom/htc/music/util/MusicUtils;->hexdigits:[C

    aget-char v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 3135
    .end local v0           #digit:I
    :cond_1
    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 3138
    .end local v3           #n:I
    :cond_2
    const-string v5, "selectedid"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v5, v6}, Lcom/htc/music/util/MusicUtils;->setStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 3139
    return-void
.end method

.method public static showContactRingtoneToast(Landroid/content/Context;J)V
    .locals 9
    .parameter "context"
    .parameter "id"

    .prologue
    const/4 v4, 0x2

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 2738
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v1

    const-string v0, "_data"

    aput-object v0, v2, v8

    const-string v0, "title"

    aput-object v0, v2, v4

    .line 2743
    .local v2, cols:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2744
    .local v3, where:Ljava/lang/String;
    const/4 v6, 0x0

    .line 2746
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2748
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v8, :cond_0

    .line 2749
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2750
    const v0, 0x7f0700b4

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 2752
    .local v7, message:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v7, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2755
    .end local v7           #message:Ljava/lang/String;
    :cond_0
    if-eqz v6, :cond_1

    .line 2756
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2757
    const/4 v6, 0x0

    .line 2760
    :cond_1
    return-void

    .line 2755
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 2756
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2757
    const/4 v6, 0x0

    .line 2755
    :cond_2
    throw v0
.end method

.method public static showDRMContactRingtoneToast(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 9
    .parameter "context"
    .parameter "uri"

    .prologue
    const/4 v3, 0x2

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 2831
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v1

    const-string v0, "_data"

    aput-object v0, v2, v8

    const-string v0, "title"

    aput-object v0, v2, v3

    .line 2834
    .local v2, cols:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 2836
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    :try_start_0
    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2837
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v8, :cond_0

    .line 2838
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2839
    const v0, 0x7f0700b4

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 2841
    .local v7, message:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v7, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2844
    .end local v7           #message:Ljava/lang/String;
    :cond_0
    if-eqz v6, :cond_1

    .line 2845
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2846
    const/4 v6, 0x0

    .line 2849
    :cond_1
    return-void

    .line 2844
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 2845
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2846
    const/4 v6, 0x0

    .line 2844
    :cond_2
    throw v0
.end method

.method public static shuffleAll(Landroid/content/Context;Landroid/database/Cursor;Lcom/htc/music/NpCategory;)V
    .locals 6
    .parameter "context"
    .parameter "cursor"
    .parameter "npc"

    .prologue
    const/4 v2, 0x0

    .line 1778
    const/4 v3, 0x1

    new-array v5, v2, [I

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;IZLcom/htc/music/NpCategory;[I)V

    .line 1779
    return-void
.end method

.method public static shuffleAll(Landroid/content/Context;[IILcom/htc/music/NpCategory;)V
    .locals 7
    .parameter "context"
    .parameter "playlist"
    .parameter "startPosition"
    .parameter "npc"

    .prologue
    const/4 v3, 0x1

    .line 1782
    const/4 v0, 0x0

    new-array v6, v0, [I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, v3

    move-object v5, p3

    invoke-static/range {v0 .. v6}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;[IIZZLcom/htc/music/NpCategory;[I)Z

    .line 1783
    return-void
.end method

.method public static switchToDMC(Landroid/content/Context;Z)Z
    .locals 12
    .parameter "c"
    .parameter "bReload"

    .prologue
    .line 3720
    const-string v7, "[MusicUtils]"

    const-string v8, "switchToDMC"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3722
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->getCurDMR(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 3724
    .local v6, szDMR:Ljava/lang/String;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-gtz v7, :cond_1

    .line 3726
    :cond_0
    const-string v7, "[MusicUtils]"

    const-string v8, "No DMR connected now."

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3727
    const/4 v7, 0x0

    .line 3794
    :goto_0
    return v7

    .line 3732
    :cond_1
    const-string v7, "DLNA"

    const/4 v8, 0x7

    invoke-virtual {p0, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 3734
    .local v1, Preferences:Landroid/content/SharedPreferences;
    const-string v7, "server"

    const/4 v8, 0x0

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3736
    .local v0, DMS:Ljava/lang/String;
    new-instance v4, Landroid/content/Intent;

    const-class v7, Lcom/htc/music/DMCMusicPlaybackService;

    invoke-direct {v4, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3739
    .local v4, intent:Landroid/content/Intent;
    const-string v7, "[MusicUtils]"

    const-string v8, "type = null, DLNA mode switch to DLNA_DMC"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3740
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "switchDMC"

    const/4 v9, 0x1

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3742
    new-instance v4, Landroid/content/Intent;

    .end local v4           #intent:Landroid/content/Intent;
    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 3743
    .restart local v4       #intent:Landroid/content/Intent;
    const-string v7, "Server"

    invoke-virtual {v4, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3744
    const-string v7, "Render"

    invoke-virtual {v4, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3745
    const-string v7, "cookie"

    const/4 v8, 0x1

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3747
    if-eqz p1, :cond_2

    .line 3748
    const-string v7, "[MusicUtils]"

    const-string v8, "DLNA_DMC mode reload data from preference"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3749
    const-string v7, "[MusicUtils]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "intent Server = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3750
    const-string v7, "[MusicUtils]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "intent Render = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3751
    const-string v7, "[MusicUtils]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "intent container = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "container"

    const/4 v10, 0x0

    invoke-interface {v1, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3752
    const-string v7, "[MusicUtils]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "intent content = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "content"

    const/4 v10, 0x0

    invoke-interface {v1, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3753
    const-string v7, "[MusicUtils]"

    const-string v8, "intent cookie = 1"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3754
    const-string v7, "[MusicUtils]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "intent filePath = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "filepath"

    const/4 v10, 0x0

    invoke-interface {v1, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3755
    const-string v7, "[MusicUtils]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "intent shuffle = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "shuffle"

    const/4 v10, 0x0

    invoke-interface {v1, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3756
    const-string v7, "[MusicUtils]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "intent startIdx = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "startIdx"

    const-wide/16 v10, -0x1

    invoke-interface {v1, v9, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3757
    const-string v7, "[MusicUtils]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "intent endIdx = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "endIdx"

    const-wide/16 v10, -0x1

    invoke-interface {v1, v9, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3758
    const-string v7, "[MusicUtils]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "intent direction ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "direction"

    const/4 v10, 0x0

    invoke-interface {v1, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3760
    const-string v7, "container"

    const-string v8, "container"

    const/4 v9, 0x0

    invoke-interface {v1, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3761
    const-string v7, "content"

    const-string v8, "content"

    const/4 v9, 0x0

    invoke-interface {v1, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3762
    const-string v7, "filepath"

    const-string v8, "filepath"

    const/4 v9, 0x0

    invoke-interface {v1, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3763
    const-string v7, "shuffle"

    const-string v8, "shuffle"

    const/4 v9, 0x0

    invoke-interface {v1, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3764
    const-string v7, "startIdx"

    const-string v8, "startIdx"

    const-wide/16 v9, -0x1

    invoke-interface {v1, v8, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-virtual {v4, v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3765
    const-string v7, "endIdx"

    const-string v8, "endIdx"

    const-wide/16 v9, -0x1

    invoke-interface {v1, v8, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-virtual {v4, v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3766
    const-string v7, "direction"

    const-string v8, "direction"

    const/4 v9, 0x0

    invoke-interface {v1, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3767
    const-string v7, "com.htc.music.dmc_setsrc"

    const/4 v8, 0x1

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3768
    const-string v7, "command"

    const-string v8, "com.htc.music.refreshplaylist"

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3771
    :cond_2
    const-string v7, "[MusicUtils]"

    const-string v8, "starting DMC Music playback service..."

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3773
    const-string v7, "com.htc.music.DMCMusicPlaybackService"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3774
    const-string v7, "forcePlay"

    const/4 v8, 0x1

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3777
    :try_start_0
    sget-object v7, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/htc/music/IMediaPlaybackService;->bindPluginService(Ljava/lang/String;)V

    .line 3779
    const-string v7, "DLNA"

    const/4 v8, 0x5

    invoke-virtual {p0, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 3781
    .local v5, pref:Landroid/content/SharedPreferences;
    const-string v7, "switchDMC"

    const/4 v8, 0x0

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 3783
    .local v2, Switch:Z
    if-eqz v2, :cond_3

    .line 3787
    invoke-virtual {p0, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 3788
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "switchDMC"

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3794
    .end local v2           #Switch:Z
    .end local v5           #pref:Landroid/content/SharedPreferences;
    :cond_3
    :goto_1
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 3791
    :catch_0
    move-exception v3

    .line 3792
    .local v3, e:Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public static switchToPUSH(Landroid/content/Context;Z)Z
    .locals 13
    .parameter "c"
    .parameter "bReload"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 3798
    const-string v10, "[MusicUtils]"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "switchToPUSH bReload:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3800
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->getCurDMR(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 3801
    .local v7, szDMR:Ljava/lang/String;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-gtz v10, :cond_2

    .line 3803
    :cond_0
    const-string v8, "[MusicUtils]"

    const-string v10, "No DMR connected now."

    invoke-static {v8, v10}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v9

    .line 3862
    :cond_1
    :goto_0
    return v8

    .line 3808
    :cond_2
    const-string v9, "DLNA"

    const/4 v10, 0x3

    invoke-virtual {p0, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3811
    .local v0, Preferences:Landroid/content/SharedPreferences;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 3813
    .local v3, intent:Landroid/content/Intent;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v10, "switchDMC"

    invoke-interface {v9, v10, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3815
    :try_start_0
    const-string v9, "[MusicUtils]"

    const-string v10, "push switch = true"

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3817
    const-string v9, "com.htc.music.dmc_setsrc"

    const/4 v10, 0x0

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3819
    const/4 v4, 0x0

    .line 3820
    .local v4, list:[I
    const/4 v5, -0x1

    .line 3821
    .local v5, position:I
    if-eqz p1, :cond_4

    sget-object v9, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v9, :cond_4

    .line 3823
    sget-object v9, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v9}, Lcom/htc/music/IMediaPlaybackService;->getQueue()[I

    move-result-object v4

    .line 3824
    sget-object v9, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v9}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v5

    .line 3826
    if-eqz v4, :cond_3

    const-string v9, "com.htc.music.dmc_playlist"

    invoke-virtual {v3, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 3827
    :cond_3
    if-ltz v5, :cond_4

    const-string v9, "com.htc.music.dmc_currentindex"

    invoke-virtual {v3, v9, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3830
    :cond_4
    const-string v9, "[MusicUtils]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "intent position = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3831
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v10, "switch"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3836
    .end local v4           #list:[I
    .end local v5           #position:I
    :goto_1
    const-string v9, "Render"

    invoke-virtual {v3, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3837
    const-string v9, "cookie"

    invoke-virtual {v3, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3839
    const-string v9, "[MusicUtils]"

    const-string v10, "starting DMC Music playback service..."

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3840
    const-string v9, "com.htc.music.DMCMusicPlaybackService"

    invoke-virtual {v3, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3841
    const-string v9, "command"

    const-string v10, "com.htc.music.refreshplaylist"

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3842
    const-string v9, "forcePlay"

    invoke-virtual {v3, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3845
    :try_start_1
    sget-object v9, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/htc/music/IMediaPlaybackService;->bindPluginService(Ljava/lang/String;)V

    .line 3847
    const-string v9, "DLNA"

    const/4 v10, 0x5

    invoke-virtual {p0, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 3849
    .local v6, pref:Landroid/content/SharedPreferences;
    const-string v9, "switchDMC"

    const/4 v10, 0x1

    invoke-interface {v6, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 3851
    .local v1, Switch:Z
    if-eqz v1, :cond_1

    .line 3855
    invoke-virtual {p0, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 3856
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v10, "switchDMC"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 3859
    .end local v1           #Switch:Z
    .end local v6           #pref:Landroid/content/SharedPreferences;
    :catch_0
    move-exception v2

    .line 3860
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 3832
    .end local v2           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 3833
    .restart local v2       #e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public static switchToPUSH(Landroid/content/Context;[II)Z
    .locals 12
    .parameter "c"
    .parameter "playlist"
    .parameter "nCurrentIndex"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 3867
    const-string v9, "[MusicUtils]"

    const-string v10, "switchToPUSH"

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3869
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->getCurDMR(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 3870
    .local v6, szDMR:Ljava/lang/String;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-gtz v9, :cond_1

    .line 3872
    :cond_0
    const-string v7, "[MusicUtils]"

    const-string v9, "No DMR connected now."

    invoke-static {v7, v9}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v7, v8

    .line 3925
    :goto_0
    return v7

    .line 3877
    :cond_1
    const-string v9, "DLNA"

    const/4 v10, 0x7

    invoke-virtual {p0, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3880
    .local v0, Preferences:Landroid/content/SharedPreferences;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 3885
    .local v2, intent:Landroid/content/Intent;
    const-string v9, "com.htc.music.dmc_setsrc"

    invoke-virtual {v2, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3887
    const/4 v3, 0x0

    .line 3888
    .local v3, list:[I
    const/4 v4, -0x1

    .line 3890
    .local v4, position:I
    if-eqz p1, :cond_2

    move-object v3, p1

    .line 3891
    :cond_2
    if-eqz v3, :cond_3

    const-string v9, "com.htc.music.dmc_playlist"

    invoke-virtual {v2, v9, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 3893
    :cond_3
    if-ltz p2, :cond_4

    move v4, p2

    .line 3894
    :cond_4
    if-ltz v4, :cond_5

    const-string v9, "com.htc.music.dmc_currentindex"

    invoke-virtual {v2, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3896
    :cond_5
    const-string v9, "[MusicUtils]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "intent position = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3897
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v10, "switch"

    invoke-interface {v9, v10, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3899
    const-string v8, "Render"

    invoke-virtual {v2, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3900
    const-string v8, "cookie"

    invoke-virtual {v2, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3902
    const-string v8, "[MusicUtils]"

    const-string v9, "starting DMC PUSH Music playback service..."

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3903
    const-string v8, "com.htc.music.DMCMusicPlaybackService"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3904
    const-string v8, "command"

    const-string v9, "com.htc.music.refreshplaylist"

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3905
    const-string v8, "forcePlay"

    invoke-virtual {v2, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3908
    :try_start_0
    sget-object v8, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/htc/music/IMediaPlaybackService;->bindPluginService(Ljava/lang/String;)V

    .line 3910
    const-string v8, "DLNA"

    const/4 v9, 0x5

    invoke-virtual {p0, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 3918
    .local v5, pref:Landroid/content/SharedPreferences;
    invoke-virtual {p0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 3919
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "switchDMC"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 3922
    .end local v5           #pref:Landroid/content/SharedPreferences;
    :catch_0
    move-exception v1

    .line 3923
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public static toIntList(Ljava/util/ArrayList;)[I
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 3175
    .local p0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez p0, :cond_1

    .line 3176
    const/4 v1, 0x0

    .line 3181
    :cond_0
    return-object v1

    .line 3177
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [I

    .line 3178
    .local v1, result:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 3179
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v1, v0

    .line 3178
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static unbindFromService(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "id"

    .prologue
    .line 347
    new-instance v2, Lcom/htc/music/util/MusicUtils$ServiceOwner;

    invoke-direct {v2, p1, p0}, Lcom/htc/music/util/MusicUtils$ServiceOwner;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 348
    .local v2, serviceOwner:Lcom/htc/music/util/MusicUtils$ServiceOwner;
    sget-object v3, Lcom/htc/music/util/MusicUtils;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/util/MusicUtils$ServiceBinder;

    .line 349
    .local v1, sb:Lcom/htc/music/util/MusicUtils$ServiceBinder;
    if-nez v1, :cond_0

    .line 350
    const-string v3, "[MusicUtils]"

    const-string v4, "Trying to unbind for unknown Context"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    :goto_0
    return-void

    .line 355
    :cond_0
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 356
    :catch_0
    move-exception v0

    .line 357
    .local v0, ex:Ljava/lang/Exception;
    const-string v3, "[MusicUtils]"

    const-string v4, "can\'t unbind service"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    const-string v3, "[MusicUtils]"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static wasDRMFilePlaying(Ljava/lang/String;)Z
    .locals 1
    .parameter "path"

    .prologue
    .line 4448
    if-eqz p0, :cond_0

    const-string v0, "content://drm/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4449
    const/4 v0, 0x1

    .line 4451
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
