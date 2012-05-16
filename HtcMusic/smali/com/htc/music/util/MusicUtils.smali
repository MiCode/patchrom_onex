.class public Lcom/htc/music/util/MusicUtils;
.super Ljava/lang/Object;
.source "MusicUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
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

.field private static final INTERNAL_MEMORY_THRESOLD:J = 0x500000L

.field public static final IS_MUSIC_DRM_FILTER:Ljava/lang/String; = "is_music>1"

.field public static final IS_MUSIC_FILTER:Ljava/lang/String; = "is_music>=1"

.field public static final IS_MUSIC_FILTER_FOR_GENRE:Ljava/lang/String; = "audio_meta.is_music>=1"

.field public static final IS_RINGTONE_FILTER:Ljava/lang/String; = "is_ringtone>=1"

.field private static IsInternalEnough:Z = false

.field private static final PATH:Ljava/lang/String; = null

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

    .line 139
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "album_key"

    aput-object v1, v0, v3

    const-string v1, "album_art"

    aput-object v1, v0, v2

    sput-object v0, Lcom/htc/music/util/MusicUtils;->sMdColumns:[Ljava/lang/String;

    .line 145
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "dl_album_id"

    aput-object v1, v0, v4

    const-string v1, "dl_album_key"

    aput-object v1, v0, v3

    const-string v1, "dl_data"

    aput-object v1, v0, v2

    sput-object v0, Lcom/htc/music/util/MusicUtils;->sDlColumns:[Ljava/lang/String;

    .line 207
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/music/util/MusicUtils;->hexdigits:[C

    .line 240
    new-instance v0, Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Lcom/htc/music/util/MemoryCacheMBitmapByTime;-><init>(I)V

    sput-object v0, Lcom/htc/music/util/MusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    .line 276
    sput-object v5, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    .line 279
    sput-object v5, Lcom/htc/music/util/MusicUtils;->mPluginManager:Lcom/htc/music/MusicPluginManager;

    .line 308
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/music/util/MusicUtils;->sConnectionMap:Ljava/util/HashMap;

    .line 421
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/music/util/MusicUtils;->PATH:Ljava/lang/String;

    .line 422
    sput-boolean v3, Lcom/htc/music/util/MusicUtils;->IsInternalEnough:Z

    .line 538
    new-array v0, v4, [I

    sput-object v0, Lcom/htc/music/util/MusicUtils;->sEmptyList:[I

    .line 1632
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/htc/music/util/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    .line 1634
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/htc/music/util/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/htc/music/util/MusicUtils;->sFormatter:Ljava/util/Formatter;

    .line 1636
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/htc/music/util/MusicUtils;->sTimeArgs:[Ljava/lang/Object;

    .line 2008
    const/4 v0, -0x2

    sput v0, Lcom/htc/music/util/MusicUtils;->sArtId:I

    .line 2012
    sput-object v5, Lcom/htc/music/util/MusicUtils;->mCachedBit:Landroid/graphics/Bitmap;

    .line 2014
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Lcom/htc/music/util/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    .line 2016
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Lcom/htc/music/util/MusicUtils;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 2018
    const-string v0, "content://media/external/audio/albumart"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/music/util/MusicUtils;->sArtworkUri:Landroid/net/Uri;

    .line 2020
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/music/util/MusicUtils;->sArtCache:Ljava/util/HashMap;

    .line 2024
    const/4 v0, -0x1

    sput v0, Lcom/htc/music/util/MusicUtils;->sArtCacheId:I

    .line 2031
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 2032
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 2034
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 2035
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 4463
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/htc/music/util/MusicUtils;->mCoverPaint:Landroid/graphics/Paint;

    .line 4464
    sget-object v0, Lcom/htc/music/util/MusicUtils;->mCoverPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 4465
    sget-object v0, Lcom/htc/music/util/MusicUtils;->mCoverPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 4466
    sget-object v0, Lcom/htc/music/util/MusicUtils;->mCoverPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 4467
    return-void

    .line 207
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
    .line 114
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1969
    return-void
.end method

.method public static CheckDLNAStatus(Landroid/content/Context;)I
    .locals 7
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3753
    const-string v5, "[MusicUtils]"

    const-string v6, "CheckDLNAStatus"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3754
    if-nez p0, :cond_0

    .line 3755
    const-string v4, "[MusicUtils]"

    const-string v5, "CheckDLNAStatus with null Context!!"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3789
    :goto_0
    return v3

    .line 3759
    :cond_0
    const-string v5, "DLNA"

    const/4 v6, 0x7

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 3762
    .local v2, Preferences:Landroid/content/SharedPreferences;
    const-string v5, "server"

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3766
    .local v1, DMS:Ljava/lang/String;
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->getCurDMR(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 3768
    .local v0, DMR:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 3769
    if-eqz v0, :cond_1

    .line 3770
    const-string v3, "[MusicUtils]"

    const-string v5, "initial, DLNA mode = DLNA_DMC"

    invoke-static {v3, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3773
    const-string v3, "[MusicUtils]"

    const-string v5, "type = null, DLNA mode switch to DLNA_DMC"

    invoke-static {v3, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3774
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v5, "switchDMC"

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3775
    const/4 v3, 0x2

    goto :goto_0

    .line 3778
    :cond_1
    const-string v3, "[MusicUtils]"

    const-string v5, "DLNA mode = DLNA_DMP"

    invoke-static {v3, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v4

    .line 3779
    goto :goto_0

    .line 3783
    :cond_2
    if-eqz v0, :cond_3

    .line 3784
    const-string v3, "[MusicUtils]"

    const-string v4, "initial, DLNA mode = DLNA_PUSH"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3785
    const/4 v3, 0x3

    goto :goto_0

    .line 3788
    :cond_3
    const-string v4, "[MusicUtils]"

    const-string v5, "DLNA mode = DLNA_LOCAL"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static IsInternalStorage()Z
    .locals 2

    .prologue
    .line 4612
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->hasInternalFat()Z

    move-result v0

    .line 4614
    .local v0, isInternalStorage:Z
    if-nez v0, :cond_0

    .line 4615
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->hasPhoneStorage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4617
    const/4 v0, 0x1

    .line 4621
    :cond_0
    return v0
.end method

.method public static IsOnlyInternalStorage()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 4625
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->IsInternalStorage()Z

    move-result v2

    if-nez v2, :cond_1

    .line 4635
    .local v0, both:Z
    :cond_0
    :goto_0
    return v1

    .line 4630
    .end local v0           #both:Z
    :cond_1
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->hasRemovableStorageSlot()Z

    move-result v0

    .line 4632
    .restart local v0       #both:Z
    if-nez v0, :cond_0

    .line 4635
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static IsReloadAllMusicForQueue(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    .line 4498
    const-string v3, "Music"

    const/4 v4, 0x3

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 4499
    .local v1, pref:Landroid/content/SharedPreferences;
    const/4 v0, 0x1

    .line 4500
    .local v0, IsLaunchBefore:Z
    const-string v3, "LaunchedBefore"

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    .line 4502
    if-nez v0, :cond_0

    .line 4503
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "LaunchedBefore"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 4507
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
    .line 3934
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->CheckDLNAStatus(Landroid/content/Context;)I

    move-result v0

    .line 3936
    .local v0, DlnaMode:I
    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 3937
    const-string v2, "DLNA"

    const/4 v3, 0x7

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 3939
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "shuffle"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3941
    .end local v1           #pref:Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method public static addToCurrentPlaylist(Landroid/content/Context;[I)V
    .locals 7
    .parameter "context"
    .parameter "list"

    .prologue
    .line 1345
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v1, :cond_0

    .line 1355
    :goto_0
    return-void

    .line 1349
    :cond_0
    :try_start_0
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v2, 0x3

    invoke-interface {v1, p1, v2}, Lcom/htc/music/IMediaPlaybackService;->enqueue([II)V

    .line 1350
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

    .line 1352
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

    .line 1353
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
    .line 1358
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJZ)V

    .line 1359
    return-void
.end method

.method public static addToPlaylist(Landroid/content/Context;[IJZ)V
    .locals 16
    .parameter "context"
    .parameter "ids"
    .parameter "playlistid"
    .parameter "showToast"

    .prologue
    .line 1362
    if-nez p1, :cond_1

    .line 1365
    const-string v5, "[MusicUtils]"

    const-string v6, "ListSelection null"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1396
    :cond_0
    :goto_0
    return-void

    .line 1367
    :cond_1
    move-object/from16 v0, p1

    array-length v12, v0

    .line 1368
    .local v12, size:I
    new-array v13, v12, [Landroid/content/ContentValues;

    .line 1369
    .local v13, values:[Landroid/content/ContentValues;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1372
    .local v2, resolver:Landroid/content/ContentResolver;
    const/4 v5, 0x1

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "count(*)"

    aput-object v6, v4, v5

    .line 1375
    .local v4, cols:[Ljava/lang/String;
    const-string v5, "external"

    move-wide/from16 v0, p2

    invoke-static {v5, v0, v1}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v3

    .line 1376
    .local v3, uri:Landroid/net/Uri;
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1377
    .local v9, cur:Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1378
    const/4 v5, 0x0

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 1379
    .local v8, base:I
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1380
    const/4 v9, 0x0

    .line 1382
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    if-ge v10, v12, :cond_2

    .line 1383
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    aput-object v5, v13, v10

    .line 1384
    aget-object v5, v13, v10

    const-string v6, "play_order"

    add-int v7, v8, v10

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1386
    aget-object v5, v13, v10

    const-string v6, "audio_id"

    aget v7, p1, v10

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1382
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1388
    :cond_2
    invoke-virtual {v2, v3, v13}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 1389
    if-eqz p4, :cond_0

    .line 1390
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

    .line 1392
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

    .line 4311
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 4312
    .local v1, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v0, 0x1

    .line 4313
    .local v0, appExist:Z
    :cond_0
    return v0
.end method

.method public static appendUnknownComposerFilter(Ljava/lang/StringBuilder;)V
    .locals 1
    .parameter "where"

    .prologue
    .line 4166
    const-string v0, " (composer ISNULL"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4167
    const-string v0, " OR composer = \'\'"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4168
    const-string v0, " OR composer = \'<unknown>\' )"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4171
    return-void
.end method

.method public static arrayDeepClone([I[II)V
    .locals 2
    .parameter "src"
    .parameter "dst"
    .parameter "length"

    .prologue
    .line 4138
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 4144
    :cond_0
    return-void

    .line 4139
    :cond_1
    array-length v1, p0

    if-lt v1, p2, :cond_0

    array-length v1, p1

    if-lt v1, p2, :cond_0

    .line 4141
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 4142
    aget v1, p0, v0

    aput v1, p1, v0

    .line 4141
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static bindToService(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .parameter "context"
    .parameter "id"

    .prologue
    .line 312
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
    .line 316
    new-instance v3, Lcom/htc/music/util/MusicUtils$ServiceOwner;

    invoke-direct {v3, p1, p0}, Lcom/htc/music/util/MusicUtils$ServiceOwner;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 318
    .local v3, serviceOwner:Lcom/htc/music/util/MusicUtils$ServiceOwner;
    sget-object v4, Lcom/htc/music/util/MusicUtils;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 319
    sget-object v4, Lcom/htc/music/util/MusicUtils;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/util/MusicUtils$ServiceBinder;

    .line 321
    .local v2, sbRemove:Lcom/htc/music/util/MusicUtils$ServiceBinder;
    if-eqz v2, :cond_0

    .line 323
    :try_start_0
    iget-object v4, v3, Lcom/htc/music/util/MusicUtils$ServiceOwner;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    :goto_0
    const-string v4, "[MusicUtils]"

    const-string v5, "Unbind previous binding service"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    .end local v2           #sbRemove:Lcom/htc/music/util/MusicUtils$ServiceBinder;
    :cond_0
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/htc/music/MediaPlaybackService;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 334
    new-instance v1, Lcom/htc/music/util/MusicUtils$ServiceBinder;

    invoke-direct {v1, p2}, Lcom/htc/music/util/MusicUtils$ServiceBinder;-><init>(Landroid/content/ServiceConnection;)V

    .line 335
    .local v1, sb:Lcom/htc/music/util/MusicUtils$ServiceBinder;
    sget-object v4, Lcom/htc/music/util/MusicUtils;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-class v5, Lcom/htc/music/MediaPlaybackService;

    invoke-virtual {v4, p0, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v1, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v4

    return v4

    .line 325
    .end local v1           #sb:Lcom/htc/music/util/MusicUtils$ServiceBinder;
    .restart local v2       #sbRemove:Lcom/htc/music/util/MusicUtils$ServiceBinder;
    :catch_0
    move-exception v0

    .line 326
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

    .line 4196
    if-eqz p1, :cond_0

    if-gez p2, :cond_1

    :cond_0
    move v0, v8

    .line 4266
    :goto_0
    return v0

    .line 4199
    :cond_1
    invoke-static {p0, p2}, Lcom/htc/music/util/MusicUtils;->getTrack(Landroid/content/Context;I)Landroid/database/Cursor;

    move-result-object v1

    .line 4200
    .local v1, cursor:Landroid/database/Cursor;
    if-nez v1, :cond_2

    move v0, v8

    .line 4201
    goto :goto_0

    .line 4203
    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v9

    if-nez v9, :cond_5

    .line 4204
    :cond_3
    if-eqz v1, :cond_4

    .line 4205
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    move v0, v8

    .line 4206
    goto :goto_0

    .line 4209
    :cond_5
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4210
    const/4 v0, 0x0

    .line 4213
    .local v0, canBeShared:I
    const-string v9, "is_music"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 4214
    .local v5, musicType:J
    const-string v9, "_data"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 4217
    .local v7, path:Ljava/lang/String;
    const/4 v4, 0x0

    .line 4219
    .local v4, mimeType:Ljava/lang/String;
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isWMDRMSupported()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 4220
    const-string v9, "mime_type"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 4224
    :cond_6
    const-wide/16 v9, 0x1

    cmp-long v9, v5, v9

    if-lez v9, :cond_a

    .line 4226
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/htc/music/util/MusicUtils;->getDrmCursor(Landroid/content/Context;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v3

    .line 4227
    .local v3, drmCursor:Landroid/database/Cursor;
    if-nez v3, :cond_7

    .line 4228
    const-string v9, "[MusicUtils]"

    const-string v10, "MusicUtils.getDrmCursor return null!!"

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4229
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 4230
    const/4 v1, 0x0

    move v0, v8

    .line 4231
    goto :goto_0

    .line 4234
    :cond_7
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-lez v8, :cond_9

    .line 4235
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4237
    const-string v8, "delivery_type"

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 4239
    .local v2, deliveryType:I
    const/4 v8, 0x4

    if-eq v8, v2, :cond_8

    const/4 v8, 0x3

    if-ne v8, v2, :cond_9

    .line 4241
    :cond_8
    const/4 v0, 0x2

    .line 4245
    .end local v2           #deliveryType:I
    :cond_9
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 4263
    .end local v3           #drmCursor:Landroid/database/Cursor;
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 4264
    const/4 v1, 0x0

    .line 4266
    goto :goto_0

    .line 4249
    :cond_a
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isWMDRMSupported()Z

    move-result v8

    if-eqz v8, :cond_b

    if-eqz v4, :cond_b

    const-string v8, "audio/x-wma-drm"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 4250
    const-string v8, "[MusicUtils]"

    const-string v9, "canShare()....This file is WMDRM...."

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4251
    const/4 v0, 0x0

    goto :goto_1

    .line 4256
    :cond_b
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static canRewind(Landroid/net/Uri;Landroid/content/Context;)Z
    .locals 1
    .parameter "uri"
    .parameter "context"

    .prologue
    .line 3397
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
    .line 3816
    const-string v8, "DLNA"

    const/4 v9, 0x7

    invoke-virtual {p0, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 3819
    .local v2, Preferences:Landroid/content/SharedPreferences;
    const-string v8, "server"

    const/4 v9, 0x0

    invoke-interface {v2, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3823
    .local v1, DMS:Ljava/lang/String;
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->getCurDMR(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 3826
    .local v0, DMR:Ljava/lang/String;
    const-string v8, "container"

    const/4 v9, 0x0

    invoke-interface {v2, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3827
    .local v4, container:Ljava/lang/String;
    const-string v8, "content"

    const/4 v9, 0x0

    invoke-interface {v2, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3830
    .local v5, content:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 3831
    const-string v8, "[MusicUtils]"

    const-string v9, "input list != null, clear server and content info"

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3832
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

    .line 3834
    const/4 v1, 0x0

    .line 3837
    :cond_0
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->CheckDLNAStatus(Landroid/content/Context;)I

    move-result v6

    .line 3841
    .local v6, dlnaMode:I
    packed-switch v6, :pswitch_data_0

    .line 3927
    const-string v8, "[MusicUtils]"

    const-string v9, "check dlna mode failed"

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3928
    const/4 v8, 0x0

    :goto_0
    return v8

    .line 3843
    :pswitch_0
    const-string v8, "[MusicUtils]"

    const-string v9, "DLNA_DMP mode"

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3844
    if-nez p3, :cond_2

    .line 3845
    const-string v8, "switchDMP"

    const/4 v9, 0x0

    invoke-interface {v2, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 3847
    .local v3, Switch:Z
    if-eqz v3, :cond_1

    .line 3848
    const-string v8, "[MusicUtils]"

    const-string v9, "called from DMC, need to update DMP info"

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3864
    :cond_1
    const/4 v8, 0x1

    goto :goto_0

    .line 3866
    .end local v3           #Switch:Z
    :cond_2
    const-string v8, "[MusicUtils]"

    const-string v9, "play at glance, clear dlna info"

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3867
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->clearDlnaInfo(Landroid/content/Context;)V

    .line 3868
    const/4 v8, 0x0

    goto :goto_0

    .line 3873
    :pswitch_1
    const-string v8, "[MusicUtils]"

    const-string v9, "DLNA_LOCAL mode"

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3874
    const/4 v8, 0x0

    goto :goto_0

    .line 3877
    :pswitch_2
    const-string v8, "[MusicUtils]"

    const-string v9, "DLNA_DMC mode, send intent"

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3878
    if-nez p3, :cond_3

    .line 3881
    const-string v8, "[MusicUtils]"

    const-string v9, "type = null, DLNA mode switch to DLNA_DMC"

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3882
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "switchDMC"

    const/4 v10, 0x1

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3885
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

    .line 3886
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

    .line 3887
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

    .line 3888
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

    .line 3889
    const-string v8, "[MusicUtils]"

    const-string v9, "intent cookie = 1"

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3890
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

    .line 3891
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

    .line 3892
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

    .line 3893
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

    .line 3894
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

    .line 3895
    const/4 v8, 0x2

    goto/16 :goto_0

    .line 3897
    :cond_3
    const-string v8, "[MusicUtils]"

    const-string v9, "play at glance, clear dlna info"

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3898
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->clearDlnaInfo(Landroid/content/Context;)V

    .line 3899
    if-eqz p0, :cond_4

    .line 3900
    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.htc.dmc.poweroff"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3901
    .local v7, intentOffDmc:Landroid/content/Intent;
    invoke-virtual {p0, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3903
    .end local v7           #intentOffDmc:Landroid/content/Intent;
    :cond_4
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 3908
    :pswitch_3
    const-string v8, "[MusicUtils]"

    const-string v9, "DLNA_PUSH mode"

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3909
    if-nez p3, :cond_5

    .line 3912
    const-string v8, "[MusicUtils]"

    const-string v9, "type = null, DLNA mode switch to DLNA_PUSH"

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3913
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "switchDMC"

    const/4 v10, 0x1

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3915
    const/4 v8, 0x3

    goto/16 :goto_0

    .line 3917
    :cond_5
    const-string v8, "[MusicUtils]"

    const-string v9, "play at glance, switch to local mode"

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3918
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->clearDlnaInfo(Landroid/content/Context;)V

    .line 3919
    if-eqz p0, :cond_6

    .line 3920
    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.htc.dmc.poweroff"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3921
    .restart local v7       #intentOffDmc:Landroid/content/Intent;
    invoke-virtual {p0, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3923
    .end local v7           #intentOffDmc:Landroid/content/Intent;
    :cond_6
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 3841
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
    .line 488
    const-class v8, Lcom/htc/music/util/MusicUtils;

    monitor-enter v8

    :try_start_0
    new-instance v4, Landroid/os/StatFs;

    sget-object v7, Lcom/htc/music/util/MusicUtils;->PATH:Ljava/lang/String;

    invoke-direct {v4, v7}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 489
    .local v4, fileStats:Landroid/os/StatFs;
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v7

    int-to-long v0, v7

    .line 490
    .local v0, availableBlocks:J
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v7

    int-to-long v2, v7

    .line 491
    .local v2, blockSize:J
    mul-long v5, v0, v2

    .line 492
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

    .line 493
    monitor-exit v8

    return-wide v5

    .line 488
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

    .line 4751
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

    .line 4755
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_2

    .line 4763
    :cond_0
    if-eqz v6, :cond_1

    .line 4764
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4765
    const/4 v6, 0x0

    :cond_1
    move v0, v9

    .line 4768
    :goto_0
    return v0

    .line 4763
    :cond_2
    if-eqz v6, :cond_3

    .line 4764
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4765
    const/4 v6, 0x0

    :cond_3
    move v0, v8

    .line 4759
    goto :goto_0

    .line 4760
    :catch_0
    move-exception v7

    .line 4761
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "[MusicUtils]"

    const-string v1, "[checkLocalHasSong] Exception!"

    invoke-static {v0, v1, v7}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4763
    if-eqz v6, :cond_4

    .line 4764
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4765
    const/4 v6, 0x0

    :cond_4
    move v0, v9

    .line 4768
    goto :goto_0

    .line 4763
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 4764
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4765
    const/4 v6, 0x0

    .line 4763
    :cond_5
    throw v0
.end method

.method public static checkPlaylistCount(Landroid/content/Context;)I
    .locals 8
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 4664
    const/4 v6, 0x0

    .line 4665
    .local v6, count:I
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v0

    const/4 v0, 0x1

    const-string v4, "name"

    aput-object v4, v2, v0

    .line 4669
    .local v2, cols:[Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 4670
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

    .line 4672
    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 4673
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 4674
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 4675
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 4678
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

    .line 4296
    const/4 v1, 0x0

    .line 4298
    .local v1, overSizeLimit:Z
    invoke-static {p0}, Lcom/htc/music/util/ProjectSettings;->getMaxRingtoneSize(Landroid/content/Context;)I

    move-result v4

    mul-int/lit16 v0, v4, 0x400

    .line 4299
    .local v0, maxRingtoneSize:I
    if-lez v0, :cond_0

    .line 4300
    invoke-static {p1}, Lcom/htc/music/util/MusicUtils;->wasDRMFilePlaying(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4301
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/htc/music/util/MusicUtils;->getDrmTrackSize(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v4

    if-le v4, v0, :cond_1

    move v1, v2

    .line 4307
    :cond_0
    :goto_0
    if-nez v1, :cond_4

    :goto_1
    return v2

    :cond_1
    move v1, v3

    .line 4301
    goto :goto_0

    .line 4303
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

    .line 4307
    goto :goto_1
.end method

.method public static checkedInternalStorageWhenResume(Landroid/content/Context;)Z
    .locals 3
    .parameter "fromCtx"

    .prologue
    const/4 v1, 0x1

    .line 426
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->isInternalStorageEnough(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 428
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 429
    .local v0, targetIntent:Landroid/content/Intent;
    const-class v2, Lcom/htc/music/MediaPlaybackErrorActivity;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 430
    const-string v2, "disablelib"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 431
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 432
    const/4 v1, 0x0

    .line 434
    .end local v0           #targetIntent:Landroid/content/Intent;
    :cond_0
    return v1
.end method

.method public static clearAlbumArtCache()V
    .locals 6

    .prologue
    .line 2051
    sget-object v5, Lcom/htc/music/util/MusicUtils;->sArtCache:Ljava/util/HashMap;

    monitor-enter v5

    .line 2052
    :try_start_0
    sget-object v4, Lcom/htc/music/util/MusicUtils;->sArtCache:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 2053
    .local v3, keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2054
    .local v2, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2055
    .local v0, artIndex:Ljava/lang/Integer;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2056
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #artIndex:Ljava/lang/Integer;
    check-cast v0, Ljava/lang/Integer;

    .line 2057
    .restart local v0       #artIndex:Ljava/lang/Integer;
    sget-object v4, Lcom/htc/music/util/MusicUtils;->sArtCache:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/util/MusicUtils$FastBitmapDrawable;

    .line 2058
    .local v1, bm:Lcom/htc/music/util/MusicUtils$FastBitmapDrawable;
    if-eqz v1, :cond_0

    .line 2059
    invoke-virtual {v1}, Lcom/htc/music/util/MusicUtils$FastBitmapDrawable;->recycle()V

    goto :goto_0

    .line 2064
    .end local v0           #artIndex:Ljava/lang/Integer;
    .end local v1           #bm:Lcom/htc/music/util/MusicUtils$FastBitmapDrawable;
    .end local v2           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 2063
    .restart local v0       #artIndex:Ljava/lang/Integer;
    .restart local v2       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_1
    :try_start_1
    sget-object v4, Lcom/htc/music/util/MusicUtils;->sArtCache:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 2064
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2065
    return-void
.end method

.method public static clearDlnaInfo(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const-wide/16 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 3797
    const-string v2, "DLNA"

    const/4 v3, 0x7

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3799
    .local v0, Preferences:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 3800
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    if-eqz v1, :cond_0

    .line 3801
    const-string v2, "container"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3802
    const-string v2, "content"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3803
    const-string v2, "filepath"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3804
    const-string v2, "shuffle"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3805
    const-string v2, "startIdx"

    invoke-interface {v1, v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 3806
    const-string v2, "endIdx"

    invoke-interface {v1, v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 3807
    const-string v2, "direction"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3808
    const-string v2, "server"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3809
    const-string v2, "Render"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3810
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3812
    :cond_0
    return-void
.end method

.method public static clearPlaylist(Landroid/content/Context;I)V
    .locals 12
    .parameter "context"
    .parameter "plid"

    .prologue
    const/4 v3, 0x0

    .line 1148
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    .line 1152
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

    .line 1155
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 1180
    :goto_0
    return-void

    .line 1166
    :cond_0
    :try_start_0
    const-string v0, "external"

    int-to-long v3, p1

    invoke-static {v0, v3, v4}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v11

    .line 1167
    .local v11, uri:Landroid/net/Uri;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1168
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 1169
    .local v6, colidx:I
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1170
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 1171
    .local v9, id:J
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v11, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1172
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1174
    .end local v6           #colidx:I
    .end local v9           #id:J
    .end local v11           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v8

    .line 1175
    .local v8, ex:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "[MusicUtils]"

    const-string v1, "Failed to clear playlist."

    invoke-static {v0, v1, v8}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1177
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1178
    .end local v8           #ex:Ljava/lang/Exception;
    :goto_2
    const/4 v7, 0x0

    goto :goto_0

    .line 1177
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1178
    const/4 v7, 0x0

    .line 1177
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
    .line 1962
    :try_start_0
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v1, 0x0

    const v2, 0x7fffffff

    invoke-interface {v0, v1, v2}, Lcom/htc/music/IMediaPlaybackService;->removeTracks(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1965
    :goto_0
    return-void

    .line 1963
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static createBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "drawable"

    .prologue
    .line 4027
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 4028
    .local v1, width:I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 4029
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

    .line 4033
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 4036
    .local v2, config:Landroid/graphics/Bitmap$Config;
    :goto_0
    invoke-static {p2, p1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 4037
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 4038
    .local v1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {p0, v5, v5, p2, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4039
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4040
    return-object v0

    .line 4033
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
    .line 4685
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 4686
    :cond_0
    const/4 v0, -0x1

    .line 4706
    :cond_1
    :goto_0
    return v0

    .line 4688
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 4689
    .local v1, resolver:Landroid/content/ContentResolver;
    invoke-static {p0, p1}, Lcom/htc/music/util/MusicUtils;->getPlaylistId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 4690
    .local v0, id:I
    const/4 v2, 0x0

    .line 4691
    .local v2, uri:Landroid/net/Uri;
    if-ltz v0, :cond_3

    .line 4692
    sget-object v4, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    int-to-long v5, v0

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 4693
    invoke-static {p0, v0}, Lcom/htc/music/util/MusicUtils;->clearPlaylist(Landroid/content/Context;I)V

    goto :goto_0

    .line 4695
    :cond_3
    new-instance v3, Landroid/content/ContentValues;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 4696
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "name"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4697
    sget-object v4, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 4698
    invoke-static {p0, v2}, Lcom/htc/music/util/MusicUtils;->getPlaylistId(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v0

    .line 4701
    if-lez v0, :cond_1

    .line 4702
    invoke-static {p0}, Lcom/htc/music/util/ShowMeHelper;->notifyCreatePlaylist(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static deleteArrayItem([III)V
    .locals 2
    .parameter "list"
    .parameter "length"
    .parameter "position"

    .prologue
    .line 4147
    if-eqz p0, :cond_0

    if-ltz p2, :cond_0

    if-ge p2, p1, :cond_0

    array-length v1, p0

    if-ge v1, p1, :cond_1

    .line 4153
    :cond_0
    return-void

    .line 4150
    :cond_1
    move v0, p2

    .local v0, i:I
    :goto_0
    add-int/lit8 v1, p1, -0x1

    if-ge v0, v1, :cond_0

    .line 4151
    add-int/lit8 v1, v0, 0x1

    aget v1, p0, v1

    aput v1, p0, v0

    .line 4150
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static deleteDrmTracks(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 6
    .parameter "context"
    .parameter "uri"

    .prologue
    const/4 v4, 0x0

    .line 1331
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

    .line 1335
    .local v0, cols:[Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, p1, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1336
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0700a0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1337
    .local v2, message:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1338
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "content://drm"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1342
    .end local v2           #message:Ljava/lang/String;
    :goto_0
    return-void

    .line 1339
    :catch_0
    move-exception v1

    .line 1340
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
    .line 1183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1184
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

    .line 1185
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

    .line 1186
    return-void
.end method

.method public static deletePlaylistTrack(Landroid/content/Context;J[I)V
    .locals 9
    .parameter "context"
    .parameter "plid"
    .parameter "list"

    .prologue
    const/4 v8, 0x0

    .line 1189
    if-eqz p3, :cond_2

    array-length v4, p3

    if-lez v4, :cond_2

    .line 1190
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1191
    .local v3, where:Ljava/lang/StringBuilder;
    const-string v4, "audio_playlists_map._id IN ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1192
    array-length v2, p3

    .line 1193
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 1194
    aget v4, p3, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1195
    add-int/lit8 v4, v2, -0x1

    if-ge v0, v4, :cond_0

    .line 1196
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1193
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1199
    :cond_1
    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1200
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

    .line 1204
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

    .line 1205
    .local v1, message:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 1211
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

    .line 1214
    if-eqz p1, :cond_2

    array-length v4, p1

    if-lez v4, :cond_2

    .line 1215
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1216
    .local v3, where:Ljava/lang/StringBuilder;
    const-string v4, "_id IN ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1217
    array-length v2, p1

    .line 1218
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 1219
    aget v4, p1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1220
    add-int/lit8 v4, v2, -0x1

    if-ge v0, v4, :cond_0

    .line 1221
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1218
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1224
    :cond_1
    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1225
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1228
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

    .line 1230
    .local v1, message:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 1236
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
    .line 1240
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

    .line 1244
    .local v3, cols:[Ljava/lang/String;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 1245
    .local v16, where:Ljava/lang/StringBuilder;
    const-string v1, "_id IN ("

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1246
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    move-object/from16 v0, p1

    array-length v1, v0

    if-ge v12, v1, :cond_1

    .line 1247
    aget v1, p1, v12

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1248
    move-object/from16 v0, p1

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge v12, v1, :cond_0

    .line 1249
    const-string v1, ","

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1246
    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 1252
    :cond_1
    const-string v1, ")"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1253
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v6}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1256
    .local v9, c:Landroid/database/Cursor;
    if-eqz v9, :cond_8

    .line 1260
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v1, :cond_3

    .line 1262
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1263
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1265
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 1266
    .local v13, id:I
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1, v13}, Lcom/htc/music/IMediaPlaybackService;->removeTrack(I)I

    .line 1268
    const/4 v1, 0x2

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 1269
    .local v7, artIndex:I
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sArtCache:Ljava/util/HashMap;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1270
    :try_start_1
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sArtCache:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/music/util/MusicUtils$FastBitmapDrawable;

    .line 1271
    .local v8, bm:Lcom/htc/music/util/MusicUtils$FastBitmapDrawable;
    if-eqz v8, :cond_2

    .line 1272
    invoke-virtual {v8}, Lcom/htc/music/util/MusicUtils$FastBitmapDrawable;->recycle()V

    .line 1273
    const/4 v8, 0x0

    .line 1275
    :cond_2
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sArtCache:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1276
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1277
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 1279
    .end local v7           #artIndex:I
    .end local v8           #bm:Lcom/htc/music/util/MusicUtils$FastBitmapDrawable;
    .end local v13           #id:I
    :catch_0
    move-exception v1

    .line 1284
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1288
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1289
    :cond_4
    :goto_2
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_7

    .line 1290
    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 1291
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

    .line 1292
    if-eqz v15, :cond_4

    .line 1293
    const-string v1, "content://drm/"

    invoke-virtual {v15, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1294
    const-string v1, "[MusicUtils]"

    const-string v2, "delete drm file"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1295
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->deleteDrmFile(Landroid/content/ContentResolver;Landroid/net/Uri;)I

    .line 1296
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2

    .line 1276
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

    .line 1298
    .end local v7           #artIndex:I
    .end local v13           #id:I
    .restart local v15       #name:Ljava/lang/String;
    :cond_5
    const-string v1, "[MusicUtils]"

    const-string v2, "delete local file"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1299
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1301
    .local v11, f:Ljava/io/File;
    :try_start_5
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_6

    .line 1305
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

    .line 1307
    :cond_6
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 1308
    :catch_1
    move-exception v10

    .line 1309
    .local v10, ex:Ljava/lang/SecurityException;
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2

    .line 1316
    .end local v10           #ex:Ljava/lang/SecurityException;
    .end local v11           #f:Ljava/io/File;
    .end local v15           #name:Ljava/lang/String;
    :cond_7
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1317
    const/4 v9, 0x0

    .line 1320
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

    .line 1323
    .local v14, message:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v14, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1327
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://media"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1328
    return-void
.end method

.method public static deleteTracksByCursor(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .parameter "context"
    .parameter "cursor"
    .parameter "where"

    .prologue
    .line 3062
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v10

    if-nez v10, :cond_1

    .line 3063
    :cond_0
    const/4 v8, 0x0

    .line 3139
    :goto_0
    return-object v8

    .line 3066
    :cond_1
    :try_start_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v7

    .line 3070
    .local v7, len:I
    :try_start_1
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3071
    :goto_1
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v10

    if-nez v10, :cond_3

    .line 3073
    const/4 v10, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 3074
    .local v6, id:I
    sget-object v10, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v10, v6}, Lcom/htc/music/IMediaPlaybackService;->removeTrack(I)I

    .line 3076
    const/4 v10, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 3077
    .local v1, artIndex:I
    sget-object v11, Lcom/htc/music/util/MusicUtils;->sArtCache:Ljava/util/HashMap;

    monitor-enter v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_2

    .line 3078
    :try_start_2
    sget-object v10, Lcom/htc/music/util/MusicUtils;->sArtCache:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/util/MusicUtils$FastBitmapDrawable;

    .line 3079
    .local v2, bm:Lcom/htc/music/util/MusicUtils$FastBitmapDrawable;
    if-eqz v2, :cond_2

    .line 3080
    invoke-virtual {v2}, Lcom/htc/music/util/MusicUtils$FastBitmapDrawable;->recycle()V

    .line 3081
    const/4 v2, 0x0

    .line 3083
    :cond_2
    sget-object v10, Lcom/htc/music/util/MusicUtils;->sArtCache:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3084
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3085
    :try_start_3
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 3087
    .end local v1           #artIndex:I
    .end local v2           #bm:Lcom/htc/music/util/MusicUtils$FastBitmapDrawable;
    .end local v6           #id:I
    :catch_0
    move-exception v10

    .line 3091
    :cond_3
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v11, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v10, v11, v0, v12}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 3093
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

    .line 3096
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3097
    :cond_4
    :goto_2
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v10

    if-nez v10, :cond_7

    .line 3098
    const/4 v10, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 3099
    .local v9, name:Ljava/lang/String;
    if-eqz v9, :cond_4

    .line 3100
    const-string v10, "content://drm/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 3101
    const-string v10, "[MusicUtils]"

    const-string v11, "deleteTracksByCursor,delete drm file"

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_4 .. :try_end_4} :catch_2

    .line 3103
    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/wrap/android/provider/HtcWrapDrmStore;->deleteDrmFile(Landroid/content/ContentResolver;Landroid/net/Uri;)I

    .line 3104
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 3105
    :catch_1
    move-exception v4

    .line 3106
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

    .line 3107
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    .line 3137
    .end local v3           #delete_row_number:I
    .end local v4           #ex:Ljava/lang/SecurityException;
    .end local v7           #len:I
    .end local v9           #name:Ljava/lang/String;
    :catch_2
    move-exception v4

    .line 3138
    .local v4, ex:Ljava/lang/UnsupportedOperationException;
    :try_start_7
    const-string v10, "[MusicUtils]"

    const-string v11, "UnsupportedOperationException:"

    invoke-static {v10, v11, v4}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 3139
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 3084
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

    .line 3140
    .end local v1           #artIndex:I
    .end local v6           #id:I
    .end local v7           #len:I
    :catchall_1
    move-exception v10

    throw v10

    .line 3110
    .restart local v3       #delete_row_number:I
    .restart local v7       #len:I
    .restart local v9       #name:Ljava/lang/String;
    :cond_5
    :try_start_a
    const-string v10, "[MusicUtils]"

    const-string v11, "deleteTracksByCursor,delete local file"

    invoke-static {v10, v11}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3111
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_a .. :try_end_a} :catch_2

    .line 3113
    .local v5, f:Ljava/io/File;
    :try_start_b
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v10

    if-nez v10, :cond_6

    .line 3117
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

    .line 3119
    :cond_6
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_b .. :try_end_b} :catch_2

    goto/16 :goto_2

    .line 3120
    :catch_3
    move-exception v4

    .line 3121
    .local v4, ex:Ljava/lang/SecurityException;
    :try_start_c
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_2

    .line 3129
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

    .line 3135
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
    .line 3147
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

    .line 3152
    .local v3, ccols:[Ljava/lang/String;
    invoke-static {p1, p2, p3, p4}, Lcom/htc/music/util/MusicUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3153
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

    move-object v0, p0

    .line 3155
    check-cast v0, Lcom/htc/music/widget/MusicMaActivity;

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const-string v6, "track"

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/music/widget/MusicMaActivity;->deleteTracks(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 3156
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

    .line 3160
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

    .line 3165
    .local v3, ccols:[Ljava/lang/String;
    invoke-static {v5, p1, p2, p3}, Lcom/htc/music/util/MusicUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3166
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

    move-object v0, p0

    .line 3168
    check-cast v0, Lcom/htc/music/widget/MusicMaActivity;

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v6, "album_key,track"

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/music/widget/MusicMaActivity;->deleteTracks(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 3172
    return-void
.end method

.method public static deleteTracksForComposer(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "name"

    .prologue
    const/4 v5, 0x0

    .line 3199
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

    .line 3206
    .local v3, ccols:[Ljava/lang/String;
    invoke-static {p1}, Lcom/htc/music/util/MusicUtils;->isUnknownComposer(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3207
    const-string v0, "<unknown>"

    invoke-static {v5, v5, v5, v0}, Lcom/htc/music/util/MusicUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3211
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

    .line 3213
    check-cast v0, Lcom/htc/music/widget/MusicMaActivity;

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v6, "track"

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/music/widget/MusicMaActivity;->deleteTracks(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 3216
    return-void

    .line 3209
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

    .line 3175
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
    invoke-static {v5, v5, p1, v5}, Lcom/htc/music/util/MusicUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3181
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

    .line 3183
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v7, v0

    .line 3185
    .local v7, id:J
    const-wide/16 v0, -0x1

    cmp-long v0, v7, v0

    if-nez v0, :cond_0

    move-object v0, p0

    .line 3186
    check-cast v0, Lcom/htc/music/widget/MusicMaActivity;

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v6, "title_key"

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/music/widget/MusicMaActivity;->deleteTracks(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 3196
    :goto_0
    return-void

    :cond_0
    move-object v0, p0

    .line 3190
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
    .line 4772
    const-string v3, "[MusicUtils]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[disableKeyguard] "

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

    .line 4773
    const/4 v1, 0x0

    .line 4774
    .local v1, win:Landroid/view/Window;
    invoke-virtual {p0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 4775
    .local v0, parent:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 4776
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 4781
    :goto_0
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 4782
    .local v2, winParams:Landroid/view/WindowManager$LayoutParams;
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x48

    or-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 4784
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 4785
    return-void

    .line 4778
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
    const v9, 0x7f080091

    .line 1549
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    .line 1552
    .local v2, status:Ljava/lang/String;
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->IsInternalStorage()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1553
    const v3, 0x7f07004c

    .line 1558
    .local v3, title:I
    :goto_0
    const v1, 0x20400a0

    .line 1560
    .local v1, message:I
    const-string v6, "shared"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1561
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->IsInternalStorage()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1562
    const v3, 0x7f070047

    .line 1563
    const v1, 0x7f070049

    .line 1588
    :goto_1
    invoke-virtual {p0, v3}, Landroid/app/Activity;->setTitle(I)V

    .line 1589
    invoke-virtual {p0, v9}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 1590
    .local v5, v:Landroid/view/View;
    if-eqz v5, :cond_0

    .line 1591
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1597
    :cond_0
    const v6, 0x102000a

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 1598
    if-eqz v5, :cond_1

    .line 1599
    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1601
    :cond_1
    invoke-virtual {p0, v9}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1602
    .local v4, tv:Landroid/widget/TextView;
    if-eqz v4, :cond_2

    .line 1603
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1604
    :cond_2
    return-void

    .line 1555
    .end local v1           #message:I
    .end local v3           #title:I
    .end local v4           #tv:Landroid/widget/TextView;
    .end local v5           #v:Landroid/view/View;
    :cond_3
    const v3, 0x7f07004b

    .restart local v3       #title:I
    goto :goto_0

    .line 1565
    .restart local v1       #message:I
    :cond_4
    const v3, 0x7f070046

    .line 1566
    const v1, 0x7f070048

    goto :goto_1

    .line 1569
    :cond_5
    const-string v6, "removed"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1570
    const v3, 0x20401f5

    .line 1571
    const v1, 0x20400a0

    goto :goto_1

    .line 1572
    :cond_6
    const-string v6, "unmounted"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1573
    const v3, 0x20401f5

    .line 1574
    const v1, 0x20401fa

    goto :goto_1

    .line 1575
    :cond_7
    const-string v6, "mounted"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1580
    const-string v6, ""

    invoke-virtual {p0, v6}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1581
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1582
    .local v0, intent:Landroid/content/Intent;
    const-class v6, Lcom/htc/music/ScanningProgressActivity;

    invoke-virtual {v0, p0, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1583
    const/16 v6, 0xb

    invoke-virtual {p0, v0, v6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 1585
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
    .line 4788
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/htc/music/util/MusicUtils;->enableKeyguard(Landroid/app/Activity;Z)V

    .line 4789
    return-void
.end method

.method public static enableKeyguard(Landroid/app/Activity;Z)V
    .locals 6
    .parameter "activity"
    .parameter "onlyShowWhenLocked"

    .prologue
    .line 4792
    invoke-static {}, Lcom/htc/music/util/ProjectSettings;->isSupportBypassPincode()Z

    move-result v3

    if-nez v3, :cond_0

    .line 4793
    const-string v3, "[MusicUtils]"

    const-string v4, "Not support bypass pincode for this project."

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4814
    :goto_0
    return-void

    .line 4797
    :cond_0
    const-string v3, "[MusicUtils]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[enableKeyguard] "

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

    .line 4799
    const/4 v1, 0x0

    .line 4800
    .local v1, win:Landroid/view/Window;
    invoke-virtual {p0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 4801
    .local v0, parent:Landroid/app/Activity;
    if-eqz v0, :cond_2

    .line 4802
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 4807
    :goto_1
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 4808
    .local v2, winParams:Landroid/view/WindowManager$LayoutParams;
    if-nez p1, :cond_1

    .line 4809
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v4, -0x400001

    and-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 4811
    :cond_1
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v4, -0x80001

    and-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 4812
    const-string v3, "[MusicUtils]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Bypass][enableKeyguard] Set winParams.flags="

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

    .line 4813
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0

    .line 4804
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
    .line 4829
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.enablekeyguard"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4830
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

    .line 2160
    const/4 v3, 0x1

    .line 2161
    .local v3, sampleSize:I
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 2162
    .local v0, bitmapOptions:Landroid/graphics/BitmapFactory$Options;
    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v6, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 2163
    iput-boolean v8, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 2165
    iput v7, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 2166
    iput-boolean v7, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 2168
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 2170
    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    shr-int/lit8 v2, v6, 0x1

    .line 2171
    .local v2, nextWidth:I
    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    shr-int/lit8 v1, v6, 0x1

    .line 2172
    .local v1, nextHeight:I
    :goto_0
    if-le v2, p1, :cond_0

    if-le v1, p2, :cond_0

    .line 2173
    shl-int/lit8 v3, v3, 0x1

    .line 2174
    shr-int/lit8 v2, v2, 0x1

    .line 2175
    shr-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2178
    :cond_0
    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 2179
    iput-boolean v8, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 2180
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 2181
    .local v4, tempBitmap:Landroid/graphics/Bitmap;
    if-eqz v4, :cond_2

    .line 2182
    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-ne v6, p1, :cond_1

    iget v6, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-eq v6, p2, :cond_2

    .line 2183
    :cond_1
    invoke-static {v4, p1, p2, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 2184
    .local v5, tmp:Landroid/graphics/Bitmap;
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 2185
    move-object v4, v5

    .line 2188
    .end local v5           #tmp:Landroid/graphics/Bitmap;
    :cond_2
    return-object v4
.end method

.method public static getAlbumListForArtist(Landroid/content/Context;I)[I
    .locals 8
    .parameter "context"
    .parameter "id"

    .prologue
    .line 856
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "artist_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "album_id"

    aput-object v1, v2, v0

    .line 859
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

    .line 861
    .local v3, where:Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "album COLLATE NOCASE ASC, track"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 864
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 865
    invoke-static {v6}, Lcom/htc/music/util/MusicUtils;->getAlbumListForCursor(Landroid/database/Cursor;)[I

    move-result-object v7

    .line 866
    .local v7, list:[I
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 867
    const/4 v6, 0x0

    .line 870
    .end local v7           #list:[I
    :goto_0
    return-object v7

    :cond_0
    sget-object v7, Lcom/htc/music/util/MusicUtils;->sEmptyList:[I

    goto :goto_0
.end method

.method public static getAlbumListForCursor(Landroid/database/Cursor;)[I
    .locals 7
    .parameter "cursor"

    .prologue
    .line 559
    if-nez p0, :cond_1

    .line 560
    const-string v5, "[MusicUtils]"

    const-string v6, "getAlbumListForCursor, cursor is  null, return empty list"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    sget-object v4, Lcom/htc/music/util/MusicUtils;->sEmptyList:[I

    .line 572
    :cond_0
    return-object v4

    .line 563
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 564
    .local v3, len:I
    new-array v4, v3, [I

    .line 565
    .local v4, list:[I
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 566
    const-string v5, "album_id"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 567
    .local v0, colidx:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 568
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 569
    .local v2, id:I
    aput v2, v4, v1

    .line 570
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 567
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

    .line 937
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v5

    const-string v0, "album_id"

    aput-object v0, v2, v1

    .line 940
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

    .line 941
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

    .line 942
    const/4 v6, 0x0

    .line 943
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 944
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "title_key"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 952
    :goto_0
    if-eqz v6, :cond_1

    .line 953
    invoke-static {v6}, Lcom/htc/music/util/MusicUtils;->getAlbumListForCursor(Landroid/database/Cursor;)[I

    move-result-object v7

    .line 954
    .local v7, list:[I
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 955
    const/4 v6, 0x0

    .line 958
    .end local v7           #list:[I
    :goto_1
    return-object v7

    .line 947
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

    .line 958
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

    .line 1040
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "album_id"

    aput-object v1, v2, v0

    .line 1043
    .local v2, ccols:[Ljava/lang/String;
    const-string v0, "external"

    invoke-static {v0, p1, p2}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    const-string v5, "play_order"

    move-object v0, p0

    move-object v4, v3

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1046
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 1047
    invoke-static {v6}, Lcom/htc/music/util/MusicUtils;->getAlbumListForCursor(Landroid/database/Cursor;)[I

    move-result-object v7

    .line 1048
    .local v7, list:[I
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1049
    const/4 v6, 0x0

    .line 1052
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
    .line 892
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "album_id"

    aput-object v1, v2, v0

    .line 895
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

    .line 897
    .local v3, where:Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "track"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 900
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 901
    invoke-static {v6}, Lcom/htc/music/util/MusicUtils;->getAlbumListForCursor(Landroid/database/Cursor;)[I

    move-result-object v7

    .line 902
    .local v7, list:[I
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 903
    const/4 v6, 0x0

    .line 907
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

    .line 1074
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

    .line 1078
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_2

    .line 1093
    :cond_0
    if-eqz v6, :cond_1

    .line 1094
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1095
    :goto_0
    const/4 v6, 0x0

    .line 1098
    :cond_1
    :goto_1
    return-object v4

    .line 1081
    :cond_2
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 1082
    .local v9, len:I
    new-array v10, v9, [I

    .line 1083
    .local v10, list:[I
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1084
    const/4 v8, 0x0

    .local v8, i:I
    :goto_2
    if-ge v8, v9, :cond_3

    .line 1085
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    aput v0, v10, v8

    .line 1086
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1084
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1093
    :cond_3
    if-eqz v6, :cond_4

    .line 1094
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1095
    const/4 v6, 0x0

    :cond_4
    move-object v4, v10

    .line 1089
    goto :goto_1

    .line 1090
    .end local v8           #i:I
    .end local v9           #len:I
    .end local v10           #list:[I
    :catch_0
    move-exception v7

    .line 1091
    .local v7, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1093
    if-eqz v6, :cond_1

    .line 1094
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1093
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 1094
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1095
    const/4 v6, 0x0

    .line 1093
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

    .line 812
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

    .line 816
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    .line 830
    :cond_0
    if-eqz v7, :cond_1

    .line 831
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v10, v4

    .line 828
    :cond_2
    :goto_0
    return-object v10

    .line 819
    :cond_3
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 820
    .local v9, len:I
    new-array v10, v9, [I

    .line 821
    .local v10, list:[I
    new-array v6, v9, [I

    .line 822
    .local v6, albumlist:[I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    if-ge v8, v9, :cond_4

    .line 823
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 824
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    aput v0, v10, v8

    .line 825
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    aput v0, v6, v8

    .line 822
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 827
    :cond_4
    invoke-static {v6}, Lcom/htc/music/util/MusicUtils;->prepareAlbumList([I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 830
    if-eqz v7, :cond_2

    .line 831
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 830
    .end local v6           #albumlist:[I
    .end local v8           #i:I
    .end local v9           #len:I
    .end local v10           #list:[I
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_5

    .line 831
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 830
    :cond_5
    throw v0
.end method

.method public static getAppName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 4511
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isSupportListenStore()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4512
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070065

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4514
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

    .line 3995
    if-nez p1, :cond_1

    .line 3996
    const-string v6, "[MusicUtils]"

    const-string v7, "getApplyMaskBitmap()...bmSrc is null..."

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v5

    .line 4022
    :cond_0
    :goto_0
    return-object v2

    .line 4000
    :cond_1
    invoke-static {p0, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 4001
    .local v1, bmMask:Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 4002
    .local v0, bmAlpha:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 4003
    .local v2, bmRet:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 4004
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

    .line 4005
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 4006
    .local v4, p:Landroid/graphics/Paint;
    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 4007
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

    .line 4008
    if-eqz v1, :cond_2

    .line 4010
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 4011
    const/4 v1, 0x0

    .line 4013
    :cond_2
    if-eqz v0, :cond_3

    .line 4015
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 4016
    const/4 v0, 0x0

    .line 4018
    :cond_3
    if-eqz p1, :cond_0

    .line 4020
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

    .line 2208
    if-gez p1, :cond_1

    .line 2239
    :cond_0
    :goto_0
    return-object v3

    .line 2211
    :cond_1
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sArtworkUri:Landroid/net/Uri;

    int-to-long v4, p1

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 2212
    .local v1, uri:Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 2213
    new-array v2, v10, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v7

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2214
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 2215
    .local v7, count:I
    :cond_2
    if-eq v7, v10, :cond_4

    .line 2218
    if-eqz v6, :cond_3

    .line 2219
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2221
    :cond_3
    if-nez v7, :cond_0

    goto :goto_0

    .line 2227
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2228
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 2229
    .local v8, i:I
    if-ltz v8, :cond_5

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2230
    .local v9, path:Ljava/lang/String;
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2231
    if-eqz v9, :cond_0

    move-object v3, v9

    .line 2235
    goto :goto_0

    .end local v9           #path:Ljava/lang/String;
    :cond_5
    move-object v9, v3

    .line 2229
    goto :goto_1
.end method

.method public static getArtworkQuick(Landroid/content/Context;III)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "context"
    .parameter "album_id"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 2108
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 2109
    .local v5, res:Landroid/content/ContentResolver;
    sget-object v9, Lcom/htc/music/util/MusicUtils;->sArtworkUri:Landroid/net/Uri;

    int-to-long v10, p1

    invoke-static {v9, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    .line 2110
    .local v8, uri:Landroid/net/Uri;
    if-eqz v8, :cond_4

    .line 2111
    const/4 v2, 0x0

    .line 2113
    .local v2, fd:Landroid/os/ParcelFileDescriptor;
    :try_start_0
    const-string v9, "r"

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 2114
    const/4 v6, 0x1

    .line 2119
    .local v6, sampleSize:I
    sget-object v9, Lcom/htc/music/util/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    const/4 v10, 0x1

    iput-boolean v10, v9, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 2120
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    const/4 v10, 0x0

    sget-object v11, Lcom/htc/music/util/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v9, v10, v11}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 2122
    sget-object v9, Lcom/htc/music/util/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iget v9, v9, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    shr-int/lit8 v4, v9, 0x1

    .line 2123
    .local v4, nextWidth:I
    sget-object v9, Lcom/htc/music/util/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iget v9, v9, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    shr-int/lit8 v3, v9, 0x1

    .line 2124
    .local v3, nextHeight:I
    :goto_0
    if-le v4, p2, :cond_0

    if-le v3, p3, :cond_0

    .line 2125
    shl-int/lit8 v6, v6, 0x1

    .line 2126
    shr-int/lit8 v4, v4, 0x1

    .line 2127
    shr-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2130
    :cond_0
    sget-object v9, Lcom/htc/music/util/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iput v6, v9, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 2131
    sget-object v9, Lcom/htc/music/util/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    const/4 v10, 0x0

    iput-boolean v10, v9, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 2132
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    const/4 v10, 0x0

    sget-object v11, Lcom/htc/music/util/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v9, v10, v11}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2135
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    .line 2137
    sget-object v9, Lcom/htc/music/util/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iget v9, v9, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-ne v9, p2, :cond_1

    sget-object v9, Lcom/htc/music/util/MusicUtils;->sBitmapOptionsCache:Landroid/graphics/BitmapFactory$Options;

    iget v9, v9, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-eq v9, p3, :cond_2

    .line 2138
    :cond_1
    const/4 v9, 0x1

    invoke-static {v0, p2, p3, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 2139
    .local v7, tmp:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2140
    move-object v0, v7

    .line 2150
    .end local v7           #tmp:Landroid/graphics/Bitmap;
    :cond_2
    if-eqz v2, :cond_3

    .line 2151
    :try_start_1
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 2156
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v2           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v3           #nextHeight:I
    .end local v4           #nextWidth:I
    .end local v6           #sampleSize:I
    :cond_3
    :goto_1
    return-object v0

    .line 2146
    .restart local v2       #fd:Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v1

    .line 2147
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

    .line 2150
    if-eqz v2, :cond_4

    .line 2151
    :try_start_3
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 2156
    .end local v1           #ex:Ljava/lang/Exception;
    .end local v2           #fd:Landroid/os/ParcelFileDescriptor;
    :cond_4
    :goto_2
    const/4 v0, 0x0

    goto :goto_1

    .line 2149
    .restart local v2       #fd:Landroid/os/ParcelFileDescriptor;
    :catchall_0
    move-exception v9

    .line 2150
    if-eqz v2, :cond_5

    .line 2151
    :try_start_4
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 2149
    :cond_5
    :goto_3
    throw v9

    .line 2145
    :catch_1
    move-exception v9

    .line 2150
    if-eqz v2, :cond_4

    .line 2151
    :try_start_5
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 2152
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
    .line 4277
    const/4 v0, 0x0

    .line 4280
    .local v0, currentAudioType:I
    invoke-static {p1}, Lcom/htc/music/util/MusicUtils;->wasDRMFilePlaying(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4281
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/htc/music/util/MusicUtils;->getDrmType(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v0

    .line 4292
    :cond_0
    return v0
.end method

.method public static getCachedArtwork(Landroid/content/Context;ILandroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/Drawable;
    .locals 10
    .parameter "context"
    .parameter "artIndex"
    .parameter "defaultArtwork"

    .prologue
    .line 2069
    const/4 v2, 0x0

    .line 2070
    .local v2, d:Landroid/graphics/drawable/Drawable;
    sget-object v8, Lcom/htc/music/util/MusicUtils;->sArtCache:Ljava/util/HashMap;

    monitor-enter v8

    .line 2071
    :try_start_0
    sget-object v7, Lcom/htc/music/util/MusicUtils;->sArtCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Landroid/graphics/drawable/Drawable;

    move-object v2, v0

    .line 2072
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2073
    if-nez v2, :cond_0

    .line 2074
    move-object v2, p2

    .line 2075
    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 2076
    .local v4, icon:Landroid/graphics/Bitmap;
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 2077
    .local v6, w:I
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 2078
    .local v3, h:I
    invoke-static {p0, p1, v6, v3}, Lcom/htc/music/util/MusicUtils;->getArtworkQuick(Landroid/content/Context;III)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2079
    .local v1, b:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 2080
    new-instance v2, Lcom/htc/music/util/MusicUtils$FastBitmapDrawable;

    .end local v2           #d:Landroid/graphics/drawable/Drawable;
    invoke-direct {v2, v1}, Lcom/htc/music/util/MusicUtils$FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 2081
    .restart local v2       #d:Landroid/graphics/drawable/Drawable;
    sget-object v8, Lcom/htc/music/util/MusicUtils;->sArtCache:Ljava/util/HashMap;

    monitor-enter v8

    .line 2083
    :try_start_1
    sget-object v7, Lcom/htc/music/util/MusicUtils;->sArtCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/Drawable;

    .line 2084
    .local v5, value:Landroid/graphics/drawable/Drawable;
    if-nez v5, :cond_1

    .line 2085
    sget-object v7, Lcom/htc/music/util/MusicUtils;->sArtCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2089
    :goto_0
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2092
    .end local v1           #b:Landroid/graphics/Bitmap;
    .end local v3           #h:I
    .end local v4           #icon:Landroid/graphics/Bitmap;
    .end local v5           #value:Landroid/graphics/drawable/Drawable;
    .end local v6           #w:I
    :cond_0
    return-object v2

    .line 2072
    :catchall_0
    move-exception v7

    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    .line 2087
    .restart local v1       #b:Landroid/graphics/Bitmap;
    .restart local v3       #h:I
    .restart local v4       #icon:Landroid/graphics/Bitmap;
    .restart local v5       #value:Landroid/graphics/drawable/Drawable;
    .restart local v6       #w:I
    :cond_1
    move-object v2, v5

    goto :goto_0

    .line 2089
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

    .line 3360
    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/htc/music/util/ProjectSettings;->getEnableDrmWarning(Landroid/content/Context;)I

    move-result v9

    if-nez v9, :cond_2

    .line 3361
    :cond_0
    const/4 v7, 0x0

    .line 3390
    :cond_1
    :goto_0
    return-object v7

    .line 3363
    :cond_2
    invoke-virtual {p1}, Landroid/provider/DrmStore$DrmConstraint;->getCount()I

    move-result v8

    .line 3364
    .local v8, nCount:I
    invoke-virtual {p1}, Landroid/provider/DrmStore$DrmConstraint;->getStartDate()Ljava/util/Date;

    move-result-object v4

    .line 3365
    .local v4, dateStart:Ljava/util/Date;
    invoke-virtual {p1}, Landroid/provider/DrmStore$DrmConstraint;->getEndDate()Ljava/util/Date;

    move-result-object v3

    .line 3366
    .local v3, dateEnd:Ljava/util/Date;
    invoke-virtual {p1}, Landroid/provider/DrmStore$DrmConstraint;->getInterval()J

    move-result-wide v5

    .line 3367
    .local v5, lInterval:J
    const/4 v7, 0x0

    .line 3368
    .local v7, message:Ljava/lang/String;
    const-wide/16 v9, -0x1

    cmp-long v9, v5, v9

    if-eqz v9, :cond_3

    .line 3372
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 3373
    .local v1, currentTime:Landroid/text/format/Time;
    if-eqz v1, :cond_1

    .line 3374
    invoke-virtual {v1}, Landroid/text/format/Time;->setToNow()V

    .line 3375
    new-instance v2, Ljava/util/Date;

    invoke-virtual {v1, v12}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v9

    add-long/2addr v9, v5

    invoke-direct {v2, v9, v10}, Ljava/util/Date;-><init>(J)V

    .line 3376
    .local v2, date:Ljava/util/Date;
    if-eqz v2, :cond_1

    .line 3377
    const v9, 0x7f0700c1

    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-array v10, v13, [Ljava/lang/Object;

    invoke-static {p0, v2}, Lcom/htc/music/util/MusicUtils;->getDate(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 3379
    .end local v1           #currentTime:Landroid/text/format/Time;
    .end local v2           #date:Ljava/util/Date;
    :cond_3
    const/4 v9, -0x1

    if-eq v8, v9, :cond_5

    .line 3380
    if-ne v8, v13, :cond_4

    .line 3381
    const v9, 0x7f0700bd

    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 3382
    :cond_4
    invoke-static {p0}, Lcom/htc/music/util/ProjectSettings;->getEnableDrmWarning(Landroid/content/Context;)I

    move-result v9

    if-ne v9, v11, :cond_1

    .line 3383
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

    .line 3384
    .local v0, count:Ljava/lang/String;
    const v9, 0x7f0700be

    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-array v10, v13, [Ljava/lang/Object;

    aput-object v0, v10, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 3385
    goto :goto_0

    .line 3386
    .end local v0           #count:Ljava/lang/String;
    :cond_5
    invoke-static {p0}, Lcom/htc/music/util/ProjectSettings;->getEnableDrmWarning(Landroid/content/Context;)I

    move-result v9

    if-ne v9, v11, :cond_6

    if-eqz v4, :cond_6

    if-eqz v3, :cond_6

    .line 3387
    const v9, 0x7f0700bf

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

    .line 3389
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
    .line 1623
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

    .line 3519
    const-string v2, "[MusicUtils]"

    const-string v3, "getCurDMR()+"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3525
    new-instance v0, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;

    invoke-direct {v0, p0, v4, v4}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;-><init>(Landroid/content/Context;II)V

    .line 3528
    .local v0, dlnaManager:Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;
    invoke-virtual {v0}, Lcom/htc/dlnasharedmodule/HtcDLNAServiceManager;->getRenderer()Ljava/lang/String;

    move-result-object v1

    .line 3530
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

    .line 3532
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_0

    const/4 v1, 0x0

    .line 3535
    :cond_0
    if-eqz v1, :cond_1

    const-string v2, "My Device"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    .line 3537
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

    .line 3538
    return-object v1
.end method

.method public static getCurrentAlbumId()I
    .locals 1

    .prologue
    .line 379
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 381
    :try_start_0
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/htc/music/IMediaPlaybackService;->getAlbumId()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 385
    :goto_0
    return v0

    .line 382
    :catch_0
    move-exception v0

    .line 385
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getCurrentArtistId()I
    .locals 1

    .prologue
    .line 389
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 391
    :try_start_0
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/htc/music/IMediaPlaybackService;->getArtistId()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 395
    :goto_0
    return v0

    .line 392
    :catch_0
    move-exception v0

    .line 395
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getCurrentAudioId()I
    .locals 1

    .prologue
    .line 399
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 401
    :try_start_0
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/htc/music/IMediaPlaybackService;->getAudioId()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 405
    :goto_0
    return v0

    .line 402
    :catch_0
    move-exception v0

    .line 405
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getCurrentPluginDescription()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 3468
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v2, :cond_0

    .line 3470
    :try_start_0
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v3, -0x1

    invoke-interface {v2, v3}, Lcom/htc/music/IMediaPlaybackService;->getPluginDescription(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3477
    .local v0, e:Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-object v1

    .line 3471
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_0
    move-exception v0

    .line 3472
    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 3473
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
    .line 409
    const/4 v0, 0x0

    .line 410
    .local v0, mode:I
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v1, :cond_0

    .line 412
    :try_start_0
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->getShuffleMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 416
    :cond_0
    :goto_0
    return v0

    .line 413
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getCursorForArtist(Landroid/content/Context;I)Landroid/database/Cursor;
    .locals 7
    .parameter "context"
    .parameter "id"

    .prologue
    .line 628
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "album_id"

    aput-object v1, v2, v0

    .line 631
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

    .line 633
    .local v3, where:Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "album COLLATE NOCASE ASC,track"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 636
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

    .line 667
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v8

    const-string v0, "album_id"

    aput-object v0, v2, v1

    .line 670
    .local v2, ccols:[Ljava/lang/String;
    const-string v5, "album COLLATE NOCASE ASC, track"

    .line 672
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

    .line 673
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

    .line 675
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 676
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 684
    .local v6, cursor:Landroid/database/Cursor;
    :goto_0
    return-object v6

    .line 679
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
    .line 2267
    invoke-static {p0, p1}, Lcom/htc/music/util/MusicUtils;->getDLNAThumb(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2268
    .local v2, thumb:Landroid/graphics/Bitmap;
    move v0, p2

    .line 2269
    .local v0, defSize:I
    const/4 v1, 0x0

    .line 2271
    .local v1, fin:Landroid/graphics/Bitmap;
    if-eqz v2, :cond_0

    if-lez v0, :cond_0

    .line 2272
    const/4 v3, 0x1

    invoke-static {v2, v0, v0, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2274
    :cond_0
    return-object v1
.end method

.method public static getDLNAArtwork(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "context"
    .parameter "filepath"
    .parameter "icon"

    .prologue
    .line 2244
    invoke-static {p0, p1}, Lcom/htc/music/util/MusicUtils;->getDLNAThumb(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2247
    .local v2, thumb:Landroid/graphics/Bitmap;
    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 2248
    .local v0, defSize:I
    const/4 v1, 0x0

    .line 2255
    .local v1, fin:Landroid/graphics/Bitmap;
    if-eqz v2, :cond_0

    if-lez v0, :cond_0

    .line 2256
    const/4 v3, 0x1

    invoke-static {v2, v0, v0, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2263
    :cond_0
    return-object v1
.end method

.method public static getDLNAAssetFileDescriptor(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 7
    .parameter "context"
    .parameter "filepath"

    .prologue
    const/4 v4, 0x0

    .line 2282
    const/4 v1, 0x0

    .line 2285
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

    .line 2309
    :cond_0
    :goto_0
    return-object v0

    .line 2290
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

    .line 2292
    .local v3, uri:Landroid/net/Uri;
    const/4 v0, 0x0

    .line 2295
    .local v0, afDescriptor:Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    const-string v5, "r"

    invoke-virtual {v1, v3, v5}, Landroid/content/ContentProviderClient;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 2304
    :goto_1
    if-nez v0, :cond_0

    move-object v0, v4

    .line 2309
    goto :goto_0

    .line 2296
    :catch_0
    move-exception v2

    .line 2298
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 2299
    .end local v2           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 2301
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

    .line 2315
    const/4 v2, 0x0

    .line 2318
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

    .line 2382
    :cond_0
    :goto_0
    return-object v1

    .line 2324
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

    .line 2330
    .local v5, uri:Landroid/net/Uri;
    const/4 v0, 0x0

    .line 2331
    .local v0, afDescriptor:Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    const-string v7, "r"

    invoke-virtual {v2, v5, v7}, Landroid/content/ContentProviderClient;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2343
    const/4 v1, 0x0

    .line 2344
    .local v1, bitmap:Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .line 2345
    .local v4, pfDescriptor:Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 2347
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 2348
    .local v3, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v7, 0x1

    iput-boolean v7, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 2349
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8, v3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 2353
    const/4 v7, 0x0

    iput-boolean v7, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 2354
    const/4 v7, 0x0

    iput-boolean v7, v3, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 2355
    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v7, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 2358
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8, v3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2368
    .end local v3           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_2
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2379
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v4           #pfDescriptor:Landroid/os/ParcelFileDescriptor;
    :cond_3
    :goto_1
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    .line 2380
    const/4 v2, 0x0

    move-object v1, v6

    .line 2382
    goto :goto_0

    .line 2374
    :catch_0
    move-exception v7

    goto :goto_1
.end method

.method public static getDate(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "date"

    .prologue
    .line 3342
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "date_format"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3343
    .local v0, format:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 3344
    const-string v0, "MM-dd-yyyy"

    .line 3346
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "time_12_24"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3347
    .local v3, setting:Ljava/lang/String;
    const-string v4, "24"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 3349
    .local v2, is24Hour:Z
    if-eqz v2, :cond_1

    .line 3350
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " kk:mm:ss"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3355
    :goto_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 3356
    .local v1, formatter:Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 3352
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

    .line 2765
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

    .line 2772
    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2773
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

    .line 2777
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

    .line 2778
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 2779
    .local v6, resolver:Landroid/content/ContentResolver;
    invoke-static {p0, p1}, Lcom/htc/music/util/MusicUtils;->getDrmCursor(Landroid/content/Context;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v3

    .line 2780
    .local v3, drmCursor:Landroid/database/Cursor;
    if-nez v3, :cond_0

    .line 2781
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

    .line 2867
    :goto_0
    return v7

    .line 2785
    :cond_0
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-nez v8, :cond_1

    .line 2786
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 2787
    const/4 v3, 0x0

    .line 2788
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

    .line 2792
    :cond_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2793
    const/4 v7, 0x0

    .line 2795
    .local v7, status:I
    const-string v8, "message_type"

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2797
    .local v5, messageType:Ljava/lang/String;
    const-string v8, "delivery_type"

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 2799
    .local v1, deliveryType:I
    const-string v8, "_data"

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2800
    .local v0, data:Ljava/lang/String;
    const/4 v2, 0x0

    .line 2801
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

    .line 2804
    packed-switch v1, :pswitch_data_0

    .line 2860
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

    .line 2861
    const/4 v7, -0x1

    .line 2865
    :goto_1
    :pswitch_0
    :sswitch_0
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 2866
    const/4 v3, 0x0

    .line 2867
    goto :goto_0

    .line 2810
    :pswitch_1
    invoke-static {v6, p1, v11}, Landroid/provider/DrmStore;->getDrmConstraint(Landroid/content/ContentResolver;Landroid/net/Uri;I)Landroid/provider/DrmStore$DrmConstraint;

    move-result-object v2

    .line 2812
    if-nez v2, :cond_2

    .line 2813
    const-string v8, "[MusicUtils]"

    const-string v9, "COMBINED DELIVERY: No rights"

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2814
    const/4 v7, 0x1

    goto :goto_1

    .line 2816
    :cond_2
    invoke-static {v6, v2, p1}, Landroid/provider/DrmStore;->checkExpiration(Landroid/content/ContentResolver;Landroid/provider/DrmStore$DrmConstraint;Landroid/net/Uri;)I

    move-result v4

    .line 2817
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

    .line 2818
    sparse-switch v4, :sswitch_data_0

    .line 2826
    const/4 v7, 0x1

    goto :goto_1

    .line 2822
    :sswitch_1
    const/4 v7, 0x4

    .line 2823
    goto :goto_1

    .line 2834
    .end local v4           #error:I
    :pswitch_2
    invoke-static {v6, p1, v11}, Landroid/provider/DrmStore;->getDrmConstraint(Landroid/content/ContentResolver;Landroid/net/Uri;I)Landroid/provider/DrmStore$DrmConstraint;

    move-result-object v2

    .line 2836
    if-nez v2, :cond_3

    .line 2837
    const-string v8, "[MusicUtils]"

    const-string v9, "DRM SEPARATE DELIVERY: No rights"

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2838
    const/4 v7, 0x3

    goto :goto_1

    .line 2840
    :cond_3
    invoke-static {v6, v2, p1}, Landroid/provider/DrmStore;->checkExpiration(Landroid/content/ContentResolver;Landroid/provider/DrmStore$DrmConstraint;Landroid/net/Uri;)I

    move-result v4

    .line 2841
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

    .line 2842
    packed-switch v4, :pswitch_data_1

    .line 2853
    :pswitch_3
    const/4 v7, 0x2

    goto :goto_1

    .line 2846
    :pswitch_4
    const/4 v7, 0x4

    .line 2847
    goto :goto_1

    .line 2849
    :pswitch_5
    const/4 v7, 0x3

    .line 2850
    goto :goto_1

    .line 2804
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 2818
    :sswitch_data_0
    .sparse-switch
        -0x5 -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch

    .line 2842
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

    .line 2725
    const/4 v8, -0x1

    .line 2726
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

    .line 2729
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lt v0, v9, :cond_0

    .line 2730
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2731
    const-string v0, "_size"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 2732
    .local v7, i:I
    if-ltz v7, :cond_0

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_0

    .line 2733
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 2736
    .end local v7           #i:I
    :cond_0
    if-eqz v6, :cond_1

    .line 2737
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2738
    const/4 v6, 0x0

    .line 2740
    :cond_1
    return v8
.end method

.method public static getDrmType(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 6
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 2871
    const/4 v0, 0x0

    .line 2873
    .local v0, deliveryType:I
    invoke-static {p0, p1}, Lcom/htc/music/util/MusicUtils;->getDrmCursor(Landroid/content/Context;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v2

    .line 2874
    .local v2, drmCursor:Landroid/database/Cursor;
    if-nez v2, :cond_0

    .line 2875
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

    .line 2894
    .end local v0           #deliveryType:I
    .local v1, deliveryType:I
    :goto_0
    return v1

    .line 2879
    .end local v1           #deliveryType:I
    .restart local v0       #deliveryType:I
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 2880
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2881
    const/4 v2, 0x0

    .line 2882
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

    .line 2883
    .end local v0           #deliveryType:I
    .restart local v1       #deliveryType:I
    goto :goto_0

    .line 2886
    .end local v1           #deliveryType:I
    .restart local v0       #deliveryType:I
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2888
    const-string v3, "delivery_type"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 2890
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

    .line 2892
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2893
    const/4 v2, 0x0

    move v1, v0

    .line 2894
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

    .line 2898
    const/4 v7, 0x0

    .line 2900
    .local v7, deliveryType:I
    const-string v3, "_data=?"

    .line 2901
    .local v3, where:Ljava/lang/String;
    new-array v4, v5, [Ljava/lang/String;

    aput-object p1, v4, v1

    .line 2905
    .local v4, selectionArgs:[Ljava/lang/String;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v1

    const-string v0, "delivery_type"

    aput-object v0, v2, v5

    .line 2908
    .local v2, cols:[Ljava/lang/String;
    sget-object v1, Landroid/provider/DrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2909
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 2910
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

    .line 2926
    .end local v7           #deliveryType:I
    .local v8, deliveryType:I
    :goto_0
    return v8

    .line 2914
    .end local v8           #deliveryType:I
    .restart local v7       #deliveryType:I
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 2915
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2916
    const/4 v6, 0x0

    .line 2917
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

    .line 2918
    .end local v7           #deliveryType:I
    .restart local v8       #deliveryType:I
    goto :goto_0

    .line 2921
    .end local v8           #deliveryType:I
    .restart local v7       #deliveryType:I
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2922
    const-string v0, "delivery_type"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 2923
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

    .line 2924
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2925
    const/4 v6, 0x0

    move v8, v7

    .line 2926
    .end local v7           #deliveryType:I
    .restart local v8       #deliveryType:I
    goto :goto_0
.end method

.method private static getFileSize(Ljava/io/File;)J
    .locals 9
    .parameter "file"

    .prologue
    .line 497
    const-wide/16 v5, 0x0

    .line 499
    .local v5, size:J
    if-nez p0, :cond_0

    .line 500
    const-wide/16 v7, 0x0

    .line 509
    :goto_0
    return-wide v7

    .line 501
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 502
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v7

    goto :goto_0

    .line 504
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 505
    .local v2, files:[Ljava/io/File;
    if-eqz v2, :cond_2

    .line 506
    move-object v0, v2

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v1, v0, v3

    .line 507
    .local v1, currentFile:Ljava/io/File;
    invoke-static {v1}, Lcom/htc/music/util/MusicUtils;->getFileSize(Ljava/io/File;)J

    move-result-wide v7

    add-long/2addr v5, v7

    .line 506
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0           #arr$:[Ljava/io/File;
    .end local v1           #currentFile:Ljava/io/File;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_2
    move-wide v7, v5

    .line 509
    goto :goto_0
.end method

.method public static getIntPref(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 3
    .parameter "context"
    .parameter "name"
    .parameter "def"

    .prologue
    .line 2389
    const-string v1, "com.htc.music"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2391
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static declared-synchronized getIsInternalEnough()Z
    .locals 2

    .prologue
    .line 439
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
    .line 4058
    const-string v0, "android.intent.action.MAIN"

    .line 4059
    .local v0, ACTION_LAUNCH:Ljava/lang/String;
    new-instance v2, Landroid/content/ComponentName;

    const-string v4, "com.amazon.mp3"

    const-string v5, "com.amazon.mp3.client.activity.LauncherActivity"

    invoke-direct {v2, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4060
    .local v2, Mp3Component:Landroid/content/ComponentName;
    const/high16 v1, 0x1000

    .line 4062
    .local v1, FLAG_ACTIVITY_NEW_TASK:I
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 4063
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4064
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4068
    invoke-virtual {v3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4069
    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 4071
    return-object v3
.end method

.method public static getLaunchVMMIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 4437
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.vmm.music.ListView"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4438
    .local v0, intent:Landroid/content/Intent;
    return-object v0
.end method

.method public static getLaunchVerizonMODIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 4047
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.pv.verizon.mod.ACTION_START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4048
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "getContent"

    const-string v2, "wh|track"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4050
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

    .line 4174
    if-nez p0, :cond_1

    .line 4192
    :cond_0
    :goto_0
    return-object v3

    .line 4175
    :cond_1
    if-eqz p1, :cond_0

    .line 4176
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 4177
    .local v3, markedString:Landroid/text/SpannableString;
    if-eqz p2, :cond_0

    .line 4180
    const/4 v2, -0x1

    .line 4181
    .local v2, index:I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 4182
    .local v1, filterLength:I
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, p2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-le v2, v7, :cond_0

    .line 4183
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v5, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int v6, v1, v2

    invoke-virtual {v3, v5, v2, v6, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 4185
    const-string v5, "com.htc.R.color.link_highlight"

    invoke-static {v5}, Lcom/htc/util/res/HtcResUtil;->getPrivateResID(Ljava/lang/String;)I

    move-result v0

    .line 4186
    .local v0, color:I
    if-eqz v0, :cond_0

    .line 4187
    const-string v5, "input_text_selection_highlight"

    invoke-static {p0, v5, v0}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinColorResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    .line 4188
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

    .line 4733
    if-nez p1, :cond_1

    .line 4734
    const/4 v7, -0x1

    .line 4747
    :cond_0
    :goto_0
    return v7

    .line 4736
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

    .line 4739
    .local v6, c:Landroid/database/Cursor;
    const/4 v7, -0x1

    .line 4740
    .local v7, id:I
    if-eqz v6, :cond_0

    .line 4741
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4742
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4743
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 4745
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

    .line 4712
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

    .line 4718
    .local v6, c:Landroid/database/Cursor;
    const/4 v7, -0x1

    .line 4719
    .local v7, id:I
    if-eqz v6, :cond_1

    .line 4720
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4721
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4722
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 4724
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4725
    const/4 v6, 0x0

    .line 4727
    :cond_1
    return v7
.end method

.method public static getPluginArtWorkPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 2193
    :try_start_0
    invoke-static {p0}, Lcom/htc/music/util/ProjectSettings;->getEnablePlugin(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->isPluginMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2194
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getAlbumArtPath()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2203
    :cond_0
    :goto_0
    return-object v1

    .line 2198
    :catch_0
    move-exception v0

    .line 2199
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2201
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2202
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
    .line 3302
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 3303
    .local v3, where:Ljava/lang/StringBuilder;
    const-string v4, "title != \'\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3304
    if-eqz p0, :cond_0

    .line 3305
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

    .line 3309
    :cond_0
    if-eqz p1, :cond_1

    .line 3310
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

    .line 3313
    :cond_1
    if-eqz p3, :cond_2

    .line 3314
    invoke-static {p3}, Lcom/htc/music/util/MusicUtils;->isUnknownComposer(Ljava/lang/String;)Z

    move-result v2

    .line 3315
    .local v2, unknown:Z
    if-eqz v2, :cond_4

    .line 3316
    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3317
    invoke-static {v3}, Lcom/htc/music/util/MusicUtils;->appendUnknownComposerFilter(Ljava/lang/StringBuilder;)V

    .line 3324
    .end local v2           #unknown:Z
    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    .line 3325
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v0, v4

    .line 3326
    .local v0, gid:J
    const-wide/16 v4, -0x1

    cmp-long v4, v0, v4

    if-nez v4, :cond_5

    .line 3327
    const-string v4, " AND _id NOT IN (SELECT audio_id FROM audio_genres_map)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3333
    .end local v0           #gid:J
    :cond_3
    :goto_1
    const-string v4, " AND is_music>=1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3335
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 3319
    .restart local v2       #unknown:Z
    :cond_4
    const-string v4, "\'"

    const-string v5, "\'\'"

    invoke-virtual {p3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 3320
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

    .line 3329
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

    .line 3970
    if-nez p0, :cond_0

    .line 3971
    const-string v0, "[MusicUtils]"

    const-string v1, "getReflectionBitmap()...resource is null..."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3985
    :goto_0
    return-object v7

    .line 3975
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-gt v0, p1, :cond_1

    .line 3976
    const-string v0, "[MusicUtils]"

    const-string v1, "resource.getHeight() <= height!!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3980
    :cond_1
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 3981
    .local v5, matrix:Landroid/graphics/Matrix;
    const/high16 v0, 0x3f80

    const/high16 v2, -0x4080

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 3982
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

    .line 3985
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
    .line 4470
    sget-object v5, Lcom/htc/music/util/MusicUtils;->mCoverPaint:Landroid/graphics/Paint;

    monitor-enter v5

    .line 4471
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    add-int/2addr v6, p1

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 4473
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

    .line 4475
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    .line 4476
    .local v1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 4477
    sget-object v4, Lcom/htc/music/util/MusicUtils;->mCoverPaint:Landroid/graphics/Paint;

    const/16 v6, 0xff

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 4478
    const/4 v4, 0x0

    const/4 v6, 0x0

    sget-object v7, Lcom/htc/music/util/MusicUtils;->mCoverPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p0, v4, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 4480
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v4, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v6, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v2, v4, v6}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 4481
    .local v0, bsh:Landroid/graphics/BitmapShader;
    new-instance v3, Landroid/graphics/ComposeShader;

    invoke-direct {v3, v0, p3, p2}, Landroid/graphics/ComposeShader;-><init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/Xfermode;)V

    .line 4482
    .local v3, reflectionShader:Landroid/graphics/ComposeShader;
    const/high16 v4, 0x3f80

    const/high16 v6, -0x4080

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v1, v4, v6, v7, v8}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 4484
    sget-object v4, Lcom/htc/music/util/MusicUtils;->mCoverPaint:Landroid/graphics/Paint;

    const/16 v6, 0x40

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 4485
    sget-object v4, Lcom/htc/music/util/MusicUtils;->mCoverPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 4486
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

    .line 4487
    sget-object v4, Lcom/htc/music/util/MusicUtils;->mCoverPaint:Landroid/graphics/Paint;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 4489
    if-eqz p0, :cond_0

    .line 4490
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 4493
    :cond_0
    monitor-exit v5

    return-object v2

    .line 4494
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
    .line 3989
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->createBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3990
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

    .line 4581
    if-nez p0, :cond_0

    .line 4582
    const-string v4, "[MusicUtils]"

    const-string v5, "context can\'t be null!!"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4583
    const/4 v3, 0x0

    .line 4608
    :goto_0
    return-object v3

    .line 4586
    :cond_0
    if-nez p2, :cond_1

    const-string v0, "<unknown>"

    .line 4587
    .local v0, albumName:Ljava/lang/String;
    :goto_1
    if-nez p3, :cond_2

    const-string v1, "<unknown>"

    .line 4589
    .local v1, artistName:Ljava/lang/String;
    :goto_2
    const/4 v3, 0x0

    .line 4591
    .local v3, result:Ljava/lang/String;
    if-eqz p1, :cond_4

    .line 4592
    const v4, 0x7f07011f

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4593
    .local v2, f:Ljava/lang/String;
    const-string v4, "%1s"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4594
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

    .end local v0           #albumName:Ljava/lang/String;
    .end local v1           #artistName:Ljava/lang/String;
    .end local v2           #f:Ljava/lang/String;
    .end local v3           #result:Ljava/lang/String;
    :cond_1
    move-object v0, p2

    .line 4586
    goto :goto_1

    .restart local v0       #albumName:Ljava/lang/String;
    :cond_2
    move-object v1, p3

    .line 4587
    goto :goto_2

    .line 4597
    .restart local v1       #artistName:Ljava/lang/String;
    .restart local v2       #f:Ljava/lang/String;
    .restart local v3       #result:Ljava/lang/String;
    :cond_3
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    aput-object v0, v4, v6

    aput-object v1, v4, v7

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 4600
    .end local v2           #f:Ljava/lang/String;
    :cond_4
    const v4, 0x7f070120

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4601
    .restart local v2       #f:Ljava/lang/String;
    const-string v4, "%2s"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 4602
    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "%2s"

    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "%3s"

    invoke-virtual {v4, v5, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 4604
    :cond_5
    new-array v4, v7, [Ljava/lang/Object;

    aput-object v0, v4, v5

    aput-object v1, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static getSongListForAlbum(Landroid/content/Context;I)[I
    .locals 8
    .parameter "context"
    .parameter "id"

    .prologue
    .line 874
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    .line 877
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

    .line 879
    .local v3, where:Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "track"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 882
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 883
    invoke-static {v6}, Lcom/htc/music/util/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v7

    .line 884
    .local v7, list:[I
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 885
    const/4 v6, 0x0

    .line 888
    .end local v7           #list:[I
    :goto_0
    return-object v7

    :cond_0
    sget-object v7, Lcom/htc/music/util/MusicUtils;->sEmptyList:[I

    goto :goto_0
.end method

.method public static getSongListForAlbum(Landroid/content/Context;III)[I
    .locals 12
    .parameter "context"
    .parameter "type"
    .parameter "id"
    .parameter "albumId"

    .prologue
    .line 991
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "album_id"

    aput-object v1, v2, v0

    .line 995
    .local v2, ccols:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 996
    .local v6, artistId:Ljava/lang/String;
    const/4 v9, 0x0

    .line 997
    .local v9, genreId:Ljava/lang/String;
    const/4 v7, 0x0

    .line 999
    .local v7, composerId:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 1008
    :goto_0
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6, v9, v7}, Lcom/htc/music/util/MusicUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1009
    .local v11, where:Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v11}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "track"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1012
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_0

    .line 1013
    invoke-static {v8}, Lcom/htc/music/util/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v10

    .line 1014
    .local v10, list:[I
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1015
    const/4 v8, 0x0

    .line 1019
    .end local v10           #list:[I
    :goto_1
    return-object v10

    .line 1001
    .end local v8           #cursor:Landroid/database/Cursor;
    .end local v11           #where:Ljava/lang/String;
    :pswitch_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 1002
    goto :goto_0

    .line 1004
    :pswitch_1
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 1019
    .restart local v8       #cursor:Landroid/database/Cursor;
    .restart local v11       #where:Ljava/lang/String;
    :cond_0
    sget-object v10, Lcom/htc/music/util/MusicUtils;->sEmptyList:[I

    goto :goto_1

    .line 999
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getSongListForAlbum(Landroid/content/Context;Ljava/lang/String;)[I
    .locals 8
    .parameter "context"
    .parameter "where"

    .prologue
    .line 3219
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    .line 3222
    .local v2, ccols:[Ljava/lang/String;
    const-string v5, "album COLLATE NOCASE ASC , title COLLATE NOCASE ASC"

    .line 3224
    .local v5, mSortOrder:Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3227
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 3228
    invoke-static {v6}, Lcom/htc/music/util/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v7

    .line 3229
    .local v7, list:[I
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3230
    const/4 v6, 0x0

    .line 3233
    .end local v7           #list:[I
    :goto_0
    return-object v7

    :cond_0
    sget-object v7, Lcom/htc/music/util/MusicUtils;->sEmptyList:[I

    goto :goto_0
.end method

.method public static getSongListForAlbumAndPrepare(Landroid/content/Context;I)[I
    .locals 11
    .parameter "context"
    .parameter "id"

    .prologue
    .line 717
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "album_id"

    aput-object v1, v2, v0

    .line 720
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

    .line 722
    .local v3, where:Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "track"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 725
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 726
    invoke-static {v7}, Lcom/htc/music/util/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v10

    .line 727
    .local v10, list:[I
    array-length v9, v10

    .line 728
    .local v9, len:I
    new-array v6, v9, [I

    .line 729
    .local v6, albumlist:[I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-ge v8, v9, :cond_0

    .line 730
    aput p1, v6, v8

    .line 729
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 731
    :cond_0
    invoke-static {v6}, Lcom/htc/music/util/MusicUtils;->prepareAlbumList([I)V

    .line 732
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 733
    const/4 v7, 0x0

    .line 736
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

.method public static getSongListForAlbumAndPrepare(Landroid/content/Context;Ljava/lang/String;I)[I
    .locals 11
    .parameter "context"
    .parameter "where"
    .parameter "id"

    .prologue
    .line 3257
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "album_id"

    aput-object v1, v2, v0

    .line 3260
    .local v2, ccols:[Ljava/lang/String;
    const-string v5, "album COLLATE NOCASE ASC , track COLLATE NOCASE ASC"

    .line 3262
    .local v5, mSortOrder:Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 3265
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 3266
    invoke-static {v7}, Lcom/htc/music/util/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v10

    .line 3267
    .local v10, list:[I
    array-length v9, v10

    .line 3268
    .local v9, len:I
    new-array v6, v9, [I

    .line 3269
    .local v6, albumlist:[I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-ge v8, v9, :cond_0

    .line 3270
    aput p2, v6, v8

    .line 3269
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 3271
    :cond_0
    invoke-static {v6}, Lcom/htc/music/util/MusicUtils;->prepareAlbumList([I)V

    .line 3272
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 3273
    const/4 v7, 0x0

    .line 3276
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

.method private static getSongListForAllPlaylistAndPrepare(Landroid/content/Context;)[I
    .locals 20
    .parameter "context"

    .prologue
    .line 740
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v3, v1

    .line 743
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

    .line 748
    .local v10, ccols:[Ljava/lang/String;
    const/16 v16, 0x0

    .line 749
    .local v16, playlistCursor:Landroid/database/Cursor;
    const/16 v18, 0x0

    .line 750
    .local v18, result:Landroid/database/Cursor;
    const/4 v12, 0x0

    .line 751
    .local v12, cursors:[Landroid/database/Cursor;
    const/4 v14, 0x0

    .line 753
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

    .line 756
    if-eqz v16, :cond_a

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_a

    .line 757
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v14

    .line 758
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    .line 759
    const-string v1, "_id"

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 760
    .local v11, colidx:I
    new-array v12, v14, [Landroid/database/Cursor;

    .line 761
    const/4 v13, 0x0

    .local v13, i:I
    :goto_0
    if-ge v13, v14, :cond_0

    .line 762
    move-object/from16 v0, v16

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 763
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

    .line 766
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    .line 761
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 768
    .end local v17           #plid:I
    :cond_0
    new-instance v19, Landroid/database/MergeCursor;

    move-object/from16 v0, v19

    invoke-direct {v0, v12}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 769
    .end local v18           #result:Landroid/database/Cursor;
    .local v19, result:Landroid/database/Cursor;
    if-eqz v19, :cond_9

    .line 770
    :try_start_1
    invoke-static/range {v19 .. v19}, Lcom/htc/music/util/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v15

    .line 771
    .local v15, list:[I
    invoke-static/range {v19 .. v19}, Lcom/htc/music/util/MusicUtils;->prepareAlbumList(Landroid/database/Cursor;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 776
    if-eqz v16, :cond_1

    .line 777
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 778
    const/16 v16, 0x0

    .line 780
    :cond_1
    if-eqz v19, :cond_e

    .line 781
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 782
    const/16 v18, 0x0

    .line 784
    .end local v19           #result:Landroid/database/Cursor;
    .restart local v18       #result:Landroid/database/Cursor;
    :goto_1
    const/4 v13, 0x0

    :goto_2
    if-ge v13, v14, :cond_5

    .line 785
    aget-object v1, v12, v13

    if-eqz v1, :cond_2

    .line 786
    aget-object v1, v12, v13

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 787
    const/4 v1, 0x0

    aput-object v1, v12, v13

    .line 784
    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 776
    .end local v11           #colidx:I
    .end local v15           #list:[I
    :cond_3
    throw v1

    .line 791
    :cond_4
    sget-object v15, Lcom/htc/music/util/MusicUtils;->sEmptyList:[I

    :cond_5
    return-object v15

    .line 776
    .end local v13           #i:I
    :catchall_0
    move-exception v1

    :goto_3
    if-eqz v16, :cond_6

    .line 777
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 778
    const/16 v16, 0x0

    .line 780
    :cond_6
    if-eqz v18, :cond_7

    .line 781
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 782
    const/16 v18, 0x0

    .line 784
    :cond_7
    const/4 v13, 0x0

    .restart local v13       #i:I
    :goto_4
    if-ge v13, v14, :cond_3

    .line 785
    aget-object v2, v12, v13

    if-eqz v2, :cond_8

    .line 786
    aget-object v2, v12, v13

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 787
    const/4 v2, 0x0

    aput-object v2, v12, v13

    .line 784
    :cond_8
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .end local v18           #result:Landroid/database/Cursor;
    .restart local v11       #colidx:I
    .restart local v19       #result:Landroid/database/Cursor;
    :cond_9
    move-object/from16 v18, v19

    .line 776
    .end local v11           #colidx:I
    .end local v13           #i:I
    .end local v19           #result:Landroid/database/Cursor;
    .restart local v18       #result:Landroid/database/Cursor;
    :cond_a
    if-eqz v16, :cond_b

    .line 777
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 778
    const/16 v16, 0x0

    .line 780
    :cond_b
    if-eqz v18, :cond_c

    .line 781
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 782
    const/16 v18, 0x0

    .line 784
    :cond_c
    const/4 v13, 0x0

    .restart local v13       #i:I
    :goto_5
    if-ge v13, v14, :cond_4

    .line 785
    aget-object v1, v12, v13

    if-eqz v1, :cond_d

    .line 786
    aget-object v1, v12, v13

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 787
    const/4 v1, 0x0

    aput-object v1, v12, v13

    .line 784
    :cond_d
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 776
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
    .locals 8
    .parameter "context"
    .parameter "id"

    .prologue
    .line 838
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    .line 841
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

    .line 843
    .local v3, where:Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "album COLLATE NOCASE ASC,track"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 846
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 847
    invoke-static {v6}, Lcom/htc/music/util/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v7

    .line 848
    .local v7, list:[I
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 849
    const/4 v6, 0x0

    .line 852
    .end local v7           #list:[I
    :goto_0
    return-object v7

    :cond_0
    sget-object v7, Lcom/htc/music/util/MusicUtils;->sEmptyList:[I

    goto :goto_0
.end method

.method public static getSongListForArtist(Landroid/content/Context;Ljava/lang/String;)[I
    .locals 8
    .parameter "context"
    .parameter "where"

    .prologue
    .line 3237
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    .line 3241
    .local v2, ccols:[Ljava/lang/String;
    const-string v5, "artist COLLATE NOCASE ASC , title COLLATE NOCASE ASC"

    .line 3244
    .local v5, mSortOrder:Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3247
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 3248
    invoke-static {v6}, Lcom/htc/music/util/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v7

    .line 3249
    .local v7, list:[I
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3250
    const/4 v6, 0x0

    .line 3253
    .end local v7           #list:[I
    :goto_0
    return-object v7

    :cond_0
    sget-object v7, Lcom/htc/music/util/MusicUtils;->sEmptyList:[I

    goto :goto_0
.end method

.method public static getSongListForArtistAndPrepare(Landroid/content/Context;I)[I
    .locals 8
    .parameter "context"
    .parameter "id"

    .prologue
    .line 608
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "album_id"

    aput-object v1, v2, v0

    .line 611
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

    .line 613
    .local v3, where:Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "album COLLATE NOCASE ASC,album_id, track, title COLLATE NOCASE ASC"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 617
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 618
    invoke-static {v6}, Lcom/htc/music/util/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v7

    .line 619
    .local v7, list:[I
    invoke-static {v6}, Lcom/htc/music/util/MusicUtils;->prepareAlbumList(Landroid/database/Cursor;)Z

    .line 620
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 621
    const/4 v6, 0x0

    .line 624
    .end local v7           #list:[I
    :goto_0
    return-object v7

    :cond_0
    sget-object v7, Lcom/htc/music/util/MusicUtils;->sEmptyList:[I

    goto :goto_0
.end method

.method public static getSongListForArtistAndPrepare(Landroid/content/Context;Ljava/lang/String;)[I
    .locals 8
    .parameter "context"
    .parameter "where"

    .prologue
    .line 3280
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "album_id"

    aput-object v1, v2, v0

    .line 3284
    .local v2, ccols:[Ljava/lang/String;
    const-string v5, "artist COLLATE NOCASE ASC , title COLLATE NOCASE ASC"

    .line 3287
    .local v5, mSortOrder:Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3290
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 3291
    invoke-static {v6}, Lcom/htc/music/util/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v7

    .line 3292
    .local v7, list:[I
    invoke-static {v6}, Lcom/htc/music/util/MusicUtils;->prepareAlbumList(Landroid/database/Cursor;)Z

    .line 3293
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3294
    const/4 v6, 0x0

    .line 3297
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
    .line 962
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "album_id"

    aput-object v1, v2, v0

    .line 966
    .local v2, ccols:[Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 967
    .local v8, where:Ljava/lang/StringBuilder;
    invoke-static {p1}, Lcom/htc/music/util/MusicUtils;->isUnknownComposer(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 968
    const-string v0, "is_music>=1"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 969
    const-string v0, " AND "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 970
    invoke-static {v8}, Lcom/htc/music/util/MusicUtils;->appendUnknownComposerFilter(Ljava/lang/StringBuilder;)V

    .line 977
    :goto_0
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "track"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 980
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 981
    invoke-static {v6}, Lcom/htc/music/util/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v7

    .line 982
    .local v7, list:[I
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 983
    const/4 v6, 0x0

    .line 986
    .end local v7           #list:[I
    :goto_1
    return-object v7

    .line 972
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_0
    const-string v0, "\'"

    const-string v1, "\'\'"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 973
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

    .line 986
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
    .line 688
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "album_id"

    aput-object v1, v2, v0

    .line 692
    .local v2, ccols:[Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 693
    .local v8, where:Ljava/lang/StringBuilder;
    invoke-static {p1}, Lcom/htc/music/util/MusicUtils;->isUnknownComposer(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 694
    const-string v0, "is_music>=1"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 695
    const-string v0, " AND "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 696
    invoke-static {v8}, Lcom/htc/music/util/MusicUtils;->appendUnknownComposerFilter(Ljava/lang/StringBuilder;)V

    .line 703
    :goto_0
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "track"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 706
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 707
    invoke-static {v6}, Lcom/htc/music/util/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v7

    .line 708
    .local v7, list:[I
    invoke-static {v6}, Lcom/htc/music/util/MusicUtils;->prepareAlbumList(Landroid/database/Cursor;)Z

    .line 709
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 710
    const/4 v6, 0x0

    .line 713
    .end local v7           #list:[I
    :goto_1
    return-object v7

    .line 698
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_0
    const-string v0, "\'"

    const-string v1, "\'\'"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 699
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

    .line 713
    .restart local v6       #cursor:Landroid/database/Cursor;
    :cond_1
    sget-object v7, Lcom/htc/music/util/MusicUtils;->sEmptyList:[I

    goto :goto_1
.end method

.method public static getSongListForCursor(Landroid/database/Cursor;)[I
    .locals 5
    .parameter "cursor"

    .prologue
    .line 541
    if-nez p0, :cond_1

    .line 542
    sget-object v3, Lcom/htc/music/util/MusicUtils;->sEmptyList:[I

    .line 555
    :cond_0
    return-object v3

    .line 544
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 545
    .local v2, len:I
    new-array v3, v2, [I

    .line 546
    .local v3, list:[I
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 547
    const-string v4, "audio_id"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 548
    .local v0, colidx:I
    if-gez v0, :cond_2

    .line 549
    const-string v4, "_id"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 551
    :cond_2
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 552
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    aput v4, v3, v1

    .line 553
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 551
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

    .line 911
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v9

    const-string v0, "album_id"

    aput-object v0, v2, v1

    .line 914
    .local v2, ccols:[Ljava/lang/String;
    const-string v5, "album COLLATE NOCASE ASC, track"

    .line 916
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

    .line 917
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

    .line 918
    const/4 v6, 0x0

    .line 919
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 920
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 927
    :goto_0
    if-eqz v6, :cond_1

    .line 928
    invoke-static {v6}, Lcom/htc/music/util/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v7

    .line 929
    .local v7, list:[I
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 930
    const/4 v6, 0x0

    .line 933
    .end local v7           #list:[I
    :goto_1
    return-object v7

    .line 923
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

    .line 933
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

    .line 640
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v9

    const-string v0, "album_id"

    aput-object v0, v2, v1

    .line 643
    .local v2, ccols:[Ljava/lang/String;
    const-string v5, "album COLLATE NOCASE ASC,album_id, track, title COLLATE NOCASE ASC"

    .line 645
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

    .line 646
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

    .line 648
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 649
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 656
    .local v6, cursor:Landroid/database/Cursor;
    :goto_0
    if-eqz v6, :cond_1

    .line 657
    invoke-static {v6}, Lcom/htc/music/util/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v7

    .line 658
    .local v7, list:[I
    invoke-static {v6}, Lcom/htc/music/util/MusicUtils;->prepareAlbumList(Landroid/database/Cursor;)Z

    .line 659
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 660
    const/4 v6, 0x0

    .line 663
    .end local v7           #list:[I
    :goto_1
    return-object v7

    .line 652
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

    .line 663
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

    .line 1024
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "audio_id"

    aput-object v1, v2, v0

    .line 1027
    .local v2, ccols:[Ljava/lang/String;
    const-string v0, "external"

    invoke-static {v0, p1, p2}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    const-string v5, "play_order"

    move-object v0, p0

    move-object v4, v3

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1030
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 1031
    invoke-static {v6}, Lcom/htc/music/util/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v7

    .line 1032
    .local v7, list:[I
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1033
    const/4 v6, 0x0

    .line 1036
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

    .line 795
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "audio_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "album_id"

    aput-object v1, v2, v0

    .line 798
    .local v2, ccols:[Ljava/lang/String;
    const-string v0, "external"

    invoke-static {v0, p1, p2}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    const-string v5, "play_order"

    move-object v0, p0

    move-object v4, v3

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 801
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 802
    invoke-static {v6}, Lcom/htc/music/util/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v7

    .line 803
    .local v7, list:[I
    invoke-static {v6}, Lcom/htc/music/util/MusicUtils;->prepareAlbumList(Landroid/database/Cursor;)Z

    .line 804
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 805
    const/4 v6, 0x0

    .line 808
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
    .line 4640
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->hasPhoneStorage()Z

    move-result v0

    .line 4641
    .local v0, iseMMC:Z
    if-eqz v0, :cond_0

    .line 4642
    invoke-static {}, Lcom/htc/wrap/android/os/HtcWrapEnvironment;->getPhoneStorageState()Ljava/lang/String;

    move-result-object v1

    .line 4647
    .local v1, state:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 4644
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
    .line 2403
    const-string v1, "com.htc.music"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2405
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
    .line 2987
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
    .line 3015
    const-string v9, "selectedid"

    const-string v10, ""

    invoke-static {p0, v9, v10}, Lcom/htc/music/util/MusicUtils;->getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3016
    .local v7, q:Ljava/lang/String;
    const/4 v5, 0x0

    .line 3017
    .local v5, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_3

    .line 3018
    const-string v9, ";"

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 3019
    .local v1, entries:[Ljava/lang/String;
    array-length v4, v1

    .line 3020
    .local v4, len:I
    new-instance v5, Ljava/util/ArrayList;

    .end local v5           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3021
    .restart local v5       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_3

    .line 3023
    aget-object v8, v1, v2

    .line 3024
    .local v8, revhex:Ljava/lang/String;
    const/4 v6, 0x0

    .line 3025
    .local v6, n:I
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v3, v9, -0x1

    .local v3, j:I
    :goto_1
    if-ltz v3, :cond_2

    .line 3026
    shl-int/lit8 v6, v6, 0x4

    .line 3027
    invoke-virtual {v8, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 3028
    .local v0, c:C
    const/16 v9, 0x30

    if-lt v0, v9, :cond_0

    const/16 v9, 0x39

    if-gt v0, v9, :cond_0

    .line 3029
    add-int/lit8 v9, v0, -0x30

    add-int/2addr v6, v9

    .line 3025
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 3030
    :cond_0
    const/16 v9, 0x61

    if-lt v0, v9, :cond_1

    const/16 v9, 0x66

    if-gt v0, v9, :cond_1

    .line 3031
    add-int/lit8 v9, v0, 0xa

    add-int/lit8 v9, v9, -0x61

    add-int/2addr v6, v9

    goto :goto_2

    .line 3034
    :cond_1
    const/4 v4, 0x0

    .line 3038
    .end local v0           #c:C
    :cond_2
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3021
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3044
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
    .line 2930
    const/4 v7, 0x0

    .line 2931
    .local v7, path:Ljava/lang/String;
    const/4 v2, 0x0

    .line 2933
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

    .line 2954
    .restart local v2       #cols:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 2956
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

    .line 2957
    .local v3, where:Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 2962
    return-object v6

    .line 2959
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

    .line 2744
    const/4 v8, -0x1

    .line 2745
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

    .line 2749
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lt v0, v9, :cond_0

    .line 2750
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2751
    const-string v0, "_size"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 2752
    .local v7, i:I
    if-ltz v7, :cond_0

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_0

    .line 2753
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 2756
    .end local v7           #i:I
    :cond_0
    if-eqz v6, :cond_1

    .line 2757
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2758
    const/4 v6, 0x0

    .line 2760
    :cond_1
    return v8
.end method

.method public static hideDatabaseError(Landroid/app/Activity;)V
    .locals 2
    .parameter "a"

    .prologue
    .line 1608
    const v1, 0x7f080091

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1609
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1610
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1616
    :cond_0
    const v1, 0x102000a

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1617
    if-eqz v0, :cond_1

    .line 1618
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1620
    :cond_1
    return-void
.end method

.method public static idealByteArraySize(I)I
    .locals 3
    .parameter "need"

    .prologue
    const/4 v2, 0x1

    .line 4656
    const/4 v0, 0x4

    .local v0, i:I
    :goto_0
    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    .line 4657
    shl-int v1, v2, v0

    add-int/lit8 v1, v1, -0xc

    if-gt p0, v1, :cond_1

    .line 4658
    shl-int v1, v2, v0

    add-int/lit8 p0, v1, -0xc

    .line 4660
    .end local p0
    :cond_0
    return p0

    .line 4656
    .restart local p0
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static idealIntArraySize(I)I
    .locals 1
    .parameter "need"

    .prologue
    .line 4652
    mul-int/lit8 v0, p0, 0x4

    invoke-static {v0}, Lcom/htc/music/util/MusicUtils;->idealByteArraySize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public static initAlbumArtCache()V
    .locals 3

    .prologue
    .line 2040
    :try_start_0
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getMediaMountedCount()I

    move-result v1

    .line 2041
    .local v1, id:I
    sget v2, Lcom/htc/music/util/MusicUtils;->sArtCacheId:I

    if-eq v1, v2, :cond_0

    .line 2042
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->clearAlbumArtCache()V

    .line 2043
    sput v1, Lcom/htc/music/util/MusicUtils;->sArtCacheId:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2048
    :cond_0
    :goto_0
    return-void

    .line 2045
    :catch_0
    move-exception v0

    .line 2046
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static intToFloatArray([I)[F
    .locals 3
    .parameter "intArray"

    .prologue
    .line 4390
    if-eqz p0, :cond_0

    array-length v2, p0

    if-gtz v2, :cond_2

    .line 4391
    :cond_0
    const/4 v0, 0x0

    .line 4399
    :cond_1
    return-object v0

    .line 4394
    :cond_2
    array-length v2, p0

    new-array v0, v2, [F

    .line 4395
    .local v0, floatArray:[F
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 4396
    aget v2, p0, v1

    int-to-float v2, v2

    aput v2, v0, v1

    .line 4395
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static intToFloatArray([II)[F
    .locals 4
    .parameter "intArray"
    .parameter "divider"

    .prologue
    .line 4403
    if-eqz p0, :cond_0

    array-length v2, p0

    if-gtz v2, :cond_2

    .line 4404
    :cond_0
    const/4 v0, 0x0

    .line 4412
    :cond_1
    return-object v0

    .line 4407
    :cond_2
    array-length v2, p0

    new-array v0, v2, [F

    .line 4408
    .local v0, floatArray:[F
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 4409
    aget v2, p0, v1

    int-to-float v2, v2

    int-to-float v3, p1

    div-float/2addr v2, v3

    aput v2, v0, v1

    .line 4408
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static isBypassPincodeSettingsEnabled(Landroid/content/Context;)Z
    .locals 5
    .parameter "ctx"

    .prologue
    .line 4818
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "htc_music_bypass_enabled"

    invoke-static {v2, v3}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    .line 4820
    .local v1, result:Z
    const-string v2, "[MusicUtils]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[isBypassKeyguard] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4824
    .end local v1           #result:Z
    :goto_0
    return v1

    .line 4822
    :catch_0
    move-exception v0

    .line 4823
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "[MusicUtils]"

    const-string v3, "[isBypassKeyguard] No result"

    invoke-static {v2, v3, v0}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4824
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isConnectionFail(Landroid/content/Context;)Z
    .locals 6
    .parameter "cotext"

    .prologue
    .line 4416
    const/4 v2, 0x1

    .line 4417
    .local v2, isConnectionFail:Z
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 4420
    .local v1, connectivityManager:Landroid/net/ConnectivityManager;
    if-eqz v1, :cond_2

    .line 4421
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 4422
    .local v0, activeNetworkInfo:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-nez v3, :cond_1

    .line 4423
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

    .line 4424
    const/4 v2, 0x1

    .line 4432
    .end local v0           #activeNetworkInfo:Landroid/net/NetworkInfo;
    :goto_0
    return v2

    .line 4426
    .restart local v0       #activeNetworkInfo:Landroid/net/NetworkInfo;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 4429
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

    .line 3501
    :try_start_0
    sget-object v3, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->isPluginMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3502
    sget-object v3, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v4, -0x1

    invoke-interface {v3, v4}, Lcom/htc/music/IMediaPlaybackService;->getPluginClass(I)Ljava/lang/String;

    move-result-object v0

    .line 3503
    .local v0, clsName:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v3, "com.htc.music.DMPMusicPlaybackService"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-eqz v3, :cond_0

    .line 3504
    const/4 v2, 0x1

    .line 3514
    .end local v0           #clsName:Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    .line 3508
    :catch_0
    move-exception v1

    .line 3509
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

    .line 3511
    .end local v1           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 3512
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 3513
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

.method public static isExternalPluginExist()Z
    .locals 1

    .prologue
    .line 3966
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-static {v0}, Lcom/htc/music/util/MusicUtils;->isExternalPluginExist(Lcom/htc/music/IMediaPlaybackService;)Z

    move-result v0

    return v0
.end method

.method public static isExternalPluginExist(Lcom/htc/music/IMediaPlaybackService;)Z
    .locals 4
    .parameter "pServicwe"

    .prologue
    .line 3944
    const/4 v1, 0x0

    .line 3946
    .local v1, hasPlugin:Z
    if-nez p0, :cond_0

    .line 3947
    const-string v2, "[MusicUtils]"

    const-string v3, "sService not initialize??"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3948
    const/4 v2, 0x0

    .line 3961
    :goto_0
    return v2

    .line 3953
    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/htc/music/IMediaPlaybackService;->getExternalPluginCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_1

    .line 3955
    const/4 v1, 0x1

    :cond_1
    :goto_1
    move v2, v1

    .line 3961
    goto :goto_0

    .line 3957
    :catch_0
    move-exception v0

    .line 3958
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static isExternalStorage(Landroid/content/Intent;)Z
    .locals 5
    .parameter "intent"

    .prologue
    .line 475
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 476
    .local v1, externalStorageOpath:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 478
    .local v0, data:Landroid/net/Uri;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 481
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

    .line 482
    const/4 v2, 0x1

    .line 484
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
    .line 462
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 463
    .local v1, externalStorageOpath:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 465
    .local v0, data:Landroid/net/Uri;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 468
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

    .line 469
    const/4 v2, 0x1

    .line 471
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

    .line 443
    const-class v4, Lcom/htc/music/util/MusicUtils;

    monitor-enter v4

    :try_start_0
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->checkInternalMemory()J

    move-result-wide v1

    .line 445
    .local v1, size:J
    cmp-long v3, v1, v7

    if-lez v3, :cond_0

    .line 446
    const/4 v3, 0x1

    sput-boolean v3, Lcom/htc/music/util/MusicUtils;->IsInternalEnough:Z

    .line 447
    sget-boolean v3, Lcom/htc/music/util/MusicUtils;->IsInternalEnough:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 458
    :goto_0
    monitor-exit v4

    return v3

    .line 450
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 451
    .local v0, file:Ljava/io/File;
    invoke-static {v0}, Lcom/htc/music/util/MusicUtils;->getFileSize(Ljava/io/File;)J

    move-result-wide v5

    add-long/2addr v5, v1

    cmp-long v3, v5, v7

    if-lez v3, :cond_1

    .line 452
    const/4 v3, 0x1

    sput-boolean v3, Lcom/htc/music/util/MusicUtils;->IsInternalEnough:Z

    .line 453
    sget-boolean v3, Lcom/htc/music/util/MusicUtils;->IsInternalEnough:Z

    goto :goto_0

    .line 456
    :cond_1
    const-string v3, "[MusicUtils]"

    const-string v5, "Internal Storage is not Enough."

    invoke-static {v3, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    const/4 v3, 0x0

    sput-boolean v3, Lcom/htc/music/util/MusicUtils;->IsInternalEnough:Z

    .line 458
    sget-boolean v3, Lcom/htc/music/util/MusicUtils;->IsInternalEnough:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 443
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

    .line 1498
    if-nez p0, :cond_1

    move v7, v9

    .line 1513
    :cond_0
    :goto_0
    return v7

    .line 1499
    :cond_1
    const/4 v7, 0x0

    .line 1500
    .local v7, result:Z
    invoke-static {}, Landroid/provider/MediaStore;->getMediaScannerUri()Landroid/net/Uri;

    move-result-object v8

    .line 1501
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

    .line 1504
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 1505
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v10, :cond_2

    .line 1506
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1507
    const-string v0, "external"

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 1509
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1510
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public static isMusicEnhancerEnabled(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 4129
    invoke-static {p0}, Lcom/htc/music/util/ProjectSettings;->getEnableEnhancer(Landroid/content/Context;)Z

    move-result v0

    .line 4130
    .local v0, projectSetting:Z
    if-nez v0, :cond_0

    .line 4131
    const/4 v1, 0x0

    .line 4134
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

    .line 4114
    const-string v1, "com.htc.musicenhancer"

    .line 4115
    .local v1, packageName:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 4117
    .local v3, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v5, "com.htc.musicenhancer"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 4118
    .local v2, pkgInfo:Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_0

    .line 4119
    const/4 v4, 0x1

    .line 4124
    .end local v2           #pkgInfo:Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return v4

    .line 4123
    :catch_0
    move-exception v0

    .line 4124
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public static isMusicLoaded()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 519
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v1, :cond_0

    .line 521
    :try_start_0
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->getPath()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 525
    :cond_0
    :goto_0
    return v0

    .line 522
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static isPluginMode()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 3453
    :try_start_0
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v2, :cond_0

    .line 3454
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->isPluginMode()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 3463
    :cond_0
    :goto_0
    return v1

    .line 3457
    :catch_0
    move-exception v0

    .line 3458
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

    .line 3460
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 3461
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 3462
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
    .line 529
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 531
    :try_start_0
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/htc/music/IMediaPlaybackService;->isSystemReady()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 535
    :goto_0
    return v0

    .line 532
    :catch_0
    move-exception v0

    .line 535
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUnknownComposer(Ljava/lang/String;)Z
    .locals 1
    .parameter "composer"

    .prologue
    .line 4156
    if-eqz p0, :cond_0

    const-string v0, "<unknown>"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4158
    :cond_0
    const/4 v0, 0x1

    .line 4161
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isWMDRMSupported()Z
    .locals 1

    .prologue
    .line 3495
    const/4 v0, 0x1

    return v0
.end method

.method public static isYoutubeExist(Landroid/content/Context;)Z
    .locals 7
    .parameter "cxt"

    .prologue
    const/high16 v6, 0x1

    .line 4075
    const/4 v2, 0x0

    .line 4077
    .local v2, retval:Z
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4078
    .local v0, launchYoutubeIntent:Landroid/content/Intent;
    const-string v4, "android.intent.action.MEDIA_SEARCH"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4079
    const/high16 v4, 0x1000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4080
    const-string v4, "android.intent.extra.focus"

    const-string v5, "audio/*"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4081
    const-string v4, "com.google.android.youtube"

    const-string v5, "com.google.android.youtube.VideoListActivity"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4083
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 4084
    .local v1, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v1, v0, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 4086
    .local v3, shareApList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 4087
    const/4 v2, 0x1

    .line 4109
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

    .line 4110
    return v2

    .line 4089
    :cond_1
    const-string v4, "com.google.android.youtube"

    const-string v5, "com.google.android.youtube.ResultsActivity"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4091
    invoke-virtual {v1, v0, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 4093
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 4094
    const/4 v2, 0x1

    goto :goto_0

    .line 4100
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4101
    const-string v4, "com.google.android.youtube"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4102
    invoke-virtual {v1, v0, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 4104
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 4105
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

    .line 255
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 257
    .local v2, songs_albums:Ljava/lang/StringBuilder;
    if-ne p2, v7, :cond_0

    .line 258
    const v3, 0x7f070004

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 260
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 261
    .local v1, r:Landroid/content/res/Resources;
    if-nez p3, :cond_1

    .line 262
    const v3, 0x7f0d0001

    invoke-virtual {v1, v3, p1}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 263
    .local v0, f:Ljava/lang/String;
    sget-object v3, Lcom/htc/music/util/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 264
    sget-object v3, Lcom/htc/music/util/MusicUtils;->sFormatter:Ljava/util/Formatter;

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v3, v0, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 265
    sget-object v3, Lcom/htc/music/util/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 266
    const v3, 0x7f07023c

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .end local v0           #f:Ljava/lang/String;
    :cond_1
    const/high16 v3, 0x7f0d

    invoke-virtual {v1, v3, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 269
    .restart local v0       #f:Ljava/lang/String;
    sget-object v3, Lcom/htc/music/util/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 270
    sget-object v3, Lcom/htc/music/util/MusicUtils;->sFormatter:Ljava/util/Formatter;

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v3, v0, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 271
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

    .line 1112
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v2, v8

    const-string v1, "name"

    aput-object v1, v2, v9

    .line 1115
    .local v2, cols:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1116
    .local v0, resolver:Landroid/content/ContentResolver;
    if-nez v0, :cond_1

    .line 1117
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "resolver = null"

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1145
    :cond_0
    :goto_0
    return-void

    .line 1119
    :cond_1
    const-string v3, "name != \'\'"

    .line 1120
    .local v3, whereclause:Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "name"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1122
    .local v6, cur:Landroid/database/Cursor;
    invoke-interface {p1}, Landroid/view/SubMenu;->clear()V

    .line 1124
    const/4 v1, 0x4

    const v4, 0x7f07005c

    invoke-interface {p1, v9, v1, v8, v4}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1125
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 1127
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1128
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1129
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 1130
    .local v7, intent:Landroid/content/Intent;
    const-string v1, "playlist"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v7, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1135
    const/4 v1, 0x3

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v9, v1, v8, v4}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1137
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 1140
    .end local v7           #intent:Landroid/content/Intent;
    :cond_2
    if-eqz v6, :cond_0

    .line 1141
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

    .line 1639
    const v3, 0x7f070005

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1640
    .local v0, durationformat:Ljava/lang/String;
    const v3, 0x7f070006

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1645
    .local v1, durationformat_h:Ljava/lang/String;
    sget-object v3, Lcom/htc/music/util/MusicUtils;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1647
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sTimeArgs:[Ljava/lang/Object;

    .line 1648
    .local v2, timeArgs:[Ljava/lang/Object;
    div-long v3, p1, v8

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    .line 1649
    const/4 v3, 0x1

    div-long v4, p1, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1650
    const/4 v3, 0x2

    div-long v4, p1, v6

    rem-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1651
    const/4 v3, 0x3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1652
    const/4 v3, 0x4

    rem-long v4, p1, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1654
    div-long v3, p1, v8

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 1655
    sget-object v3, Lcom/htc/music/util/MusicUtils;->sFormatter:Ljava/util/Formatter;

    invoke-virtual {v3, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1657
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

    .line 4443
    invoke-static {p0, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 4444
    .local v0, albumCover:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 4446
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

    .line 4447
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 4448
    .local v2, mReflection:Landroid/graphics/Canvas;
    new-instance v3, Landroid/graphics/Rect;

    add-int v4, p5, p3

    add-int v5, p6, p4

    invoke-direct {v3, p3, p4, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, p1, v6, v3, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 4449
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v3, v7, v7, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v0, v6, v3, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 4451
    if-eqz v0, :cond_0

    .line 4452
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 4454
    :cond_0
    if-eqz p1, :cond_1

    .line 4455
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 4458
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

    .line 4518
    array-length v6, p2

    if-nez v6, :cond_6

    .line 4520
    if-eqz p0, :cond_2

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_2

    .line 4521
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_1

    .line 4522
    new-instance v5, Landroid/database/MergeCursor;

    const/4 v6, 0x2

    new-array v6, v6, [Landroid/database/Cursor;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    invoke-direct {v5, v6}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    move-object p0, v5

    .line 4574
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 4524
    .restart local p0
    :cond_1
    if-eqz p1, :cond_0

    .line 4525
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 4531
    :cond_2
    if-eqz p0, :cond_3

    .line 4532
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 4535
    :cond_3
    if-eqz p1, :cond_4

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_4

    move-object p0, p1

    .line 4536
    goto :goto_0

    .line 4538
    :cond_4
    if-eqz p1, :cond_5

    .line 4539
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_5
    move-object p0, v5

    .line 4542
    goto :goto_0

    .line 4546
    :cond_6
    new-instance v2, Ljava/util/ArrayList;

    array-length v6, p2

    add-int/lit8 v6, v6, 0x2

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 4547
    .local v2, cursorList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/database/Cursor;>;"
    if-eqz p0, :cond_7

    .line 4548
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_a

    .line 4549
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4554
    :cond_7
    :goto_1
    if-eqz p1, :cond_8

    .line 4555
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_b

    .line 4556
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4561
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

    .line 4562
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_9

    .line 4563
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_c

    .line 4564
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4561
    :cond_9
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 4551
    .end local v0           #arr$:[Landroid/database/Cursor;
    .end local v1           #cursor:Landroid/database/Cursor;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_a
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 4558
    :cond_b
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 4566
    .restart local v0       #arr$:[Landroid/database/Cursor;
    .restart local v1       #cursor:Landroid/database/Cursor;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    :cond_c
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_4

    .line 4571
    .end local v1           #cursor:Landroid/database/Cursor;
    :cond_d
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_e

    .line 4572
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

    .line 4574
    goto :goto_0
.end method

.method public static mergeDlAlbumArt(Landroid/content/Context;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 12
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 1427
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_1

    .line 1492
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 1431
    .restart local p1
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1432
    .local v0, cr:Landroid/content/ContentResolver;
    if-eqz v0, :cond_0

    .line 1436
    const-string v1, "album_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 1437
    .local v10, mdAlbumIdIdx:I
    if-gez v10, :cond_2

    .line 1438
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 1440
    :cond_2
    if-gez v10, :cond_3

    .line 1441
    const-string v1, "[MusicUtils]"

    const-string v2, "mergeDlAlbumArt: cannot find album id column"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1446
    :cond_3
    :try_start_0
    const-string v1, "album_art"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1452
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 1453
    .local v11, selection:Ljava/lang/StringBuilder;
    const-string v1, "dl_album_id IN ("

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1454
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 1456
    .local v6, albumIdSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    const/4 v9, 0x0

    .line 1457
    .local v9, id:I
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1459
    :cond_4
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 1460
    if-gez v9, :cond_8

    .line 1468
    :cond_5
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1470
    :cond_6
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1471
    const-string v1, ")"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1474
    const/4 v1, -0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1477
    :try_start_1
    sget-object v1, Lcom/htc/musicenhancer/DownloadStore$AlbumArt;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/music/util/MusicUtils;->sDlColumns:[Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1479
    .local v7, dlCursor:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 1483
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_7

    .line 1485
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

    .line 1488
    :cond_7
    new-instance v1, Lcom/htc/music/util/AlbumArtMergeCursor;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v7, v2}, Lcom/htc/music/util/AlbumArtMergeCursor;-><init>(Landroid/database/Cursor;Landroid/database/Cursor;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object p1, v1

    goto/16 :goto_0

    .line 1447
    .end local v6           #albumIdSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v7           #dlCursor:Landroid/database/Cursor;
    .end local v9           #id:I
    .end local v11           #selection:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v8

    .line 1448
    .local v8, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "[MusicUtils]"

    const-string v2, "mergeDlAlbumArt: cannot find album art column"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1464
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

    .line 1465
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1466
    const-string v1, ","

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1489
    :catch_1
    move-exception v8

    .line 1490
    .local v8, e:Ljava/lang/Exception;
    const-string v1, "[MusicUtils]"

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1491
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

    .line 1710
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

    .line 1711
    return-void

    .line 1710
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

    .line 1800
    if-nez p0, :cond_0

    .line 1801
    const-string v0, "[MusicUtils]"

    const-string v2, "playAll with null Context!!"

    invoke-static {v0, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1807
    :goto_0
    return-void

    .line 1804
    :cond_0
    invoke-static {p1}, Lcom/htc/music/util/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v1

    .line 1805
    .local v1, list:[I
    invoke-static {p1}, Lcom/htc/music/util/MusicUtils;->prepareAlbumList(Landroid/database/Cursor;)Z

    .line 1806
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
    .line 1794
    invoke-static {p1}, Lcom/htc/music/util/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v1

    .line 1795
    .local v1, list:[I
    invoke-static {p1}, Lcom/htc/music/util/MusicUtils;->prepareAlbumList(Landroid/database/Cursor;)Z

    .line 1796
    const/4 v0, 0x0

    new-array v6, v0, [I

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;[IIZZLcom/htc/music/NpCategory;[I)Z

    .line 1797
    return-void
.end method

.method public static playAll(Landroid/content/Context;Landroid/database/Cursor;Lcom/htc/music/NpCategory;)V
    .locals 6
    .parameter "context"
    .parameter "cursor"
    .parameter "npc"

    .prologue
    const/4 v2, 0x0

    .line 1670
    new-array v5, v2, [I

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;IZLcom/htc/music/NpCategory;[I)V

    .line 1671
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

    .line 1724
    const/4 v4, 0x1

    new-array v6, v3, [I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, p3

    invoke-static/range {v0 .. v6}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;[IIZZLcom/htc/music/NpCategory;[I)Z

    .line 1725
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
    .line 1728
    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;[IIZZLcom/htc/music/NpCategory;[I)Z

    .line 1729
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

    .line 1735
    const/4 v5, 0x1

    new-array v7, v4, [I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, p4

    invoke-static/range {v0 .. v7}, Lcom/htc/music/util/MusicUtils;->playAll(Lcom/htc/music/IMediaPlaybackService;Landroid/content/Context;[IIZZLcom/htc/music/NpCategory;[I)Z

    .line 1736
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

    .line 1813
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
    .locals 12
    .parameter "service"
    .parameter "context"
    .parameter "list"
    .parameter "position"
    .parameter "force_shuffle"
    .parameter "ifrun"
    .parameter "npc"
    .parameter "varargs"

    .prologue
    .line 1832
    if-nez p0, :cond_0

    .line 1833
    const-string v8, "[MusicUtils]"

    const-string v9, "[playAll] Service is null."

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1834
    const/4 v8, 0x0

    .line 1957
    :goto_0
    return v8

    .line 1837
    :cond_0
    array-length v8, p2

    if-nez v8, :cond_2

    .line 1838
    const-string v8, "[MusicUtils]"

    const-string v9, "attempt to play empty song list"

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1840
    const/4 v8, 0x1

    move/from16 v0, p5

    if-ne v0, v8, :cond_1

    .line 1841
    const v8, 0x7f07005f

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    array-length v11, p2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {p1, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1842
    .local v6, message:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v8, v6, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 1844
    .end local v6           #message:Ljava/lang/String;
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 1847
    :cond_2
    const/4 v3, -0x1

    .line 1849
    .local v3, dlnaMode:I
    if-eqz p5, :cond_3

    .line 1850
    const/4 v8, 0x0

    invoke-static {p1, p2, p3, v8}, Lcom/htc/music/util/MusicUtils;->checkDLNAMode(Landroid/content/Context;[IIZ)I

    move-result v3

    .line 1856
    :cond_3
    const/4 v5, 0x0

    .line 1859
    .local v5, isMirrorPlayOnTV:Z
    const/4 v8, 0x3

    if-eq v3, v8, :cond_4

    :try_start_0
    invoke-static {p1}, Lcom/htc/music/util/ProjectSettings;->getEnablePlugin(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {p0}, Lcom/htc/music/IMediaPlaybackService;->isPluginMode()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1860
    if-eqz p5, :cond_4

    .line 1861
    invoke-interface {p0}, Lcom/htc/music/IMediaPlaybackService;->stopActivePlugin()V

    .line 1865
    :cond_4
    if-eqz p5, :cond_9

    if-eqz p1, :cond_9

    invoke-static {p1}, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;->isTVOn(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {p0}, Lcom/htc/music/IMediaPlaybackService;->isDmcOrPushMode()Z

    move-result v8

    if-nez v8, :cond_9

    const/4 v5, 0x1

    .line 1866
    :goto_1
    const-string v8, "[MusicUtils]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "playAll, isMirrorPlayOnTV: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1868
    invoke-interface {p0}, Lcom/htc/music/IMediaPlaybackService;->getAudioId()I

    move-result v1

    .line 1869
    .local v1, curid:I
    invoke-interface {p0}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v2

    .line 1870
    .local v2, curpos:I
    const/4 v8, -0x1

    if-eq p3, v8, :cond_a

    if-ne v2, p3, :cond_a

    aget v8, p2, p3

    if-ne v1, v8, :cond_a

    .line 1874
    invoke-interface {p0}, Lcom/htc/music/IMediaPlaybackService;->getQueue()[I

    move-result-object v7

    .line 1875
    .local v7, playlist:[I
    invoke-static {p2, v7}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 1878
    if-eqz p4, :cond_5

    .line 1879
    const/4 v8, 0x1

    invoke-interface {p0, v8}, Lcom/htc/music/IMediaPlaybackService;->setShuffleMode(I)V

    .line 1880
    invoke-interface {p0}, Lcom/htc/music/IMediaPlaybackService;->getRepeatMode()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_5

    .line 1881
    const/4 v8, 0x2

    invoke-interface {p0, v8}, Lcom/htc/music/IMediaPlaybackService;->setRepeatMode(I)V

    .line 1885
    :cond_5
    if-eqz p5, :cond_6

    if-nez v3, :cond_6

    if-nez v5, :cond_6

    .line 1886
    invoke-interface {p0}, Lcom/htc/music/IMediaPlaybackService;->play()V

    .line 1889
    :cond_6
    const/4 v8, 0x3

    if-ne v3, v8, :cond_7

    .line 1890
    invoke-static {p1, p2, p3}, Lcom/htc/music/util/MusicUtils;->switchToPUSH(Landroid/content/Context;[II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1893
    :cond_7
    const/4 v9, 0x1

    .line 1930
    if-eqz v5, :cond_23

    .line 1931
    const-string v8, "[MusicUtils]"

    const-string v10, "playAll, TV is on"

    invoke-static {v8, v10}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1932
    new-instance v4, Landroid/content/Intent;

    const-string v8, "com.htc.music.triggerplayinlibrary"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1933
    .local v4, intent:Landroid/content/Intent;
    invoke-virtual {p1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .end local v4           #intent:Landroid/content/Intent;
    :cond_8
    :goto_2
    move v8, v9

    .line 1893
    goto/16 :goto_0

    .line 1865
    .end local v1           #curid:I
    .end local v2           #curpos:I
    .end local v7           #playlist:[I
    :cond_9
    const/4 v5, 0x0

    goto :goto_1

    .line 1896
    .restart local v1       #curid:I
    .restart local v2       #curpos:I
    :cond_a
    if-gez p3, :cond_b

    .line 1897
    const/4 p3, 0x0

    .line 1899
    :cond_b
    if-eqz p6, :cond_11

    .line 1900
    if-eqz p4, :cond_10

    const/4 v8, -0x1

    :goto_3
    :try_start_1
    move-object/from16 v0, p6

    invoke-interface {p0, p2, v8, v0}, Lcom/htc/music/IMediaPlaybackService;->openWithCategory([IILcom/htc/music/NpCategory;)V

    .line 1905
    :goto_4
    if-eqz p4, :cond_c

    .line 1906
    const/4 v8, 0x1

    invoke-interface {p0, v8}, Lcom/htc/music/IMediaPlaybackService;->setShuffleMode(I)V

    .line 1907
    invoke-interface {p0}, Lcom/htc/music/IMediaPlaybackService;->getRepeatMode()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_c

    .line 1908
    const/4 v8, 0x2

    invoke-interface {p0, v8}, Lcom/htc/music/IMediaPlaybackService;->setRepeatMode(I)V

    .line 1912
    :cond_c
    if-eqz p5, :cond_d

    if-nez v3, :cond_d

    if-nez v5, :cond_d

    .line 1913
    invoke-interface {p0}, Lcom/htc/music/IMediaPlaybackService;->play()V

    .line 1923
    :cond_d
    const/4 v8, 0x3

    if-ne v3, v8, :cond_e

    .line 1924
    invoke-static {p1, p2, p3}, Lcom/htc/music/util/MusicUtils;->switchToPUSH(Landroid/content/Context;[II)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1930
    :cond_e
    if-eqz v5, :cond_2a

    .line 1931
    const-string v8, "[MusicUtils]"

    const-string v9, "playAll, TV is on"

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1932
    new-instance v4, Landroid/content/Intent;

    const-string v8, "com.htc.music.triggerplayinlibrary"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1933
    .end local v1           #curid:I
    .end local v2           #curpos:I
    .restart local v4       #intent:Landroid/content/Intent;
    :goto_5
    invoke-virtual {p1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1957
    .end local v4           #intent:Landroid/content/Intent;
    :cond_f
    :goto_6
    const/4 v8, 0x1

    goto/16 :goto_0

    .restart local v1       #curid:I
    .restart local v2       #curpos:I
    :cond_10
    move v8, p3

    .line 1900
    goto :goto_3

    .line 1902
    :cond_11
    if-eqz p4, :cond_12

    const/4 v8, -0x1

    :goto_7
    :try_start_2
    invoke-interface {p0, p2, v8}, Lcom/htc/music/IMediaPlaybackService;->open([II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    .line 1928
    .end local v1           #curid:I
    .end local v2           #curpos:I
    :catch_0
    move-exception v8

    .line 1930
    if-eqz v5, :cond_14

    .line 1931
    const-string v8, "[MusicUtils]"

    const-string v9, "playAll, TV is on"

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1932
    new-instance v4, Landroid/content/Intent;

    const-string v8, "com.htc.music.triggerplayinlibrary"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_5

    .restart local v1       #curid:I
    .restart local v2       #curpos:I
    :cond_12
    move v8, p3

    .line 1902
    goto :goto_7

    .line 1930
    .end local v1           #curid:I
    .end local v2           #curpos:I
    :catchall_0
    move-exception v8

    move-object v9, v8

    if-eqz v5, :cond_1c

    .line 1931
    const-string v8, "[MusicUtils]"

    const-string v10, "playAll, TV is on"

    invoke-static {v8, v10}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1932
    new-instance v4, Landroid/content/Intent;

    const-string v8, "com.htc.music.triggerplayinlibrary"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1933
    .restart local v4       #intent:Landroid/content/Intent;
    invoke-virtual {p1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1930
    .end local v4           #intent:Landroid/content/Intent;
    :cond_13
    :goto_8
    throw v9

    .line 1935
    :cond_14
    if-eqz p5, :cond_f

    move-object/from16 v0, p7

    array-length v8, v0

    if-nez v8, :cond_19

    const/4 v8, 0x0

    :goto_9
    if-nez v8, :cond_f

    if-eqz v3, :cond_15

    const/4 v8, 0x3

    if-ne v3, v8, :cond_f

    .line 1936
    :cond_15
    new-instance v4, Landroid/content/Intent;

    const-string v8, "com.htc.music.PLAYBACK_VIEWER"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1937
    .restart local v4       #intent:Landroid/content/Intent;
    instance-of v8, p1, Landroid/app/Activity;

    if-eqz v8, :cond_1a

    .line 1938
    const/high16 v8, 0x400

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1943
    :cond_16
    :goto_a
    const-string v8, "showEmptyQueue"

    const/4 v9, 0x1

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1944
    const-string v8, "inner-transition"

    const/4 v9, 0x1

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1946
    instance-of v8, p1, Lcom/htc/music/HtcMusic;

    if-eqz v8, :cond_17

    .line 1947
    const-string v9, "ShowNowPlaying"

    move-object v8, p1

    check-cast v8, Lcom/htc/music/HtcMusic;

    invoke-virtual {v8}, Lcom/htc/music/HtcMusic;->isShowNowPlaying()Z

    move-result v8

    invoke-virtual {v4, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1950
    :cond_17
    instance-of v8, p1, Lcom/htc/music/browserlayer/TrackBrowserActivity;

    if-eqz v8, :cond_1b

    move-object v8, p1

    check-cast v8, Lcom/htc/music/browserlayer/TrackBrowserActivity;

    iget-boolean v8, v8, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-eqz v8, :cond_1b

    .line 1952
    :cond_18
    :goto_b
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 1935
    .end local v4           #intent:Landroid/content/Intent;
    :cond_19
    const/4 v8, 0x0

    aget v8, p7, v8

    goto :goto_9

    .line 1939
    .restart local v4       #intent:Landroid/content/Intent;
    :cond_1a
    instance-of v8, p1, Landroid/app/Service;

    if-eqz v8, :cond_16

    .line 1940
    const/high16 v8, 0x1400

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_a

    .line 1954
    :cond_1b
    invoke-virtual {p1, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_6

    .line 1935
    .end local v4           #intent:Landroid/content/Intent;
    :cond_1c
    if-eqz p5, :cond_13

    move-object/from16 v0, p7

    array-length v8, v0

    if-nez v8, :cond_21

    const/4 v8, 0x0

    :goto_c
    if-nez v8, :cond_13

    if-eqz v3, :cond_1d

    const/4 v8, 0x3

    if-ne v3, v8, :cond_13

    .line 1936
    :cond_1d
    new-instance v4, Landroid/content/Intent;

    const-string v8, "com.htc.music.PLAYBACK_VIEWER"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1937
    .restart local v4       #intent:Landroid/content/Intent;
    instance-of v8, p1, Landroid/app/Activity;

    if-eqz v8, :cond_22

    .line 1938
    const/high16 v8, 0x400

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1943
    :cond_1e
    :goto_d
    const-string v8, "showEmptyQueue"

    const/4 v10, 0x1

    invoke-virtual {v4, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1944
    const-string v8, "inner-transition"

    const/4 v10, 0x1

    invoke-virtual {v4, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1946
    instance-of v8, p1, Lcom/htc/music/HtcMusic;

    if-eqz v8, :cond_1f

    .line 1947
    const-string v10, "ShowNowPlaying"

    move-object v8, p1

    check-cast v8, Lcom/htc/music/HtcMusic;

    invoke-virtual {v8}, Lcom/htc/music/HtcMusic;->isShowNowPlaying()Z

    move-result v8

    invoke-virtual {v4, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1950
    :cond_1f
    instance-of v8, p1, Lcom/htc/music/browserlayer/TrackBrowserActivity;

    if-eqz v8, :cond_20

    move-object v8, p1

    check-cast v8, Lcom/htc/music/browserlayer/TrackBrowserActivity;

    iget-boolean v8, v8, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-nez v8, :cond_18

    .line 1954
    :cond_20
    invoke-virtual {p1, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_8

    .line 1935
    .end local v4           #intent:Landroid/content/Intent;
    :cond_21
    const/4 v8, 0x0

    aget v8, p7, v8

    goto :goto_c

    .line 1939
    .restart local v4       #intent:Landroid/content/Intent;
    :cond_22
    instance-of v8, p1, Landroid/app/Service;

    if-eqz v8, :cond_1e

    .line 1940
    const/high16 v8, 0x1400

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_d

    .line 1935
    .end local v4           #intent:Landroid/content/Intent;
    .restart local v1       #curid:I
    .restart local v2       #curpos:I
    .restart local v7       #playlist:[I
    :cond_23
    if-eqz p5, :cond_8

    move-object/from16 v0, p7

    array-length v8, v0

    if-nez v8, :cond_28

    const/4 v8, 0x0

    :goto_e
    if-nez v8, :cond_8

    if-eqz v3, :cond_24

    const/4 v8, 0x3

    if-ne v3, v8, :cond_8

    .line 1936
    :cond_24
    new-instance v4, Landroid/content/Intent;

    const-string v8, "com.htc.music.PLAYBACK_VIEWER"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1937
    .restart local v4       #intent:Landroid/content/Intent;
    instance-of v8, p1, Landroid/app/Activity;

    if-eqz v8, :cond_29

    .line 1938
    const/high16 v8, 0x400

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1943
    :cond_25
    :goto_f
    const-string v8, "showEmptyQueue"

    const/4 v10, 0x1

    invoke-virtual {v4, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1944
    const-string v8, "inner-transition"

    const/4 v10, 0x1

    invoke-virtual {v4, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1946
    instance-of v8, p1, Lcom/htc/music/HtcMusic;

    if-eqz v8, :cond_26

    .line 1947
    const-string v10, "ShowNowPlaying"

    move-object v8, p1

    check-cast v8, Lcom/htc/music/HtcMusic;

    invoke-virtual {v8}, Lcom/htc/music/HtcMusic;->isShowNowPlaying()Z

    move-result v8

    invoke-virtual {v4, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1950
    :cond_26
    instance-of v8, p1, Lcom/htc/music/browserlayer/TrackBrowserActivity;

    if-eqz v8, :cond_27

    move-object v8, p1

    check-cast v8, Lcom/htc/music/browserlayer/TrackBrowserActivity;

    iget-boolean v8, v8, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-nez v8, :cond_18

    .line 1954
    :cond_27
    invoke-virtual {p1, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 1935
    .end local v4           #intent:Landroid/content/Intent;
    :cond_28
    const/4 v8, 0x0

    aget v8, p7, v8

    goto :goto_e

    .line 1939
    .restart local v4       #intent:Landroid/content/Intent;
    :cond_29
    instance-of v8, p1, Landroid/app/Service;

    if-eqz v8, :cond_25

    .line 1940
    const/high16 v8, 0x1400

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_f

    .line 1935
    .end local v4           #intent:Landroid/content/Intent;
    .end local v7           #playlist:[I
    :cond_2a
    if-eqz p5, :cond_f

    move-object/from16 v0, p7

    array-length v8, v0

    if-nez v8, :cond_2e

    const/4 v8, 0x0

    :goto_10
    if-nez v8, :cond_f

    if-eqz v3, :cond_2b

    const/4 v8, 0x3

    if-ne v3, v8, :cond_f

    .line 1936
    :cond_2b
    new-instance v4, Landroid/content/Intent;

    const-string v8, "com.htc.music.PLAYBACK_VIEWER"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1937
    .restart local v4       #intent:Landroid/content/Intent;
    instance-of v8, p1, Landroid/app/Activity;

    if-eqz v8, :cond_2f

    .line 1938
    const/high16 v8, 0x400

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1943
    :cond_2c
    :goto_11
    const-string v8, "showEmptyQueue"

    const/4 v9, 0x1

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1944
    const-string v8, "inner-transition"

    const/4 v9, 0x1

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1946
    instance-of v8, p1, Lcom/htc/music/HtcMusic;

    if-eqz v8, :cond_2d

    .line 1947
    const-string v9, "ShowNowPlaying"

    move-object v8, p1

    check-cast v8, Lcom/htc/music/HtcMusic;

    invoke-virtual {v8}, Lcom/htc/music/HtcMusic;->isShowNowPlaying()Z

    move-result v8

    invoke-virtual {v4, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1950
    :cond_2d
    instance-of v8, p1, Lcom/htc/music/browserlayer/TrackBrowserActivity;

    if-eqz v8, :cond_1b

    move-object v8, p1

    check-cast v8, Lcom/htc/music/browserlayer/TrackBrowserActivity;

    iget-boolean v8, v8, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-eqz v8, :cond_1b

    goto/16 :goto_b

    .line 1935
    .end local v4           #intent:Landroid/content/Intent;
    :cond_2e
    const/4 v8, 0x0

    aget v8, p7, v8

    goto :goto_10

    .line 1939
    .restart local v4       #intent:Landroid/content/Intent;
    :cond_2f
    instance-of v8, p1, Landroid/app/Service;

    if-eqz v8, :cond_2c

    .line 1940
    const/high16 v8, 0x1400

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_11
.end method

.method public static playAllAndPrepare(Landroid/content/Context;[IILcom/htc/music/NpCategory;)V
    .locals 17
    .parameter "context"
    .parameter "list"
    .parameter "position"
    .parameter "npc"

    .prologue
    .line 1739
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v1, :cond_1

    .line 1740
    const-string v1, "[MusicUtils]"

    const-string v2, "[playAllAndPrepare] Service is null."

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1777
    :cond_0
    :goto_0
    return-void

    .line 1744
    :cond_1
    move-object/from16 v0, p1

    array-length v1, v0

    if-nez v1, :cond_2

    .line 1745
    const-string v1, "[MusicUtils]"

    const-string v2, "attempt to play empty song list"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1747
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

    .line 1748
    .local v13, message:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v13, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1753
    .end local v13           #message:Ljava/lang/String;
    :cond_2
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 1754
    .local v16, where:Ljava/lang/StringBuilder;
    const-string v1, "_id IN ("

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1755
    move-object/from16 v0, p1

    array-length v15, v0

    .line 1756
    .local v15, size:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_1
    if-ge v12, v15, :cond_4

    .line 1757
    aget v1, p1, v12

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1758
    add-int/lit8 v1, v15, -0x1

    if-ge v12, v1, :cond_3

    .line 1759
    const-string v1, ","

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1756
    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 1762
    :cond_4
    const-string v1, ")"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1763
    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v3, v1

    const/4 v1, 0x1

    const-string v2, "album_id"

    aput-object v2, v3, v1

    .line 1766
    .local v3, ccols:[Ljava/lang/String;
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "track"

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v6}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1770
    .local v11, cursor:Landroid/database/Cursor;
    invoke-static {v11}, Lcom/htc/music/util/MusicUtils;->prepareAlbumList(Landroid/database/Cursor;)Z

    move-result v14

    .line 1771
    .local v14, result:Z
    if-eqz v11, :cond_5

    .line 1772
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1773
    const/4 v11, 0x0

    .line 1775
    :cond_5
    if-eqz v14, :cond_0

    .line 1776
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
    .line 1718
    invoke-static {p1}, Lcom/htc/music/util/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v1

    .line 1719
    .local v1, list:[I
    invoke-static {p1}, Lcom/htc/music/util/MusicUtils;->prepareAlbumList(Landroid/database/Cursor;)Z

    .line 1720
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v0, 0x2

    new-array v6, v0, [I

    fill-array-data v6, :array_0

    move-object v0, p0

    move v2, p2

    move-object v5, p3

    invoke-static/range {v0 .. v6}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;[IIZZLcom/htc/music/NpCategory;[I)Z

    .line 1721
    return-void

    .line 1720
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

    .line 1714
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, v3

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;IZZLcom/htc/music/NpCategory;)V

    .line 1715
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

    .line 1786
    invoke-static {p1}, Lcom/htc/music/util/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v1

    .line 1787
    .local v1, list:[I
    invoke-static {p1}, Lcom/htc/music/util/MusicUtils;->prepareAlbumList(Landroid/database/Cursor;)Z

    .line 1788
    new-array v6, v4, [I

    move-object v0, p0

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-static/range {v0 .. v6}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;[IIZZLcom/htc/music/NpCategory;[I)Z

    .line 1789
    return-void
.end method

.method public static playAllNotRun(Landroid/content/Context;Landroid/database/Cursor;Lcom/htc/music/NpCategory;)V
    .locals 1
    .parameter "context"
    .parameter "cursor"
    .parameter "npc"

    .prologue
    const/4 v0, 0x0

    .line 1674
    invoke-static {p0, p1, v0, v0, p2}, Lcom/htc/music/util/MusicUtils;->playAllNotRun(Landroid/content/Context;Landroid/database/Cursor;IZLcom/htc/music/NpCategory;)V

    .line 1675
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

    .line 1780
    new-array v6, v3, [I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, v3

    move-object v5, p3

    invoke-static/range {v0 .. v6}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;[IIZZLcom/htc/music/NpCategory;[I)Z

    .line 1781
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

    .line 1818
    if-nez p0, :cond_0

    .line 1819
    const-string v0, "[MusicUtils]"

    const-string v1, "Can\'t play all with service = null."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1827
    :goto_0
    return v3

    .line 1822
    :cond_0
    if-nez p1, :cond_1

    .line 1823
    const-string v0, "[MusicUtils]"

    const-string v1, "Can\'t play all with context = null."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1827
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
    .line 1067
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->getSongListForAllPlaylistAndPrepare(Landroid/content/Context;)[I

    move-result-object v1

    .line 1068
    .local v1, list:[I
    if-eqz v1, :cond_0

    .line 1069
    const/4 v2, -0x1

    const/4 v4, 0x1

    const/4 v0, 0x0

    new-array v6, v0, [I

    move-object v0, p0

    move v3, p1

    move-object v5, p2

    invoke-static/range {v0 .. v6}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;[IIZZLcom/htc/music/NpCategory;[I)Z

    .line 1071
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

    .line 1057
    invoke-static {p0, p1, p2}, Lcom/htc/music/util/MusicUtils;->getSongListForPlaylistAndPrepare(Landroid/content/Context;J)[I

    move-result-object v1

    .line 1059
    .local v1, list:[I
    if-eqz v1, :cond_0

    .line 1060
    const/4 v2, -0x1

    const/4 v4, 0x1

    new-array v6, v3, [I

    move-object v0, p0

    move-object v5, p3

    invoke-static/range {v0 .. v6}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;[IIZZLcom/htc/music/NpCategory;[I)Z

    move-result v3

    .line 1062
    :cond_0
    return v3
.end method

.method public static playQueueNotRun(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 1678
    sget-object v3, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v3, :cond_1

    .line 1707
    :cond_0
    :goto_0
    return-void

    .line 1681
    :cond_1
    const-string v3, "[MusicUtils]"

    const-string v4, "playQueueNotRun"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1683
    const/4 v1, 0x0

    .line 1684
    .local v1, pos:I
    const/4 v0, 0x0

    .line 1685
    .local v0, list:[I
    :try_start_0
    sget-object v3, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->isSystemReady()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1686
    sget-object v3, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->reloadQueue()V

    .line 1687
    sget-object v3, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->getQueueSize()I

    move-result v2

    .line 1688
    .local v2, queueSize:I
    if-gtz v2, :cond_2

    .line 1689
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->getAllSongsAndPrepare(Landroid/content/Context;)[I

    move-result-object v0

    .line 1690
    const/4 v1, 0x0

    .line 1700
    .end local v2           #queueSize:I
    :goto_1
    if-eqz v0, :cond_0

    array-length v3, v0

    if-eqz v3, :cond_0

    .line 1703
    new-instance v3, Lcom/htc/music/NpCategory;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/htc/music/NpCategory;-><init>(S)V

    invoke-static {p0, v0, v1, v3}, Lcom/htc/music/util/MusicUtils;->playAllNotRun(Landroid/content/Context;[IILcom/htc/music/NpCategory;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1706
    :goto_2
    const-string v3, "[MusicUtils]"

    const-string v4, "playQueueNotRun finished"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1692
    .restart local v2       #queueSize:I
    :cond_2
    :try_start_1
    sget-object v3, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v1

    .line 1693
    sget-object v3, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->getQueue()[I

    move-result-object v0

    goto :goto_1

    .line 1697
    .end local v2           #queueSize:I
    :cond_3
    sget-object v3, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v1

    .line 1698
    sget-object v3, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->getQueue()[I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1

    .line 1704
    :catch_0
    move-exception v3

    goto :goto_2
.end method

.method public static prepareAlbumList([I)V
    .locals 2
    .parameter "albumlist"

    .prologue
    .line 594
    array-length v0, p0

    if-lez v0, :cond_0

    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 596
    :try_start_0
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v0, p0}, Lcom/htc/music/IMediaPlaybackService;->setAlbumQueue([I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 604
    :goto_0
    return-void

    .line 601
    :cond_0
    const-string v0, "[MusicUtils]"

    const-string v1, "Bad! sService is  null"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 597
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static prepareAlbumList(Landroid/database/Cursor;)Z
    .locals 5
    .parameter "cursor"

    .prologue
    const/4 v2, 0x0

    .line 577
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->getAlbumListForCursor(Landroid/database/Cursor;)[I

    move-result-object v0

    .line 578
    .local v0, albumlist:[I
    array-length v3, v0

    if-lez v3, :cond_0

    sget-object v3, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v3, :cond_0

    .line 580
    :try_start_0
    sget-object v3, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3, v0}, Lcom/htc/music/IMediaPlaybackService;->setAlbumQueue([I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 581
    const/4 v2, 0x1

    .line 588
    :goto_0
    return v2

    .line 582
    :catch_0
    move-exception v1

    .line 583
    .local v1, e:Landroid/os/RemoteException;
    goto :goto_0

    .line 587
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_0
    const-string v3, "[MusicUtils]"

    const-string v4, "Bad! sService is  null"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

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

    .line 1401
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1402
    .local v0, resolver:Landroid/content/ContentResolver;
    if-nez v0, :cond_0

    move-object v1, v7

    .line 1414
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

    .line 1405
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    goto :goto_0

    .line 1406
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :catch_0
    move-exception v6

    .line 1407
    .local v6, ex:Ljava/lang/UnsupportedOperationException;
    const-string v1, "[MusicUtils]"

    const-string v2, "error UnsupportedOperationException"

    invoke-static {v1, v2, v6}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v7

    .line 1408
    goto :goto_0

    .line 1409
    .end local v6           #ex:Ljava/lang/UnsupportedOperationException;
    :catch_1
    move-exception v6

    .line 1410
    .local v6, ex:Ljava/lang/IllegalStateException;
    const-string v1, "[MusicUtils]"

    const-string v2, "error IllegalStateException"

    invoke-static {v1, v2, v6}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v7

    .line 1411
    goto :goto_0

    .line 1412
    .end local v6           #ex:Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v6

    .line 1413
    .local v6, ex:Landroid/database/sqlite/SQLiteException;
    const-string v1, "[MusicUtils]"

    const-string v2, "error SQLiteException"

    invoke-static {v1, v2, v6}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v7

    .line 1414
    goto :goto_0
.end method

.method public static searchViaAlbumName(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "albumName"

    .prologue
    .line 4344
    const/4 v2, 0x0

    .line 4345
    .local v2, title:Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 4347
    .local v1, query:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4348
    .local v0, i:Landroid/content/Intent;
    const-string v3, "android.intent.action.MEDIA_SEARCH"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4350
    if-eqz p1, :cond_0

    const-string v3, "<unknown>"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4351
    :cond_0
    const v3, 0x7f07004e

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4352
    :cond_1
    move-object v2, p1

    .line 4354
    move-object v1, p1

    .line 4356
    const-string v3, "android.intent.extra.album"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4357
    const-string v3, "android.intent.extra.focus"

    const-string v4, "audio/*"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4358
    const v3, 0x7f07006c

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 4359
    const-string v3, "query"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4361
    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 4362
    return-void
.end method

.method public static searchViaArtistName(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "artistName"

    .prologue
    .line 4365
    const/4 v2, 0x0

    .line 4366
    .local v2, title:Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 4368
    .local v1, query:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4369
    .local v0, i:Landroid/content/Intent;
    const-string v3, "android.intent.action.MEDIA_SEARCH"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4372
    move-object v2, p1

    .line 4373
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 4374
    :cond_0
    const-string p1, "<unknown>"

    .line 4377
    :cond_1
    move-object v1, p1

    .line 4379
    const-string v3, "android.intent.extra.artist"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4380
    const-string v3, "android.intent.extra.focus"

    const-string v4, "audio/*"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4381
    const v3, 0x7f07006c

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 4382
    const-string v3, "query"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4384
    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 4385
    return-void
.end method

.method public static searchViaTrackName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "trackName"
    .parameter "artistName"

    .prologue
    .line 4318
    const/4 v2, 0x0

    .line 4319
    .local v2, title:Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 4321
    .local v1, query:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4322
    .local v0, i:Landroid/content/Intent;
    const-string v3, "android.intent.action.MEDIA_SEARCH"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4325
    move-object v2, p1

    .line 4326
    if-eqz p2, :cond_0

    const-string v3, "<unknown>"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4328
    :cond_0
    move-object v1, p1

    .line 4333
    :goto_0
    const-string v3, "android.intent.extra.title"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4334
    const-string v3, "android.intent.extra.artist"

    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4336
    const-string v3, "android.intent.extra.focus"

    const-string v4, "audio/*"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4337
    const v3, 0x7f07006c

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 4338
    const-string v3, "query"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4340
    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 4341
    return-void

    .line 4330
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
    .line 2538
    .local p3, contactList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcom/htc/music/util/MusicUtils;->setContactRingtone(Landroid/content/Context;JLjava/util/ArrayList;Z)V

    .line 2539
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
    .line 2542
    .local p3, contactList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz p3, :cond_0

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 2608
    :cond_0
    :goto_0
    return-void

    .line 2545
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    .line 2546
    .local v13, resolver:Landroid/content/ContentResolver;
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p1

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v14

    .line 2547
    .local v14, ringUri:Landroid/net/Uri;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 2548
    .local v8, batchwhere:Ljava/lang/StringBuilder;
    const-string v2, "_id IN ("

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2550
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    :try_start_0
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v11, v2, :cond_3

    .line 2557
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

    .line 2558
    if-lez v11, :cond_2

    .line 2559
    const-string v2, ","

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2560
    :cond_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2550
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 2562
    :cond_3
    const-string v2, ")"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2563
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

    .line 2564
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 2565
    .local v15, values:Landroid/content/ContentValues;
    const-string v2, "custom_ringtone"

    invoke-virtual {v14}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2566
    const-string v2, "content://com.android.contacts/contacts"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v13, v2, v15, v3, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2575
    :try_start_1
    new-instance v16, Landroid/content/ContentValues;

    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2576
    .end local v15           #values:Landroid/content/ContentValues;
    .local v16, values:Landroid/content/ContentValues;
    :try_start_2
    const-string v2, "is_ringtone"

    const-string v3, "1"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2577
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v13, v14, v0, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2584
    if-eqz p4, :cond_0

    .line 2585
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

    .line 2590
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

    .line 2591
    .local v5, where:Ljava/lang/String;
    const/4 v9, 0x0

    .line 2593
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_3
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 2595
    if-eqz v9, :cond_4

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 2596
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2597
    const v2, 0x7f0700b3

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

    .line 2599
    .local v12, message:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v12, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2602
    .end local v12           #message:Ljava/lang/String;
    :cond_4
    if-eqz v9, :cond_0

    .line 2603
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2604
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 2567
    .end local v4           #cols:[Ljava/lang/String;
    .end local v5           #where:Ljava/lang/String;
    .end local v9           #cursor:Landroid/database/Cursor;
    .end local v16           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v10

    .line 2569
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

    .line 2578
    .end local v10           #ex:Ljava/lang/UnsupportedOperationException;
    .restart local v15       #values:Landroid/content/ContentValues;
    :catch_1
    move-exception v10

    .line 2579
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

    .line 2602
    .end local v10           #ex:Ljava/lang/UnsupportedOperationException;
    .end local v15           #values:Landroid/content/ContentValues;
    .restart local v4       #cols:[Ljava/lang/String;
    .restart local v5       #where:Ljava/lang/String;
    .restart local v9       #cursor:Landroid/database/Cursor;
    .restart local v16       #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v2

    if-eqz v9, :cond_5

    .line 2603
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2604
    const/4 v9, 0x0

    .line 2602
    :cond_5
    throw v2

    .line 2578
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
    .line 2636
    .local p2, contactList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/htc/music/util/MusicUtils;->setDRMContactRingtone(Landroid/content/Context;Landroid/net/Uri;Ljava/util/ArrayList;Z)V

    .line 2637
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
    .line 2640
    .local p2, contactList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 2701
    :cond_0
    :goto_0
    return-void

    .line 2643
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    .line 2644
    .local v12, resolver:Landroid/content/ContentResolver;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 2645
    .local v7, batchwhere:Ljava/lang/StringBuilder;
    const-string v1, "_id IN ("

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2647
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v10, v1, :cond_3

    .line 2654
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

    .line 2655
    if-lez v10, :cond_2

    .line 2656
    const-string v1, ","

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2657
    :cond_2
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2647
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 2659
    :cond_3
    const-string v1, ")"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2660
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

    .line 2661
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 2662
    .local v13, values:Landroid/content/ContentValues;
    const-string v1, "custom_ringtone"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2663
    const-string v1, "content://com.android.contacts/contacts"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v12, v1, v13, v2, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2672
    :try_start_1
    new-instance v14, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v14, v1}, Landroid/content/ContentValues;-><init>(I)V
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2673
    .end local v13           #values:Landroid/content/ContentValues;
    .local v14, values:Landroid/content/ContentValues;
    :try_start_2
    const-string v1, "is_ringtone"

    const-string v2, "1"

    invoke-virtual {v14, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2674
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v14, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2681
    if-eqz p3, :cond_0

    .line 2682
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

    .line 2685
    .local v3, cols:[Ljava/lang/String;
    const/4 v8, 0x0

    .line 2687
    .local v8, cursor:Landroid/database/Cursor;
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    :try_start_3
    invoke-static/range {v1 .. v6}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2688
    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 2689
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2690
    const v1, 0x7f0700b3

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-interface {v8, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 2692
    .local v11, message:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v11, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2695
    .end local v11           #message:Ljava/lang/String;
    :cond_4
    if-eqz v8, :cond_0

    .line 2696
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2697
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 2664
    .end local v3           #cols:[Ljava/lang/String;
    .end local v8           #cursor:Landroid/database/Cursor;
    .end local v14           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v9

    .line 2666
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

    .line 2675
    .end local v9           #ex:Ljava/lang/UnsupportedOperationException;
    .restart local v13       #values:Landroid/content/ContentValues;
    :catch_1
    move-exception v9

    .line 2676
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

    .line 2695
    .end local v9           #ex:Ljava/lang/UnsupportedOperationException;
    .end local v13           #values:Landroid/content/ContentValues;
    .restart local v3       #cols:[Ljava/lang/String;
    .restart local v8       #cursor:Landroid/database/Cursor;
    .restart local v14       #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_5

    .line 2696
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2697
    const/4 v8, 0x0

    .line 2695
    :cond_5
    throw v1

    .line 2675
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
    .line 2484
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lcom/htc/music/util/MusicUtils;->setDRMRingtone(Landroid/content/Context;Landroid/net/Uri;ZZ)V

    .line 2485
    return-void
.end method

.method public static setDRMRingtone(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 2480
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/htc/music/util/MusicUtils;->setDRMRingtone(Landroid/content/Context;Landroid/net/Uri;ZZ)V

    .line 2481
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

    .line 2488
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v1

    const-string v0, "_data"

    aput-object v0, v2, v3

    const-string v0, "title"

    aput-object v0, v2, v4

    .line 2491
    .local v2, cols:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 2497
    .local v9, resolver:Landroid/content/ContentResolver;
    :try_start_0
    new-instance v10, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v10, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 2498
    .local v10, values:Landroid/content/ContentValues;
    if-eqz p2, :cond_0

    .line 2499
    const-string v0, "is_ringtone"

    const-string v1, "1"

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2503
    :cond_0
    if-eqz p3, :cond_1

    .line 2504
    const-string v0, "is_notification"

    const-string v1, "1"

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2505
    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {v9, p1, v10, v0, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2511
    const/4 v6, 0x0

    .line 2513
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    :try_start_1
    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2514
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 2515
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2516
    if-eqz p2, :cond_4

    .line 2517
    const-string v0, "ringtone"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v0, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2518
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

    .line 2519
    .local v8, message:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v8, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2530
    .end local v8           #message:Ljava/lang/String;
    :cond_2
    :goto_0
    if-eqz v6, :cond_3

    .line 2531
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2532
    const/4 v6, 0x0

    .line 2535
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v10           #values:Landroid/content/ContentValues;
    :cond_3
    :goto_1
    return-void

    .line 2506
    :catch_0
    move-exception v7

    .line 2509
    .local v7, ex:Ljava/lang/UnsupportedOperationException;
    goto :goto_1

    .line 2520
    .end local v7           #ex:Ljava/lang/UnsupportedOperationException;
    .restart local v6       #cursor:Landroid/database/Cursor;
    .restart local v10       #values:Landroid/content/ContentValues;
    :cond_4
    if-eqz p3, :cond_2

    .line 2521
    :try_start_2
    const-string v0, "notification_sound"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v0, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2523
    const v0, 0x7f0700b2

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 2525
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

    .line 2530
    .end local v8           #message:Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 2531
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2532
    const/4 v6, 0x0

    .line 2530
    :cond_5
    throw v0
.end method

.method public static setIntPref(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 4
    .parameter "context"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 2395
    const-string v2, "com.htc.music"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2397
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2398
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2399
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2400
    return-void
.end method

.method public static setNotificationRingtone(Landroid/content/Context;J)V
    .locals 2
    .parameter "context"
    .parameter "id"

    .prologue
    .line 2421
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, p2, v0, v1}, Lcom/htc/music/util/MusicUtils;->setRingtone(Landroid/content/Context;JZZ)V

    .line 2422
    return-void
.end method

.method public static setPlaylist(Landroid/database/Cursor;)Z
    .locals 8
    .parameter "cursor"

    .prologue
    const/4 v5, 0x0

    .line 3416
    sget-object v6, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v6, :cond_0

    .line 3417
    const-string v6, "[MusicUtils]"

    const-string v7, "[setPlaylist] Service is null."

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3447
    :goto_0
    return v5

    .line 3421
    :cond_0
    if-nez p0, :cond_1

    .line 3422
    const-string v6, "[MusicUtils]"

    const-string v7, "setPlaylist: attempt to set empty song list"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3427
    :cond_1
    :try_start_0
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->getSongListForCursor(Landroid/database/Cursor;)[I

    move-result-object v4

    .line 3428
    .local v4, slist:[I
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->getAlbumListForCursor(Landroid/database/Cursor;)[I

    move-result-object v0

    .line 3429
    .local v0, alist:[I
    sget-object v6, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v6}, Lcom/htc/music/IMediaPlaybackService;->getQueue()[I

    move-result-object v3

    .line 3432
    .local v3, playlist:[I
    const/4 v2, 0x1

    .line 3433
    .local v2, newlist:Z
    array-length v6, v4

    array-length v7, v3

    if-ne v6, v7, :cond_2

    .line 3434
    const/4 v2, 0x0

    .line 3436
    :cond_2
    if-nez v2, :cond_3

    .line 3438
    const-string v6, "[MusicUtils]"

    const-string v7, "We don\'t need to set the same list."

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3445
    .end local v0           #alist:[I
    .end local v2           #newlist:Z
    .end local v3           #playlist:[I
    .end local v4           #slist:[I
    :catch_0
    move-exception v1

    .line 3446
    .local v1, ex:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 3442
    .end local v1           #ex:Landroid/os/RemoteException;
    .restart local v0       #alist:[I
    .restart local v2       #newlist:Z
    .restart local v3       #playlist:[I
    .restart local v4       #slist:[I
    :cond_3
    :try_start_1
    invoke-static {v0}, Lcom/htc/music/util/MusicUtils;->prepareAlbumList([I)V

    .line 3443
    sget-object v6, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v6, v4}, Lcom/htc/music/IMediaPlaybackService;->setPlaylist([I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3444
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public static setRingtone(Landroid/content/Context;J)V
    .locals 2
    .parameter "context"
    .parameter "id"

    .prologue
    .line 2417
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/htc/music/util/MusicUtils;->setRingtone(Landroid/content/Context;JZZ)V

    .line 2418
    return-void
.end method

.method public static setRingtone(Landroid/content/Context;JZZ)V
    .locals 12
    .parameter "context"
    .parameter "id"
    .parameter "isRingtone"
    .parameter "isNotification"

    .prologue
    .line 2425
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 2427
    .local v9, resolver:Landroid/content/ContentResolver;
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    .line 2431
    .local v10, ringUri:Landroid/net/Uri;
    :try_start_0
    new-instance v11, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v11, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 2432
    .local v11, values:Landroid/content/ContentValues;
    if-eqz p3, :cond_0

    .line 2433
    const-string v0, "is_ringtone"

    const-string v1, "1"

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2437
    :cond_0
    if-eqz p4, :cond_1

    .line 2438
    const-string v0, "is_notification"

    const-string v1, "1"

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2439
    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {v9, v10, v11, v0, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2446
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

    .line 2451
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

    .line 2452
    .local v3, where:Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2455
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 2457
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2458
    if-eqz p3, :cond_4

    .line 2459
    const-string v0, "ringtone"

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v0, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2461
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

    .line 2462
    .local v8, message:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v8, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2472
    .end local v8           #message:Ljava/lang/String;
    :cond_2
    :goto_0
    if-eqz v6, :cond_3

    .line 2473
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2474
    const/4 v6, 0x0

    .line 2477
    .end local v2           #cols:[Ljava/lang/String;
    .end local v3           #where:Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v11           #values:Landroid/content/ContentValues;
    :cond_3
    :goto_1
    return-void

    .line 2440
    :catch_0
    move-exception v7

    .line 2442
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

    .line 2463
    .end local v7           #ex:Ljava/lang/UnsupportedOperationException;
    .restart local v2       #cols:[Ljava/lang/String;
    .restart local v3       #where:Ljava/lang/String;
    .restart local v6       #cursor:Landroid/database/Cursor;
    .restart local v11       #values:Landroid/content/ContentValues;
    :cond_4
    if-eqz p4, :cond_2

    .line 2464
    :try_start_2
    const-string v0, "notification_sound"

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v0, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2466
    const v0, 0x7f0700b2

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 2468
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

    .line 2472
    .end local v8           #message:Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 2473
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2474
    const/4 v6, 0x0

    .line 2472
    :cond_5
    throw v0
.end method

.method public static setStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 2409
    const-string v2, "com.htc.music"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2411
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2412
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2413
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2414
    return-void
.end method

.method public static setTabActivityResult(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "result"

    .prologue
    .line 2983
    const-string v0, "result"

    invoke-static {p0, v0, p1}, Lcom/htc/music/util/MusicUtils;->setIntPref(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2984
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
    .line 2995
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 2996
    .local v4, q:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2997
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

    .line 2998
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 2999
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 3000
    .local v3, n:I
    if-nez v3, :cond_0

    .line 3001
    const-string v5, "0;"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2998
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3003
    :cond_0
    :goto_2
    if-eqz v3, :cond_1

    .line 3004
    and-int/lit8 v0, v3, 0xf

    .line 3005
    .local v0, digit:I
    shr-int/lit8 v3, v3, 0x4

    .line 3006
    sget-object v5, Lcom/htc/music/util/MusicUtils;->hexdigits:[C

    aget-char v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 3008
    .end local v0           #digit:I
    :cond_1
    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 3011
    .end local v3           #n:I
    :cond_2
    const-string v5, "selectedid"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v5, v6}, Lcom/htc/music/util/MusicUtils;->setStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 3012
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

    .line 2611
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v1

    const-string v0, "_data"

    aput-object v0, v2, v8

    const-string v0, "title"

    aput-object v0, v2, v4

    .line 2616
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

    .line 2617
    .local v3, where:Ljava/lang/String;
    const/4 v6, 0x0

    .line 2619
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2621
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v8, :cond_0

    .line 2622
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2623
    const v0, 0x7f0700b3

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 2625
    .local v7, message:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v7, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2628
    .end local v7           #message:Ljava/lang/String;
    :cond_0
    if-eqz v6, :cond_1

    .line 2629
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2630
    const/4 v6, 0x0

    .line 2633
    :cond_1
    return-void

    .line 2628
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 2629
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2630
    const/4 v6, 0x0

    .line 2628
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

    .line 2704
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v1

    const-string v0, "_data"

    aput-object v0, v2, v8

    const-string v0, "title"

    aput-object v0, v2, v3

    .line 2707
    .local v2, cols:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 2709
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    :try_start_0
    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2710
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v8, :cond_0

    .line 2711
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2712
    const v0, 0x7f0700b3

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 2714
    .local v7, message:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v7, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2717
    .end local v7           #message:Ljava/lang/String;
    :cond_0
    if-eqz v6, :cond_1

    .line 2718
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2719
    const/4 v6, 0x0

    .line 2722
    :cond_1
    return-void

    .line 2717
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 2718
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2719
    const/4 v6, 0x0

    .line 2717
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

    .line 1662
    const/4 v3, 0x1

    new-array v5, v2, [I

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;IZLcom/htc/music/NpCategory;[I)V

    .line 1663
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

    .line 1666
    const/4 v0, 0x0

    new-array v6, v0, [I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, v3

    move-object v5, p3

    invoke-static/range {v0 .. v6}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;[IIZZLcom/htc/music/NpCategory;[I)Z

    .line 1667
    return-void
.end method

.method public static switchToDMC(Landroid/content/Context;Z)Z
    .locals 12
    .parameter "c"
    .parameter "bReload"

    .prologue
    .line 3542
    const-string v7, "[MusicUtils]"

    const-string v8, "switchToDMC"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3544
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->getCurDMR(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 3546
    .local v6, szDMR:Ljava/lang/String;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-gtz v7, :cond_1

    .line 3548
    :cond_0
    const-string v7, "[MusicUtils]"

    const-string v8, "No DMR connected now."

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3549
    const/4 v7, 0x0

    .line 3616
    :goto_0
    return v7

    .line 3554
    :cond_1
    const-string v7, "DLNA"

    const/4 v8, 0x7

    invoke-virtual {p0, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 3556
    .local v1, Preferences:Landroid/content/SharedPreferences;
    const-string v7, "server"

    const/4 v8, 0x0

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3558
    .local v0, DMS:Ljava/lang/String;
    new-instance v4, Landroid/content/Intent;

    const-class v7, Lcom/htc/music/DMCMusicPlaybackService;

    invoke-direct {v4, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3561
    .local v4, intent:Landroid/content/Intent;
    const-string v7, "[MusicUtils]"

    const-string v8, "type = null, DLNA mode switch to DLNA_DMC"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3562
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "switchDMC"

    const/4 v9, 0x1

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3564
    new-instance v4, Landroid/content/Intent;

    .end local v4           #intent:Landroid/content/Intent;
    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 3565
    .restart local v4       #intent:Landroid/content/Intent;
    const-string v7, "Server"

    invoke-virtual {v4, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3566
    const-string v7, "Render"

    invoke-virtual {v4, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3567
    const-string v7, "cookie"

    const/4 v8, 0x1

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3569
    if-eqz p1, :cond_2

    .line 3570
    const-string v7, "[MusicUtils]"

    const-string v8, "DLNA_DMC mode reload data from preference"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3571
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

    .line 3572
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

    .line 3573
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

    .line 3574
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

    .line 3575
    const-string v7, "[MusicUtils]"

    const-string v8, "intent cookie = 1"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3576
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

    .line 3577
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

    .line 3578
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

    .line 3579
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

    .line 3580
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

    .line 3582
    const-string v7, "container"

    const-string v8, "container"

    const/4 v9, 0x0

    invoke-interface {v1, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3583
    const-string v7, "content"

    const-string v8, "content"

    const/4 v9, 0x0

    invoke-interface {v1, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3584
    const-string v7, "filepath"

    const-string v8, "filepath"

    const/4 v9, 0x0

    invoke-interface {v1, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3585
    const-string v7, "shuffle"

    const-string v8, "shuffle"

    const/4 v9, 0x0

    invoke-interface {v1, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3586
    const-string v7, "startIdx"

    const-string v8, "startIdx"

    const-wide/16 v9, -0x1

    invoke-interface {v1, v8, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-virtual {v4, v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3587
    const-string v7, "endIdx"

    const-string v8, "endIdx"

    const-wide/16 v9, -0x1

    invoke-interface {v1, v8, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-virtual {v4, v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3588
    const-string v7, "direction"

    const-string v8, "direction"

    const/4 v9, 0x0

    invoke-interface {v1, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3589
    const-string v7, "com.htc.music.dmc_setsrc"

    const/4 v8, 0x1

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3590
    const-string v7, "command"

    const-string v8, "com.htc.music.refreshplaylist"

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3593
    :cond_2
    const-string v7, "[MusicUtils]"

    const-string v8, "starting DMC Music playback service..."

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3595
    const-string v7, "com.htc.music.DMCMusicPlaybackService"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3596
    const-string v7, "forcePlay"

    const/4 v8, 0x1

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3599
    :try_start_0
    sget-object v7, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/htc/music/IMediaPlaybackService;->bindPluginService(Ljava/lang/String;)V

    .line 3601
    const-string v7, "DLNA"

    const/4 v8, 0x5

    invoke-virtual {p0, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 3603
    .local v5, pref:Landroid/content/SharedPreferences;
    const-string v7, "switchDMC"

    const/4 v8, 0x0

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 3605
    .local v2, Switch:Z
    if-eqz v2, :cond_3

    .line 3609
    invoke-virtual {p0, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 3610
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "switchDMC"

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3616
    .end local v2           #Switch:Z
    .end local v5           #pref:Landroid/content/SharedPreferences;
    :cond_3
    :goto_1
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 3613
    :catch_0
    move-exception v3

    .line 3614
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

    .line 3620
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

    .line 3622
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->getCurDMR(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 3623
    .local v7, szDMR:Ljava/lang/String;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-gtz v10, :cond_2

    .line 3625
    :cond_0
    const-string v8, "[MusicUtils]"

    const-string v10, "No DMR connected now."

    invoke-static {v8, v10}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v9

    .line 3684
    :cond_1
    :goto_0
    return v8

    .line 3630
    :cond_2
    const-string v9, "DLNA"

    const/4 v10, 0x3

    invoke-virtual {p0, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3633
    .local v0, Preferences:Landroid/content/SharedPreferences;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 3635
    .local v3, intent:Landroid/content/Intent;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v10, "switchDMC"

    invoke-interface {v9, v10, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3637
    :try_start_0
    const-string v9, "[MusicUtils]"

    const-string v10, "push switch = true"

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3639
    const-string v9, "com.htc.music.dmc_setsrc"

    const/4 v10, 0x0

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3641
    const/4 v4, 0x0

    .line 3642
    .local v4, list:[I
    const/4 v5, -0x1

    .line 3643
    .local v5, position:I
    if-eqz p1, :cond_4

    sget-object v9, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v9, :cond_4

    .line 3645
    sget-object v9, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v9}, Lcom/htc/music/IMediaPlaybackService;->getQueue()[I

    move-result-object v4

    .line 3646
    sget-object v9, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v9}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v5

    .line 3648
    if-eqz v4, :cond_3

    const-string v9, "com.htc.music.dmc_playlist"

    invoke-virtual {v3, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 3649
    :cond_3
    if-ltz v5, :cond_4

    const-string v9, "com.htc.music.dmc_currentindex"

    invoke-virtual {v3, v9, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3652
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

    .line 3653
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v10, "switch"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3658
    .end local v4           #list:[I
    .end local v5           #position:I
    :goto_1
    const-string v9, "Render"

    invoke-virtual {v3, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3659
    const-string v9, "cookie"

    invoke-virtual {v3, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3661
    const-string v9, "[MusicUtils]"

    const-string v10, "starting DMC Music playback service..."

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3662
    const-string v9, "com.htc.music.DMCMusicPlaybackService"

    invoke-virtual {v3, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3663
    const-string v9, "command"

    const-string v10, "com.htc.music.refreshplaylist"

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3664
    const-string v9, "forcePlay"

    invoke-virtual {v3, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3667
    :try_start_1
    sget-object v9, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/htc/music/IMediaPlaybackService;->bindPluginService(Ljava/lang/String;)V

    .line 3669
    const-string v9, "DLNA"

    const/4 v10, 0x5

    invoke-virtual {p0, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 3671
    .local v6, pref:Landroid/content/SharedPreferences;
    const-string v9, "switchDMC"

    const/4 v10, 0x1

    invoke-interface {v6, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 3673
    .local v1, Switch:Z
    if-eqz v1, :cond_1

    .line 3677
    invoke-virtual {p0, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 3678
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

    .line 3681
    .end local v1           #Switch:Z
    .end local v6           #pref:Landroid/content/SharedPreferences;
    :catch_0
    move-exception v2

    .line 3682
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 3654
    .end local v2           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 3655
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

    .line 3689
    const-string v9, "[MusicUtils]"

    const-string v10, "switchToPUSH"

    invoke-static {v9, v10}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3691
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->getCurDMR(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 3692
    .local v6, szDMR:Ljava/lang/String;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-gtz v9, :cond_1

    .line 3694
    :cond_0
    const-string v7, "[MusicUtils]"

    const-string v9, "No DMR connected now."

    invoke-static {v7, v9}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v7, v8

    .line 3747
    :goto_0
    return v7

    .line 3699
    :cond_1
    const-string v9, "DLNA"

    const/4 v10, 0x7

    invoke-virtual {p0, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3702
    .local v0, Preferences:Landroid/content/SharedPreferences;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 3707
    .local v2, intent:Landroid/content/Intent;
    const-string v9, "com.htc.music.dmc_setsrc"

    invoke-virtual {v2, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3709
    const/4 v3, 0x0

    .line 3710
    .local v3, list:[I
    const/4 v4, -0x1

    .line 3712
    .local v4, position:I
    if-eqz p1, :cond_2

    move-object v3, p1

    .line 3713
    :cond_2
    if-eqz v3, :cond_3

    const-string v9, "com.htc.music.dmc_playlist"

    invoke-virtual {v2, v9, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 3715
    :cond_3
    if-ltz p2, :cond_4

    move v4, p2

    .line 3716
    :cond_4
    if-ltz v4, :cond_5

    const-string v9, "com.htc.music.dmc_currentindex"

    invoke-virtual {v2, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3718
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

    .line 3719
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v10, "switch"

    invoke-interface {v9, v10, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3721
    const-string v8, "Render"

    invoke-virtual {v2, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3722
    const-string v8, "cookie"

    invoke-virtual {v2, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3724
    const-string v8, "[MusicUtils]"

    const-string v9, "starting DMC PUSH Music playback service..."

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3725
    const-string v8, "com.htc.music.DMCMusicPlaybackService"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3726
    const-string v8, "command"

    const-string v9, "com.htc.music.refreshplaylist"

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3727
    const-string v8, "forcePlay"

    invoke-virtual {v2, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3730
    :try_start_0
    sget-object v8, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/htc/music/IMediaPlaybackService;->bindPluginService(Ljava/lang/String;)V

    .line 3732
    const-string v8, "DLNA"

    const/4 v9, 0x5

    invoke-virtual {p0, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 3740
    .local v5, pref:Landroid/content/SharedPreferences;
    invoke-virtual {p0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 3741
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

    .line 3744
    .end local v5           #pref:Landroid/content/SharedPreferences;
    :catch_0
    move-exception v1

    .line 3745
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
    .line 3048
    .local p0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez p0, :cond_1

    .line 3049
    const/4 v1, 0x0

    .line 3054
    :cond_0
    return-object v1

    .line 3050
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [I

    .line 3051
    .local v1, result:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 3052
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v1, v0

    .line 3051
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static unbindFromService(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "id"

    .prologue
    .line 340
    new-instance v2, Lcom/htc/music/util/MusicUtils$ServiceOwner;

    invoke-direct {v2, p1, p0}, Lcom/htc/music/util/MusicUtils$ServiceOwner;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 341
    .local v2, serviceOwner:Lcom/htc/music/util/MusicUtils$ServiceOwner;
    sget-object v3, Lcom/htc/music/util/MusicUtils;->sConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/util/MusicUtils$ServiceBinder;

    .line 342
    .local v1, sb:Lcom/htc/music/util/MusicUtils$ServiceBinder;
    if-nez v1, :cond_0

    .line 343
    const-string v3, "[MusicUtils]"

    const-string v4, "Trying to unbind for unknown Context"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    :goto_0
    return-void

    .line 348
    :cond_0
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 349
    :catch_0
    move-exception v0

    .line 350
    .local v0, ex:Ljava/lang/Exception;
    const-string v3, "[MusicUtils]"

    const-string v4, "can\'t unbind service"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
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
    .line 4270
    if-eqz p0, :cond_0

    const-string v0, "content://drm/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4271
    const/4 v0, 0x1

    .line 4273
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
