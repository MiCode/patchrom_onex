.class public Lcom/htc/music/carmode/util/CarMusicUtils;
.super Ljava/lang/Object;
.source "CarMusicUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/carmode/util/CarMusicUtils$Media2;,
        Lcom/htc/music/carmode/util/CarMusicUtils$Albums2;,
        Lcom/htc/music/carmode/util/CarMusicUtils$Artists2;,
        Lcom/htc/music/carmode/util/CarMusicUtils$FastBitmapDrawable;,
        Lcom/htc/music/carmode/util/CarMusicUtils$ServiceBinder;,
        Lcom/htc/music/carmode/util/CarMusicUtils$ServiceOwner;,
        Lcom/htc/music/carmode/util/CarMusicUtils$DrmWarningMode;,
        Lcom/htc/music/carmode/util/CarMusicUtils$DrmStatus;,
        Lcom/htc/music/carmode/util/CarMusicUtils$Defs;
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

.field private static final TAG:Ljava/lang/String; = "[CarMusicUtils]"

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
            "Lcom/htc/music/carmode/util/CarMusicUtils$ServiceOwner;",
            "Lcom/htc/music/carmode/util/CarMusicUtils$ServiceBinder;",
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

    .line 184
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "album_key"

    aput-object v1, v0, v3

    const-string v1, "album_art"

    aput-object v1, v0, v2

    sput-object v0, Lcom/htc/music/carmode/util/CarMusicUtils;->sMdColumns:[Ljava/lang/String;

    .line 190
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "dl_album_id"

    aput-object v1, v0, v4

    const-string v1, "dl_album_key"

    aput-object v1, v0, v3

    const-string v1, "dl_data"

    aput-object v1, v0, v2

    sput-object v0, Lcom/htc/music/carmode/util/CarMusicUtils;->sDlColumns:[Ljava/lang/String;

    .line 252
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/music/carmode/util/CarMusicUtils;->hexdigits:[C

    .line 285
    new-instance v0, Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Lcom/htc/music/util/MemoryCacheMBitmapByTime;-><init>(I)V

    sput-object v0, Lcom/htc/music/carmode/util/CarMusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    .line 321
    sput-object v5, Lcom/htc/music/carmode/util/CarMusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    .line 324
    sput-object v5, Lcom/htc/music/carmode/util/CarMusicUtils;->mPluginManager:Lcom/htc/music/MusicPluginManager;

    .line 353
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/music/carmode/util/CarMusicUtils;->sConnectionMap:Ljava/util/HashMap;

    .line 466
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/music/carmode/util/CarMusicUtils;->PATH:Ljava/lang/String;

    .line 467
    sput-boolean v3, Lcom/htc/music/carmode/util/CarMusicUtils;->IsInternalEnough:Z

    .line 570
    new-array v0, v4, [I

    sput-object v0, Lcom/htc/music/carmode/util/CarMusicUtils;->sEmptyList:[I

    .line 1685
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/htc/music/carmode/util/CarMusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    .line 1687
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/htc/music/carmode/util/CarMusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/htc/music/carmode/util/CarMusicUtils;->sFormatter:Ljava/util/Formatter;

    .line 1689
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/htc/music/carmode/util/CarMusicUtils;->sTimeArgs:[Ljava/lang/Object;

    .line 2025
    const/4 v0, -0x2

    sput v0, Lcom/htc/music/carmode/util/CarMusicUtils;->sArtId:I

    .line 2029
    sput-object v5, Lcom/htc/music/carmode/util/CarMusicUtils;->mCachedBit:Landroid/graphics/Bitmap;

    .line 2031
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Lcom/htc/music/carmode/util/CarMusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    .line 2033
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Lcom/htc/music/carmode/util/CarMusicUtils;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 2035
    const-string v0, "content://media/external/audio/albumart"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/music/carmode/util/CarMusicUtils;->sArtworkUri:Landroid/net/Uri;

    .line 2037
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/music/carmode/util/CarMusicUtils;->sArtCache:Ljava/util/HashMap;

    .line 2041
    const/4 v0, -0x1

    sput v0, Lcom/htc/music/carmode/util/CarMusicUtils;->sArtCacheId:I

    .line 2048
    sget-object v0, Lcom/htc/music/carmode/util/CarMusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 2049
    sget-object v0, Lcom/htc/music/carmode/util/CarMusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 2051
    sget-object v0, Lcom/htc/music/carmode/util/CarMusicUtils;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 2052
    sget-object v0, Lcom/htc/music/carmode/util/CarMusicUtils;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 4429
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/htc/music/carmode/util/CarMusicUtils;->mCoverPaint:Landroid/graphics/Paint;

    .line 4430
    sget-object v0, Lcom/htc/music/carmode/util/CarMusicUtils;->mCoverPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 4431
    sget-object v0, Lcom/htc/music/carmode/util/CarMusicUtils;->mCoverPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 4432
    sget-object v0, Lcom/htc/music/carmode/util/CarMusicUtils;->mCoverPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 4433
    return-void

    .line 252
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
    .line 156
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4716
    return-void
.end method

.method public static CheckDLNAStatus(Landroid/content/Context;)I
    .locals 7
    .parameter "context"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 3727
    const-string v5, "[CarMusicUtils]"

    const-string v6, "CheckDLNAStatus"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3729
    const-string v5, "DLNA"

    invoke-virtual {p0, v5, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 3731
    .local v2, Preferences:Landroid/content/SharedPreferences;
    const-string v5, "server"

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3735
    .local v1, DMS:Ljava/lang/String;
    invoke-static {p0}, Lcom/htc/music/carmode/util/CarMusicUtils;->getCurDMR(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 3737
    .local v0, DMR:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 3738
    if-eqz v0, :cond_0

    .line 3739
    const-string v4, "[CarMusicUtils]"

    const-string v5, "initial, DLNA mode = DLNA_DMC"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3742
    const-string v4, "[CarMusicUtils]"

    const-string v5, "type = null, DLNA mode switch to DLNA_DMC"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3743
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "switchDMC"

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3744
    const/4 v3, 0x2

    .line 3758
    :goto_0
    return v3

    .line 3747
    :cond_0
    const-string v4, "[CarMusicUtils]"

    const-string v5, "DLNA mode = DLNA_DMP"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3752
    :cond_1
    if-eqz v0, :cond_2

    .line 3753
    const-string v3, "[CarMusicUtils]"

    const-string v5, "initial, DLNA mode = DLNA_PUSH"

    invoke-static {v3, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v4

    .line 3754
    goto :goto_0

    .line 3757
    :cond_2
    const-string v3, "[CarMusicUtils]"

    const-string v4, "DLNA mode = DLNA_LOCAL"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3758
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static IsInternalStorage()Z
    .locals 1

    .prologue
    .line 4586
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->hasInternalFat()Z

    move-result v0

    return v0
.end method

.method public static IsOnlyInternalStorage()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 4590
    invoke-static {}, Lcom/htc/music/carmode/util/CarMusicUtils;->IsInternalStorage()Z

    move-result v2

    if-nez v2, :cond_1

    .line 4599
    .local v0, both:Z
    :cond_0
    :goto_0
    return v1

    .line 4594
    .end local v0           #both:Z
    :cond_1
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->hasRemovableStorageSlot()Z

    move-result v0

    .line 4596
    .restart local v0       #both:Z
    if-nez v0, :cond_0

    .line 4599
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static IsReloadAllMusicForQueue(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    .line 4464
    const-string v3, "Music"

    const/4 v4, 0x3

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 4465
    .local v1, pref:Landroid/content/SharedPreferences;
    const/4 v0, 0x1

    .line 4466
    .local v0, IsLaunchBefore:Z
    const-string v3, "LaunchedBefore"

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    .line 4468
    if-nez v0, :cond_0

    .line 4469
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "LaunchedBefore"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 4473
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
    const/4 v3, 0x3

    .line 3901
    invoke-static {p0}, Lcom/htc/music/carmode/util/CarMusicUtils;->CheckDLNAStatus(Landroid/content/Context;)I

    move-result v0

    .line 3903
    .local v0, DlnaMode:I
    if-ne v0, v3, :cond_0

    .line 3904
    const-string v2, "DLNA"

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 3905
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "shuffle"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3907
    .end local v1           #pref:Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method public static addToCurrentPlaylist(Landroid/content/Context;[I)V
    .locals 7
    .parameter "context"
    .parameter "list"

    .prologue
    .line 1400
    sget-object v1, Lcom/htc/music/carmode/util/CarMusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v1, :cond_0

    .line 1410
    :goto_0
    return-void

    .line 1404
    :cond_0
    :try_start_0
    sget-object v1, Lcom/htc/music/carmode/util/CarMusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v2, 0x3

    invoke-interface {v1, p1, v2}, Lcom/htc/music/IMediaPlaybackService;->enqueue([II)V

    .line 1405
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

    .line 1407
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

    .line 1408
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
    .line 1413
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcom/htc/music/carmode/util/CarMusicUtils;->addToPlaylist(Landroid/content/Context;[IJZ)V

    .line 1414
    return-void
.end method

.method public static addToPlaylist(Landroid/content/Context;[IJZ)V
    .locals 16
    .parameter "context"
    .parameter "ids"
    .parameter "playlistid"
    .parameter "showToast"

    .prologue
    .line 1417
    if-nez p1, :cond_1

    .line 1420
    const-string v5, "[CarMusicUtils]"

    const-string v6, "ListSelection null"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1451
    :cond_0
    :goto_0
    return-void

    .line 1422
    :cond_1
    move-object/from16 v0, p1

    array-length v12, v0

    .line 1423
    .local v12, size:I
    new-array v13, v12, [Landroid/content/ContentValues;

    .line 1424
    .local v13, values:[Landroid/content/ContentValues;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1427
    .local v2, resolver:Landroid/content/ContentResolver;
    const/4 v5, 0x1

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "count(*)"

    aput-object v6, v4, v5

    .line 1430
    .local v4, cols:[Ljava/lang/String;
    const-string v5, "external"

    move-wide/from16 v0, p2

    invoke-static {v5, v0, v1}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v3

    .line 1431
    .local v3, uri:Landroid/net/Uri;
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1432
    .local v9, cur:Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1433
    const/4 v5, 0x0

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 1434
    .local v8, base:I
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1435
    const/4 v9, 0x0

    .line 1437
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    if-ge v10, v12, :cond_2

    .line 1438
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    aput-object v5, v13, v10

    .line 1439
    aget-object v5, v13, v10

    const-string v6, "play_order"

    add-int v7, v8, v10

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1441
    aget-object v5, v13, v10

    const-string v6, "audio_id"

    aget v7, p1, v10

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1437
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1443
    :cond_2
    invoke-virtual {v2, v3, v13}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 1444
    if-eqz p4, :cond_0

    .line 1445
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

    .line 1447
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

    .line 4277
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 4278
    .local v1, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v0, 0x1

    .line 4279
    .local v0, appExist:Z
    :cond_0
    return v0
.end method

.method public static appendUnknownComposerFilter(Ljava/lang/StringBuilder;)V
    .locals 1
    .parameter "where"

    .prologue
    .line 4132
    const-string v0, " (composer ISNULL"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4133
    const-string v0, " OR composer = \'\'"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4134
    const-string v0, " OR composer = \'<unknown>\' )"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4137
    return-void
.end method

.method public static arrayDeepClone([I[II)V
    .locals 2
    .parameter "src"
    .parameter "dst"
    .parameter "length"

    .prologue
    .line 4104
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 4110
    :cond_0
    return-void

    .line 4105
    :cond_1
    array-length v1, p0

    if-lt v1, p2, :cond_0

    array-length v1, p1

    if-lt v1, p2, :cond_0

    .line 4107
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 4108
    aget v1, p0, v0

    aput v1, p1, v0

    .line 4107
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static bindToService(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .parameter "context"
    .parameter "id"

    .prologue
    .line 357
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/htc/music/carmode/util/CarMusicUtils;->bindToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/ServiceConnection;)Z

    move-result v0

    return v0
.end method

.method public static bindToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/ServiceConnection;)Z
    .locals 7
    .parameter "context"
    .parameter "id"
    .parameter "callback"

    .prologue
    .line 361
    new-instance v3, Lcom/htc/music/carmode/util/CarMusicUtils$ServiceOwner;

    invoke-direct {v3, p1, p0}, Lcom/htc/music/carmode/util/CarMusicUtils$ServiceOwner;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 363
    .local v3, serviceOwner:Lcom/htc/music/carmode/util/CarMusicUtils$ServiceOwner;
    sget-object v4, Lcom/htc/music/carmode/util/CarMusicUtils;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 364
    sget-object v4, Lcom/htc/music/carmode/util/CarMusicUtils;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/carmode/util/CarMusicUtils$ServiceBinder;

    .line 366
    .local v2, sbRemove:Lcom/htc/music/carmode/util/CarMusicUtils$ServiceBinder;
    if-eqz v2, :cond_0

    .line 368
    :try_start_0
    iget-object v4, v3, Lcom/htc/music/carmode/util/CarMusicUtils$ServiceOwner;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    :goto_0
    const-string v4, "[CarMusicUtils]"

    const-string v5, "Unbind previous binding service"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    .end local v2           #sbRemove:Lcom/htc/music/carmode/util/CarMusicUtils$ServiceBinder;
    :cond_0
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/htc/music/MediaPlaybackService;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 379
    new-instance v1, Lcom/htc/music/carmode/util/CarMusicUtils$ServiceBinder;

    invoke-direct {v1, p2}, Lcom/htc/music/carmode/util/CarMusicUtils$ServiceBinder;-><init>(Landroid/content/ServiceConnection;)V

    .line 380
    .local v1, sb:Lcom/htc/music/carmode/util/CarMusicUtils$ServiceBinder;
    sget-object v4, Lcom/htc/music/carmode/util/CarMusicUtils;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-class v5, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v4, p0, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v1, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v4

    return v4

    .line 370
    .end local v1           #sb:Lcom/htc/music/carmode/util/CarMusicUtils$ServiceBinder;
    .restart local v2       #sbRemove:Lcom/htc/music/carmode/util/CarMusicUtils$ServiceBinder;
    :catch_0
    move-exception v0

    .line 371
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const-string v4, "[CarMusicUtils]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mContext unbind service fail => "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/htc/music/carmode/util/CarMusicUtils$ServiceOwner;->mContext:Landroid/content/Context;

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

    .line 4162
    if-eqz p1, :cond_0

    if-gez p2, :cond_1

    :cond_0
    move v0, v8

    .line 4232
    :goto_0
    return v0

    .line 4165
    :cond_1
    invoke-static {p0, p2}, Lcom/htc/music/carmode/util/CarMusicUtils;->getTrack(Landroid/content/Context;I)Landroid/database/Cursor;

    move-result-object v1

    .line 4166
    .local v1, cursor:Landroid/database/Cursor;
    if-nez v1, :cond_2

    move v0, v8

    .line 4167
    goto :goto_0

    .line 4169
    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v9

    if-nez v9, :cond_5

    .line 4170
    :cond_3
    if-eqz v1, :cond_4

    .line 4171
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    move v0, v8

    .line 4172
    goto :goto_0

    .line 4175
    :cond_5
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4176
    const/4 v0, 0x0

    .line 4179
    .local v0, canBeShared:I
    const-string v9, "is_music"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 4180
    .local v5, musicType:J
    const-string v9, "_data"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 4183
    .local v7, path:Ljava/lang/String;
    const/4 v4, 0x0

    .line 4185
    .local v4, mimeType:Ljava/lang/String;
    invoke-static {}, Lcom/htc/music/carmode/util/CarMusicUtils;->isWMDRMSupported()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 4186
    const-string v9, "mime_type"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 4190
    :cond_6
    const-wide/16 v9, 0x1

    cmp-long v9, v5, v9

    if-lez v9, :cond_a

    .line 4192
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/htc/music/carmode/util/CarMusicUtils;->getDrmCursor(Landroid/content/Context;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v3

    .line 4193
    .local v3, drmCursor:Landroid/database/Cursor;
    if-nez v3, :cond_7

    .line 4194
    const-string v9, "[CarMusicUtils]"

    const-string v10, "CarMusicUtils.getDrmCursor return null!!"

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4195
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 4196
    const/4 v1, 0x0

    move v0, v8

    .line 4197
    goto :goto_0

    .line 4200
    :cond_7
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-lez v8, :cond_9

    .line 4201
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4203
    const-string v8, "delivery_type"

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 4205
    .local v2, deliveryType:I
    const/4 v8, 0x4

    if-eq v8, v2, :cond_8

    const/4 v8, 0x3

    if-ne v8, v2, :cond_9

    .line 4207
    :cond_8
    const/4 v0, 0x2

    .line 4211
    .end local v2           #deliveryType:I
    :cond_9
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 4229
    .end local v3           #drmCursor:Landroid/database/Cursor;
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 4230
    const/4 v1, 0x0

    .line 4232
    goto :goto_0

    .line 4215
    :cond_a
    invoke-static {}, Lcom/htc/music/carmode/util/CarMusicUtils;->isWMDRMSupported()Z

    move-result v8

    if-eqz v8, :cond_b

    if-eqz v4, :cond_b

    const-string v8, "audio/x-wma-drm"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 4216
    const-string v8, "[CarMusicUtils]"

    const-string v9, "canShare()....This file is WMDRM...."

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4217
    const/4 v0, 0x0

    goto :goto_1

    .line 4222
    :cond_b
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static canRewind(Landroid/net/Uri;Landroid/content/Context;)Z
    .locals 1
    .parameter "uri"
    .parameter "context"

    .prologue
    .line 3380
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
    .line 3784
    const-string v8, "DLNA"

    const/4 v9, 0x3

    invoke-virtual {p0, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 3786
    .local v2, Preferences:Landroid/content/SharedPreferences;
    const-string v8, "server"

    const/4 v9, 0x0

    invoke-interface {v2, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3790
    .local v1, DMS:Ljava/lang/String;
    invoke-static {p0}, Lcom/htc/music/carmode/util/CarMusicUtils;->getCurDMR(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 3793
    .local v0, DMR:Ljava/lang/String;
    const-string v8, "container"

    const/4 v9, 0x0

    invoke-interface {v2, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3794
    .local v4, container:Ljava/lang/String;
    const-string v8, "content"

    const/4 v9, 0x0

    invoke-interface {v2, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3797
    .local v5, content:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 3798
    const-string v8, "[CarMusicUtils]"

    const-string v9, "input list != null, clear server and content info"

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3799
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

    .line 3801
    const/4 v1, 0x0

    .line 3804
    :cond_0
    invoke-static {p0}, Lcom/htc/music/carmode/util/CarMusicUtils;->CheckDLNAStatus(Landroid/content/Context;)I

    move-result v6

    .line 3808
    .local v6, dlnaMode:I
    packed-switch v6, :pswitch_data_0

    .line 3894
    const-string v8, "[CarMusicUtils]"

    const-string v9, "check dlna mode failed"

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3895
    const/4 v8, 0x0

    :goto_0
    return v8

    .line 3810
    :pswitch_0
    const-string v8, "[CarMusicUtils]"

    const-string v9, "DLNA_DMP mode"

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3811
    if-nez p3, :cond_2

    .line 3812
    const-string v8, "switchDMP"

    const/4 v9, 0x0

    invoke-interface {v2, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 3814
    .local v3, Switch:Z
    if-eqz v3, :cond_1

    .line 3815
    const-string v8, "[CarMusicUtils]"

    const-string v9, "called from DMC, need to update DMP info"

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3831
    :cond_1
    const/4 v8, 0x1

    goto :goto_0

    .line 3833
    .end local v3           #Switch:Z
    :cond_2
    const-string v8, "[CarMusicUtils]"

    const-string v9, "play at glance, clear dlna info"

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3834
    invoke-static {p0}, Lcom/htc/music/carmode/util/CarMusicUtils;->clearDlnaInfo(Landroid/content/Context;)V

    .line 3835
    const/4 v8, 0x0

    goto :goto_0

    .line 3840
    :pswitch_1
    const-string v8, "[CarMusicUtils]"

    const-string v9, "DLNA_LOCAL mode"

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3841
    const/4 v8, 0x0

    goto :goto_0

    .line 3844
    :pswitch_2
    const-string v8, "[CarMusicUtils]"

    const-string v9, "DLNA_DMC mode, send intent"

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3845
    if-nez p3, :cond_3

    .line 3848
    const-string v8, "[CarMusicUtils]"

    const-string v9, "type = null, DLNA mode switch to DLNA_DMC"

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3849
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "switchDMC"

    const/4 v10, 0x1

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3852
    const-string v8, "[CarMusicUtils]"

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

    .line 3853
    const-string v8, "[CarMusicUtils]"

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

    .line 3854
    const-string v8, "[CarMusicUtils]"

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

    .line 3855
    const-string v8, "[CarMusicUtils]"

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

    .line 3856
    const-string v8, "[CarMusicUtils]"

    const-string v9, "intent cookie = 1"

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3857
    const-string v8, "[CarMusicUtils]"

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

    .line 3858
    const-string v8, "[CarMusicUtils]"

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

    .line 3859
    const-string v8, "[CarMusicUtils]"

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

    .line 3860
    const-string v8, "[CarMusicUtils]"

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

    .line 3861
    const-string v8, "[CarMusicUtils]"

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

    .line 3862
    const/4 v8, 0x2

    goto/16 :goto_0

    .line 3864
    :cond_3
    const-string v8, "[CarMusicUtils]"

    const-string v9, "play at glance, clear dlna info"

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3865
    invoke-static {p0}, Lcom/htc/music/carmode/util/CarMusicUtils;->clearDlnaInfo(Landroid/content/Context;)V

    .line 3866
    if-eqz p0, :cond_4

    .line 3867
    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.htc.dmc.poweroff"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3868
    .local v7, intentOffDmc:Landroid/content/Intent;
    invoke-virtual {p0, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3870
    .end local v7           #intentOffDmc:Landroid/content/Intent;
    :cond_4
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 3875
    :pswitch_3
    const-string v8, "[CarMusicUtils]"

    const-string v9, "DLNA_PUSH mode"

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3876
    if-nez p3, :cond_5

    .line 3879
    const-string v8, "[CarMusicUtils]"

    const-string v9, "type = null, DLNA mode switch to DLNA_PUSH"

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3880
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "switchDMC"

    const/4 v10, 0x1

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3882
    const/4 v8, 0x3

    goto/16 :goto_0

    .line 3884
    :cond_5
    const-string v8, "[CarMusicUtils]"

    const-string v9, "play at glance, switch to local mode"

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3885
    invoke-static {p0}, Lcom/htc/music/carmode/util/CarMusicUtils;->clearDlnaInfo(Landroid/content/Context;)V

    .line 3886
    if-eqz p0, :cond_6

    .line 3887
    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.htc.dmc.poweroff"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3888
    .restart local v7       #intentOffDmc:Landroid/content/Intent;
    invoke-virtual {p0, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3890
    .end local v7           #intentOffDmc:Landroid/content/Intent;
    :cond_6
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 3808
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
    .line 520
    const-class v8, Lcom/htc/music/carmode/util/CarMusicUtils;

    monitor-enter v8

    :try_start_0
    new-instance v4, Landroid/os/StatFs;

    sget-object v7, Lcom/htc/music/carmode/util/CarMusicUtils;->PATH:Ljava/lang/String;

    invoke-direct {v4, v7}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 521
    .local v4, fileStats:Landroid/os/StatFs;
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v7

    int-to-long v0, v7

    .line 522
    .local v0, availableBlocks:J
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v7

    int-to-long v2, v7

    .line 523
    .local v2, blockSize:J
    mul-long v5, v0, v2

    .line 524
    .local v5, size:J
    const-string v7, "[CarMusicUtils]"

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

    .line 525
    monitor-exit v8

    return-wide v5

    .line 520
    .end local v0           #availableBlocks:J
    .end local v2           #blockSize:J
    .end local v5           #size:J
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7
.end method

.method public static checkPlaylistCount(Landroid/content/Context;)I
    .locals 8
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 4616
    const/4 v6, 0x0

    .line 4617
    .local v6, count:I
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v0

    const/4 v0, 0x1

    const-string v4, "name"

    aput-object v4, v2, v0

    .line 4621
    .local v2, cols:[Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 4622
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

    .line 4624
    invoke-static/range {v0 .. v5}, Lcom/htc/music/carmode/util/CarMusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 4625
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 4626
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 4627
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 4630
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

    .line 4262
    const/4 v1, 0x0

    .line 4264
    .local v1, overSizeLimit:Z
    invoke-static {p0}, Lcom/htc/music/util/ProjectSettings;->getMaxRingtoneSize(Landroid/content/Context;)I

    move-result v4

    mul-int/lit16 v0, v4, 0x400

    .line 4265
    .local v0, maxRingtoneSize:I
    if-lez v0, :cond_0

    .line 4266
    invoke-static {p1}, Lcom/htc/music/carmode/util/CarMusicUtils;->wasDRMFilePlaying(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4267
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/htc/music/carmode/util/CarMusicUtils;->getDrmTrackSize(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v4

    if-le v4, v0, :cond_1

    move v1, v2

    .line 4273
    :cond_0
    :goto_0
    if-nez v1, :cond_4

    :goto_1
    return v2

    :cond_1
    move v1, v3

    .line 4267
    goto :goto_0

    .line 4269
    :cond_2
    invoke-static {p0, p2}, Lcom/htc/music/carmode/util/CarMusicUtils;->getTrackSize(Landroid/content/Context;I)I

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

    .line 4273
    goto :goto_1
.end method

.method public static checkedInternalStorageWhenResume(Landroid/content/Context;)Z
    .locals 3
    .parameter "fromCtx"

    .prologue
    const/4 v1, 0x1

    .line 471
    invoke-static {p0}, Lcom/htc/music/carmode/util/CarMusicUtils;->isInternalStorageEnough(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 473
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 474
    .local v0, targetIntent:Landroid/content/Intent;
    const-class v2, Lcom/htc/music/MediaPlaybackErrorActivity;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 475
    const-string v2, "disablelib"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 476
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 477
    const/4 v1, 0x0

    .line 479
    .end local v0           #targetIntent:Landroid/content/Intent;
    :cond_0
    return v1
.end method

.method public static clearAlbumArtCache()V
    .locals 6

    .prologue
    .line 2068
    sget-object v5, Lcom/htc/music/carmode/util/CarMusicUtils;->sArtCache:Ljava/util/HashMap;

    monitor-enter v5

    .line 2069
    :try_start_0
    sget-object v4, Lcom/htc/music/carmode/util/CarMusicUtils;->sArtCache:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 2070
    .local v3, keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2071
    .local v2, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2072
    .local v0, artIndex:Ljava/lang/Integer;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2073
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #artIndex:Ljava/lang/Integer;
    check-cast v0, Ljava/lang/Integer;

    .line 2074
    .restart local v0       #artIndex:Ljava/lang/Integer;
    sget-object v4, Lcom/htc/music/carmode/util/CarMusicUtils;->sArtCache:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/carmode/util/CarMusicUtils$FastBitmapDrawable;

    .line 2075
    .local v1, bm:Lcom/htc/music/carmode/util/CarMusicUtils$FastBitmapDrawable;
    if-eqz v1, :cond_0

    .line 2076
    invoke-virtual {v1}, Lcom/htc/music/carmode/util/CarMusicUtils$FastBitmapDrawable;->recycle()V

    goto :goto_0

    .line 2081
    .end local v0           #artIndex:Ljava/lang/Integer;
    .end local v1           #bm:Lcom/htc/music/carmode/util/CarMusicUtils$FastBitmapDrawable;
    .end local v2           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 2080
    .restart local v0       #artIndex:Ljava/lang/Integer;
    .restart local v2       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_1
    :try_start_1
    sget-object v4, Lcom/htc/music/carmode/util/CarMusicUtils;->sArtCache:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 2081
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2082
    return-void
.end method

.method public static clearDlnaInfo(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const-wide/16 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 3766
    const-string v2, "DLNA"

    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3767
    .local v0, Preferences:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 3768
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    if-eqz v1, :cond_0

    .line 3769
    const-string v2, "container"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3770
    const-string v2, "content"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3771
    const-string v2, "filepath"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3772
    const-string v2, "shuffle"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3773
    const-string v2, "startIdx"

    invoke-interface {v1, v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 3774
    const-string v2, "endIdx"

    invoke-interface {v1, v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 3775
    const-string v2, "direction"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3776
    const-string v2, "server"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3777
    const-string v2, "Render"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3778
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3780
    :cond_0
    return-void
.end method

.method public static clearPlaylist(Landroid/content/Context;I)V
    .locals 12
    .parameter "context"
    .parameter "plid"

    .prologue
    const/4 v3, 0x0

    .line 1211
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    .line 1215
    .local v2, ccols:[Ljava/lang/String;
    const-string v0, "external"

    int-to-long v4, p1

    invoke-static {v0, v4, v5}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    const-string v5, "play_order"

    move-object v0, p0

    move-object v4, v3

    invoke-static/range {v0 .. v5}, Lcom/htc/music/carmode/util/CarMusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1218
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 1243
    :goto_0
    return-void

    .line 1229
    :cond_0
    :try_start_0
    const-string v0, "external"

    int-to-long v3, p1

    invoke-static {v0, v3, v4}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v11

    .line 1230
    .local v11, uri:Landroid/net/Uri;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1231
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 1232
    .local v6, colidx:I
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1233
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 1234
    .local v9, id:J
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v11, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1235
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1237
    .end local v6           #colidx:I
    .end local v9           #id:J
    .end local v11           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v8

    .line 1238
    .local v8, ex:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "[CarMusicUtils]"

    const-string v1, "Failed to clear playlist."

    invoke-static {v0, v1, v8}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1240
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1241
    .end local v8           #ex:Ljava/lang/Exception;
    :goto_2
    const/4 v7, 0x0

    goto :goto_0

    .line 1240
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1241
    const/4 v7, 0x0

    .line 1240
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
    .line 1979
    :try_start_0
    sget-object v0, Lcom/htc/music/carmode/util/CarMusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v1, 0x0

    const v2, 0x7fffffff

    invoke-interface {v0, v1, v2}, Lcom/htc/music/IMediaPlaybackService;->removeTracks(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1982
    :goto_0
    return-void

    .line 1980
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static createBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "drawable"

    .prologue
    .line 3993
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 3994
    .local v1, width:I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 3995
    .local v0, height:I
    invoke-static {p0, v0, v1}, Lcom/htc/music/carmode/util/CarMusicUtils;->createBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

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

    .line 3999
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 4002
    .local v2, config:Landroid/graphics/Bitmap$Config;
    :goto_0
    invoke-static {p2, p1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 4003
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 4004
    .local v1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {p0, v5, v5, p2, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4005
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4006
    return-object v0

    .line 3999
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
    .line 4637
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 4638
    :cond_0
    const/4 v0, -0x1

    .line 4658
    :cond_1
    :goto_0
    return v0

    .line 4640
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 4641
    .local v1, resolver:Landroid/content/ContentResolver;
    invoke-static {p0, p1}, Lcom/htc/music/carmode/util/CarMusicUtils;->getPlaylistId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 4642
    .local v0, id:I
    const/4 v2, 0x0

    .line 4643
    .local v2, uri:Landroid/net/Uri;
    if-ltz v0, :cond_3

    .line 4644
    sget-object v4, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    int-to-long v5, v0

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 4645
    invoke-static {p0, v0}, Lcom/htc/music/carmode/util/CarMusicUtils;->clearPlaylist(Landroid/content/Context;I)V

    goto :goto_0

    .line 4647
    :cond_3
    new-instance v3, Landroid/content/ContentValues;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 4648
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "name"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4649
    sget-object v4, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 4650
    invoke-static {p0, v2}, Lcom/htc/music/carmode/util/CarMusicUtils;->getPlaylistId(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v0

    .line 4653
    if-lez v0, :cond_1

    .line 4654
    invoke-static {p0}, Lcom/htc/music/util/ShowMeHelper;->notifyCreatePlaylist(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static deleteArrayItem([III)V
    .locals 2
    .parameter "list"
    .parameter "length"
    .parameter "position"

    .prologue
    .line 4113
    if-eqz p0, :cond_0

    if-ltz p2, :cond_0

    if-ge p2, p1, :cond_0

    array-length v1, p0

    if-ge v1, p1, :cond_1

    .line 4119
    :cond_0
    return-void

    .line 4116
    :cond_1
    move v0, p2

    .local v0, i:I
    :goto_0
    add-int/lit8 v1, p1, -0x1

    if-ge v0, v1, :cond_0

    .line 4117
    add-int/lit8 v1, v0, 0x1

    aget v1, p0, v1

    aput v1, p0, v0

    .line 4116
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static deleteDrmTracks(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 6
    .parameter "context"
    .parameter "uri"

    .prologue
    const/4 v4, 0x0

    .line 1386
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

    .line 1390
    .local v0, cols:[Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, p1, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1391
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0700a1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1392
    .local v2, message:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1393
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "content://drm"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1397
    .end local v2           #message:Ljava/lang/String;
    :goto_0
    return-void

    .line 1394
    :catch_0
    move-exception v1

    .line 1395
    .local v1, ex:Ljava/lang/SecurityException;
    const-string v3, "[CarMusicUtils]"

    const-string v4, "deleteDrmTracks SecurityException"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static deletePlaylistTrack(Landroid/content/Context;J[I)V
    .locals 9
    .parameter "context"
    .parameter "plid"
    .parameter "list"

    .prologue
    const/4 v8, 0x0

    .line 1246
    if-eqz p3, :cond_2

    array-length v4, p3

    if-lez v4, :cond_2

    .line 1247
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1248
    .local v3, where:Ljava/lang/StringBuilder;
    const-string v4, "audio_playlists_map._id IN ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1249
    array-length v2, p3

    .line 1250
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 1251
    aget v4, p3, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1252
    add-int/lit8 v4, v2, -0x1

    if-ge v0, v4, :cond_0

    .line 1253
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1250
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1256
    :cond_1
    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1257
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

    .line 1261
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

    .line 1262
    .local v1, message:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 1268
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

    .line 1271
    if-eqz p1, :cond_2

    array-length v4, p1

    if-lez v4, :cond_2

    .line 1272
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1273
    .local v3, where:Ljava/lang/StringBuilder;
    const-string v4, "_id IN ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1274
    array-length v2, p1

    .line 1275
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 1276
    aget v4, p1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1277
    add-int/lit8 v4, v2, -0x1

    if-ge v0, v4, :cond_0

    .line 1278
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1275
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1281
    :cond_1
    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1282
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1285
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

    .line 1287
    .local v1, message:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 1293
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
    .line 1297
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

    .line 1301
    .local v3, cols:[Ljava/lang/String;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 1302
    .local v16, where:Ljava/lang/StringBuilder;
    const-string v1, "_id IN ("

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1303
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    move-object/from16 v0, p1

    array-length v1, v0

    if-ge v12, v1, :cond_1

    .line 1304
    aget v1, p1, v12

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1305
    move-object/from16 v0, p1

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge v12, v1, :cond_0

    .line 1306
    const-string v1, ","

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1303
    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 1309
    :cond_1
    const-string v1, ")"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1310
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v6}, Lcom/htc/music/carmode/util/CarMusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1313
    .local v9, c:Landroid/database/Cursor;
    if-eqz v9, :cond_8

    .line 1318
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1319
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1321
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 1322
    .local v13, id:I
    sget-object v1, Lcom/htc/music/carmode/util/CarMusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1, v13}, Lcom/htc/music/IMediaPlaybackService;->removeTrack(I)I

    .line 1324
    const/4 v1, 0x2

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 1325
    .local v7, artIndex:I
    sget-object v2, Lcom/htc/music/carmode/util/CarMusicUtils;->sArtCache:Ljava/util/HashMap;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1326
    :try_start_1
    sget-object v1, Lcom/htc/music/carmode/util/CarMusicUtils;->sArtCache:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/music/carmode/util/CarMusicUtils$FastBitmapDrawable;

    .line 1327
    .local v8, bm:Lcom/htc/music/carmode/util/CarMusicUtils$FastBitmapDrawable;
    if-eqz v8, :cond_2

    .line 1328
    invoke-virtual {v8}, Lcom/htc/music/carmode/util/CarMusicUtils$FastBitmapDrawable;->recycle()V

    .line 1329
    const/4 v8, 0x0

    .line 1331
    :cond_2
    sget-object v1, Lcom/htc/music/carmode/util/CarMusicUtils;->sArtCache:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1332
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1333
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 1335
    .end local v7           #artIndex:I
    .end local v8           #bm:Lcom/htc/music/carmode/util/CarMusicUtils$FastBitmapDrawable;
    .end local v13           #id:I
    :catch_0
    move-exception v1

    .line 1339
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1343
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1344
    :cond_4
    :goto_2
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_7

    .line 1345
    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 1346
    .local v15, name:Ljava/lang/String;
    const-string v1, "[CarMusicUtils]"

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

    .line 1347
    if-eqz v15, :cond_4

    .line 1348
    const-string v1, "content://drm/"

    invoke-virtual {v15, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1349
    const-string v1, "[CarMusicUtils]"

    const-string v2, "delete drm file"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1350
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->deleteDrmFile(Landroid/content/ContentResolver;Landroid/net/Uri;)I

    .line 1351
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2

    .line 1332
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

    .line 1353
    .end local v7           #artIndex:I
    .end local v13           #id:I
    .restart local v15       #name:Ljava/lang/String;
    :cond_5
    const-string v1, "[CarMusicUtils]"

    const-string v2, "delete local file"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1354
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1356
    .local v11, f:Ljava/io/File;
    :try_start_5
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_6

    .line 1360
    const-string v1, "[CarMusicUtils]"

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

    .line 1362
    :cond_6
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 1363
    :catch_1
    move-exception v10

    .line 1364
    .local v10, ex:Ljava/lang/SecurityException;
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2

    .line 1371
    .end local v10           #ex:Ljava/lang/SecurityException;
    .end local v11           #f:Ljava/io/File;
    .end local v15           #name:Ljava/lang/String;
    :cond_7
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1372
    const/4 v9, 0x0

    .line 1375
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

    .line 1378
    .local v14, message:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v14, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1382
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://media"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1383
    return-void
.end method

.method public static deleteTracksByCursor(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .parameter "context"
    .parameter "cursor"
    .parameter "where"

    .prologue
    .line 3036
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v10

    if-nez v10, :cond_1

    .line 3037
    :cond_0
    const/4 v8, 0x0

    .line 3113
    :goto_0
    return-object v8

    .line 3040
    :cond_1
    :try_start_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v7

    .line 3044
    .local v7, len:I
    :try_start_1
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3045
    :goto_1
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v10

    if-nez v10, :cond_3

    .line 3047
    const/4 v10, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 3048
    .local v6, id:I
    sget-object v10, Lcom/htc/music/carmode/util/CarMusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v10, v6}, Lcom/htc/music/IMediaPlaybackService;->removeTrack(I)I

    .line 3050
    const/4 v10, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 3051
    .local v1, artIndex:I
    sget-object v11, Lcom/htc/music/carmode/util/CarMusicUtils;->sArtCache:Ljava/util/HashMap;

    monitor-enter v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_2

    .line 3052
    :try_start_2
    sget-object v10, Lcom/htc/music/carmode/util/CarMusicUtils;->sArtCache:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/carmode/util/CarMusicUtils$FastBitmapDrawable;

    .line 3053
    .local v2, bm:Lcom/htc/music/carmode/util/CarMusicUtils$FastBitmapDrawable;
    if-eqz v2, :cond_2

    .line 3054
    invoke-virtual {v2}, Lcom/htc/music/carmode/util/CarMusicUtils$FastBitmapDrawable;->recycle()V

    .line 3055
    const/4 v2, 0x0

    .line 3057
    :cond_2
    sget-object v10, Lcom/htc/music/carmode/util/CarMusicUtils;->sArtCache:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3058
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3059
    :try_start_3
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 3061
    .end local v1           #artIndex:I
    .end local v2           #bm:Lcom/htc/music/carmode/util/CarMusicUtils$FastBitmapDrawable;
    .end local v6           #id:I
    :catch_0
    move-exception v10

    .line 3065
    :cond_3
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v11, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v10, v11, v0, v12}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 3067
    .local v3, delete_row_number:I
    const-string v10, "[CarMusicUtils]"

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

    .line 3070
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3071
    :cond_4
    :goto_2
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v10

    if-nez v10, :cond_7

    .line 3072
    const/4 v10, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 3073
    .local v9, name:Ljava/lang/String;
    if-eqz v9, :cond_4

    .line 3074
    const-string v10, "content://drm/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 3075
    const-string v10, "[CarMusicUtils]"

    const-string v11, "deleteTracksByCursor,delete drm file"

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_4 .. :try_end_4} :catch_2

    .line 3077
    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->deleteDrmFile(Landroid/content/ContentResolver;Landroid/net/Uri;)I

    .line 3078
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 3079
    :catch_1
    move-exception v4

    .line 3080
    .local v4, ex:Ljava/lang/SecurityException;
    :try_start_6
    const-string v10, "[CarMusicUtils]"

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

    .line 3081
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    .line 3111
    .end local v3           #delete_row_number:I
    .end local v4           #ex:Ljava/lang/SecurityException;
    .end local v7           #len:I
    .end local v9           #name:Ljava/lang/String;
    :catch_2
    move-exception v4

    .line 3112
    .local v4, ex:Ljava/lang/UnsupportedOperationException;
    :try_start_7
    const-string v10, "[CarMusicUtils]"

    const-string v11, "UnsupportedOperationException:"

    invoke-static {v10, v11, v4}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 3113
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 3058
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

    .line 3114
    .end local v1           #artIndex:I
    .end local v6           #id:I
    .end local v7           #len:I
    :catchall_1
    move-exception v10

    throw v10

    .line 3084
    .restart local v3       #delete_row_number:I
    .restart local v7       #len:I
    .restart local v9       #name:Ljava/lang/String;
    :cond_5
    :try_start_a
    const-string v10, "[CarMusicUtils]"

    const-string v11, "deleteTracksByCursor,delete local file"

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3085
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_a .. :try_end_a} :catch_2

    .line 3087
    .local v5, f:Ljava/io/File;
    :try_start_b
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v10

    if-nez v10, :cond_6

    .line 3091
    const-string v10, "[CarMusicUtils]"

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

    .line 3093
    :cond_6
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_b .. :try_end_b} :catch_2

    goto/16 :goto_2

    .line 3094
    :catch_3
    move-exception v4

    .line 3095
    .local v4, ex:Ljava/lang/SecurityException;
    :try_start_c
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_2

    .line 3103
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

    .line 3109
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

.method public static deleteTracksForAlbum(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "albumId"
    .parameter "artistId"
    .parameter "genreId"
    .parameter "composerId"

    .prologue
    .line 3121
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

    .line 3126
    .local v3, ccols:[Ljava/lang/String;
    invoke-static {p1, p2, p3, p4}, Lcom/htc/music/carmode/util/CarMusicUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3127
    .local v4, where:Ljava/lang/String;
    const-string v0, "[CarMusicUtils]"

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

    .line 3129
    check-cast v0, Lcom/htc/music/carmode/MusicMaActivity;

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const-string v6, "track"

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/music/carmode/MusicMaActivity;->deleteTracks(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 3130
    return-void
.end method

.method public static deleteTracksForArtist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "artistId"
    .parameter "genreId"
    .parameter "composerId"

    .prologue
    const/4 v5, 0x0

    .line 3134
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

    .line 3139
    .local v3, ccols:[Ljava/lang/String;
    invoke-static {v5, p1, p2, p3}, Lcom/htc/music/carmode/util/CarMusicUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3140
    .local v4, where:Ljava/lang/String;
    const-string v0, "[CarMusicUtils]"

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

    .line 3142
    check-cast v0, Lcom/htc/music/carmode/MusicMaActivity;

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v6, "album_key,track"

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/music/carmode/MusicMaActivity;->deleteTracks(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 3146
    return-void
.end method

.method public static deleteTracksForComposer(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "name"

    .prologue
    const/4 v5, 0x0

    .line 3173
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

    .line 3180
    .local v3, ccols:[Ljava/lang/String;
    invoke-static {p1}, Lcom/htc/music/carmode/util/CarMusicUtils;->isUnknownComposer(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3181
    const-string v0, "<unknown>"

    invoke-static {v5, v5, v5, v0}, Lcom/htc/music/carmode/util/CarMusicUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3185
    .local v4, where:Ljava/lang/String;
    :goto_0
    const-string v0, "[CarMusicUtils]"

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

    .line 3187
    check-cast v0, Lcom/htc/music/carmode/MusicMaActivity;

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v6, "track"

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/music/carmode/MusicMaActivity;->deleteTracks(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 3190
    return-void

    .line 3183
    .end local v4           #where:Ljava/lang/String;
    :cond_0
    invoke-static {v5, v5, v5, p1}, Lcom/htc/music/carmode/util/CarMusicUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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

    .line 3149
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

    .line 3154
    .local v3, ccols:[Ljava/lang/String;
    invoke-static {v5, v5, p1, v5}, Lcom/htc/music/carmode/util/CarMusicUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3155
    .local v4, where:Ljava/lang/String;
    const-string v0, "[CarMusicUtils]"

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

    .line 3157
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v7, v0

    .line 3159
    .local v7, id:J
    const-wide/16 v0, -0x1

    cmp-long v0, v7, v0

    if-nez v0, :cond_0

    move-object v0, p0

    .line 3160
    check-cast v0, Lcom/htc/music/carmode/MusicMaActivity;

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v6, "title_key"

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/music/carmode/MusicMaActivity;->deleteTracks(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 3170
    :goto_0
    return-void

    :cond_0
    move-object v0, p0

    .line 3164
    check-cast v0, Lcom/htc/music/carmode/MusicMaActivity;

    const-string v1, "external"

    invoke-static {v1, v7, v8}, Landroid/provider/MediaStore$Audio$Genres$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v2

    const-string v6, "title_key"

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/music/carmode/MusicMaActivity;->deleteTracks(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static displayDatabaseError(Landroid/app/Activity;)V
    .locals 10
    .parameter "a"

    .prologue
    const v9, 0x7f080092

    .line 1602
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    .line 1605
    .local v2, status:Ljava/lang/String;
    invoke-static {}, Lcom/htc/music/carmode/util/CarMusicUtils;->IsInternalStorage()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1606
    const v3, 0x7f07004c

    .line 1611
    .local v3, title:I
    :goto_0
    const v1, 0x20400a0

    .line 1613
    .local v1, message:I
    const-string v6, "shared"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1614
    invoke-static {}, Lcom/htc/music/carmode/util/CarMusicUtils;->IsInternalStorage()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1615
    const v3, 0x7f070047

    .line 1616
    const v1, 0x7f070049

    .line 1641
    :goto_1
    invoke-virtual {p0, v3}, Landroid/app/Activity;->setTitle(I)V

    .line 1642
    invoke-virtual {p0, v9}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 1643
    .local v5, v:Landroid/view/View;
    if-eqz v5, :cond_0

    .line 1644
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1650
    :cond_0
    const v6, 0x102000a

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 1651
    if-eqz v5, :cond_1

    .line 1652
    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1654
    :cond_1
    invoke-virtual {p0, v9}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1655
    .local v4, tv:Landroid/widget/TextView;
    if-eqz v4, :cond_2

    .line 1656
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1657
    :cond_2
    return-void

    .line 1608
    .end local v1           #message:I
    .end local v3           #title:I
    .end local v4           #tv:Landroid/widget/TextView;
    .end local v5           #v:Landroid/view/View;
    :cond_3
    const v3, 0x7f07004b

    .restart local v3       #title:I
    goto :goto_0

    .line 1618
    .restart local v1       #message:I
    :cond_4
    const v3, 0x7f070046

    .line 1619
    const v1, 0x7f070048

    goto :goto_1

    .line 1622
    :cond_5
    const-string v6, "removed"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1623
    const v3, 0x20401f5

    .line 1624
    const v1, 0x20400a0

    goto :goto_1

    .line 1625
    :cond_6
    const-string v6, "unmounted"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1626
    const v3, 0x20401f5

    .line 1627
    const v1, 0x20401fa

    goto :goto_1

    .line 1628
    :cond_7
    const-string v6, "mounted"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1633
    const-string v6, ""

    invoke-virtual {p0, v6}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1634
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1635
    .local v0, intent:Landroid/content/Intent;
    const-class v6, Lcom/htc/music/ScanningProgressActivity;

    invoke-virtual {v0, p0, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1636
    const/16 v6, 0xb

    invoke-virtual {p0, v0, v6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 1638
    .end local v0           #intent:Landroid/content/Intent;
    :cond_8
    const-string v6, "[CarMusicUtils]"

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

.method public static getAlbumListForArtist(Landroid/content/Context;I)[I
    .locals 8
    .parameter "context"
    .parameter "id"

    .prologue
    .line 923
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "artist_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "album_id"

    aput-object v1, v2, v0

    .line 926
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

    .line 928
    .local v3, where:Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "album COLLATE NOCASE ASC, track"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/carmode/util/CarMusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 931
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 932
    invoke-static {v6}, Lcom/htc/music/carmode/util/CarMusicUtils;->getAlbumListForCursor(Landroid/database/Cursor;)[I

    move-result-object v7

    .line 933
    .local v7, list:[I
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 934
    const/4 v6, 0x0

    .line 937
    .end local v7           #list:[I
    :goto_0
    return-object v7

    :cond_0
    sget-object v7, Lcom/htc/music/carmode/util/CarMusicUtils;->sEmptyList:[I

    goto :goto_0
.end method

.method public static getAlbumListForCursor(Landroid/database/Cursor;)[I
    .locals 7
    .parameter "cursor"

    .prologue
    .line 591
    if-nez p0, :cond_1

    .line 592
    const-string v5, "[CarMusicUtils]"

    const-string v6, "getAlbumListForCursor, cursor is  null, return empty list"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    sget-object v4, Lcom/htc/music/carmode/util/CarMusicUtils;->sEmptyList:[I

    .line 604
    :cond_0
    return-object v4

    .line 595
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 596
    .local v3, len:I
    new-array v4, v3, [I

    .line 597
    .local v4, list:[I
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 598
    const-string v5, "album_id"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 599
    .local v0, colidx:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 600
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 601
    .local v2, id:I
    aput v2, v4, v1

    .line 602
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 599
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

    .line 1004
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v5

    const-string v0, "album_id"

    aput-object v0, v2, v1

    .line 1007
    .local v2, ccols:[Ljava/lang/String;
    const-string v0, "%d"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v4, v0, v4}, Lcom/htc/music/carmode/util/CarMusicUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1008
    .local v8, where:Ljava/lang/String;
    const-string v0, "[CarMusicUtils]"

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

    .line 1009
    const/4 v6, 0x0

    .line 1010
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 1011
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "title_key"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/carmode/util/CarMusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1019
    :goto_0
    if-eqz v6, :cond_1

    .line 1020
    invoke-static {v6}, Lcom/htc/music/carmode/util/CarMusicUtils;->getAlbumListForCursor(Landroid/database/Cursor;)[I

    move-result-object v7

    .line 1021
    .local v7, list:[I
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1022
    const/4 v6, 0x0

    .line 1025
    .end local v7           #list:[I
    :goto_1
    return-object v7

    .line 1014
    :cond_0
    const-string v0, "external"

    int-to-long v9, p1

    invoke-static {v0, v9, v10}, Landroid/provider/MediaStore$Audio$Genres$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "title_key"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/carmode/util/CarMusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    goto :goto_0

    .line 1025
    :cond_1
    sget-object v7, Lcom/htc/music/carmode/util/CarMusicUtils;->sEmptyList:[I

    goto :goto_1
.end method

.method public static getAlbumListForPlaylist(Landroid/content/Context;J)[I
    .locals 8
    .parameter "context"
    .parameter "plid"

    .prologue
    const/4 v3, 0x0

    .line 1107
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "album_id"

    aput-object v1, v2, v0

    .line 1110
    .local v2, ccols:[Ljava/lang/String;
    const-string v0, "external"

    invoke-static {v0, p1, p2}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    const-string v5, "play_order"

    move-object v0, p0

    move-object v4, v3

    invoke-static/range {v0 .. v5}, Lcom/htc/music/carmode/util/CarMusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1113
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 1114
    invoke-static {v6}, Lcom/htc/music/carmode/util/CarMusicUtils;->getAlbumListForCursor(Landroid/database/Cursor;)[I

    move-result-object v7

    .line 1115
    .local v7, list:[I
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1116
    const/4 v6, 0x0

    .line 1119
    .end local v7           #list:[I
    :goto_0
    return-object v7

    :cond_0
    sget-object v7, Lcom/htc/music/carmode/util/CarMusicUtils;->sEmptyList:[I

    goto :goto_0
.end method

.method public static getAlbumListForSong(Landroid/content/Context;I)[I
    .locals 8
    .parameter "context"
    .parameter "audioId"

    .prologue
    .line 959
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "album_id"

    aput-object v1, v2, v0

    .line 962
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

    .line 964
    .local v3, where:Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "track"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/carmode/util/CarMusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 967
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 968
    invoke-static {v6}, Lcom/htc/music/carmode/util/CarMusicUtils;->getAlbumListForCursor(Landroid/database/Cursor;)[I

    move-result-object v7

    .line 969
    .local v7, list:[I
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 970
    const/4 v6, 0x0

    .line 974
    .end local v7           #list:[I
    :goto_0
    return-object v7

    :cond_0
    sget-object v7, Lcom/htc/music/carmode/util/CarMusicUtils;->sEmptyList:[I

    goto :goto_0
.end method

.method public static getAllSongs(Landroid/content/Context;)[I
    .locals 10
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1141
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v3

    const-string v3, "is_music>=1"

    move-object v0, p0

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/htc/music/carmode/util/CarMusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1145
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    .line 1157
    :cond_0
    if-eqz v6, :cond_1

    .line 1158
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1159
    const/4 v6, 0x0

    :cond_1
    move-object v9, v4

    .line 1155
    :cond_2
    :goto_0
    return-object v9

    .line 1148
    :cond_3
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 1149
    .local v8, len:I
    new-array v9, v8, [I

    .line 1150
    .local v9, list:[I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    if-ge v7, v8, :cond_5

    .line 1151
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 1152
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    aput v0, v9, v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1150
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1157
    .end local v7           #i:I
    .end local v8           #len:I
    .end local v9           #list:[I
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 1158
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1159
    const/4 v6, 0x0

    .line 1157
    :cond_4
    throw v0

    .restart local v7       #i:I
    .restart local v8       #len:I
    .restart local v9       #list:[I
    :cond_5
    if-eqz v6, :cond_2

    .line 1158
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1159
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public static getAllSongsAndPrepare(Landroid/content/Context;)[I
    .locals 11
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 869
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

    invoke-static/range {v0 .. v5}, Lcom/htc/music/carmode/util/CarMusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 873
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    .line 887
    :cond_0
    if-eqz v7, :cond_1

    .line 888
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v10, v4

    .line 885
    :cond_2
    :goto_0
    return-object v10

    .line 876
    :cond_3
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 877
    .local v9, len:I
    new-array v10, v9, [I

    .line 878
    .local v10, list:[I
    new-array v6, v9, [I

    .line 879
    .local v6, albumlist:[I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    if-ge v8, v9, :cond_4

    .line 880
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 881
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    aput v0, v10, v8

    .line 882
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    aput v0, v6, v8

    .line 879
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 884
    :cond_4
    invoke-static {v6}, Lcom/htc/music/carmode/util/CarMusicUtils;->prepareAlbumList([I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 887
    if-eqz v7, :cond_2

    .line 888
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 887
    .end local v6           #albumlist:[I
    .end local v8           #i:I
    .end local v9           #len:I
    .end local v10           #list:[I
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_5

    .line 888
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 887
    :cond_5
    throw v0
.end method

.method public static getAppName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 4477
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isSupportListenStore()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4478
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070065

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4480
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

    .line 3961
    if-nez p1, :cond_1

    .line 3962
    const-string v6, "[CarMusicUtils]"

    const-string v7, "getApplyMaskBitmap()...bmSrc is null..."

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v5

    .line 3988
    :cond_0
    :goto_0
    return-object v2

    .line 3966
    :cond_1
    invoke-static {p0, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 3967
    .local v1, bmMask:Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3968
    .local v0, bmAlpha:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 3969
    .local v2, bmRet:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 3970
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

    .line 3971
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 3972
    .local v4, p:Landroid/graphics/Paint;
    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 3973
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

    .line 3974
    if-eqz v1, :cond_2

    .line 3976
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 3977
    const/4 v1, 0x0

    .line 3979
    :cond_2
    if-eqz v0, :cond_3

    .line 3981
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 3982
    const/4 v0, 0x0

    .line 3984
    :cond_3
    if-eqz p1, :cond_0

    .line 3986
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

    .line 2193
    if-gez p1, :cond_1

    .line 2224
    :cond_0
    :goto_0
    return-object v3

    .line 2196
    :cond_1
    sget-object v0, Lcom/htc/music/carmode/util/CarMusicUtils;->sArtworkUri:Landroid/net/Uri;

    int-to-long v4, p1

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 2197
    .local v1, uri:Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 2198
    new-array v2, v10, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v7

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/htc/music/carmode/util/CarMusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2199
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 2200
    .local v7, count:I
    :cond_2
    if-eq v7, v10, :cond_4

    .line 2203
    if-eqz v6, :cond_3

    .line 2204
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2206
    :cond_3
    if-nez v7, :cond_0

    goto :goto_0

    .line 2212
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2213
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 2214
    .local v8, i:I
    if-ltz v8, :cond_5

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2215
    .local v9, path:Ljava/lang/String;
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2216
    if-eqz v9, :cond_0

    move-object v3, v9

    .line 2220
    goto :goto_0

    .end local v9           #path:Ljava/lang/String;
    :cond_5
    move-object v9, v3

    .line 2214
    goto :goto_1
.end method

.method public static getArtworkQuick(Landroid/content/Context;III)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "context"
    .parameter "album_id"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 2125
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 2126
    .local v5, res:Landroid/content/ContentResolver;
    sget-object v9, Lcom/htc/music/carmode/util/CarMusicUtils;->sArtworkUri:Landroid/net/Uri;

    int-to-long v10, p1

    invoke-static {v9, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    .line 2127
    .local v8, uri:Landroid/net/Uri;
    if-eqz v8, :cond_4

    .line 2128
    const/4 v2, 0x0

    .line 2130
    .local v2, fd:Landroid/os/ParcelFileDescriptor;
    :try_start_0
    const-string v9, "r"

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 2131
    const/4 v6, 0x1

    .line 2136
    .local v6, sampleSize:I
    sget-object v9, Lcom/htc/music/carmode/util/CarMusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    const/4 v10, 0x1

    iput-boolean v10, v9, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 2137
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    const/4 v10, 0x0

    sget-object v11, Lcom/htc/music/carmode/util/CarMusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v9, v10, v11}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 2139
    sget-object v9, Lcom/htc/music/carmode/util/CarMusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iget v9, v9, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    shr-int/lit8 v4, v9, 0x1

    .line 2140
    .local v4, nextWidth:I
    sget-object v9, Lcom/htc/music/carmode/util/CarMusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iget v9, v9, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    shr-int/lit8 v3, v9, 0x1

    .line 2141
    .local v3, nextHeight:I
    :goto_0
    if-le v4, p2, :cond_0

    if-le v3, p3, :cond_0

    .line 2142
    shl-int/lit8 v6, v6, 0x1

    .line 2143
    shr-int/lit8 v4, v4, 0x1

    .line 2144
    shr-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2147
    :cond_0
    sget-object v9, Lcom/htc/music/carmode/util/CarMusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iput v6, v9, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 2148
    sget-object v9, Lcom/htc/music/carmode/util/CarMusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    const/4 v10, 0x0

    iput-boolean v10, v9, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 2149
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    const/4 v10, 0x0

    sget-object v11, Lcom/htc/music/carmode/util/CarMusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v9, v10, v11}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2152
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    .line 2154
    sget-object v9, Lcom/htc/music/carmode/util/CarMusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iget v9, v9, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-ne v9, p2, :cond_1

    sget-object v9, Lcom/htc/music/carmode/util/CarMusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iget v9, v9, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-eq v9, p3, :cond_2

    .line 2155
    :cond_1
    const/4 v9, 0x1

    invoke-static {v0, p2, p3, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 2156
    .local v7, tmp:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2157
    move-object v0, v7

    .line 2167
    .end local v7           #tmp:Landroid/graphics/Bitmap;
    :cond_2
    if-eqz v2, :cond_3

    .line 2168
    :try_start_1
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 2173
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v2           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v3           #nextHeight:I
    .end local v4           #nextWidth:I
    .end local v6           #sampleSize:I
    :cond_3
    :goto_1
    return-object v0

    .line 2163
    .restart local v2       #fd:Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v1

    .line 2164
    .local v1, ex:Ljava/lang/Exception;
    :try_start_2
    const-string v9, "[CarMusicUtils]"

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

    .line 2167
    if-eqz v2, :cond_4

    .line 2168
    :try_start_3
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 2173
    .end local v1           #ex:Ljava/lang/Exception;
    .end local v2           #fd:Landroid/os/ParcelFileDescriptor;
    :cond_4
    :goto_2
    const/4 v0, 0x0

    goto :goto_1

    .line 2166
    .restart local v2       #fd:Landroid/os/ParcelFileDescriptor;
    :catchall_0
    move-exception v9

    .line 2167
    if-eqz v2, :cond_5

    .line 2168
    :try_start_4
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 2166
    :cond_5
    :goto_3
    throw v9

    .line 2162
    :catch_1
    move-exception v9

    .line 2167
    if-eqz v2, :cond_4

    .line 2168
    :try_start_5
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 2169
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
    .line 4243
    const/4 v0, 0x0

    .line 4246
    .local v0, currentAudioType:I
    invoke-static {p1}, Lcom/htc/music/carmode/util/CarMusicUtils;->wasDRMFilePlaying(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4247
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/htc/music/carmode/util/CarMusicUtils;->getDrmType(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v0

    .line 4258
    :cond_0
    return v0
.end method

.method public static getCachedArtwork(Landroid/content/Context;ILandroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/Drawable;
    .locals 10
    .parameter "context"
    .parameter "artIndex"
    .parameter "defaultArtwork"

    .prologue
    .line 2086
    const/4 v2, 0x0

    .line 2087
    .local v2, d:Landroid/graphics/drawable/Drawable;
    sget-object v8, Lcom/htc/music/carmode/util/CarMusicUtils;->sArtCache:Ljava/util/HashMap;

    monitor-enter v8

    .line 2088
    :try_start_0
    sget-object v7, Lcom/htc/music/carmode/util/CarMusicUtils;->sArtCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Landroid/graphics/drawable/Drawable;

    move-object v2, v0

    .line 2089
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2090
    if-nez v2, :cond_0

    .line 2091
    move-object v2, p2

    .line 2092
    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 2093
    .local v4, icon:Landroid/graphics/Bitmap;
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 2094
    .local v6, w:I
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 2095
    .local v3, h:I
    invoke-static {p0, p1, v6, v3}, Lcom/htc/music/carmode/util/CarMusicUtils;->getArtworkQuick(Landroid/content/Context;III)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2096
    .local v1, b:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 2097
    new-instance v2, Lcom/htc/music/carmode/util/CarMusicUtils$FastBitmapDrawable;

    .end local v2           #d:Landroid/graphics/drawable/Drawable;
    invoke-direct {v2, v1}, Lcom/htc/music/carmode/util/CarMusicUtils$FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 2098
    .restart local v2       #d:Landroid/graphics/drawable/Drawable;
    sget-object v8, Lcom/htc/music/carmode/util/CarMusicUtils;->sArtCache:Ljava/util/HashMap;

    monitor-enter v8

    .line 2100
    :try_start_1
    sget-object v7, Lcom/htc/music/carmode/util/CarMusicUtils;->sArtCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/Drawable;

    .line 2101
    .local v5, value:Landroid/graphics/drawable/Drawable;
    if-nez v5, :cond_1

    .line 2102
    sget-object v7, Lcom/htc/music/carmode/util/CarMusicUtils;->sArtCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2106
    :goto_0
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2109
    .end local v1           #b:Landroid/graphics/Bitmap;
    .end local v3           #h:I
    .end local v4           #icon:Landroid/graphics/Bitmap;
    .end local v5           #value:Landroid/graphics/drawable/Drawable;
    .end local v6           #w:I
    :cond_0
    return-object v2

    .line 2089
    :catchall_0
    move-exception v7

    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    .line 2104
    .restart local v1       #b:Landroid/graphics/Bitmap;
    .restart local v3       #h:I
    .restart local v4       #icon:Landroid/graphics/Bitmap;
    .restart local v5       #value:Landroid/graphics/drawable/Drawable;
    .restart local v6       #w:I
    :cond_1
    move-object v2, v5

    goto :goto_0

    .line 2106
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

    .line 3343
    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/htc/music/util/ProjectSettings;->getEnableDrmWarning(Landroid/content/Context;)I

    move-result v9

    if-nez v9, :cond_2

    .line 3344
    :cond_0
    const/4 v7, 0x0

    .line 3373
    :cond_1
    :goto_0
    return-object v7

    .line 3346
    :cond_2
    invoke-virtual {p1}, Landroid/provider/DrmStore$DrmConstraint;->getCount()I

    move-result v8

    .line 3347
    .local v8, nCount:I
    invoke-virtual {p1}, Landroid/provider/DrmStore$DrmConstraint;->getStartDate()Ljava/util/Date;

    move-result-object v4

    .line 3348
    .local v4, dateStart:Ljava/util/Date;
    invoke-virtual {p1}, Landroid/provider/DrmStore$DrmConstraint;->getEndDate()Ljava/util/Date;

    move-result-object v3

    .line 3349
    .local v3, dateEnd:Ljava/util/Date;
    invoke-virtual {p1}, Landroid/provider/DrmStore$DrmConstraint;->getInterval()J

    move-result-wide v5

    .line 3350
    .local v5, lInterval:J
    const/4 v7, 0x0

    .line 3351
    .local v7, message:Ljava/lang/String;
    const-wide/16 v9, -0x1

    cmp-long v9, v5, v9

    if-eqz v9, :cond_3

    .line 3355
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 3356
    .local v1, currentTime:Landroid/text/format/Time;
    if-eqz v1, :cond_1

    .line 3357
    invoke-virtual {v1}, Landroid/text/format/Time;->setToNow()V

    .line 3358
    new-instance v2, Ljava/util/Date;

    invoke-virtual {v1, v12}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v9

    add-long/2addr v9, v5

    invoke-direct {v2, v9, v10}, Ljava/util/Date;-><init>(J)V

    .line 3359
    .local v2, date:Ljava/util/Date;
    if-eqz v2, :cond_1

    .line 3360
    const v9, 0x7f0700c2

    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-array v10, v13, [Ljava/lang/Object;

    invoke-static {p0, v2}, Lcom/htc/music/carmode/util/CarMusicUtils;->getDate(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 3362
    .end local v1           #currentTime:Landroid/text/format/Time;
    .end local v2           #date:Ljava/util/Date;
    :cond_3
    const/4 v9, -0x1

    if-eq v8, v9, :cond_5

    .line 3363
    if-ne v8, v13, :cond_4

    .line 3364
    const v9, 0x7f0700be

    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 3365
    :cond_4
    invoke-static {p0}, Lcom/htc/music/util/ProjectSettings;->getEnableDrmWarning(Landroid/content/Context;)I

    move-result v9

    if-ne v9, v11, :cond_1

    .line 3366
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

    .line 3367
    .local v0, count:Ljava/lang/String;
    const v9, 0x7f0700bf

    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-array v10, v13, [Ljava/lang/Object;

    aput-object v0, v10, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 3368
    goto :goto_0

    .line 3369
    .end local v0           #count:Ljava/lang/String;
    :cond_5
    invoke-static {p0}, Lcom/htc/music/util/ProjectSettings;->getEnableDrmWarning(Landroid/content/Context;)I

    move-result v9

    if-ne v9, v11, :cond_6

    if-eqz v4, :cond_6

    if-eqz v3, :cond_6

    .line 3370
    const v9, 0x7f0700c0

    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-array v10, v11, [Ljava/lang/Object;

    invoke-static {p0, v4}, Lcom/htc/music/carmode/util/CarMusicUtils;->getDate(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-static {p0, v3}, Lcom/htc/music/carmode/util/CarMusicUtils;->getDate(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v13

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 3372
    :cond_6
    const-string v9, "[CarMusicUtils]"

    const-string v10, "DRM Constraint without Interval, Start Date, End Date and Count."

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected static getContentURIForPath(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .parameter "path"

    .prologue
    .line 1676
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
    .line 3497
    const-string v2, "[CarMusicUtils]"

    const-string v3, "getCurDMR()"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3503
    new-instance v0, Lcom/htc/dlnasharedmodule/HtcDLNAController;

    const/4 v2, 0x0

    const-string v3, "HtcMusic"

    const/4 v4, 0x1

    invoke-direct {v0, p0, v2, v3, v4}, Lcom/htc/dlnasharedmodule/HtcDLNAController;-><init>(Landroid/content/Context;ILjava/lang/String;I)V

    .line 3509
    .local v0, dlnaController:Lcom/htc/dlnasharedmodule/HtcDLNAController;
    invoke-virtual {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAController;->queryCurrentDMR()Ljava/lang/String;

    move-result-object v1

    .line 3510
    .local v1, szDMR:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_0

    const/4 v1, 0x0

    .line 3512
    :cond_0
    const-string v2, "[CarMusicUtils]"

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

    .line 3514
    return-object v1
.end method

.method public static getCurrentAlbumId()I
    .locals 1

    .prologue
    .line 424
    sget-object v0, Lcom/htc/music/carmode/util/CarMusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 426
    :try_start_0
    sget-object v0, Lcom/htc/music/carmode/util/CarMusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/htc/music/IMediaPlaybackService;->getAlbumId()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 430
    :goto_0
    return v0

    .line 427
    :catch_0
    move-exception v0

    .line 430
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getCurrentArtistId()I
    .locals 1

    .prologue
    .line 434
    sget-object v0, Lcom/htc/music/carmode/util/CarMusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 436
    :try_start_0
    sget-object v0, Lcom/htc/music/carmode/util/CarMusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/htc/music/IMediaPlaybackService;->getArtistId()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 440
    :goto_0
    return v0

    .line 437
    :catch_0
    move-exception v0

    .line 440
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getCurrentAudioId()I
    .locals 1

    .prologue
    .line 444
    sget-object v0, Lcom/htc/music/carmode/util/CarMusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 446
    :try_start_0
    sget-object v0, Lcom/htc/music/carmode/util/CarMusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/htc/music/IMediaPlaybackService;->getAudioId()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 450
    :goto_0
    return v0

    .line 447
    :catch_0
    move-exception v0

    .line 450
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getCurrentPluginDescription()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 3446
    sget-object v2, Lcom/htc/music/carmode/util/CarMusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v2, :cond_0

    .line 3448
    :try_start_0
    sget-object v2, Lcom/htc/music/carmode/util/CarMusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v3, -0x1

    invoke-interface {v2, v3}, Lcom/htc/music/IMediaPlaybackService;->getPluginDescription(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3455
    .local v0, e:Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-object v1

    .line 3449
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_0
    move-exception v0

    .line 3450
    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 3451
    const-string v2, "[CarMusicUtils]"

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
    .line 454
    const/4 v0, 0x0

    .line 455
    .local v0, mode:I
    sget-object v1, Lcom/htc/music/carmode/util/CarMusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v1, :cond_0

    .line 457
    :try_start_0
    sget-object v1, Lcom/htc/music/carmode/util/CarMusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->getShuffleMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 461
    :cond_0
    :goto_0
    return v0

    .line 458
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getCursorForArtist(Landroid/content/Context;I)Landroid/database/Cursor;
    .locals 7
    .parameter "context"
    .parameter "id"

    .prologue
    .line 685
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "album_id"

    aput-object v1, v2, v0

    .line 688
    .local v2, ccols:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "artist_id="

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

    .line 690
    .local v3, where:Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "album COLLATE NOCASE ASC,track"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/carmode/util/CarMusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 693
    .local v6, cursor:Landroid/database/Cursor;
    return-object v6
.end method

.method public static getCursorForGenre(Landroid/content/Context;I)Landroid/database/Cursor;
    .locals 10
    .parameter "context"
    .parameter "id"

    .prologue
    const/4 v1, 0x1

    const/4 v8, 0x0

    const/4 v4, 0x0

    .line 724
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v8

    const-string v0, "album_id"

    aput-object v0, v2, v1

    .line 727
    .local v2, ccols:[Ljava/lang/String;
    const-string v5, "album COLLATE NOCASE ASC, track"

    .line 729
    .local v5, sortOrder:Ljava/lang/String;
    const-string v0, "%d"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v8

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v4, v0, v4}, Lcom/htc/music/carmode/util/CarMusicUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 730
    .local v7, where:Ljava/lang/String;
    const-string v0, "[CarMusicUtils]"

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

    .line 732
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 733
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/carmode/util/CarMusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 741
    .local v6, cursor:Landroid/database/Cursor;
    :goto_0
    return-object v6

    .line 736
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_0
    const-string v0, "external"

    int-to-long v8, p1

    invoke-static {v0, v8, v9}, Landroid/provider/MediaStore$Audio$Genres$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/carmode/util/CarMusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .restart local v6       #cursor:Landroid/database/Cursor;
    goto :goto_0
.end method

.method public static getDLNAArtwork(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "context"
    .parameter "filepath"
    .parameter "icon"

    .prologue
    .line 2229
    invoke-static {p0, p1}, Lcom/htc/music/carmode/util/CarMusicUtils;->getDLNAThumb(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2232
    .local v2, thumb:Landroid/graphics/Bitmap;
    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 2233
    .local v0, defSize:I
    const/4 v1, 0x0

    .line 2240
    .local v1, fin:Landroid/graphics/Bitmap;
    if-eqz v2, :cond_0

    if-lez v0, :cond_0

    .line 2241
    const/4 v3, 0x1

    invoke-static {v2, v0, v0, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2248
    :cond_0
    return-object v1
.end method

.method public static getDLNAAssetFileDescriptor(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 7
    .parameter "context"
    .parameter "filepath"

    .prologue
    const/4 v4, 0x0

    .line 2256
    const/4 v1, 0x0

    .line 2259
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

    .line 2283
    :cond_0
    :goto_0
    return-object v0

    .line 2264
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

    .line 2266
    .local v3, uri:Landroid/net/Uri;
    const/4 v0, 0x0

    .line 2269
    .local v0, afDescriptor:Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    const-string v5, "r"

    invoke-virtual {v1, v3, v5}, Landroid/content/ContentProviderClient;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 2278
    :goto_1
    if-nez v0, :cond_0

    move-object v0, v4

    .line 2283
    goto :goto_0

    .line 2270
    :catch_0
    move-exception v2

    .line 2272
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 2273
    .end local v2           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 2275
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

    .line 2289
    const/4 v2, 0x0

    .line 2292
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

    .line 2356
    :cond_0
    :goto_0
    return-object v1

    .line 2298
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

    .line 2304
    .local v5, uri:Landroid/net/Uri;
    const/4 v0, 0x0

    .line 2305
    .local v0, afDescriptor:Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    const-string v7, "r"

    invoke-virtual {v2, v5, v7}, Landroid/content/ContentProviderClient;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2317
    const/4 v1, 0x0

    .line 2318
    .local v1, bitmap:Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .line 2319
    .local v4, pfDescriptor:Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 2321
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 2322
    .local v3, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v7, 0x1

    iput-boolean v7, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 2323
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8, v3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 2327
    const/4 v7, 0x0

    iput-boolean v7, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 2328
    const/4 v7, 0x0

    iput-boolean v7, v3, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 2329
    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v7, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 2332
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8, v3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2342
    .end local v3           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_2
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2353
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v4           #pfDescriptor:Landroid/os/ParcelFileDescriptor;
    :cond_3
    :goto_1
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    .line 2354
    const/4 v2, 0x0

    move-object v1, v6

    .line 2356
    goto :goto_0

    .line 2348
    :catch_0
    move-exception v7

    goto :goto_1
.end method

.method public static getDate(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "date"

    .prologue
    .line 3325
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "date_format"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3326
    .local v0, format:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 3327
    const-string v0, "MM-dd-yyyy"

    .line 3329
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "time_12_24"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3330
    .local v3, setting:Ljava/lang/String;
    const-string v4, "24"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 3332
    .local v2, is24Hour:Z
    if-eqz v2, :cond_1

    .line 3333
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " kk:mm:ss"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3338
    :goto_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 3339
    .local v1, formatter:Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 3335
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

    .line 2739
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

    .line 2746
    invoke-static/range {v0 .. v5}, Lcom/htc/music/carmode/util/CarMusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2747
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

    .line 2751
    const-string v8, "[CarMusicUtils]"

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

    .line 2752
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 2753
    .local v6, resolver:Landroid/content/ContentResolver;
    invoke-static {p0, p1}, Lcom/htc/music/carmode/util/CarMusicUtils;->getDrmCursor(Landroid/content/Context;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v3

    .line 2754
    .local v3, drmCursor:Landroid/database/Cursor;
    if-nez v3, :cond_0

    .line 2755
    const-string v8, "[CarMusicUtils]"

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

    .line 2841
    :goto_0
    return v7

    .line 2759
    :cond_0
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-nez v8, :cond_1

    .line 2760
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 2761
    const/4 v3, 0x0

    .line 2762
    const-string v8, "[CarMusicUtils]"

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

    .line 2766
    :cond_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2767
    const/4 v7, 0x0

    .line 2769
    .local v7, status:I
    const-string v8, "message_type"

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2771
    .local v5, messageType:Ljava/lang/String;
    const-string v8, "delivery_type"

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 2773
    .local v1, deliveryType:I
    const-string v8, "_data"

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2774
    .local v0, data:Ljava/lang/String;
    const/4 v2, 0x0

    .line 2775
    .local v2, drmConstraint:Landroid/provider/DrmStore$DrmConstraint;
    const-string v8, "[CarMusicUtils]"

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

    .line 2778
    packed-switch v1, :pswitch_data_0

    .line 2834
    const-string v8, "[CarMusicUtils]"

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

    .line 2835
    const/4 v7, -0x1

    .line 2839
    :goto_1
    :pswitch_0
    :sswitch_0
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 2840
    const/4 v3, 0x0

    .line 2841
    goto :goto_0

    .line 2784
    :pswitch_1
    invoke-static {v6, p1, v11}, Landroid/provider/DrmStore;->getDrmConstraint(Landroid/content/ContentResolver;Landroid/net/Uri;I)Landroid/provider/DrmStore$DrmConstraint;

    move-result-object v2

    .line 2786
    if-nez v2, :cond_2

    .line 2787
    const-string v8, "[CarMusicUtils]"

    const-string v9, "COMBINED DELIVERY: No rights"

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2788
    const/4 v7, 0x1

    goto :goto_1

    .line 2790
    :cond_2
    invoke-static {v6, v2, p1}, Landroid/provider/DrmStore;->checkExpiration(Landroid/content/ContentResolver;Landroid/provider/DrmStore$DrmConstraint;Landroid/net/Uri;)I

    move-result v4

    .line 2791
    .local v4, error:I
    const-string v8, "[CarMusicUtils]"

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

    .line 2792
    sparse-switch v4, :sswitch_data_0

    .line 2800
    const/4 v7, 0x1

    goto :goto_1

    .line 2796
    :sswitch_1
    const/4 v7, 0x4

    .line 2797
    goto :goto_1

    .line 2808
    .end local v4           #error:I
    :pswitch_2
    invoke-static {v6, p1, v11}, Landroid/provider/DrmStore;->getDrmConstraint(Landroid/content/ContentResolver;Landroid/net/Uri;I)Landroid/provider/DrmStore$DrmConstraint;

    move-result-object v2

    .line 2810
    if-nez v2, :cond_3

    .line 2811
    const-string v8, "[CarMusicUtils]"

    const-string v9, "DRM SEPARATE DELIVERY: No rights"

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2812
    const/4 v7, 0x3

    goto :goto_1

    .line 2814
    :cond_3
    invoke-static {v6, v2, p1}, Landroid/provider/DrmStore;->checkExpiration(Landroid/content/ContentResolver;Landroid/provider/DrmStore$DrmConstraint;Landroid/net/Uri;)I

    move-result v4

    .line 2815
    .restart local v4       #error:I
    const-string v8, "[CarMusicUtils]"

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

    .line 2816
    packed-switch v4, :pswitch_data_1

    .line 2827
    :pswitch_3
    const/4 v7, 0x2

    goto :goto_1

    .line 2820
    :pswitch_4
    const/4 v7, 0x4

    .line 2821
    goto :goto_1

    .line 2823
    :pswitch_5
    const/4 v7, 0x3

    .line 2824
    goto :goto_1

    .line 2778
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 2792
    :sswitch_data_0
    .sparse-switch
        -0x5 -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch

    .line 2816
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

    .line 2699
    const/4 v8, -0x1

    .line 2700
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

    invoke-static/range {v0 .. v5}, Lcom/htc/music/carmode/util/CarMusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2703
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lt v0, v9, :cond_0

    .line 2704
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2705
    const-string v0, "_size"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 2706
    .local v7, i:I
    if-ltz v7, :cond_0

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_0

    .line 2707
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 2710
    .end local v7           #i:I
    :cond_0
    if-eqz v6, :cond_1

    .line 2711
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2712
    const/4 v6, 0x0

    .line 2714
    :cond_1
    return v8
.end method

.method public static getDrmType(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 6
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 2845
    const/4 v0, 0x0

    .line 2847
    .local v0, deliveryType:I
    invoke-static {p0, p1}, Lcom/htc/music/carmode/util/CarMusicUtils;->getDrmCursor(Landroid/content/Context;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v2

    .line 2848
    .local v2, drmCursor:Landroid/database/Cursor;
    if-nez v2, :cond_0

    .line 2849
    const-string v3, "[CarMusicUtils]"

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

    .line 2868
    .end local v0           #deliveryType:I
    .local v1, deliveryType:I
    :goto_0
    return v1

    .line 2853
    .end local v1           #deliveryType:I
    .restart local v0       #deliveryType:I
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 2854
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2855
    const/4 v2, 0x0

    .line 2856
    const-string v3, "[CarMusicUtils]"

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

    .line 2857
    .end local v0           #deliveryType:I
    .restart local v1       #deliveryType:I
    goto :goto_0

    .line 2860
    .end local v1           #deliveryType:I
    .restart local v0       #deliveryType:I
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2862
    const-string v3, "delivery_type"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 2864
    const-string v3, "[CarMusicUtils]"

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

    .line 2866
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2867
    const/4 v2, 0x0

    move v1, v0

    .line 2868
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

    .line 2872
    const/4 v7, 0x0

    .line 2874
    .local v7, deliveryType:I
    const-string v3, "_data=?"

    .line 2875
    .local v3, where:Ljava/lang/String;
    new-array v4, v5, [Ljava/lang/String;

    aput-object p1, v4, v1

    .line 2879
    .local v4, selectionArgs:[Ljava/lang/String;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v1

    const-string v0, "delivery_type"

    aput-object v0, v2, v5

    .line 2882
    .local v2, cols:[Ljava/lang/String;
    sget-object v1, Landroid/provider/DrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/carmode/util/CarMusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2883
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 2884
    const-string v0, "[CarMusicUtils]"

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

    .line 2900
    .end local v7           #deliveryType:I
    .local v8, deliveryType:I
    :goto_0
    return v8

    .line 2888
    .end local v8           #deliveryType:I
    .restart local v7       #deliveryType:I
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 2889
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2890
    const/4 v6, 0x0

    .line 2891
    const-string v0, "[CarMusicUtils]"

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

    .line 2892
    .end local v7           #deliveryType:I
    .restart local v8       #deliveryType:I
    goto :goto_0

    .line 2895
    .end local v8           #deliveryType:I
    .restart local v7       #deliveryType:I
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2896
    const-string v0, "delivery_type"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 2897
    const-string v0, "[CarMusicUtils]"

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

    .line 2898
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2899
    const/4 v6, 0x0

    move v8, v7

    .line 2900
    .end local v7           #deliveryType:I
    .restart local v8       #deliveryType:I
    goto :goto_0
.end method

.method private static getFileSize(Ljava/io/File;)J
    .locals 9
    .parameter "file"

    .prologue
    .line 529
    const-wide/16 v5, 0x0

    .line 531
    .local v5, size:J
    if-nez p0, :cond_0

    .line 532
    const-wide/16 v7, 0x0

    .line 541
    :goto_0
    return-wide v7

    .line 533
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 534
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v7

    goto :goto_0

    .line 536
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 537
    .local v2, files:[Ljava/io/File;
    if-eqz v2, :cond_2

    .line 538
    move-object v0, v2

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v1, v0, v3

    .line 539
    .local v1, currentFile:Ljava/io/File;
    invoke-static {v1}, Lcom/htc/music/carmode/util/CarMusicUtils;->getFileSize(Ljava/io/File;)J

    move-result-wide v7

    add-long/2addr v5, v7

    .line 538
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0           #arr$:[Ljava/io/File;
    .end local v1           #currentFile:Ljava/io/File;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_2
    move-wide v7, v5

    .line 541
    goto :goto_0
.end method

.method public static getIntPref(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 3
    .parameter "context"
    .parameter "name"
    .parameter "def"

    .prologue
    .line 2363
    const-string v1, "com.htc.music"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2365
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static declared-synchronized getIsInternalEnough()Z
    .locals 2

    .prologue
    .line 484
    const-class v0, Lcom/htc/music/carmode/util/CarMusicUtils;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/htc/music/carmode/util/CarMusicUtils;->IsInternalEnough:Z
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
    .line 4024
    const-string v0, "android.intent.action.MAIN"

    .line 4025
    .local v0, ACTION_LAUNCH:Ljava/lang/String;
    new-instance v2, Landroid/content/ComponentName;

    const-string v4, "com.amazon.mp3"

    const-string v5, "com.amazon.mp3.client.activity.LauncherActivity"

    invoke-direct {v2, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4026
    .local v2, Mp3Component:Landroid/content/ComponentName;
    const/high16 v1, 0x1000

    .line 4028
    .local v1, FLAG_ACTIVITY_NEW_TASK:I
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 4029
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4030
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4034
    invoke-virtual {v3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4035
    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 4037
    return-object v3
.end method

.method public static getLaunchVMMIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 4403
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.vmm.music.ListView"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4404
    .local v0, intent:Landroid/content/Intent;
    return-object v0
.end method

.method public static getLaunchVerizonMODIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 4013
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.pv.verizon.mod.ACTION_START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4014
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "getContent"

    const-string v2, "wh|track"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4016
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

    .line 4140
    if-nez p0, :cond_1

    .line 4158
    :cond_0
    :goto_0
    return-object v3

    .line 4141
    :cond_1
    if-eqz p1, :cond_0

    .line 4142
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 4143
    .local v3, markedString:Landroid/text/SpannableString;
    if-eqz p2, :cond_0

    .line 4146
    const/4 v2, -0x1

    .line 4147
    .local v2, index:I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 4148
    .local v1, filterLength:I
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, p2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-le v2, v7, :cond_0

    .line 4149
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v5, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int v6, v1, v2

    invoke-virtual {v3, v5, v2, v6, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 4151
    const-string v5, "com.htc.R.color.link_highlight"

    invoke-static {v5}, Lcom/htc/util/res/HtcResUtil;->getPrivateResID(Ljava/lang/String;)I

    move-result v0

    .line 4152
    .local v0, color:I
    if-eqz v0, :cond_0

    .line 4153
    const-string v5, "input_text_selection_highlight"

    invoke-static {p0, v5, v0}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinColorResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    .line 4154
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

    .line 4685
    if-nez p1, :cond_1

    .line 4686
    const/4 v7, -0x1

    .line 4699
    :cond_0
    :goto_0
    return v7

    .line 4688
    :cond_1
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v8

    const-string v5, "name"

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    invoke-static/range {v0 .. v5}, Lcom/htc/music/carmode/util/CarMusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 4691
    .local v6, c:Landroid/database/Cursor;
    const/4 v7, -0x1

    .line 4692
    .local v7, id:I
    if-eqz v6, :cond_0

    .line 4693
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4694
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4695
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 4697
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

    .line 4664
    sget-object v1, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v8

    const-string v3, "name=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v8

    const-string v5, "name"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/carmode/util/CarMusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 4670
    .local v6, c:Landroid/database/Cursor;
    const/4 v7, -0x1

    .line 4671
    .local v7, id:I
    if-eqz v6, :cond_1

    .line 4672
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4673
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4674
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 4676
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4677
    const/4 v6, 0x0

    .line 4679
    :cond_1
    return v7
.end method

.method public static getPluginArtWorkPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 2178
    :try_start_0
    invoke-static {p0}, Lcom/htc/music/util/ProjectSettings;->getEnablePlugin(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/htc/music/carmode/util/CarMusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->isPluginMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2179
    sget-object v2, Lcom/htc/music/carmode/util/CarMusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getAlbumArtPath()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2188
    :cond_0
    :goto_0
    return-object v1

    .line 2183
    :catch_0
    move-exception v0

    .line 2184
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2186
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2187
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
    .line 3285
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 3286
    .local v3, where:Ljava/lang/StringBuilder;
    const-string v4, "title != \'\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3287
    if-eqz p0, :cond_0

    .line 3288
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

    .line 3292
    :cond_0
    if-eqz p1, :cond_1

    .line 3293
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

    .line 3296
    :cond_1
    if-eqz p3, :cond_2

    .line 3297
    invoke-static {p3}, Lcom/htc/music/carmode/util/CarMusicUtils;->isUnknownComposer(Ljava/lang/String;)Z

    move-result v2

    .line 3298
    .local v2, unknown:Z
    if-eqz v2, :cond_4

    .line 3299
    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3300
    invoke-static {v3}, Lcom/htc/music/carmode/util/CarMusicUtils;->appendUnknownComposerFilter(Ljava/lang/StringBuilder;)V

    .line 3307
    .end local v2           #unknown:Z
    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    .line 3308
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v0, v4

    .line 3309
    .local v0, gid:J
    const-wide/16 v4, -0x1

    cmp-long v4, v0, v4

    if-nez v4, :cond_5

    .line 3310
    const-string v4, " AND _id NOT IN (SELECT audio_id FROM audio_genres_map)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3316
    .end local v0           #gid:J
    :cond_3
    :goto_1
    const-string v4, " AND is_music>=1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3318
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 3302
    .restart local v2       #unknown:Z
    :cond_4
    const-string v4, "\'"

    const-string v5, "\'\'"

    invoke-virtual {p3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 3303
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

    .line 3312
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

    .line 3936
    if-nez p0, :cond_0

    .line 3937
    const-string v0, "[CarMusicUtils]"

    const-string v1, "getReflectionBitmap()...resource is null..."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3951
    :goto_0
    return-object v7

    .line 3941
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-gt v0, p1, :cond_1

    .line 3942
    const-string v0, "[CarMusicUtils]"

    const-string v1, "resource.getHeight() <= height!!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3946
    :cond_1
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 3947
    .local v5, matrix:Landroid/graphics/Matrix;
    const/high16 v0, 0x3f80

    const/high16 v2, -0x4080

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 3948
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

    .line 3951
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
    .line 4436
    sget-object v5, Lcom/htc/music/carmode/util/CarMusicUtils;->mCoverPaint:Landroid/graphics/Paint;

    monitor-enter v5

    .line 4437
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    add-int/2addr v6, p1

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 4439
    .local v2, cleanAlbum:Landroid/graphics/Bitmap;
    const-string v4, "[CarMusicUtils]"

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

    .line 4441
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    .line 4442
    .local v1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 4443
    sget-object v4, Lcom/htc/music/carmode/util/CarMusicUtils;->mCoverPaint:Landroid/graphics/Paint;

    const/16 v6, 0xff

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 4444
    const/4 v4, 0x0

    const/4 v6, 0x0

    sget-object v7, Lcom/htc/music/carmode/util/CarMusicUtils;->mCoverPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p0, v4, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 4446
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v4, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v6, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v2, v4, v6}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 4447
    .local v0, bsh:Landroid/graphics/BitmapShader;
    new-instance v3, Landroid/graphics/ComposeShader;

    invoke-direct {v3, v0, p3, p2}, Landroid/graphics/ComposeShader;-><init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/Xfermode;)V

    .line 4448
    .local v3, reflectionShader:Landroid/graphics/ComposeShader;
    const/high16 v4, 0x3f80

    const/high16 v6, -0x4080

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v1, v4, v6, v7, v8}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 4450
    sget-object v4, Lcom/htc/music/carmode/util/CarMusicUtils;->mCoverPaint:Landroid/graphics/Paint;

    const/16 v6, 0x40

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 4451
    sget-object v4, Lcom/htc/music/carmode/util/CarMusicUtils;->mCoverPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 4452
    new-instance v4, Landroid/graphics/Rect;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    sub-int/2addr v9, p1

    invoke-direct {v4, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v6, Lcom/htc/music/carmode/util/CarMusicUtils;->mCoverPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 4453
    sget-object v4, Lcom/htc/music/carmode/util/CarMusicUtils;->mCoverPaint:Landroid/graphics/Paint;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 4455
    if-eqz p0, :cond_0

    .line 4456
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 4459
    :cond_0
    monitor-exit v5

    return-object v2

    .line 4460
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
    .line 3955
    invoke-static {p0}, Lcom/htc/music/carmode/util/CarMusicUtils;->createBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3956
    .local v0, photo:Landroid/graphics/Bitmap;
    invoke-static {v0, p1}, Lcom/htc/music/carmode/util/CarMusicUtils;->getReflectionBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static getShareMusicText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "context"
    .parameter "szTrackName"
    .parameter "szAlbumName"
    .parameter "szArtistName"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 4547
    if-nez p0, :cond_0

    .line 4548
    const-string v4, "[CarMusicUtils]"

    const-string v5, "context can\'t be null!!"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4549
    const/4 v3, 0x0

    .line 4582
    :goto_0
    return-object v3

    .line 4552
    :cond_0
    const-string v4, "[CarMusicUtils]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getShareMusicText:szTrackName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",szAlbumName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",szArtistName"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4555
    move-object v0, p2

    .line 4556
    .local v0, albumName:Ljava/lang/String;
    move-object v1, p3

    .line 4557
    .local v1, artistName:Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v4, "<unknown>"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4558
    :cond_1
    const v4, 0x7f07004e

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4560
    :cond_2
    if-eqz v1, :cond_3

    const-string v4, "<unknown>"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 4561
    :cond_3
    const v4, 0x7f07004d

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4563
    :cond_4
    const/4 v3, 0x0

    .line 4565
    .local v3, result:Ljava/lang/String;
    if-eqz p1, :cond_6

    .line 4566
    const v4, 0x7f070120

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4567
    .local v2, f:Ljava/lang/String;
    const-string v4, "%1s"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 4568
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

    .line 4571
    :cond_5
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v7

    aput-object v0, v4, v8

    aput-object v1, v4, v9

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 4574
    .end local v2           #f:Ljava/lang/String;
    :cond_6
    const v4, 0x7f070121

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4575
    .restart local v2       #f:Ljava/lang/String;
    const-string v4, "%2s"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 4576
    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "%2s"

    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "%3s"

    invoke-virtual {v4, v5, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 4578
    :cond_7
    new-array v4, v9, [Ljava/lang/Object;

    aput-object v0, v4, v7

    aput-object v1, v4, v8

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0
.end method

.method public static getSongListForAlbum(Landroid/content/Context;I)[I
    .locals 8
    .parameter "context"
    .parameter "id"

    .prologue
    .line 941
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    .line 944
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

    .line 946
    .local v3, where:Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "track"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/carmode/util/CarMusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 949
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 950
    invoke-static {v6}, Lcom/htc/music/carmode/util/CarMusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v7

    .line 951
    .local v7, list:[I
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 952
    const/4 v6, 0x0

    .line 955
    .end local v7           #list:[I
    :goto_0
    return-object v7

    :cond_0
    sget-object v7, Lcom/htc/music/carmode/util/CarMusicUtils;->sEmptyList:[I

    goto :goto_0
.end method

.method public static getSongListForAlbum(Landroid/content/Context;III)[I
    .locals 12
    .parameter "context"
    .parameter "type"
    .parameter "id"
    .parameter "albumId"

    .prologue
    .line 1058
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "album_id"

    aput-object v1, v2, v0

    .line 1062
    .local v2, ccols:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 1063
    .local v6, artistId:Ljava/lang/String;
    const/4 v9, 0x0

    .line 1064
    .local v9, genreId:Ljava/lang/String;
    const/4 v7, 0x0

    .line 1066
    .local v7, composerId:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 1075
    :goto_0
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6, v9, v7}, Lcom/htc/music/carmode/util/CarMusicUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1076
    .local v11, where:Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v11}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "track"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/carmode/util/CarMusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1079
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_0

    .line 1080
    invoke-static {v8}, Lcom/htc/music/carmode/util/CarMusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v10

    .line 1081
    .local v10, list:[I
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1082
    const/4 v8, 0x0

    .line 1086
    .end local v10           #list:[I
    :goto_1
    return-object v10

    .line 1068
    .end local v8           #cursor:Landroid/database/Cursor;
    .end local v11           #where:Ljava/lang/String;
    :pswitch_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 1069
    goto :goto_0

    .line 1071
    :pswitch_1
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 1086
    .restart local v8       #cursor:Landroid/database/Cursor;
    .restart local v11       #where:Ljava/lang/String;
    :cond_0
    sget-object v10, Lcom/htc/music/carmode/util/CarMusicUtils;->sEmptyList:[I

    goto :goto_1

    .line 1066
    nop

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

    .line 3197
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    .line 3200
    .local v2, ccols:[Ljava/lang/String;
    const-string v5, "track"

    .line 3201
    .local v5, mSortOrder:Ljava/lang/String;
    const/4 v6, 0x0

    .line 3202
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 3203
    sget-object v1, Lcom/htc/music/carmode/util/CarMusicUtils$Media2;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v0, p0

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/htc/music/carmode/util/CarMusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3210
    :goto_0
    if-eqz v6, :cond_1

    .line 3211
    invoke-static {v6}, Lcom/htc/music/carmode/util/CarMusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v7

    .line 3212
    .local v7, list:[I
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3213
    const/4 v6, 0x0

    .line 3216
    .end local v7           #list:[I
    :goto_1
    return-object v7

    .line 3206
    :cond_0
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v0, p0

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/htc/music/carmode/util/CarMusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    goto :goto_0

    .line 3216
    :cond_1
    sget-object v7, Lcom/htc/music/carmode/util/CarMusicUtils;->sEmptyList:[I

    goto :goto_1
.end method

.method public static getSongListForAlbum(Landroid/content/Context;Ljava/lang/String;)[I
    .locals 1
    .parameter "context"
    .parameter "where"

    .prologue
    .line 3193
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/htc/music/carmode/util/CarMusicUtils;->getSongListForAlbum(Landroid/content/Context;ILjava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public static getSongListForAlbumAndPrepare(Landroid/content/Context;I)[I
    .locals 11
    .parameter "context"
    .parameter "id"

    .prologue
    .line 774
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "album_id"

    aput-object v1, v2, v0

    .line 777
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

    .line 779
    .local v3, where:Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "track"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/carmode/util/CarMusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 782
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 783
    invoke-static {v7}, Lcom/htc/music/carmode/util/CarMusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v10

    .line 784
    .local v10, list:[I
    array-length v9, v10

    .line 785
    .local v9, len:I
    new-array v6, v9, [I

    .line 786
    .local v6, albumlist:[I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-ge v8, v9, :cond_0

    .line 787
    aput p1, v6, v8

    .line 786
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 788
    :cond_0
    invoke-static {v6}, Lcom/htc/music/carmode/util/CarMusicUtils;->prepareAlbumList([I)V

    .line 789
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 790
    const/4 v7, 0x0

    .line 793
    .end local v6           #albumlist:[I
    .end local v8           #i:I
    .end local v9           #len:I
    .end local v10           #list:[I
    :goto_1
    return-object v10

    :cond_1
    sget-object v10, Lcom/htc/music/carmode/util/CarMusicUtils;->sEmptyList:[I

    goto :goto_1
.end method

.method public static getSongListForAlbumAndPrepare(Landroid/content/Context;Ljava/lang/String;I)[I
    .locals 11
    .parameter "context"
    .parameter "where"
    .parameter "id"

    .prologue
    .line 3240
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "album_id"

    aput-object v1, v2, v0

    .line 3243
    .local v2, ccols:[Ljava/lang/String;
    const-string v5, "album COLLATE NOCASE ASC , track COLLATE NOCASE ASC"

    .line 3245
    .local v5, mSortOrder:Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/htc/music/carmode/util/CarMusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 3248
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 3249
    invoke-static {v7}, Lcom/htc/music/carmode/util/CarMusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v10

    .line 3250
    .local v10, list:[I
    array-length v9, v10

    .line 3251
    .local v9, len:I
    new-array v6, v9, [I

    .line 3252
    .local v6, albumlist:[I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-ge v8, v9, :cond_0

    .line 3253
    aput p2, v6, v8

    .line 3252
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 3254
    :cond_0
    invoke-static {v6}, Lcom/htc/music/carmode/util/CarMusicUtils;->prepareAlbumList([I)V

    .line 3255
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 3256
    const/4 v7, 0x0

    .line 3259
    .end local v6           #albumlist:[I
    .end local v8           #i:I
    .end local v9           #len:I
    .end local v10           #list:[I
    :goto_1
    return-object v10

    :cond_1
    sget-object v10, Lcom/htc/music/carmode/util/CarMusicUtils;->sEmptyList:[I

    goto :goto_1
.end method

.method private static getSongListForAllPlaylistAndPrepare(Landroid/content/Context;)[I
    .locals 20
    .parameter "context"

    .prologue
    .line 797
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v3, v1

    .line 800
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

    .line 805
    .local v10, ccols:[Ljava/lang/String;
    const/16 v16, 0x0

    .line 806
    .local v16, playlistCursor:Landroid/database/Cursor;
    const/16 v18, 0x0

    .line 807
    .local v18, result:Landroid/database/Cursor;
    const/4 v12, 0x0

    .line 808
    .local v12, cursors:[Landroid/database/Cursor;
    const/4 v14, 0x0

    .line 810
    .local v14, len:I
    :try_start_0
    const-string v1, "external"

    invoke-static {v1}, Landroid/provider/MediaStore$Audio$Playlists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "name"

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v6}, Lcom/htc/music/carmode/util/CarMusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 813
    if-eqz v16, :cond_a

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_a

    .line 814
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v14

    .line 815
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    .line 816
    const-string v1, "_id"

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 817
    .local v11, colidx:I
    new-array v12, v14, [Landroid/database/Cursor;

    .line 818
    const/4 v13, 0x0

    .local v13, i:I
    :goto_0
    if-ge v13, v14, :cond_0

    .line 819
    move-object/from16 v0, v16

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 820
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

    invoke-static/range {v4 .. v9}, Lcom/htc/music/carmode/util/CarMusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    aput-object v1, v12, v13

    .line 823
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    .line 818
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 825
    .end local v17           #plid:I
    :cond_0
    new-instance v19, Landroid/database/MergeCursor;

    move-object/from16 v0, v19

    invoke-direct {v0, v12}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 826
    .end local v18           #result:Landroid/database/Cursor;
    .local v19, result:Landroid/database/Cursor;
    if-eqz v19, :cond_9

    .line 827
    :try_start_1
    invoke-static/range {v19 .. v19}, Lcom/htc/music/carmode/util/CarMusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v15

    .line 828
    .local v15, list:[I
    invoke-static/range {v19 .. v19}, Lcom/htc/music/carmode/util/CarMusicUtils;->prepareAlbumList(Landroid/database/Cursor;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 833
    if-eqz v16, :cond_1

    .line 834
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 835
    const/16 v16, 0x0

    .line 837
    :cond_1
    if-eqz v19, :cond_e

    .line 838
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 839
    const/16 v18, 0x0

    .line 841
    .end local v19           #result:Landroid/database/Cursor;
    .restart local v18       #result:Landroid/database/Cursor;
    :goto_1
    const/4 v13, 0x0

    :goto_2
    if-ge v13, v14, :cond_5

    .line 842
    aget-object v1, v12, v13

    if-eqz v1, :cond_2

    .line 843
    aget-object v1, v12, v13

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 844
    const/4 v1, 0x0

    aput-object v1, v12, v13

    .line 841
    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 833
    .end local v11           #colidx:I
    .end local v15           #list:[I
    :cond_3
    throw v1

    .line 848
    :cond_4
    sget-object v15, Lcom/htc/music/carmode/util/CarMusicUtils;->sEmptyList:[I

    :cond_5
    return-object v15

    .line 833
    .end local v13           #i:I
    :catchall_0
    move-exception v1

    :goto_3
    if-eqz v16, :cond_6

    .line 834
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 835
    const/16 v16, 0x0

    .line 837
    :cond_6
    if-eqz v18, :cond_7

    .line 838
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 839
    const/16 v18, 0x0

    .line 841
    :cond_7
    const/4 v13, 0x0

    .restart local v13       #i:I
    :goto_4
    if-ge v13, v14, :cond_3

    .line 842
    aget-object v2, v12, v13

    if-eqz v2, :cond_8

    .line 843
    aget-object v2, v12, v13

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 844
    const/4 v2, 0x0

    aput-object v2, v12, v13

    .line 841
    :cond_8
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .end local v18           #result:Landroid/database/Cursor;
    .restart local v11       #colidx:I
    .restart local v19       #result:Landroid/database/Cursor;
    :cond_9
    move-object/from16 v18, v19

    .line 833
    .end local v11           #colidx:I
    .end local v13           #i:I
    .end local v19           #result:Landroid/database/Cursor;
    .restart local v18       #result:Landroid/database/Cursor;
    :cond_a
    if-eqz v16, :cond_b

    .line 834
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 835
    const/16 v16, 0x0

    .line 837
    :cond_b
    if-eqz v18, :cond_c

    .line 838
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 839
    const/16 v18, 0x0

    .line 841
    :cond_c
    const/4 v13, 0x0

    .restart local v13       #i:I
    :goto_5
    if-ge v13, v14, :cond_4

    .line 842
    aget-object v1, v12, v13

    if-eqz v1, :cond_d

    .line 843
    aget-object v1, v12, v13

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 844
    const/4 v1, 0x0

    aput-object v1, v12, v13

    .line 841
    :cond_d
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 833
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
    .line 895
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/htc/music/carmode/util/CarMusicUtils;->getSongListForArtist(Landroid/content/Context;II)[I

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

    .line 899
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    .line 902
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

    .line 904
    .local v3, where:Ljava/lang/String;
    const/4 v6, 0x0

    .line 905
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 906
    sget-object v1, Lcom/htc/music/carmode/util/CarMusicUtils$Media2;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v5, "album COLLATE NOCASE ASC,track"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/carmode/util/CarMusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 913
    :goto_0
    if-eqz v6, :cond_1

    .line 914
    invoke-static {v6}, Lcom/htc/music/carmode/util/CarMusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v7

    .line 915
    .local v7, list:[I
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 916
    const/4 v6, 0x0

    .line 919
    .end local v7           #list:[I
    :goto_1
    return-object v7

    .line 909
    :cond_0
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v5, "album COLLATE NOCASE ASC,track"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/carmode/util/CarMusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    goto :goto_0

    .line 919
    :cond_1
    sget-object v7, Lcom/htc/music/carmode/util/CarMusicUtils;->sEmptyList:[I

    goto :goto_1
.end method

.method public static getSongListForArtist(Landroid/content/Context;Ljava/lang/String;)[I
    .locals 8
    .parameter "context"
    .parameter "where"

    .prologue
    .line 3220
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    .line 3224
    .local v2, ccols:[Ljava/lang/String;
    const-string v5, "artist COLLATE NOCASE ASC , title COLLATE NOCASE ASC"

    .line 3227
    .local v5, mSortOrder:Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/htc/music/carmode/util/CarMusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3230
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 3231
    invoke-static {v6}, Lcom/htc/music/carmode/util/CarMusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v7

    .line 3232
    .local v7, list:[I
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3233
    const/4 v6, 0x0

    .line 3236
    .end local v7           #list:[I
    :goto_0
    return-object v7

    :cond_0
    sget-object v7, Lcom/htc/music/carmode/util/CarMusicUtils;->sEmptyList:[I

    goto :goto_0
.end method

.method public static getSongListForArtistAndPrepare(Landroid/content/Context;I)[I
    .locals 8
    .parameter "context"
    .parameter "id"

    .prologue
    .line 666
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "album_id"

    aput-object v1, v2, v0

    .line 669
    .local v2, ccols:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "artist_id="

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

    .line 671
    .local v3, where:Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "album COLLATE NOCASE ASC,track"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/carmode/util/CarMusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 674
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 675
    invoke-static {v6}, Lcom/htc/music/carmode/util/CarMusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v7

    .line 676
    .local v7, list:[I
    invoke-static {v6}, Lcom/htc/music/carmode/util/CarMusicUtils;->prepareAlbumList(Landroid/database/Cursor;)Z

    .line 677
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 678
    const/4 v6, 0x0

    .line 681
    .end local v7           #list:[I
    :goto_0
    return-object v7

    :cond_0
    sget-object v7, Lcom/htc/music/carmode/util/CarMusicUtils;->sEmptyList:[I

    goto :goto_0
.end method

.method public static getSongListForArtistAndPrepare(Landroid/content/Context;Ljava/lang/String;)[I
    .locals 8
    .parameter "context"
    .parameter "where"

    .prologue
    .line 3263
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "album_id"

    aput-object v1, v2, v0

    .line 3267
    .local v2, ccols:[Ljava/lang/String;
    const-string v5, "artist COLLATE NOCASE ASC , title COLLATE NOCASE ASC"

    .line 3270
    .local v5, mSortOrder:Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/htc/music/carmode/util/CarMusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3273
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 3274
    invoke-static {v6}, Lcom/htc/music/carmode/util/CarMusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v7

    .line 3275
    .local v7, list:[I
    invoke-static {v6}, Lcom/htc/music/carmode/util/CarMusicUtils;->prepareAlbumList(Landroid/database/Cursor;)Z

    .line 3276
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3277
    const/4 v6, 0x0

    .line 3280
    .end local v7           #list:[I
    :goto_0
    return-object v7

    :cond_0
    sget-object v7, Lcom/htc/music/carmode/util/CarMusicUtils;->sEmptyList:[I

    goto :goto_0
.end method

.method public static getSongListForComposer(Landroid/content/Context;Ljava/lang/String;)[I
    .locals 9
    .parameter "context"
    .parameter "name"

    .prologue
    .line 1029
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "album_id"

    aput-object v1, v2, v0

    .line 1033
    .local v2, ccols:[Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1034
    .local v8, where:Ljava/lang/StringBuilder;
    invoke-static {p1}, Lcom/htc/music/carmode/util/CarMusicUtils;->isUnknownComposer(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1035
    const-string v0, "is_music>=1"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1036
    const-string v0, " AND "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1037
    invoke-static {v8}, Lcom/htc/music/carmode/util/CarMusicUtils;->appendUnknownComposerFilter(Ljava/lang/StringBuilder;)V

    .line 1044
    :goto_0
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "track"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/carmode/util/CarMusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1047
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 1048
    invoke-static {v6}, Lcom/htc/music/carmode/util/CarMusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v7

    .line 1049
    .local v7, list:[I
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1050
    const/4 v6, 0x0

    .line 1053
    .end local v7           #list:[I
    :goto_1
    return-object v7

    .line 1039
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_0
    const-string v0, "\'"

    const-string v1, "\'\'"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1040
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

    .line 1053
    .restart local v6       #cursor:Landroid/database/Cursor;
    :cond_1
    sget-object v7, Lcom/htc/music/carmode/util/CarMusicUtils;->sEmptyList:[I

    goto :goto_1
.end method

.method public static getSongListForComposerAndPrepare(Landroid/content/Context;Ljava/lang/String;)[I
    .locals 9
    .parameter "context"
    .parameter "name"

    .prologue
    .line 745
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "album_id"

    aput-object v1, v2, v0

    .line 749
    .local v2, ccols:[Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 750
    .local v8, where:Ljava/lang/StringBuilder;
    invoke-static {p1}, Lcom/htc/music/carmode/util/CarMusicUtils;->isUnknownComposer(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 751
    const-string v0, "is_music>=1"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 752
    const-string v0, " AND "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 753
    invoke-static {v8}, Lcom/htc/music/carmode/util/CarMusicUtils;->appendUnknownComposerFilter(Ljava/lang/StringBuilder;)V

    .line 760
    :goto_0
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "track"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/carmode/util/CarMusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 763
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 764
    invoke-static {v6}, Lcom/htc/music/carmode/util/CarMusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v7

    .line 765
    .local v7, list:[I
    invoke-static {v6}, Lcom/htc/music/carmode/util/CarMusicUtils;->prepareAlbumList(Landroid/database/Cursor;)Z

    .line 766
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 767
    const/4 v6, 0x0

    .line 770
    .end local v7           #list:[I
    :goto_1
    return-object v7

    .line 755
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_0
    const-string v0, "\'"

    const-string v1, "\'\'"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 756
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

    .line 770
    .restart local v6       #cursor:Landroid/database/Cursor;
    :cond_1
    sget-object v7, Lcom/htc/music/carmode/util/CarMusicUtils;->sEmptyList:[I

    goto :goto_1
.end method

.method public static getSongListForCursor(Landroid/database/Cursor;)[I
    .locals 5
    .parameter "cursor"

    .prologue
    .line 573
    if-nez p0, :cond_1

    .line 574
    sget-object v3, Lcom/htc/music/carmode/util/CarMusicUtils;->sEmptyList:[I

    .line 587
    :cond_0
    return-object v3

    .line 576
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 577
    .local v2, len:I
    new-array v3, v2, [I

    .line 578
    .local v3, list:[I
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 579
    const-string v4, "audio_id"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 580
    .local v0, colidx:I
    if-gez v0, :cond_2

    .line 581
    const-string v4, "_id"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 583
    :cond_2
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 584
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    aput v4, v3, v1

    .line 585
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 583
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

    .line 978
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v9

    const-string v0, "album_id"

    aput-object v0, v2, v1

    .line 981
    .local v2, ccols:[Ljava/lang/String;
    const-string v5, "album COLLATE NOCASE ASC, track"

    .line 983
    .local v5, sortOrder:Ljava/lang/String;
    const-string v0, "%d"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v9

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v4, v0, v4}, Lcom/htc/music/carmode/util/CarMusicUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 984
    .local v8, where:Ljava/lang/String;
    const-string v0, "[CarMusicUtils]"

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

    .line 985
    const/4 v6, 0x0

    .line 986
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 987
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/carmode/util/CarMusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 994
    :goto_0
    if-eqz v6, :cond_1

    .line 995
    invoke-static {v6}, Lcom/htc/music/carmode/util/CarMusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v7

    .line 996
    .local v7, list:[I
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 997
    const/4 v6, 0x0

    .line 1000
    .end local v7           #list:[I
    :goto_1
    return-object v7

    .line 990
    :cond_0
    const-string v0, "external"

    int-to-long v9, p1

    invoke-static {v0, v9, v10}, Landroid/provider/MediaStore$Audio$Genres$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/carmode/util/CarMusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    goto :goto_0

    .line 1000
    :cond_1
    sget-object v7, Lcom/htc/music/carmode/util/CarMusicUtils;->sEmptyList:[I

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

    .line 697
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v9

    const-string v0, "album_id"

    aput-object v0, v2, v1

    .line 700
    .local v2, ccols:[Ljava/lang/String;
    const-string v5, "album COLLATE NOCASE ASC, track"

    .line 702
    .local v5, sortOrder:Ljava/lang/String;
    const-string v0, "%d"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v9

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v4, v0, v4}, Lcom/htc/music/carmode/util/CarMusicUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 703
    .local v8, where:Ljava/lang/String;
    const-string v0, "[CarMusicUtils]"

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

    .line 705
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 706
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/carmode/util/CarMusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 713
    .local v6, cursor:Landroid/database/Cursor;
    :goto_0
    if-eqz v6, :cond_1

    .line 714
    invoke-static {v6}, Lcom/htc/music/carmode/util/CarMusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v7

    .line 715
    .local v7, list:[I
    invoke-static {v6}, Lcom/htc/music/carmode/util/CarMusicUtils;->prepareAlbumList(Landroid/database/Cursor;)Z

    .line 716
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 717
    const/4 v6, 0x0

    .line 720
    .end local v7           #list:[I
    :goto_1
    return-object v7

    .line 709
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_0
    const-string v0, "external"

    int-to-long v9, p1

    invoke-static {v0, v9, v10}, Landroid/provider/MediaStore$Audio$Genres$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/carmode/util/CarMusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .restart local v6       #cursor:Landroid/database/Cursor;
    goto :goto_0

    .line 720
    :cond_1
    sget-object v7, Lcom/htc/music/carmode/util/CarMusicUtils;->sEmptyList:[I

    goto :goto_1
.end method

.method public static getSongListForPlaylist(Landroid/content/Context;J)[I
    .locals 8
    .parameter "context"
    .parameter "plid"

    .prologue
    const/4 v3, 0x0

    .line 1091
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "audio_id"

    aput-object v1, v2, v0

    .line 1094
    .local v2, ccols:[Ljava/lang/String;
    const-string v0, "external"

    invoke-static {v0, p1, p2}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    const-string v5, "play_order"

    move-object v0, p0

    move-object v4, v3

    invoke-static/range {v0 .. v5}, Lcom/htc/music/carmode/util/CarMusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1097
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 1098
    invoke-static {v6}, Lcom/htc/music/carmode/util/CarMusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v7

    .line 1099
    .local v7, list:[I
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1100
    const/4 v6, 0x0

    .line 1103
    .end local v7           #list:[I
    :goto_0
    return-object v7

    :cond_0
    sget-object v7, Lcom/htc/music/carmode/util/CarMusicUtils;->sEmptyList:[I

    goto :goto_0
.end method

.method public static getSongListForPlaylistAndPrepare(Landroid/content/Context;J)[I
    .locals 8
    .parameter "context"
    .parameter "plid"

    .prologue
    const/4 v3, 0x0

    .line 852
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "audio_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "album_id"

    aput-object v1, v2, v0

    .line 855
    .local v2, ccols:[Ljava/lang/String;
    const-string v0, "external"

    invoke-static {v0, p1, p2}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    const-string v5, "play_order"

    move-object v0, p0

    move-object v4, v3

    invoke-static/range {v0 .. v5}, Lcom/htc/music/carmode/util/CarMusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 858
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 859
    invoke-static {v6}, Lcom/htc/music/carmode/util/CarMusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v7

    .line 860
    .local v7, list:[I
    invoke-static {v6}, Lcom/htc/music/carmode/util/CarMusicUtils;->prepareAlbumList(Landroid/database/Cursor;)Z

    .line 861
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 862
    const/4 v6, 0x0

    .line 865
    .end local v7           #list:[I
    :goto_0
    return-object v7

    :cond_0
    sget-object v7, Lcom/htc/music/carmode/util/CarMusicUtils;->sEmptyList:[I

    goto :goto_0
.end method

.method public static getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "name"
    .parameter "def"

    .prologue
    .line 2377
    const-string v1, "com.htc.music"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2379
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
    .line 2961
    const-string v0, "result"

    invoke-static {p0, v0, p1}, Lcom/htc/music/carmode/util/CarMusicUtils;->getIntPref(Landroid/content/Context;Ljava/lang/String;I)I

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
    .line 2989
    const-string v9, "selectedid"

    const-string v10, ""

    invoke-static {p0, v9, v10}, Lcom/htc/music/carmode/util/CarMusicUtils;->getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2990
    .local v7, q:Ljava/lang/String;
    const/4 v5, 0x0

    .line 2991
    .local v5, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_3

    .line 2992
    const-string v9, ";"

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2993
    .local v1, entries:[Ljava/lang/String;
    array-length v4, v1

    .line 2994
    .local v4, len:I
    new-instance v5, Ljava/util/ArrayList;

    .end local v5           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2995
    .restart local v5       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_3

    .line 2997
    aget-object v8, v1, v2

    .line 2998
    .local v8, revhex:Ljava/lang/String;
    const/4 v6, 0x0

    .line 2999
    .local v6, n:I
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v3, v9, -0x1

    .local v3, j:I
    :goto_1
    if-ltz v3, :cond_2

    .line 3000
    shl-int/lit8 v6, v6, 0x4

    .line 3001
    invoke-virtual {v8, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 3002
    .local v0, c:C
    const/16 v9, 0x30

    if-lt v0, v9, :cond_0

    const/16 v9, 0x39

    if-gt v0, v9, :cond_0

    .line 3003
    add-int/lit8 v9, v0, -0x30

    add-int/2addr v6, v9

    .line 2999
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 3004
    :cond_0
    const/16 v9, 0x61

    if-lt v0, v9, :cond_1

    const/16 v9, 0x66

    if-gt v0, v9, :cond_1

    .line 3005
    add-int/lit8 v9, v0, 0xa

    add-int/lit8 v9, v9, -0x61

    add-int/2addr v6, v9

    goto :goto_2

    .line 3008
    :cond_1
    const/4 v4, 0x0

    .line 3012
    .end local v0           #c:C
    :cond_2
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2995
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3018
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
    .line 2904
    const/4 v7, 0x0

    .line 2905
    .local v7, path:Ljava/lang/String;
    const/4 v2, 0x0

    .line 2907
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

    .line 2928
    .restart local v2       #cols:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 2930
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

    .line 2931
    .local v3, where:Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/carmode/util/CarMusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 2936
    return-object v6

    .line 2933
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

    .line 2718
    const/4 v8, -0x1

    .line 2719
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

    invoke-static/range {v0 .. v5}, Lcom/htc/music/carmode/util/CarMusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2723
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lt v0, v9, :cond_0

    .line 2724
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2725
    const-string v0, "_size"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 2726
    .local v7, i:I
    if-ltz v7, :cond_0

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_0

    .line 2727
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 2730
    .end local v7           #i:I
    :cond_0
    if-eqz v6, :cond_1

    .line 2731
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2732
    const/4 v6, 0x0

    .line 2734
    :cond_1
    return v8
.end method

.method public static hideDatabaseError(Landroid/app/Activity;)V
    .locals 2
    .parameter "a"

    .prologue
    .line 1661
    const v1, 0x7f080092

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1662
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1663
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1669
    :cond_0
    const v1, 0x102000a

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1670
    if-eqz v0, :cond_1

    .line 1671
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1673
    :cond_1
    return-void
.end method

.method public static idealByteArraySize(I)I
    .locals 3
    .parameter "need"

    .prologue
    const/4 v2, 0x1

    .line 4608
    const/4 v0, 0x4

    .local v0, i:I
    :goto_0
    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    .line 4609
    shl-int v1, v2, v0

    add-int/lit8 v1, v1, -0xc

    if-gt p0, v1, :cond_1

    .line 4610
    shl-int v1, v2, v0

    add-int/lit8 p0, v1, -0xc

    .line 4612
    .end local p0
    :cond_0
    return p0

    .line 4608
    .restart local p0
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static idealIntArraySize(I)I
    .locals 1
    .parameter "need"

    .prologue
    .line 4604
    mul-int/lit8 v0, p0, 0x4

    invoke-static {v0}, Lcom/htc/music/carmode/util/CarMusicUtils;->idealByteArraySize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public static initAlbumArtCache()V
    .locals 3

    .prologue
    .line 2057
    :try_start_0
    sget-object v2, Lcom/htc/music/carmode/util/CarMusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getMediaMountedCount()I

    move-result v1

    .line 2058
    .local v1, id:I
    sget v2, Lcom/htc/music/carmode/util/CarMusicUtils;->sArtCacheId:I

    if-eq v1, v2, :cond_0

    .line 2059
    invoke-static {}, Lcom/htc/music/carmode/util/CarMusicUtils;->clearAlbumArtCache()V

    .line 2060
    sput v1, Lcom/htc/music/carmode/util/CarMusicUtils;->sArtCacheId:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2065
    :cond_0
    :goto_0
    return-void

    .line 2062
    :catch_0
    move-exception v0

    .line 2063
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static intToFloatArray([I)[F
    .locals 3
    .parameter "intArray"

    .prologue
    .line 4356
    if-eqz p0, :cond_0

    array-length v2, p0

    if-gtz v2, :cond_2

    .line 4357
    :cond_0
    const/4 v0, 0x0

    .line 4365
    :cond_1
    return-object v0

    .line 4360
    :cond_2
    array-length v2, p0

    new-array v0, v2, [F

    .line 4361
    .local v0, floatArray:[F
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 4362
    aget v2, p0, v1

    int-to-float v2, v2

    aput v2, v0, v1

    .line 4361
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static intToFloatArray([II)[F
    .locals 4
    .parameter "intArray"
    .parameter "divider"

    .prologue
    .line 4369
    if-eqz p0, :cond_0

    array-length v2, p0

    if-gtz v2, :cond_2

    .line 4370
    :cond_0
    const/4 v0, 0x0

    .line 4378
    :cond_1
    return-object v0

    .line 4373
    :cond_2
    array-length v2, p0

    new-array v0, v2, [F

    .line 4374
    .local v0, floatArray:[F
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 4375
    aget v2, p0, v1

    int-to-float v2, v2

    int-to-float v3, p1

    div-float/2addr v2, v3

    aput v2, v0, v1

    .line 4374
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static isConnectionFail(Landroid/content/Context;)Z
    .locals 6
    .parameter "cotext"

    .prologue
    .line 4382
    const/4 v2, 0x1

    .line 4383
    .local v2, isConnectionFail:Z
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 4386
    .local v1, connectivityManager:Landroid/net/ConnectivityManager;
    if-eqz v1, :cond_2

    .line 4387
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 4388
    .local v0, activeNetworkInfo:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-nez v3, :cond_1

    .line 4389
    :cond_0
    const-string v3, "[CarMusicUtils]"

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

    .line 4390
    const/4 v2, 0x1

    .line 4398
    .end local v0           #activeNetworkInfo:Landroid/net/NetworkInfo;
    :goto_0
    return v2

    .line 4392
    .restart local v0       #activeNetworkInfo:Landroid/net/NetworkInfo;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 4395
    .end local v0           #activeNetworkInfo:Landroid/net/NetworkInfo;
    :cond_2
    const-string v3, "[CarMusicUtils]"

    const-string v4, "Can\'t get connectivitManager"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isDMPMode(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 3479
    :try_start_0
    sget-object v3, Lcom/htc/music/carmode/util/CarMusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->isPluginMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3480
    sget-object v3, Lcom/htc/music/carmode/util/CarMusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v4, -0x1

    invoke-interface {v3, v4}, Lcom/htc/music/IMediaPlaybackService;->getPluginClass(I)Ljava/lang/String;

    move-result-object v0

    .line 3481
    .local v0, clsName:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v3, "com.htc.music.DMPMusicPlaybackService"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-eqz v3, :cond_0

    .line 3482
    const/4 v2, 0x1

    .line 3492
    .end local v0           #clsName:Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    .line 3486
    :catch_0
    move-exception v1

    .line 3487
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v3, "[CarMusicUtils]"

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

    .line 3489
    .end local v1           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 3490
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 3491
    const-string v3, "[CarMusicUtils]"

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

.method public static isExternalPluginExist()Z
    .locals 1

    .prologue
    .line 3932
    sget-object v0, Lcom/htc/music/carmode/util/CarMusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-static {v0}, Lcom/htc/music/carmode/util/CarMusicUtils;->isExternalPluginExist(Lcom/htc/music/IMediaPlaybackService;)Z

    move-result v0

    return v0
.end method

.method public static isExternalPluginExist(Lcom/htc/music/IMediaPlaybackService;)Z
    .locals 4
    .parameter "pServicwe"

    .prologue
    .line 3910
    const/4 v1, 0x0

    .line 3912
    .local v1, hasPlugin:Z
    if-nez p0, :cond_0

    .line 3913
    const-string v2, "[CarMusicUtils]"

    const-string v3, "sService not initialize??"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3914
    const/4 v2, 0x0

    .line 3927
    :goto_0
    return v2

    .line 3919
    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/htc/music/IMediaPlaybackService;->getExternalPluginCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_1

    .line 3921
    const/4 v1, 0x1

    :cond_1
    :goto_1
    move v2, v1

    .line 3927
    goto :goto_0

    .line 3923
    :catch_0
    move-exception v0

    .line 3924
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static isExternalStorageUnMount(Landroid/content/Intent;)Z
    .locals 5
    .parameter "UnMountIntent"

    .prologue
    .line 507
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 508
    .local v1, externalStorageOpath:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 510
    .local v0, data:Landroid/net/Uri;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 513
    const-string v2, "[CarMusicUtils]"

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

    .line 514
    const/4 v2, 0x1

    .line 516
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized isInternalStorageEnough(Landroid/content/Context;)Z
    .locals 9
    .parameter "ctx"

    .prologue
    const-wide/32 v7, 0x500000

    .line 488
    const-class v4, Lcom/htc/music/carmode/util/CarMusicUtils;

    monitor-enter v4

    :try_start_0
    invoke-static {}, Lcom/htc/music/carmode/util/CarMusicUtils;->checkInternalMemory()J

    move-result-wide v1

    .line 490
    .local v1, size:J
    cmp-long v3, v1, v7

    if-lez v3, :cond_0

    .line 491
    const/4 v3, 0x1

    sput-boolean v3, Lcom/htc/music/carmode/util/CarMusicUtils;->IsInternalEnough:Z

    .line 492
    sget-boolean v3, Lcom/htc/music/carmode/util/CarMusicUtils;->IsInternalEnough:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 503
    :goto_0
    monitor-exit v4

    return v3

    .line 495
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 496
    .local v0, file:Ljava/io/File;
    invoke-static {v0}, Lcom/htc/music/carmode/util/CarMusicUtils;->getFileSize(Ljava/io/File;)J

    move-result-wide v5

    add-long/2addr v5, v1

    cmp-long v3, v5, v7

    if-lez v3, :cond_1

    .line 497
    const/4 v3, 0x1

    sput-boolean v3, Lcom/htc/music/carmode/util/CarMusicUtils;->IsInternalEnough:Z

    .line 498
    sget-boolean v3, Lcom/htc/music/carmode/util/CarMusicUtils;->IsInternalEnough:Z

    goto :goto_0

    .line 501
    :cond_1
    const-string v3, "[CarMusicUtils]"

    const-string v5, "Internal Storage is not Enough."

    invoke-static {v3, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    const/4 v3, 0x0

    sput-boolean v3, Lcom/htc/music/carmode/util/CarMusicUtils;->IsInternalEnough:Z

    .line 503
    sget-boolean v3, Lcom/htc/music/carmode/util/CarMusicUtils;->IsInternalEnough:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 488
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

    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 1552
    const/4 v7, 0x0

    .line 1553
    .local v7, result:Z
    invoke-static {}, Landroid/provider/MediaStore;->getMediaScannerUri()Landroid/net/Uri;

    move-result-object v8

    .line 1554
    .local v8, uri:Landroid/net/Uri;
    invoke-static {}, Landroid/provider/MediaStore;->getMediaScannerUri()Landroid/net/Uri;

    move-result-object v1

    new-array v2, v10, [Ljava/lang/String;

    const-string v0, "volume"

    aput-object v0, v2, v9

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/htc/music/carmode/util/CarMusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1557
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 1558
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v10, :cond_0

    .line 1559
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1560
    const-string v0, "external"

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 1562
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1563
    const/4 v6, 0x0

    .line 1566
    :cond_1
    return v7
.end method

.method public static isMusicEnhancerEnabled(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 4095
    invoke-static {p0}, Lcom/htc/music/util/ProjectSettings;->getEnableEnhancer(Landroid/content/Context;)Z

    move-result v0

    .line 4096
    .local v0, projectSetting:Z
    if-nez v0, :cond_0

    .line 4097
    const/4 v1, 0x0

    .line 4100
    :goto_0
    return v1

    :cond_0
    invoke-static {p0}, Lcom/htc/music/carmode/util/CarMusicUtils;->isMusicEnhancerExist(Landroid/content/Context;)Z

    move-result v1

    goto :goto_0
.end method

.method private static isMusicEnhancerExist(Landroid/content/Context;)Z
    .locals 7
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 4080
    const-string v1, "com.htc.musicenhancer"

    .line 4081
    .local v1, packageName:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 4083
    .local v3, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v5, "com.htc.musicenhancer"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 4084
    .local v2, pkgInfo:Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_0

    .line 4085
    const/4 v4, 0x1

    .line 4090
    .end local v2           #pkgInfo:Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return v4

    .line 4089
    :catch_0
    move-exception v0

    .line 4090
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public static isMusicLoaded()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 551
    sget-object v1, Lcom/htc/music/carmode/util/CarMusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v1, :cond_0

    .line 553
    :try_start_0
    sget-object v1, Lcom/htc/music/carmode/util/CarMusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->getPath()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 557
    :cond_0
    :goto_0
    return v0

    .line 554
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static isPluginMode()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 3431
    :try_start_0
    sget-object v2, Lcom/htc/music/carmode/util/CarMusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v2, :cond_0

    .line 3432
    sget-object v2, Lcom/htc/music/carmode/util/CarMusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->isPluginMode()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 3441
    :cond_0
    :goto_0
    return v1

    .line 3435
    :catch_0
    move-exception v0

    .line 3436
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v2, "[CarMusicUtils]"

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

    .line 3438
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 3439
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 3440
    const-string v2, "[CarMusicUtils]"

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
    .line 561
    sget-object v0, Lcom/htc/music/carmode/util/CarMusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 563
    :try_start_0
    sget-object v0, Lcom/htc/music/carmode/util/CarMusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/htc/music/IMediaPlaybackService;->isSystemReady()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 567
    :goto_0
    return v0

    .line 564
    :catch_0
    move-exception v0

    .line 567
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUnknownComposer(Ljava/lang/String;)Z
    .locals 1
    .parameter "composer"

    .prologue
    .line 4122
    if-eqz p0, :cond_0

    const-string v0, "<unknown>"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4124
    :cond_0
    const/4 v0, 0x1

    .line 4127
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isWMDRMSupported()Z
    .locals 1

    .prologue
    .line 3473
    const/4 v0, 0x1

    return v0
.end method

.method public static isYoutubeExist(Landroid/content/Context;)Z
    .locals 7
    .parameter "cxt"

    .prologue
    const/high16 v6, 0x1

    .line 4041
    const/4 v2, 0x0

    .line 4043
    .local v2, retval:Z
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4044
    .local v0, launchYoutubeIntent:Landroid/content/Intent;
    const-string v4, "android.intent.action.MEDIA_SEARCH"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4045
    const/high16 v4, 0x1000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4046
    const-string v4, "android.intent.extra.focus"

    const-string v5, "audio/*"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4047
    const-string v4, "com.google.android.youtube"

    const-string v5, "com.google.android.youtube.VideoListActivity"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4049
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 4050
    .local v1, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v1, v0, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 4052
    .local v3, shareApList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 4053
    const/4 v2, 0x1

    .line 4075
    :cond_0
    :goto_0
    const-string v4, "[CarMusicUtils]"

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

    .line 4076
    return v2

    .line 4055
    :cond_1
    const-string v4, "com.google.android.youtube"

    const-string v5, "com.google.android.youtube.ResultsActivity"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4057
    invoke-virtual {v1, v0, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 4059
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 4060
    const/4 v2, 0x1

    goto :goto_0

    .line 4066
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4067
    const-string v4, "com.google.android.youtube"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4068
    invoke-virtual {v1, v0, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 4070
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 4071
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

    .line 300
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 302
    .local v2, songs_albums:Ljava/lang/StringBuilder;
    if-ne p2, v7, :cond_0

    .line 303
    const v3, 0x7f070004

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 305
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 306
    .local v1, r:Landroid/content/res/Resources;
    if-nez p3, :cond_1

    .line 307
    const v3, 0x7f0d0001

    invoke-virtual {v1, v3, p1}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 308
    .local v0, f:Ljava/lang/String;
    sget-object v3, Lcom/htc/music/carmode/util/CarMusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 309
    sget-object v3, Lcom/htc/music/carmode/util/CarMusicUtils;->sFormatter:Ljava/util/Formatter;

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v3, v0, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 310
    sget-object v3, Lcom/htc/music/carmode/util/CarMusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 311
    const v3, 0x7f0701dc

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    .end local v0           #f:Ljava/lang/String;
    :cond_1
    const/high16 v3, 0x7f0d

    invoke-virtual {v1, v3, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 314
    .restart local v0       #f:Ljava/lang/String;
    sget-object v3, Lcom/htc/music/carmode/util/CarMusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 315
    sget-object v3, Lcom/htc/music/carmode/util/CarMusicUtils;->sFormatter:Ljava/util/Formatter;

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v3, v0, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 316
    sget-object v3, Lcom/htc/music/carmode/util/CarMusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

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

    .line 1175
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v2, v8

    const-string v1, "name"

    aput-object v1, v2, v9

    .line 1178
    .local v2, cols:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1179
    .local v0, resolver:Landroid/content/ContentResolver;
    if-nez v0, :cond_1

    .line 1180
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "resolver = null"

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1208
    :cond_0
    :goto_0
    return-void

    .line 1182
    :cond_1
    const-string v3, "name != \'\'"

    .line 1183
    .local v3, whereclause:Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "name"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1185
    .local v6, cur:Landroid/database/Cursor;
    invoke-interface {p1}, Landroid/view/SubMenu;->clear()V

    .line 1187
    const/4 v1, 0x4

    const v4, 0x7f07005c

    invoke-interface {p1, v9, v1, v8, v4}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1188
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 1190
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1191
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1192
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 1193
    .local v7, intent:Landroid/content/Intent;
    const-string v1, "playlist"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v7, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1198
    const/4 v1, 0x3

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v9, v1, v8, v4}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1200
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 1203
    .end local v7           #intent:Landroid/content/Intent;
    :cond_2
    if-eqz v6, :cond_0

    .line 1204
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

    .line 1692
    const v3, 0x7f070005

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1693
    .local v0, durationformat:Ljava/lang/String;
    const v3, 0x7f070006

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1698
    .local v1, durationformat_h:Ljava/lang/String;
    sget-object v3, Lcom/htc/music/carmode/util/CarMusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1700
    sget-object v2, Lcom/htc/music/carmode/util/CarMusicUtils;->sTimeArgs:[Ljava/lang/Object;

    .line 1701
    .local v2, timeArgs:[Ljava/lang/Object;
    div-long v3, p1, v8

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    .line 1702
    const/4 v3, 0x1

    div-long v4, p1, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1703
    const/4 v3, 0x2

    div-long v4, p1, v6

    rem-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1704
    const/4 v3, 0x3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1705
    const/4 v3, 0x4

    rem-long v4, p1, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1707
    div-long v3, p1, v8

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 1708
    sget-object v3, Lcom/htc/music/carmode/util/CarMusicUtils;->sFormatter:Ljava/util/Formatter;

    invoke-virtual {v3, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1710
    :goto_0
    return-object v3

    :cond_0
    sget-object v3, Lcom/htc/music/carmode/util/CarMusicUtils;->sFormatter:Ljava/util/Formatter;

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

    .line 4409
    invoke-static {p0, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 4410
    .local v0, albumCover:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 4412
    .local v1, canvasBitmap:Landroid/graphics/Bitmap;
    const-string v3, "[CarMusicUtils]"

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

    .line 4413
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 4414
    .local v2, mReflection:Landroid/graphics/Canvas;
    new-instance v3, Landroid/graphics/Rect;

    add-int v4, p5, p3

    add-int v5, p6, p4

    invoke-direct {v3, p3, p4, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, p1, v6, v3, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 4415
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v3, v7, v7, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v0, v6, v3, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 4417
    if-eqz v0, :cond_0

    .line 4418
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 4420
    :cond_0
    if-eqz p1, :cond_1

    .line 4421
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 4424
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

    .line 4484
    array-length v6, p2

    if-nez v6, :cond_6

    .line 4486
    if-eqz p0, :cond_2

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_2

    .line 4487
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_1

    .line 4488
    new-instance v5, Landroid/database/MergeCursor;

    const/4 v6, 0x2

    new-array v6, v6, [Landroid/database/Cursor;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    invoke-direct {v5, v6}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    move-object p0, v5

    .line 4540
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 4490
    .restart local p0
    :cond_1
    if-eqz p1, :cond_0

    .line 4491
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 4497
    :cond_2
    if-eqz p0, :cond_3

    .line 4498
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 4501
    :cond_3
    if-eqz p1, :cond_4

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_4

    move-object p0, p1

    .line 4502
    goto :goto_0

    .line 4504
    :cond_4
    if-eqz p1, :cond_5

    .line 4505
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_5
    move-object p0, v5

    .line 4508
    goto :goto_0

    .line 4512
    :cond_6
    new-instance v2, Ljava/util/ArrayList;

    array-length v6, p2

    add-int/lit8 v6, v6, 0x2

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 4513
    .local v2, cursorList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/database/Cursor;>;"
    if-eqz p0, :cond_7

    .line 4514
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_a

    .line 4515
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4520
    :cond_7
    :goto_1
    if-eqz p1, :cond_8

    .line 4521
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_b

    .line 4522
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4527
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

    .line 4528
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_9

    .line 4529
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_c

    .line 4530
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4527
    :cond_9
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 4517
    .end local v0           #arr$:[Landroid/database/Cursor;
    .end local v1           #cursor:Landroid/database/Cursor;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_a
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 4524
    :cond_b
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 4532
    .restart local v0       #arr$:[Landroid/database/Cursor;
    .restart local v1       #cursor:Landroid/database/Cursor;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    :cond_c
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_4

    .line 4537
    .end local v1           #cursor:Landroid/database/Cursor;
    :cond_d
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_e

    .line 4538
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

    .line 4540
    goto :goto_0
.end method

.method public static mergeDlAlbumArt(Landroid/content/Context;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 12
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 1481
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_1

    .line 1546
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 1485
    .restart local p1
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1486
    .local v0, cr:Landroid/content/ContentResolver;
    if-eqz v0, :cond_0

    .line 1490
    const-string v1, "album_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 1491
    .local v10, mdAlbumIdIdx:I
    if-gez v10, :cond_2

    .line 1492
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 1494
    :cond_2
    if-gez v10, :cond_3

    .line 1495
    const-string v1, "[CarMusicUtils]"

    const-string v2, "mergeDlAlbumArt: cannot find album id column"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1500
    :cond_3
    :try_start_0
    const-string v1, "album_art"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1506
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 1507
    .local v11, selection:Ljava/lang/StringBuilder;
    const-string v1, "dl_album_id IN ("

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1508
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 1510
    .local v6, albumIdSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    const/4 v9, 0x0

    .line 1511
    .local v9, id:I
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1513
    :cond_4
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 1514
    if-gez v9, :cond_8

    .line 1522
    :cond_5
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1524
    :cond_6
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1525
    const-string v1, ")"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1528
    const/4 v1, -0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1531
    :try_start_1
    sget-object v1, Lcom/htc/musicenhancer/DownloadStore$AlbumArt;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/music/carmode/util/CarMusicUtils;->sDlColumns:[Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1533
    .local v7, dlCursor:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 1537
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_7

    .line 1539
    const-string v1, "[CarMusicUtils]"

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

    .line 1542
    :cond_7
    new-instance v1, Lcom/htc/music/util/AlbumArtMergeCursor;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v7, v2}, Lcom/htc/music/util/AlbumArtMergeCursor;-><init>(Landroid/database/Cursor;Landroid/database/Cursor;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object p1, v1

    goto/16 :goto_0

    .line 1501
    .end local v6           #albumIdSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v7           #dlCursor:Landroid/database/Cursor;
    .end local v9           #id:I
    .end local v11           #selection:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v8

    .line 1502
    .local v8, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "[CarMusicUtils]"

    const-string v2, "mergeDlAlbumArt: cannot find album art column"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1518
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

    .line 1519
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1520
    const-string v1, ","

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1543
    :catch_1
    move-exception v8

    .line 1544
    .local v8, e:Ljava/lang/Exception;
    const-string v1, "[CarMusicUtils]"

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1545
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

    .line 1759
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

    invoke-static/range {v0 .. v5}, Lcom/htc/music/carmode/util/CarMusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;IZLcom/htc/music/NpCategory;[I)V

    .line 1760
    return-void

    .line 1759
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

    .line 1850
    invoke-static {p1}, Lcom/htc/music/carmode/util/CarMusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v1

    .line 1851
    .local v1, list:[I
    invoke-static {p1}, Lcom/htc/music/carmode/util/CarMusicUtils;->prepareAlbumList(Landroid/database/Cursor;)Z

    .line 1852
    new-array v6, v4, [I

    array-length v0, p5

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    aput v0, v6, v2

    move-object v0, p0

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-static/range {v0 .. v6}, Lcom/htc/music/carmode/util/CarMusicUtils;->playAll(Landroid/content/Context;[IIZZLcom/htc/music/NpCategory;[I)Z

    .line 1853
    return-void

    .line 1852
    :cond_0
    aget v0, p5, v2

    goto :goto_0
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
    .line 1843
    invoke-static {p1}, Lcom/htc/music/carmode/util/CarMusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v1

    .line 1844
    .local v1, list:[I
    invoke-static {p1}, Lcom/htc/music/carmode/util/CarMusicUtils;->prepareAlbumList(Landroid/database/Cursor;)Z

    .line 1845
    const/4 v0, 0x0

    new-array v6, v0, [I

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/htc/music/carmode/util/CarMusicUtils;->playAll(Landroid/content/Context;[IIZZLcom/htc/music/NpCategory;[I)Z

    .line 1846
    return-void
.end method

.method public static playAll(Landroid/content/Context;Landroid/database/Cursor;Lcom/htc/music/NpCategory;)V
    .locals 6
    .parameter "context"
    .parameter "cursor"
    .parameter "npc"

    .prologue
    const/4 v2, 0x0

    .line 1719
    new-array v5, v2, [I

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcom/htc/music/carmode/util/CarMusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;IZLcom/htc/music/NpCategory;[I)V

    .line 1720
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

    .line 1773
    const/4 v4, 0x1

    new-array v6, v3, [I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, p3

    invoke-static/range {v0 .. v6}, Lcom/htc/music/carmode/util/CarMusicUtils;->playAll(Landroid/content/Context;[IIZZLcom/htc/music/NpCategory;[I)Z

    .line 1774
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
    .line 1777
    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/htc/music/carmode/util/CarMusicUtils;->playAll(Landroid/content/Context;[IIZZLcom/htc/music/NpCategory;[I)Z

    .line 1778
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

    .line 1784
    const/4 v5, 0x1

    new-array v7, v4, [I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, p4

    invoke-static/range {v0 .. v7}, Lcom/htc/music/carmode/util/CarMusicUtils;->playAll(Lcom/htc/music/IMediaPlaybackService;Landroid/content/Context;[IIZZLcom/htc/music/NpCategory;[I)Z

    .line 1785
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

    .line 1859
    sget-object v0, Lcom/htc/music/carmode/util/CarMusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

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

    invoke-static/range {v0 .. v7}, Lcom/htc/music/carmode/util/CarMusicUtils;->playAll(Lcom/htc/music/IMediaPlaybackService;Landroid/content/Context;[IIZZLcom/htc/music/NpCategory;[I)Z

    move-result v0

    return v0

    :cond_0
    aget v1, p6, v2

    goto :goto_0
.end method

.method private static varargs playAll(Lcom/htc/music/IMediaPlaybackService;Landroid/content/Context;[IIZZLcom/htc/music/NpCategory;[I)Z
    .locals 11
    .parameter "service"
    .parameter "context"
    .parameter "list"
    .parameter "position"
    .parameter "force_shuffle"
    .parameter "ifrun"
    .parameter "npc"
    .parameter "varargs"

    .prologue
    .line 1864
    if-nez p0, :cond_0

    .line 1865
    const-string v7, "[CarMusicUtils]"

    const-string v8, "[playAll] Service is null."

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1866
    const/4 v7, 0x0

    .line 1974
    :goto_0
    return v7

    .line 1869
    :cond_0
    array-length v7, p2

    if-nez v7, :cond_1

    .line 1870
    const-string v7, "[CarMusicUtils]"

    const-string v8, "attempt to play empty song list"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1872
    const v7, 0x7f07005f

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    array-length v10, p2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {p1, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1873
    .local v5, message:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 1874
    const/4 v7, 0x0

    goto :goto_0

    .line 1877
    .end local v5           #message:Ljava/lang/String;
    :cond_1
    const/4 v3, -0x1

    .line 1879
    .local v3, dlnaMode:I
    if-eqz p5, :cond_2

    .line 1880
    const/4 v7, 0x0

    invoke-static {p1, p2, p3, v7}, Lcom/htc/music/carmode/util/CarMusicUtils;->checkDLNAMode(Landroid/content/Context;[IIZ)I

    move-result v3

    .line 1887
    :cond_2
    const/4 v7, 0x3

    if-eq v3, v7, :cond_3

    :try_start_0
    invoke-static {p1}, Lcom/htc/music/util/ProjectSettings;->getEnablePlugin(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {p0}, Lcom/htc/music/IMediaPlaybackService;->isPluginMode()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1888
    if-eqz p5, :cond_3

    .line 1889
    invoke-interface {p0}, Lcom/htc/music/IMediaPlaybackService;->stopActivePlugin()V

    .line 1893
    :cond_3
    invoke-interface {p0}, Lcom/htc/music/IMediaPlaybackService;->getAudioId()I

    move-result v1

    .line 1894
    .local v1, curid:I
    invoke-interface {p0}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v2

    .line 1895
    .local v2, curpos:I
    const/4 v7, -0x1

    if-eq p3, v7, :cond_d

    if-ne v2, p3, :cond_d

    aget v7, p2, p3

    if-ne v1, v7, :cond_d

    .line 1899
    invoke-interface {p0}, Lcom/htc/music/IMediaPlaybackService;->getQueue()[I

    move-result-object v6

    .line 1900
    .local v6, playlist:[I
    invoke-static {p2, v6}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 1903
    if-eqz p4, :cond_4

    .line 1904
    const/4 v7, 0x1

    invoke-interface {p0, v7}, Lcom/htc/music/IMediaPlaybackService;->setShuffleMode(I)V

    .line 1905
    invoke-interface {p0}, Lcom/htc/music/IMediaPlaybackService;->getRepeatMode()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4

    .line 1906
    const/4 v7, 0x2

    invoke-interface {p0, v7}, Lcom/htc/music/IMediaPlaybackService;->setRepeatMode(I)V

    .line 1910
    :cond_4
    if-eqz p5, :cond_5

    if-nez v3, :cond_5

    .line 1911
    invoke-interface {p0}, Lcom/htc/music/IMediaPlaybackService;->play()V

    .line 1914
    :cond_5
    const/4 v7, 0x3

    if-ne v3, v7, :cond_6

    .line 1915
    invoke-static {p1, p2, p3}, Lcom/htc/music/carmode/util/CarMusicUtils;->switchToPUSH(Landroid/content/Context;[II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1918
    :cond_6
    const/4 v8, 0x1

    .line 1955
    if-eqz p5, :cond_c

    move-object/from16 v0, p7

    array-length v7, v0

    if-nez v7, :cond_26

    const/4 v7, 0x0

    :goto_1
    if-nez v7, :cond_c

    if-eqz v3, :cond_7

    const/4 v7, 0x3

    if-ne v3, v7, :cond_c

    .line 1956
    :cond_7
    new-instance v4, Landroid/content/Intent;

    const-string v7, "com.htc.music.carmode.PLAYBACK_VIEWER"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1957
    .local v4, intent:Landroid/content/Intent;
    instance-of v7, p1, Landroid/app/Activity;

    if-eqz v7, :cond_27

    .line 1958
    const/high16 v7, 0x400

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1963
    :cond_8
    :goto_2
    instance-of v7, p1, Lcom/htc/music/HtcMusic;

    if-eqz v7, :cond_9

    .line 1964
    const-string v9, "ShowNowPlaying"

    move-object v7, p1

    check-cast v7, Lcom/htc/music/HtcMusic;

    invoke-virtual {v7}, Lcom/htc/music/HtcMusic;->isShowNowPlaying()Z

    move-result v7

    invoke-virtual {v4, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1967
    :cond_9
    instance-of v7, p1, Lcom/htc/music/browserlayer/TrackBrowserActivity;

    if-eqz v7, :cond_b

    move-object v7, p1

    check-cast v7, Lcom/htc/music/browserlayer/TrackBrowserActivity;

    iget-boolean v7, v7, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-eqz v7, :cond_b

    .line 1969
    .end local v1           #curid:I
    .end local v2           #curpos:I
    .end local v6           #playlist:[I
    :cond_a
    :goto_3
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 1971
    .restart local v1       #curid:I
    .restart local v2       #curpos:I
    .restart local v6       #playlist:[I
    :cond_b
    invoke-virtual {p1, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .end local v4           #intent:Landroid/content/Intent;
    :cond_c
    move v7, v8

    .line 1918
    goto/16 :goto_0

    .line 1921
    .end local v6           #playlist:[I
    :cond_d
    if-gez p3, :cond_e

    .line 1922
    const/4 p3, 0x0

    .line 1924
    :cond_e
    if-eqz p6, :cond_18

    .line 1925
    if-eqz p4, :cond_17

    const/4 v7, -0x1

    :goto_4
    :try_start_1
    move-object/from16 v0, p6

    invoke-interface {p0, p2, v7, v0}, Lcom/htc/music/IMediaPlaybackService;->openWithCategory([IILcom/htc/music/NpCategory;)V

    .line 1930
    :goto_5
    if-eqz p4, :cond_f

    .line 1931
    const/4 v7, 0x1

    invoke-interface {p0, v7}, Lcom/htc/music/IMediaPlaybackService;->setShuffleMode(I)V

    .line 1932
    invoke-interface {p0}, Lcom/htc/music/IMediaPlaybackService;->getRepeatMode()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_f

    .line 1933
    const/4 v7, 0x2

    invoke-interface {p0, v7}, Lcom/htc/music/IMediaPlaybackService;->setRepeatMode(I)V

    .line 1937
    :cond_f
    if-eqz p5, :cond_10

    if-nez v3, :cond_10

    .line 1938
    invoke-interface {p0}, Lcom/htc/music/IMediaPlaybackService;->play()V

    .line 1948
    :cond_10
    const/4 v7, 0x3

    if-ne v3, v7, :cond_11

    .line 1949
    invoke-static {p1, p2, p3}, Lcom/htc/music/carmode/util/CarMusicUtils;->switchToPUSH(Landroid/content/Context;[II)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1955
    :cond_11
    if-eqz p5, :cond_16

    move-object/from16 v0, p7

    array-length v7, v0

    if-nez v7, :cond_28

    const/4 v7, 0x0

    :goto_6
    if-nez v7, :cond_16

    if-eqz v3, :cond_12

    const/4 v7, 0x3

    if-ne v3, v7, :cond_16

    .line 1956
    :cond_12
    new-instance v4, Landroid/content/Intent;

    const-string v7, "com.htc.music.carmode.PLAYBACK_VIEWER"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1957
    .restart local v4       #intent:Landroid/content/Intent;
    instance-of v7, p1, Landroid/app/Activity;

    if-eqz v7, :cond_29

    .line 1958
    const/high16 v7, 0x400

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1963
    :cond_13
    :goto_7
    instance-of v7, p1, Lcom/htc/music/HtcMusic;

    if-eqz v7, :cond_14

    .line 1964
    const-string v8, "ShowNowPlaying"

    move-object v7, p1

    check-cast v7, Lcom/htc/music/HtcMusic;

    invoke-virtual {v7}, Lcom/htc/music/HtcMusic;->isShowNowPlaying()Z

    move-result v7

    invoke-virtual {v4, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1967
    :cond_14
    instance-of v7, p1, Lcom/htc/music/browserlayer/TrackBrowserActivity;

    if-eqz v7, :cond_15

    move-object v7, p1

    check-cast v7, Lcom/htc/music/browserlayer/TrackBrowserActivity;

    iget-boolean v7, v7, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-nez v7, :cond_a

    .line 1971
    .end local v1           #curid:I
    .end local v2           #curpos:I
    :cond_15
    invoke-virtual {p1, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1974
    .end local v4           #intent:Landroid/content/Intent;
    :cond_16
    const/4 v7, 0x1

    goto/16 :goto_0

    .restart local v1       #curid:I
    .restart local v2       #curpos:I
    :cond_17
    move v7, p3

    .line 1925
    goto :goto_4

    .line 1927
    :cond_18
    if-eqz p4, :cond_1c

    const/4 v7, -0x1

    :goto_8
    :try_start_2
    invoke-interface {p0, p2, v7}, Lcom/htc/music/IMediaPlaybackService;->open([II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    .line 1953
    .end local v1           #curid:I
    .end local v2           #curpos:I
    :catch_0
    move-exception v7

    .line 1955
    if-eqz p5, :cond_16

    move-object/from16 v0, p7

    array-length v7, v0

    if-nez v7, :cond_1f

    const/4 v7, 0x0

    :goto_9
    if-nez v7, :cond_16

    if-eqz v3, :cond_19

    const/4 v7, 0x3

    if-ne v3, v7, :cond_16

    .line 1956
    :cond_19
    new-instance v4, Landroid/content/Intent;

    const-string v7, "com.htc.music.carmode.PLAYBACK_VIEWER"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1957
    .restart local v4       #intent:Landroid/content/Intent;
    instance-of v7, p1, Landroid/app/Activity;

    if-eqz v7, :cond_20

    .line 1958
    const/high16 v7, 0x400

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1963
    :cond_1a
    :goto_a
    instance-of v7, p1, Lcom/htc/music/HtcMusic;

    if-eqz v7, :cond_1b

    .line 1964
    const-string v8, "ShowNowPlaying"

    move-object v7, p1

    check-cast v7, Lcom/htc/music/HtcMusic;

    invoke-virtual {v7}, Lcom/htc/music/HtcMusic;->isShowNowPlaying()Z

    move-result v7

    invoke-virtual {v4, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1967
    :cond_1b
    instance-of v7, p1, Lcom/htc/music/browserlayer/TrackBrowserActivity;

    if-eqz v7, :cond_15

    move-object v7, p1

    check-cast v7, Lcom/htc/music/browserlayer/TrackBrowserActivity;

    iget-boolean v7, v7, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-eqz v7, :cond_15

    goto/16 :goto_3

    .end local v4           #intent:Landroid/content/Intent;
    .restart local v1       #curid:I
    .restart local v2       #curpos:I
    :cond_1c
    move v7, p3

    .line 1927
    goto :goto_8

    .line 1971
    .end local v1           #curid:I
    .end local v2           #curpos:I
    .restart local v4       #intent:Landroid/content/Intent;
    :cond_1d
    invoke-virtual {p1, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1955
    .end local v4           #intent:Landroid/content/Intent;
    :cond_1e
    throw v8

    :cond_1f
    const/4 v7, 0x0

    aget v7, p7, v7

    goto :goto_9

    .line 1959
    .restart local v4       #intent:Landroid/content/Intent;
    :cond_20
    instance-of v7, p1, Landroid/app/Service;

    if-eqz v7, :cond_1a

    .line 1960
    const/high16 v7, 0x1400

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_a

    .line 1955
    .end local v4           #intent:Landroid/content/Intent;
    :catchall_0
    move-exception v7

    move-object v8, v7

    if-eqz p5, :cond_1e

    move-object/from16 v0, p7

    array-length v7, v0

    if-nez v7, :cond_24

    const/4 v7, 0x0

    :goto_b
    if-nez v7, :cond_1e

    if-eqz v3, :cond_21

    const/4 v7, 0x3

    if-ne v3, v7, :cond_1e

    .line 1956
    :cond_21
    new-instance v4, Landroid/content/Intent;

    const-string v7, "com.htc.music.carmode.PLAYBACK_VIEWER"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1957
    .restart local v4       #intent:Landroid/content/Intent;
    instance-of v7, p1, Landroid/app/Activity;

    if-eqz v7, :cond_25

    .line 1958
    const/high16 v7, 0x400

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1963
    :cond_22
    :goto_c
    instance-of v7, p1, Lcom/htc/music/HtcMusic;

    if-eqz v7, :cond_23

    .line 1964
    const-string v9, "ShowNowPlaying"

    move-object v7, p1

    check-cast v7, Lcom/htc/music/HtcMusic;

    invoke-virtual {v7}, Lcom/htc/music/HtcMusic;->isShowNowPlaying()Z

    move-result v7

    invoke-virtual {v4, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1967
    :cond_23
    instance-of v7, p1, Lcom/htc/music/browserlayer/TrackBrowserActivity;

    if-eqz v7, :cond_1d

    move-object v7, p1

    check-cast v7, Lcom/htc/music/browserlayer/TrackBrowserActivity;

    iget-boolean v7, v7, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-eqz v7, :cond_1d

    goto/16 :goto_3

    .line 1955
    .end local v4           #intent:Landroid/content/Intent;
    :cond_24
    const/4 v7, 0x0

    aget v7, p7, v7

    goto :goto_b

    .line 1959
    .restart local v4       #intent:Landroid/content/Intent;
    :cond_25
    instance-of v7, p1, Landroid/app/Service;

    if-eqz v7, :cond_22

    .line 1960
    const/high16 v7, 0x1400

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_c

    .line 1955
    .end local v4           #intent:Landroid/content/Intent;
    .restart local v1       #curid:I
    .restart local v2       #curpos:I
    .restart local v6       #playlist:[I
    :cond_26
    const/4 v7, 0x0

    aget v7, p7, v7

    goto/16 :goto_1

    .line 1959
    .restart local v4       #intent:Landroid/content/Intent;
    :cond_27
    instance-of v7, p1, Landroid/app/Service;

    if-eqz v7, :cond_8

    .line 1960
    const/high16 v7, 0x1400

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto/16 :goto_2

    .line 1955
    .end local v4           #intent:Landroid/content/Intent;
    .end local v6           #playlist:[I
    :cond_28
    const/4 v7, 0x0

    aget v7, p7, v7

    goto/16 :goto_6

    .line 1959
    .restart local v4       #intent:Landroid/content/Intent;
    :cond_29
    instance-of v7, p1, Landroid/app/Service;

    if-eqz v7, :cond_13

    .line 1960
    const/high16 v7, 0x1400

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto/16 :goto_7
.end method

.method public static playAllAndPrepare(Landroid/content/Context;[IILcom/htc/music/NpCategory;)V
    .locals 17
    .parameter "context"
    .parameter "list"
    .parameter "position"
    .parameter "npc"

    .prologue
    .line 1788
    sget-object v1, Lcom/htc/music/carmode/util/CarMusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v1, :cond_1

    .line 1789
    const-string v1, "[CarMusicUtils]"

    const-string v2, "[playAllAndPrepare] Service is null."

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1826
    :cond_0
    :goto_0
    return-void

    .line 1793
    :cond_1
    move-object/from16 v0, p1

    array-length v1, v0

    if-nez v1, :cond_2

    .line 1794
    const-string v1, "[CarMusicUtils]"

    const-string v2, "attempt to play empty song list"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1796
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

    .line 1797
    .local v13, message:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v13, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1802
    .end local v13           #message:Ljava/lang/String;
    :cond_2
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 1803
    .local v16, where:Ljava/lang/StringBuilder;
    const-string v1, "_id IN ("

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1804
    move-object/from16 v0, p1

    array-length v15, v0

    .line 1805
    .local v15, size:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_1
    if-ge v12, v15, :cond_4

    .line 1806
    aget v1, p1, v12

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1807
    add-int/lit8 v1, v15, -0x1

    if-ge v12, v1, :cond_3

    .line 1808
    const-string v1, ","

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1805
    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 1811
    :cond_4
    const-string v1, ")"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1812
    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v3, v1

    const/4 v1, 0x1

    const-string v2, "album_id"

    aput-object v2, v3, v1

    .line 1815
    .local v3, ccols:[Ljava/lang/String;
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "track"

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v6}, Lcom/htc/music/carmode/util/CarMusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1819
    .local v11, cursor:Landroid/database/Cursor;
    move-object/from16 v0, p1

    invoke-static {v11, v0}, Lcom/htc/music/carmode/util/CarMusicUtils;->prepareAlbumList(Landroid/database/Cursor;[I)Z

    move-result v14

    .line 1820
    .local v14, result:Z
    if-eqz v11, :cond_5

    .line 1821
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1822
    const/4 v11, 0x0

    .line 1824
    :cond_5
    if-eqz v14, :cond_0

    .line 1825
    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v1, 0x0

    new-array v10, v1, [I

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    move-object/from16 v9, p3

    invoke-static/range {v4 .. v10}, Lcom/htc/music/carmode/util/CarMusicUtils;->playAll(Landroid/content/Context;[IIZZLcom/htc/music/NpCategory;[I)Z

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
    .line 1767
    invoke-static {p1}, Lcom/htc/music/carmode/util/CarMusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v1

    .line 1768
    .local v1, list:[I
    invoke-static {p1}, Lcom/htc/music/carmode/util/CarMusicUtils;->prepareAlbumList(Landroid/database/Cursor;)Z

    .line 1769
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v0, 0x2

    new-array v6, v0, [I

    fill-array-data v6, :array_0

    move-object v0, p0

    move v2, p2

    move-object v5, p3

    invoke-static/range {v0 .. v6}, Lcom/htc/music/carmode/util/CarMusicUtils;->playAll(Landroid/content/Context;[IIZZLcom/htc/music/NpCategory;[I)Z

    .line 1770
    return-void

    .line 1769
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

    .line 1763
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, v3

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/htc/music/carmode/util/CarMusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;IZZLcom/htc/music/NpCategory;)V

    .line 1764
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

    .line 1835
    invoke-static {p1}, Lcom/htc/music/carmode/util/CarMusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v1

    .line 1836
    .local v1, list:[I
    invoke-static {p1}, Lcom/htc/music/carmode/util/CarMusicUtils;->prepareAlbumList(Landroid/database/Cursor;)Z

    .line 1837
    new-array v6, v4, [I

    move-object v0, p0

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-static/range {v0 .. v6}, Lcom/htc/music/carmode/util/CarMusicUtils;->playAll(Landroid/content/Context;[IIZZLcom/htc/music/NpCategory;[I)Z

    .line 1838
    return-void
.end method

.method public static playAllNotRun(Landroid/content/Context;Landroid/database/Cursor;Lcom/htc/music/NpCategory;)V
    .locals 1
    .parameter "context"
    .parameter "cursor"
    .parameter "npc"

    .prologue
    const/4 v0, 0x0

    .line 1723
    invoke-static {p0, p1, v0, v0, p2}, Lcom/htc/music/carmode/util/CarMusicUtils;->playAllNotRun(Landroid/content/Context;Landroid/database/Cursor;IZLcom/htc/music/NpCategory;)V

    .line 1724
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

    .line 1829
    new-array v6, v3, [I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, v3

    move-object v5, p3

    invoke-static/range {v0 .. v6}, Lcom/htc/music/carmode/util/CarMusicUtils;->playAll(Landroid/content/Context;[IIZZLcom/htc/music/NpCategory;[I)Z

    .line 1830
    return-void
.end method

.method public static playAllPlaylist(Landroid/content/Context;ZLcom/htc/music/NpCategory;)V
    .locals 7
    .parameter "context"
    .parameter "force_shuffle"
    .parameter "npc"

    .prologue
    .line 1134
    invoke-static {p0}, Lcom/htc/music/carmode/util/CarMusicUtils;->getSongListForAllPlaylistAndPrepare(Landroid/content/Context;)[I

    move-result-object v1

    .line 1135
    .local v1, list:[I
    if-eqz v1, :cond_0

    .line 1136
    const/4 v2, -0x1

    const/4 v4, 0x1

    const/4 v0, 0x0

    new-array v6, v0, [I

    move-object v0, p0

    move v3, p1

    move-object v5, p2

    invoke-static/range {v0 .. v6}, Lcom/htc/music/carmode/util/CarMusicUtils;->playAll(Landroid/content/Context;[IIZZLcom/htc/music/NpCategory;[I)Z

    .line 1138
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

    .line 1124
    invoke-static {p0, p1, p2}, Lcom/htc/music/carmode/util/CarMusicUtils;->getSongListForPlaylistAndPrepare(Landroid/content/Context;J)[I

    move-result-object v1

    .line 1126
    .local v1, list:[I
    if-eqz v1, :cond_0

    .line 1127
    const/4 v2, -0x1

    const/4 v4, 0x1

    new-array v6, v3, [I

    move-object v0, p0

    move-object v5, p3

    invoke-static/range {v0 .. v6}, Lcom/htc/music/carmode/util/CarMusicUtils;->playAll(Landroid/content/Context;[IIZZLcom/htc/music/NpCategory;[I)Z

    move-result v3

    .line 1129
    :cond_0
    return v3
.end method

.method public static playQueueNotRun(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 1727
    sget-object v3, Lcom/htc/music/carmode/util/CarMusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v3, :cond_1

    .line 1756
    :cond_0
    :goto_0
    return-void

    .line 1730
    :cond_1
    const-string v3, "[CarMusicUtils]"

    const-string v4, "playQueueNotRun"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1732
    const/4 v1, 0x0

    .line 1733
    .local v1, pos:I
    const/4 v0, 0x0

    .line 1734
    .local v0, list:[I
    :try_start_0
    sget-object v3, Lcom/htc/music/carmode/util/CarMusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->isSystemReady()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1735
    sget-object v3, Lcom/htc/music/carmode/util/CarMusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->reloadQueue()V

    .line 1736
    sget-object v3, Lcom/htc/music/carmode/util/CarMusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->getQueueSize()I

    move-result v2

    .line 1737
    .local v2, queueSize:I
    if-gtz v2, :cond_2

    .line 1738
    invoke-static {p0}, Lcom/htc/music/carmode/util/CarMusicUtils;->getAllSongsAndPrepare(Landroid/content/Context;)[I

    move-result-object v0

    .line 1739
    const/4 v1, 0x0

    .line 1749
    .end local v2           #queueSize:I
    :goto_1
    if-eqz v0, :cond_0

    array-length v3, v0

    if-eqz v3, :cond_0

    .line 1752
    new-instance v3, Lcom/htc/music/NpCategory;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/htc/music/NpCategory;-><init>(S)V

    invoke-static {p0, v0, v1, v3}, Lcom/htc/music/carmode/util/CarMusicUtils;->playAllNotRun(Landroid/content/Context;[IILcom/htc/music/NpCategory;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1755
    :goto_2
    const-string v3, "[CarMusicUtils]"

    const-string v4, "playQueueNotRun finished"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1741
    .restart local v2       #queueSize:I
    :cond_2
    :try_start_1
    sget-object v3, Lcom/htc/music/carmode/util/CarMusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v1

    .line 1742
    sget-object v3, Lcom/htc/music/carmode/util/CarMusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->getQueue()[I

    move-result-object v0

    goto :goto_1

    .line 1746
    .end local v2           #queueSize:I
    :cond_3
    sget-object v3, Lcom/htc/music/carmode/util/CarMusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v1

    .line 1747
    sget-object v3, Lcom/htc/music/carmode/util/CarMusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->getQueue()[I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1

    .line 1753
    :catch_0
    move-exception v3

    goto :goto_2
.end method

.method public static prepareAlbumList([I)V
    .locals 2
    .parameter "albumlist"

    .prologue
    .line 652
    array-length v0, p0

    if-lez v0, :cond_0

    sget-object v0, Lcom/htc/music/carmode/util/CarMusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 654
    :try_start_0
    sget-object v0, Lcom/htc/music/carmode/util/CarMusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v0, p0}, Lcom/htc/music/IMediaPlaybackService;->setAlbumQueue([I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 662
    :goto_0
    return-void

    .line 659
    :cond_0
    const-string v0, "[CarMusicUtils]"

    const-string v1, "Bad! sService is  null"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 655
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static prepareAlbumList(Landroid/database/Cursor;)Z
    .locals 5
    .parameter "cursor"

    .prologue
    const/4 v2, 0x0

    .line 609
    invoke-static {p0}, Lcom/htc/music/carmode/util/CarMusicUtils;->getAlbumListForCursor(Landroid/database/Cursor;)[I

    move-result-object v0

    .line 610
    .local v0, albumlist:[I
    array-length v3, v0

    if-lez v3, :cond_0

    sget-object v3, Lcom/htc/music/carmode/util/CarMusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v3, :cond_0

    .line 612
    :try_start_0
    sget-object v3, Lcom/htc/music/carmode/util/CarMusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3, v0}, Lcom/htc/music/IMediaPlaybackService;->setAlbumQueue([I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 613
    const/4 v2, 0x1

    .line 620
    :goto_0
    return v2

    .line 614
    :catch_0
    move-exception v1

    .line 615
    .local v1, e:Landroid/os/RemoteException;
    goto :goto_0

    .line 619
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_0
    const-string v3, "[CarMusicUtils]"

    const-string v4, "Bad! sService is  null"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static prepareAlbumList(Landroid/database/Cursor;[I)Z
    .locals 9
    .parameter "cursor"
    .parameter "songList"

    .prologue
    .line 625
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 626
    :cond_0
    const-string v7, "[CarMusicUtils]"

    const-string v8, "Unable to prepareAlbumList with bad input!"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    const/4 v7, 0x0

    .line 648
    :goto_0
    return v7

    .line 630
    :cond_1
    const-string v7, "_id"

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 631
    .local v4, idIdx:I
    const-string v7, "album_id"

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 633
    .local v0, albumIdIdx:I
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 634
    .local v2, cursorCount:I
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 635
    .local v6, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 636
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v2, :cond_2

    .line 637
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 636
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 641
    :cond_2
    array-length v7, p1

    new-array v1, v7, [I

    .line 642
    .local v1, albumList:[I
    const/4 v3, 0x0

    :goto_2
    array-length v7, p1

    if-ge v3, v7, :cond_4

    .line 643
    aget v7, p1, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 644
    .local v5, ii:Ljava/lang/Integer;
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    :goto_3
    aput v7, v1, v3

    .line 642
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 644
    :cond_3
    const/4 v7, -0x1

    goto :goto_3

    .line 647
    .end local v5           #ii:Ljava/lang/Integer;
    :cond_4
    invoke-static {v1}, Lcom/htc/music/carmode/util/CarMusicUtils;->prepareAlbumList([I)V

    .line 648
    const/4 v7, 0x1

    goto :goto_0
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

    .line 1456
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1457
    .local v0, resolver:Landroid/content/ContentResolver;
    if-nez v0, :cond_0

    move-object v1, v7

    .line 1468
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

    .line 1460
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    goto :goto_0

    .line 1461
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :catch_0
    move-exception v6

    .local v6, ex:Ljava/lang/UnsupportedOperationException;
    move-object v1, v7

    .line 1462
    goto :goto_0

    .line 1463
    .end local v6           #ex:Ljava/lang/UnsupportedOperationException;
    :catch_1
    move-exception v6

    .line 1464
    .local v6, ex:Ljava/lang/IllegalStateException;
    const-string v1, "[CarMusicUtils]"

    const-string v2, "error IllegalStateException"

    invoke-static {v1, v2, v6}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v7

    .line 1465
    goto :goto_0

    .line 1466
    .end local v6           #ex:Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v6

    .line 1467
    .local v6, ex:Landroid/database/sqlite/SQLiteException;
    const-string v1, "[CarMusicUtils]"

    const-string v2, "error SQLiteException"

    invoke-static {v1, v2, v6}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v7

    .line 1468
    goto :goto_0
.end method

.method public static searchViaAlbumName(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "albumName"

    .prologue
    .line 4310
    const/4 v2, 0x0

    .line 4311
    .local v2, title:Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 4313
    .local v1, query:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4314
    .local v0, i:Landroid/content/Intent;
    const-string v3, "android.intent.action.MEDIA_SEARCH"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4316
    if-eqz p1, :cond_0

    const-string v3, "<unknown>"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4317
    :cond_0
    const v3, 0x7f07004e

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4318
    :cond_1
    move-object v2, p1

    .line 4320
    move-object v1, p1

    .line 4322
    const-string v3, "android.intent.extra.album"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4323
    const-string v3, "android.intent.extra.focus"

    const-string v4, "audio/*"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4324
    const v3, 0x7f07006c

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 4325
    const-string v3, "query"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4327
    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 4328
    return-void
.end method

.method public static searchViaArtistName(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "artistName"

    .prologue
    .line 4331
    const/4 v2, 0x0

    .line 4332
    .local v2, title:Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 4334
    .local v1, query:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4335
    .local v0, i:Landroid/content/Intent;
    const-string v3, "android.intent.action.MEDIA_SEARCH"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4338
    move-object v2, p1

    .line 4339
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 4340
    :cond_0
    const-string p1, "<unknown>"

    .line 4343
    :cond_1
    move-object v1, p1

    .line 4345
    const-string v3, "android.intent.extra.artist"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4346
    const-string v3, "android.intent.extra.focus"

    const-string v4, "audio/*"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4347
    const v3, 0x7f07006c

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 4348
    const-string v3, "query"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4350
    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 4351
    return-void
.end method

.method public static searchViaTrackName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "trackName"
    .parameter "artistName"

    .prologue
    .line 4284
    const/4 v2, 0x0

    .line 4285
    .local v2, title:Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 4287
    .local v1, query:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4288
    .local v0, i:Landroid/content/Intent;
    const-string v3, "android.intent.action.MEDIA_SEARCH"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4291
    move-object v2, p1

    .line 4292
    if-eqz p2, :cond_0

    const-string v3, "<unknown>"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4294
    :cond_0
    move-object v1, p1

    .line 4299
    :goto_0
    const-string v3, "android.intent.extra.title"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4300
    const-string v3, "android.intent.extra.artist"

    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4302
    const-string v3, "android.intent.extra.focus"

    const-string v4, "audio/*"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4303
    const v3, 0x7f07006c

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 4304
    const-string v3, "query"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4306
    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 4307
    return-void

    .line 4296
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
    .line 2512
    .local p3, contactList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcom/htc/music/carmode/util/CarMusicUtils;->setContactRingtone(Landroid/content/Context;JLjava/util/ArrayList;Z)V

    .line 2513
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
    .line 2516
    .local p3, contactList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz p3, :cond_0

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 2582
    :cond_0
    :goto_0
    return-void

    .line 2519
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    .line 2520
    .local v13, resolver:Landroid/content/ContentResolver;
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p1

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v14

    .line 2521
    .local v14, ringUri:Landroid/net/Uri;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 2522
    .local v8, batchwhere:Ljava/lang/StringBuilder;
    const-string v2, "_id IN ("

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2524
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    :try_start_0
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v11, v2, :cond_3

    .line 2531
    const-string v2, "[CarMusicUtils]"

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

    .line 2532
    if-lez v11, :cond_2

    .line 2533
    const-string v2, ","

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2534
    :cond_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2524
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 2536
    :cond_3
    const-string v2, ")"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2537
    const-string v2, "[CarMusicUtils]"

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

    .line 2538
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 2539
    .local v15, values:Landroid/content/ContentValues;
    const-string v2, "custom_ringtone"

    invoke-virtual {v14}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2540
    const-string v2, "content://com.android.contacts/contacts"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v13, v2, v15, v3, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2549
    :try_start_1
    new-instance v16, Landroid/content/ContentValues;

    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2550
    .end local v15           #values:Landroid/content/ContentValues;
    .local v16, values:Landroid/content/ContentValues;
    :try_start_2
    const-string v2, "is_ringtone"

    const-string v3, "1"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2551
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v13, v14, v0, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2558
    if-eqz p4, :cond_0

    .line 2559
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

    .line 2564
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

    .line 2565
    .local v5, where:Ljava/lang/String;
    const/4 v9, 0x0

    .line 2567
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_3
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/htc/music/carmode/util/CarMusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 2569
    if-eqz v9, :cond_4

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 2570
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2571
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

    .line 2573
    .local v12, message:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v12, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2576
    .end local v12           #message:Ljava/lang/String;
    :cond_4
    if-eqz v9, :cond_0

    .line 2577
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2578
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 2541
    .end local v4           #cols:[Ljava/lang/String;
    .end local v5           #where:Ljava/lang/String;
    .end local v9           #cursor:Landroid/database/Cursor;
    .end local v16           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v10

    .line 2543
    .local v10, ex:Ljava/lang/UnsupportedOperationException;
    const-string v2, "[CarMusicUtils]"

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

    .line 2552
    .end local v10           #ex:Ljava/lang/UnsupportedOperationException;
    .restart local v15       #values:Landroid/content/ContentValues;
    :catch_1
    move-exception v10

    .line 2553
    .restart local v10       #ex:Ljava/lang/UnsupportedOperationException;
    :goto_2
    const-string v2, "[CarMusicUtils]"

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

    .line 2576
    .end local v10           #ex:Ljava/lang/UnsupportedOperationException;
    .end local v15           #values:Landroid/content/ContentValues;
    .restart local v4       #cols:[Ljava/lang/String;
    .restart local v5       #where:Ljava/lang/String;
    .restart local v9       #cursor:Landroid/database/Cursor;
    .restart local v16       #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v2

    if-eqz v9, :cond_5

    .line 2577
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2578
    const/4 v9, 0x0

    .line 2576
    :cond_5
    throw v2

    .line 2552
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
    .line 2610
    .local p2, contactList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/htc/music/carmode/util/CarMusicUtils;->setDRMContactRingtone(Landroid/content/Context;Landroid/net/Uri;Ljava/util/ArrayList;Z)V

    .line 2611
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
    .line 2614
    .local p2, contactList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 2675
    :cond_0
    :goto_0
    return-void

    .line 2617
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    .line 2618
    .local v12, resolver:Landroid/content/ContentResolver;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 2619
    .local v7, batchwhere:Ljava/lang/StringBuilder;
    const-string v1, "_id IN ("

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2621
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v10, v1, :cond_3

    .line 2628
    const-string v1, "[CarMusicUtils]"

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

    .line 2629
    if-lez v10, :cond_2

    .line 2630
    const-string v1, ","

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2631
    :cond_2
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2621
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 2633
    :cond_3
    const-string v1, ")"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2634
    const-string v1, "[CarMusicUtils]"

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

    .line 2635
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 2636
    .local v13, values:Landroid/content/ContentValues;
    const-string v1, "custom_ringtone"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2637
    const-string v1, "content://com.android.contacts/contacts"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v12, v1, v13, v2, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2646
    :try_start_1
    new-instance v14, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v14, v1}, Landroid/content/ContentValues;-><init>(I)V
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2647
    .end local v13           #values:Landroid/content/ContentValues;
    .local v14, values:Landroid/content/ContentValues;
    :try_start_2
    const-string v1, "is_ringtone"

    const-string v2, "1"

    invoke-virtual {v14, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2648
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v14, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2655
    if-eqz p3, :cond_0

    .line 2656
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

    .line 2659
    .local v3, cols:[Ljava/lang/String;
    const/4 v8, 0x0

    .line 2661
    .local v8, cursor:Landroid/database/Cursor;
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    :try_start_3
    invoke-static/range {v1 .. v6}, Lcom/htc/music/carmode/util/CarMusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2662
    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 2663
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2664
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

    .line 2666
    .local v11, message:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v11, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2669
    .end local v11           #message:Ljava/lang/String;
    :cond_4
    if-eqz v8, :cond_0

    .line 2670
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2671
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 2638
    .end local v3           #cols:[Ljava/lang/String;
    .end local v8           #cursor:Landroid/database/Cursor;
    .end local v14           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v9

    .line 2640
    .local v9, ex:Ljava/lang/UnsupportedOperationException;
    const-string v1, "[CarMusicUtils]"

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

    .line 2649
    .end local v9           #ex:Ljava/lang/UnsupportedOperationException;
    .restart local v13       #values:Landroid/content/ContentValues;
    :catch_1
    move-exception v9

    .line 2650
    .restart local v9       #ex:Ljava/lang/UnsupportedOperationException;
    :goto_2
    const-string v1, "[CarMusicUtils]"

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

    .line 2669
    .end local v9           #ex:Ljava/lang/UnsupportedOperationException;
    .end local v13           #values:Landroid/content/ContentValues;
    .restart local v3       #cols:[Ljava/lang/String;
    .restart local v8       #cursor:Landroid/database/Cursor;
    .restart local v14       #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_5

    .line 2670
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2671
    const/4 v8, 0x0

    .line 2669
    :cond_5
    throw v1

    .line 2649
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
    .line 2458
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lcom/htc/music/carmode/util/CarMusicUtils;->setDRMRingtone(Landroid/content/Context;Landroid/net/Uri;ZZ)V

    .line 2459
    return-void
.end method

.method public static setDRMRingtone(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 2454
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/htc/music/carmode/util/CarMusicUtils;->setDRMRingtone(Landroid/content/Context;Landroid/net/Uri;ZZ)V

    .line 2455
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

    .line 2462
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v1

    const-string v0, "_data"

    aput-object v0, v2, v3

    const-string v0, "title"

    aput-object v0, v2, v4

    .line 2465
    .local v2, cols:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 2471
    .local v9, resolver:Landroid/content/ContentResolver;
    :try_start_0
    new-instance v10, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v10, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 2472
    .local v10, values:Landroid/content/ContentValues;
    if-eqz p2, :cond_0

    .line 2473
    const-string v0, "is_ringtone"

    const-string v1, "1"

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2477
    :cond_0
    if-eqz p3, :cond_1

    .line 2478
    const-string v0, "is_notification"

    const-string v1, "1"

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2479
    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {v9, p1, v10, v0, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2485
    const/4 v6, 0x0

    .line 2487
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    :try_start_1
    invoke-static/range {v0 .. v5}, Lcom/htc/music/carmode/util/CarMusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2488
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 2489
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2490
    if-eqz p2, :cond_4

    .line 2491
    const-string v0, "ringtone"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v0, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2492
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

    .line 2493
    .local v8, message:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v8, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2504
    .end local v8           #message:Ljava/lang/String;
    :cond_2
    :goto_0
    if-eqz v6, :cond_3

    .line 2505
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2506
    const/4 v6, 0x0

    .line 2509
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v10           #values:Landroid/content/ContentValues;
    :cond_3
    :goto_1
    return-void

    .line 2480
    :catch_0
    move-exception v7

    .line 2483
    .local v7, ex:Ljava/lang/UnsupportedOperationException;
    goto :goto_1

    .line 2494
    .end local v7           #ex:Ljava/lang/UnsupportedOperationException;
    .restart local v6       #cursor:Landroid/database/Cursor;
    .restart local v10       #values:Landroid/content/ContentValues;
    :cond_4
    if-eqz p3, :cond_2

    .line 2495
    :try_start_2
    const-string v0, "notification_sound"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v0, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2497
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

    .line 2499
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

    .line 2504
    .end local v8           #message:Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 2505
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2506
    const/4 v6, 0x0

    .line 2504
    :cond_5
    throw v0
.end method

.method public static setIntPref(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 4
    .parameter "context"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 2369
    const-string v2, "com.htc.music"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2371
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2372
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2373
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2374
    return-void
.end method

.method public static setNotificationRingtone(Landroid/content/Context;J)V
    .locals 2
    .parameter "context"
    .parameter "id"

    .prologue
    .line 2395
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, p2, v0, v1}, Lcom/htc/music/carmode/util/CarMusicUtils;->setRingtone(Landroid/content/Context;JZZ)V

    .line 2396
    return-void
.end method

.method public static setPlaylist(Landroid/database/Cursor;)Z
    .locals 8
    .parameter "cursor"

    .prologue
    const/4 v5, 0x0

    .line 3399
    if-eqz p0, :cond_0

    sget-object v6, Lcom/htc/music/carmode/util/CarMusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v6, :cond_1

    .line 3400
    :cond_0
    const-string v6, "[CarMusicUtils]"

    const-string v7, "setPlaylist: attempt to set empty song list"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3425
    :goto_0
    return v5

    .line 3405
    :cond_1
    :try_start_0
    invoke-static {p0}, Lcom/htc/music/carmode/util/CarMusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v4

    .line 3406
    .local v4, slist:[I
    invoke-static {p0}, Lcom/htc/music/carmode/util/CarMusicUtils;->getAlbumListForCursor(Landroid/database/Cursor;)[I

    move-result-object v0

    .line 3407
    .local v0, alist:[I
    sget-object v6, Lcom/htc/music/carmode/util/CarMusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v6}, Lcom/htc/music/IMediaPlaybackService;->getQueue()[I

    move-result-object v3

    .line 3410
    .local v3, playlist:[I
    const/4 v2, 0x1

    .line 3411
    .local v2, newlist:Z
    array-length v6, v4

    array-length v7, v3

    if-ne v6, v7, :cond_2

    .line 3412
    const/4 v2, 0x0

    .line 3414
    :cond_2
    if-nez v2, :cond_3

    .line 3416
    const-string v6, "[CarMusicUtils]"

    const-string v7, "We don\'t need to set the same list."

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3423
    .end local v0           #alist:[I
    .end local v2           #newlist:Z
    .end local v3           #playlist:[I
    .end local v4           #slist:[I
    :catch_0
    move-exception v1

    .line 3424
    .local v1, ex:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 3420
    .end local v1           #ex:Landroid/os/RemoteException;
    .restart local v0       #alist:[I
    .restart local v2       #newlist:Z
    .restart local v3       #playlist:[I
    .restart local v4       #slist:[I
    :cond_3
    :try_start_1
    invoke-static {v0}, Lcom/htc/music/carmode/util/CarMusicUtils;->prepareAlbumList([I)V

    .line 3421
    sget-object v6, Lcom/htc/music/carmode/util/CarMusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v6, v4}, Lcom/htc/music/IMediaPlaybackService;->setPlaylist([I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3422
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public static setRingtone(Landroid/content/Context;J)V
    .locals 2
    .parameter "context"
    .parameter "id"

    .prologue
    .line 2391
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/htc/music/carmode/util/CarMusicUtils;->setRingtone(Landroid/content/Context;JZZ)V

    .line 2392
    return-void
.end method

.method public static setRingtone(Landroid/content/Context;JZZ)V
    .locals 12
    .parameter "context"
    .parameter "id"
    .parameter "isRingtone"
    .parameter "isNotification"

    .prologue
    .line 2399
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 2401
    .local v9, resolver:Landroid/content/ContentResolver;
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    .line 2405
    .local v10, ringUri:Landroid/net/Uri;
    :try_start_0
    new-instance v11, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v11, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 2406
    .local v11, values:Landroid/content/ContentValues;
    if-eqz p3, :cond_0

    .line 2407
    const-string v0, "is_ringtone"

    const-string v1, "1"

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2411
    :cond_0
    if-eqz p4, :cond_1

    .line 2412
    const-string v0, "is_notification"

    const-string v1, "1"

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2413
    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {v9, v10, v11, v0, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2420
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

    .line 2425
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

    .line 2426
    .local v3, where:Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/carmode/util/CarMusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2429
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 2431
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2432
    if-eqz p3, :cond_4

    .line 2433
    const-string v0, "ringtone"

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v0, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2435
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

    .line 2436
    .local v8, message:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v8, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2446
    .end local v8           #message:Ljava/lang/String;
    :cond_2
    :goto_0
    if-eqz v6, :cond_3

    .line 2447
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2448
    const/4 v6, 0x0

    .line 2451
    .end local v2           #cols:[Ljava/lang/String;
    .end local v3           #where:Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v11           #values:Landroid/content/ContentValues;
    :cond_3
    :goto_1
    return-void

    .line 2414
    :catch_0
    move-exception v7

    .line 2416
    .local v7, ex:Ljava/lang/UnsupportedOperationException;
    const-string v0, "[CarMusicUtils]"

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

    .line 2437
    .end local v7           #ex:Ljava/lang/UnsupportedOperationException;
    .restart local v2       #cols:[Ljava/lang/String;
    .restart local v3       #where:Ljava/lang/String;
    .restart local v6       #cursor:Landroid/database/Cursor;
    .restart local v11       #values:Landroid/content/ContentValues;
    :cond_4
    if-eqz p4, :cond_2

    .line 2438
    :try_start_2
    const-string v0, "notification_sound"

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v0, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2440
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

    .line 2442
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

    .line 2446
    .end local v8           #message:Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 2447
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2448
    const/4 v6, 0x0

    .line 2446
    :cond_5
    throw v0
.end method

.method public static setStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 2383
    const-string v2, "com.htc.music"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2385
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2386
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2387
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2388
    return-void
.end method

.method public static setTabActivityResult(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "result"

    .prologue
    .line 2957
    const-string v0, "result"

    invoke-static {p0, v0, p1}, Lcom/htc/music/carmode/util/CarMusicUtils;->setIntPref(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2958
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
    .line 2969
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 2970
    .local v4, q:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2971
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

    .line 2972
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 2973
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2974
    .local v3, n:I
    if-nez v3, :cond_0

    .line 2975
    const-string v5, "0;"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2972
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2977
    :cond_0
    :goto_2
    if-eqz v3, :cond_1

    .line 2978
    and-int/lit8 v0, v3, 0xf

    .line 2979
    .local v0, digit:I
    shr-int/lit8 v3, v3, 0x4

    .line 2980
    sget-object v5, Lcom/htc/music/carmode/util/CarMusicUtils;->hexdigits:[C

    aget-char v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2982
    .end local v0           #digit:I
    :cond_1
    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2985
    .end local v3           #n:I
    :cond_2
    const-string v5, "selectedid"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v5, v6}, Lcom/htc/music/carmode/util/CarMusicUtils;->setStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2986
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

    .line 2585
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v1

    const-string v0, "_data"

    aput-object v0, v2, v8

    const-string v0, "title"

    aput-object v0, v2, v4

    .line 2590
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

    .line 2591
    .local v3, where:Ljava/lang/String;
    const/4 v6, 0x0

    .line 2593
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/carmode/util/CarMusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2595
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v8, :cond_0

    .line 2596
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2597
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

    .line 2599
    .local v7, message:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v7, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2602
    .end local v7           #message:Ljava/lang/String;
    :cond_0
    if-eqz v6, :cond_1

    .line 2603
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2604
    const/4 v6, 0x0

    .line 2607
    :cond_1
    return-void

    .line 2602
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 2603
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2604
    const/4 v6, 0x0

    .line 2602
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

    .line 2678
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v1

    const-string v0, "_data"

    aput-object v0, v2, v8

    const-string v0, "title"

    aput-object v0, v2, v3

    .line 2681
    .local v2, cols:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 2683
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    :try_start_0
    invoke-static/range {v0 .. v5}, Lcom/htc/music/carmode/util/CarMusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2684
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v8, :cond_0

    .line 2685
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2686
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

    .line 2688
    .local v7, message:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v7, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2691
    .end local v7           #message:Ljava/lang/String;
    :cond_0
    if-eqz v6, :cond_1

    .line 2692
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2693
    const/4 v6, 0x0

    .line 2696
    :cond_1
    return-void

    .line 2691
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 2692
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2693
    const/4 v6, 0x0

    .line 2691
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

    .line 1715
    const/4 v3, 0x1

    new-array v5, v2, [I

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcom/htc/music/carmode/util/CarMusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;IZLcom/htc/music/NpCategory;[I)V

    .line 1716
    return-void
.end method

.method public static switchToDMC(Landroid/content/Context;Z)Z
    .locals 14
    .parameter "c"
    .parameter "bReload"

    .prologue
    .line 3518
    const-string v9, "[CarMusicUtils]"

    const-string v10, "switchToDMC"

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3520
    invoke-static {p0}, Lcom/htc/music/carmode/util/CarMusicUtils;->getCurDMR(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 3522
    .local v8, szDMR:Ljava/lang/String;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-gtz v9, :cond_1

    .line 3524
    :cond_0
    const-string v9, "[CarMusicUtils]"

    const-string v10, "No DMR connected now."

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3525
    const/4 v9, 0x0

    .line 3593
    :goto_0
    return v9

    .line 3530
    :cond_1
    const-string v9, "DLNA"

    const/4 v10, 0x3

    invoke-virtual {p0, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 3531
    .local v1, Preferences:Landroid/content/SharedPreferences;
    const-string v9, "server"

    const/4 v10, 0x0

    invoke-interface {v1, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3533
    .local v0, DMS:Ljava/lang/String;
    const-string v9, "container"

    const/4 v10, 0x0

    invoke-interface {v1, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3534
    .local v3, container:Ljava/lang/String;
    const-string v9, "content"

    const/4 v10, 0x0

    invoke-interface {v1, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3536
    .local v4, content:Ljava/lang/String;
    new-instance v6, Landroid/content/Intent;

    const-class v9, Lcom/htc/music/DMCMusicPlaybackService;

    invoke-direct {v6, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3539
    .local v6, intent:Landroid/content/Intent;
    const-string v9, "[CarMusicUtils]"

    const-string v10, "type = null, DLNA mode switch to DLNA_DMC"

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3540
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v10, "switchDMC"

    const/4 v11, 0x1

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3542
    new-instance v6, Landroid/content/Intent;

    .end local v6           #intent:Landroid/content/Intent;
    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 3543
    .restart local v6       #intent:Landroid/content/Intent;
    const-string v9, "Server"

    invoke-virtual {v6, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3544
    const-string v9, "Render"

    invoke-virtual {v6, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3545
    const-string v9, "cookie"

    const/4 v10, 0x1

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3547
    if-eqz p1, :cond_2

    .line 3548
    const-string v9, "[CarMusicUtils]"

    const-string v10, "DLNA_DMC mode reload data from preference"

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3549
    const-string v9, "[CarMusicUtils]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "intent Server = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3550
    const-string v9, "[CarMusicUtils]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "intent Render = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3551
    const-string v9, "[CarMusicUtils]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "intent container = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "container"

    const/4 v12, 0x0

    invoke-interface {v1, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3552
    const-string v9, "[CarMusicUtils]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "intent content = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "content"

    const/4 v12, 0x0

    invoke-interface {v1, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3553
    const-string v9, "[CarMusicUtils]"

    const-string v10, "intent cookie = 1"

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3554
    const-string v9, "[CarMusicUtils]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "intent filePath = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "filePath"

    const/4 v12, 0x0

    invoke-interface {v1, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3555
    const-string v9, "[CarMusicUtils]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "intent shuffle = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "shuffle"

    const/4 v12, 0x0

    invoke-interface {v1, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3556
    const-string v9, "[CarMusicUtils]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "intent startIdx = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "startIdx"

    const-wide/16 v12, -0x1

    invoke-interface {v1, v11, v12, v13}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3557
    const-string v9, "[CarMusicUtils]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "intent endIdx = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "endIdx"

    const-wide/16 v12, -0x1

    invoke-interface {v1, v11, v12, v13}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3558
    const-string v9, "[CarMusicUtils]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "intent direction ="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "direction"

    const/4 v12, 0x0

    invoke-interface {v1, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3560
    const-string v9, "container"

    const-string v10, "container"

    const/4 v11, 0x0

    invoke-interface {v1, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3561
    const-string v9, "content"

    const-string v10, "content"

    const/4 v11, 0x0

    invoke-interface {v1, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3562
    const-string v9, "filepath"

    const-string v10, "filepath"

    const/4 v11, 0x0

    invoke-interface {v1, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3563
    const-string v9, "shuffle"

    const-string v10, "shuffle"

    const/4 v11, 0x0

    invoke-interface {v1, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3564
    const-string v9, "startIdx"

    const-string v10, "startIdx"

    const-wide/16 v11, -0x1

    invoke-interface {v1, v10, v11, v12}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    invoke-virtual {v6, v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3565
    const-string v9, "endIdx"

    const-string v10, "endIdx"

    const-wide/16 v11, -0x1

    invoke-interface {v1, v10, v11, v12}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    invoke-virtual {v6, v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3566
    const-string v9, "direction"

    const-string v10, "direction"

    const/4 v11, 0x0

    invoke-interface {v1, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3567
    const-string v9, "com.htc.music.dmc_setsrc"

    const/4 v10, 0x1

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3568
    const-string v9, "command"

    const-string v10, "com.htc.music.refreshplaylist"

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3571
    :cond_2
    const-string v9, "[CarMusicUtils]"

    const-string v10, "starting DMC Music playback service..."

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3573
    const-string v9, "com.htc.music.DMCMusicPlaybackService"

    invoke-virtual {v6, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3574
    const-string v9, "forcePlay"

    const/4 v10, 0x1

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3577
    :try_start_0
    sget-object v9, Lcom/htc/music/carmode/util/CarMusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/htc/music/IMediaPlaybackService;->bindPluginService(Ljava/lang/String;)V

    .line 3579
    const-string v9, "DLNA"

    const/4 v10, 0x1

    invoke-virtual {p0, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 3580
    .local v7, pref:Landroid/content/SharedPreferences;
    const-string v9, "switchDMC"

    const/4 v10, 0x0

    invoke-interface {v7, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 3582
    .local v2, Switch:Z
    if-eqz v2, :cond_4

    .line 3583
    sget-object v9, Lcom/htc/music/carmode/util/CarMusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v9}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 3584
    sget-object v9, Lcom/htc/music/carmode/util/CarMusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v9}, Lcom/htc/music/IMediaPlaybackService;->stop()V

    .line 3586
    :cond_3
    invoke-virtual {p0, v6}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 3587
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v10, "switchDMC"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3593
    .end local v2           #Switch:Z
    .end local v7           #pref:Landroid/content/SharedPreferences;
    :cond_4
    :goto_1
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 3590
    :catch_0
    move-exception v5

    .line 3591
    .local v5, e:Landroid/os/RemoteException;
    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public static switchToPUSH(Landroid/content/Context;Z)Z
    .locals 13
    .parameter "c"
    .parameter "bReload"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 3597
    const-string v10, "[CarMusicUtils]"

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

    .line 3599
    invoke-static {p0}, Lcom/htc/music/carmode/util/CarMusicUtils;->getCurDMR(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 3600
    .local v7, szDMR:Ljava/lang/String;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-gtz v10, :cond_2

    .line 3602
    :cond_0
    const-string v8, "[CarMusicUtils]"

    const-string v10, "No DMR connected now."

    invoke-static {v8, v10}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v9

    .line 3660
    :cond_1
    :goto_0
    return v8

    .line 3607
    :cond_2
    const-string v9, "DLNA"

    const/4 v10, 0x3

    invoke-virtual {p0, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3610
    .local v0, Preferences:Landroid/content/SharedPreferences;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 3612
    .local v3, intent:Landroid/content/Intent;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v10, "switchDMC"

    invoke-interface {v9, v10, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3614
    :try_start_0
    const-string v9, "[CarMusicUtils]"

    const-string v10, "push switch = true"

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3616
    const-string v9, "com.htc.music.dmc_setsrc"

    const/4 v10, 0x0

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3618
    const/4 v4, 0x0

    .line 3619
    .local v4, list:[I
    const/4 v5, -0x1

    .line 3620
    .local v5, position:I
    if-eqz p1, :cond_4

    sget-object v9, Lcom/htc/music/carmode/util/CarMusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v9, :cond_4

    .line 3622
    sget-object v9, Lcom/htc/music/carmode/util/CarMusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v9}, Lcom/htc/music/IMediaPlaybackService;->getQueue()[I

    move-result-object v4

    .line 3623
    sget-object v9, Lcom/htc/music/carmode/util/CarMusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v9}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v5

    .line 3625
    if-eqz v4, :cond_3

    const-string v9, "com.htc.music.dmc_playlist"

    invoke-virtual {v3, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 3626
    :cond_3
    if-ltz v5, :cond_4

    const-string v9, "com.htc.music.dmc_currentindex"

    invoke-virtual {v3, v9, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3629
    :cond_4
    const-string v9, "[CarMusicUtils]"

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

    .line 3630
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v10, "switch"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3635
    .end local v4           #list:[I
    .end local v5           #position:I
    :goto_1
    const-string v9, "Render"

    invoke-virtual {v3, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3636
    const-string v9, "cookie"

    invoke-virtual {v3, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3638
    const-string v9, "[CarMusicUtils]"

    const-string v10, "starting DMC Music playback service..."

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3639
    const-string v9, "com.htc.music.DMCMusicPlaybackService"

    invoke-virtual {v3, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3640
    const-string v9, "command"

    const-string v10, "com.htc.music.refreshplaylist"

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3641
    const-string v9, "forcePlay"

    invoke-virtual {v3, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3644
    :try_start_1
    sget-object v9, Lcom/htc/music/carmode/util/CarMusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/htc/music/IMediaPlaybackService;->bindPluginService(Ljava/lang/String;)V

    .line 3646
    const-string v9, "DLNA"

    const/4 v10, 0x1

    invoke-virtual {p0, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 3647
    .local v6, pref:Landroid/content/SharedPreferences;
    const-string v9, "switchDMC"

    const/4 v10, 0x1

    invoke-interface {v6, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 3649
    .local v1, Switch:Z
    if-eqz v1, :cond_1

    .line 3650
    sget-object v9, Lcom/htc/music/carmode/util/CarMusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v9}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 3651
    sget-object v9, Lcom/htc/music/carmode/util/CarMusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v9}, Lcom/htc/music/IMediaPlaybackService;->stop()V

    .line 3653
    :cond_5
    invoke-virtual {p0, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 3654
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

    .line 3657
    .end local v1           #Switch:Z
    .end local v6           #pref:Landroid/content/SharedPreferences;
    :catch_0
    move-exception v2

    .line 3658
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 3631
    .end local v2           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 3632
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

    .line 3665
    const-string v9, "[CarMusicUtils]"

    const-string v10, "switchToPUSH"

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3667
    invoke-static {p0}, Lcom/htc/music/carmode/util/CarMusicUtils;->getCurDMR(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 3668
    .local v6, szDMR:Ljava/lang/String;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-gtz v9, :cond_1

    .line 3670
    :cond_0
    const-string v7, "[CarMusicUtils]"

    const-string v9, "No DMR connected now."

    invoke-static {v7, v9}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v7, v8

    .line 3721
    :goto_0
    return v7

    .line 3675
    :cond_1
    const-string v9, "DLNA"

    const/4 v10, 0x3

    invoke-virtual {p0, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3677
    .local v0, Preferences:Landroid/content/SharedPreferences;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 3682
    .local v2, intent:Landroid/content/Intent;
    const-string v9, "com.htc.music.dmc_setsrc"

    invoke-virtual {v2, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3684
    const/4 v3, 0x0

    .line 3685
    .local v3, list:[I
    const/4 v4, -0x1

    .line 3687
    .local v4, position:I
    if-eqz p1, :cond_2

    move-object v3, p1

    .line 3688
    :cond_2
    if-eqz v3, :cond_3

    const-string v9, "com.htc.music.dmc_playlist"

    invoke-virtual {v2, v9, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 3690
    :cond_3
    if-ltz p2, :cond_4

    move v4, p2

    .line 3691
    :cond_4
    if-ltz v4, :cond_5

    const-string v9, "com.htc.music.dmc_currentindex"

    invoke-virtual {v2, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3693
    :cond_5
    const-string v9, "[CarMusicUtils]"

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

    .line 3694
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v10, "switch"

    invoke-interface {v9, v10, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3696
    const-string v8, "Render"

    invoke-virtual {v2, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3697
    const-string v8, "cookie"

    invoke-virtual {v2, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3699
    const-string v8, "[CarMusicUtils]"

    const-string v9, "starting DMC PUSH Music playback service..."

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3700
    const-string v8, "com.htc.music.DMCMusicPlaybackService"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3701
    const-string v8, "command"

    const-string v9, "com.htc.music.refreshplaylist"

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3702
    const-string v8, "forcePlay"

    invoke-virtual {v2, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3705
    :try_start_0
    sget-object v8, Lcom/htc/music/carmode/util/CarMusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/htc/music/IMediaPlaybackService;->bindPluginService(Ljava/lang/String;)V

    .line 3707
    const-string v8, "DLNA"

    const/4 v9, 0x1

    invoke-virtual {p0, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 3711
    .local v5, pref:Landroid/content/SharedPreferences;
    sget-object v8, Lcom/htc/music/carmode/util/CarMusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v8}, Lcom/htc/music/IMediaPlaybackService;->isPlaying()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 3712
    sget-object v8, Lcom/htc/music/carmode/util/CarMusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v8}, Lcom/htc/music/IMediaPlaybackService;->stop()V

    .line 3714
    :cond_6
    invoke-virtual {p0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 3715
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

    .line 3718
    .end local v5           #pref:Landroid/content/SharedPreferences;
    :catch_0
    move-exception v1

    .line 3719
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
    .line 3022
    .local p0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez p0, :cond_1

    .line 3023
    const/4 v1, 0x0

    .line 3028
    :cond_0
    return-object v1

    .line 3024
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [I

    .line 3025
    .local v1, result:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 3026
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v1, v0

    .line 3025
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static unbindFromService(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "id"

    .prologue
    .line 385
    new-instance v2, Lcom/htc/music/carmode/util/CarMusicUtils$ServiceOwner;

    invoke-direct {v2, p1, p0}, Lcom/htc/music/carmode/util/CarMusicUtils$ServiceOwner;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 386
    .local v2, serviceOwner:Lcom/htc/music/carmode/util/CarMusicUtils$ServiceOwner;
    sget-object v3, Lcom/htc/music/carmode/util/CarMusicUtils;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/carmode/util/CarMusicUtils$ServiceBinder;

    .line 387
    .local v1, sb:Lcom/htc/music/carmode/util/CarMusicUtils$ServiceBinder;
    if-nez v1, :cond_0

    .line 388
    const-string v3, "[CarMusicUtils]"

    const-string v4, "Trying to unbind for unknown Context"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    :goto_0
    return-void

    .line 393
    :cond_0
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 394
    :catch_0
    move-exception v0

    .line 395
    .local v0, ex:Ljava/lang/Exception;
    const-string v3, "[CarMusicUtils]"

    const-string v4, "can\'t unbind service"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    const-string v3, "[CarMusicUtils]"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static wasDRMFilePlaying(Ljava/lang/String;)Z
    .locals 1
    .parameter "path"

    .prologue
    .line 4236
    if-eqz p0, :cond_0

    const-string v0, "content://drm/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4237
    const/4 v0, 0x1

    .line 4239
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
