.class public Lcom/htc/music/LandingPageActivity;
.super Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;
.source "LandingPageActivity.java"

# interfaces
.implements Lcom/htc/music/util/MusicUtils$Defs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/LandingPageActivity$NonUIHandler;,
        Lcom/htc/music/LandingPageActivity$MyContentObserver;,
        Lcom/htc/music/LandingPageActivity$BaseItem;,
        Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;,
        Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;,
        Lcom/htc/music/LandingPageActivity$LaunchItem;
    }
.end annotation


# static fields
.field private static final ADD_APP_SHORTCUT:I = 0x0

.field private static final DIALOG_FOR_DELETE:I = 0x1

.field private static final DIALOG_FOR_LONG_PRESS:I = 0x0

.field private static final DIALOG_SHARETEXT:I = 0x2

.field private static final INIT_LAUNCH_ITEM:I = 0x2710

.field private static final MENU_ADD_APP_SHORTCUT:I = 0x1

.field private static final MENU_MEDIA_SERVER:I = 0x2

.field private static final MENU_VMM_UPLOAD:I = 0x15

.field private static final NO_RECENTLY_PLAYED_ALBUM_ID:I = -0x2

.field private static final PACKAGE_NAME_AMAZON:Ljava/lang/String; = "com.amazon.mp3"

.field private static final PACKAGE_NAME_BPM:Ljava/lang/String; = "com.htc.bpmrss"

.field private static final PACKAGE_NAME_DEEZER:Ljava/lang/String; = "deezer.android.app"

.field private static final PACKAGE_NAME_DOUBAN_FM:Ljava/lang/String; = "com.douban.radio"

.field private static final PACKAGE_NAME_FM_RADIO:Ljava/lang/String; = "com.htc.fm"

.field private static final PACKAGE_NAME_GOOGLE_MUSIC:Ljava/lang/String; = "com.google.android.music"

.field private static final PACKAGE_NAME_KKBOX:Ljava/lang/String; = "com.skysoft.kkbox.android"

.field private static final PACKAGE_NAME_KUWO:Ljava/lang/String; = "cn.kuwo.player"

.field private static final PACKAGE_NAME_LASTFM:Ljava/lang/String; = "fm.last.android"

.field private static final PACKAGE_NAME_MOG:Ljava/lang/String; = "com.mog.android"

.field private static final PACKAGE_NAME_PANDORA:Ljava/lang/String; = "com.pandora.android"

.field private static final PACKAGE_NAME_QQ:Ljava/lang/String; = "com.tencent.qqmusic"

.field private static final PACKAGE_NAME_RDIO:Ljava/lang/String; = "com.rdio.android.ui"

.field private static final PACKAGE_NAME_SEVENDIGITAL:Ljava/lang/String; = "uk.co.sevendigital.android"

.field private static final PACKAGE_NAME_SIMFY:Ljava/lang/String; = "de.simfy.androidapp"

.field private static final PACKAGE_NAME_SINA:Ljava/lang/String; = "cn.sina.music"

.field private static final PACKAGE_NAME_SLACKER:Ljava/lang/String; = "com.slacker.radio"

.field private static final PACKAGE_NAME_SOUNDHOUND:Ljava/lang/String; = "com.melodis.midomiMusicIdentifier"

.field private static final PACKAGE_NAME_SOUNDHOUND_FREEMIUM:Ljava/lang/String; = "com.melodis.midomiMusicIdentifier.freemium"

.field private static final PACKAGE_NAME_SPOTIFY:Ljava/lang/String; = "com.spotify.mobile.android.ui"

.field private static final PACKAGE_NAME_TUNEIN:Ljava/lang/String; = "tunein.player"

.field private static final PACKAGE_NAME_TUNEIN_PRO:Ljava/lang/String; = "radiotime.player"

.field private static final PACKAGE_NAME_VERIZON:Ljava/lang/String; = "com.htc.vmm"

.field private static final PACKAGE_NAME_VODAFONE:Ljava/lang/String; = "com.vodafone.android.app.music"

.field private static final PACKAGE_NAME_ZDIGITAL:Ljava/lang/String; = "au.com.zdigital.android"

.field private static final QUERY_RECENT_ALBUM_INFO:I = 0x0

.field private static final RELOAD_RECENT_ALBUM:I = 0x2711

.field private static final SHOW_NO_RECENTLY_PLAYED_ALBUM:I = 0x2711

.field private static final TAG:Ljava/lang/String; = "[LandingPage]"

.field private static final TYPE_AUTO_DETECT:I = 0x2

.field private static final TYPE_LIBRARY:I = 0x0

.field private static final TYPE_OTHER:I = 0x3

.field private static final TYPE_PRELOAD:I = 0x1

.field private static final mAlbumCols:[Ljava/lang/String; = null

.field private static final mScaleSize:F = 1.2f


# instance fields
.field private mAdapter:Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;

.field private mAlbumCursor:Landroid/database/Cursor;

.field private mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

.field private mAutoAddList:[Ljava/lang/String;

.field private mAutoDetectList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/LandingPageActivity$LaunchItem;",
            ">;"
        }
    .end annotation
.end field

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHeaderViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mLaunchItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/LandingPageActivity$LaunchItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mLongClickedItemType:I

.field private mLongClickedLaunchIntent:Landroid/content/Intent;

.field private mLongClickedName:Ljava/lang/String;

.field private mLuanchItemBgHeight:I

.field private mLuanchItemBgWidth:I

.field private mMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

.field private mNonUIHandler:Landroid/os/Handler;

.field private mOrientation:I

.field private mPhoneCID:Ljava/lang/String;

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mPreloadAutoDetectTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPreloadIconMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPreloadIntentMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mPreloadList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/LandingPageActivity$LaunchItem;",
            ">;"
        }
    .end annotation
.end field

.field private mRecentAlbumIds:[I

.field private mRecentAlbumList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/LandingPageActivity$BaseItem;",
            ">;"
        }
    .end annotation
.end field

.field private mRecentAlbumQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

.field private mRemoveList:Ljava/lang/StringBuilder;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mSelectedAlbumId:I

.field private mSelectedAlbumName:Ljava/lang/String;

.field private mSelectedArtistName:Ljava/lang/String;

.field public mService:Lcom/htc/music/IMediaPlaybackService;

.field private mServiceBound:Z

.field private mShareText:Ljava/lang/String;

.field private mSmallIconHeight:I

.field private mSmallIconWidth:I

.field private mStatusListener:Landroid/content/BroadcastReceiver;

.field private mStopping:Z

.field private mUIHandler:Landroid/os/Handler;

.field private mUserAddList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/LandingPageActivity$LaunchItem;",
            ">;"
        }
    .end annotation
.end field

.field private osc:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 98
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "album"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "album_key"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "artist"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "album_art"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/music/LandingPageActivity;->mAlbumCols:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 91
    invoke-direct {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;-><init>()V

    .line 94
    iput-object v3, p0, Lcom/htc/music/LandingPageActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    .line 109
    new-instance v0, Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Lcom/htc/music/util/MemoryCacheMBitmapByTime;-><init>(I)V

    iput-object v0, p0, Lcom/htc/music/LandingPageActivity;->mMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/LandingPageActivity;->mRecentAlbumList:Ljava/util/ArrayList;

    .line 160
    iput-object v3, p0, Lcom/htc/music/LandingPageActivity;->mAutoAddList:[Ljava/lang/String;

    .line 162
    iput v4, p0, Lcom/htc/music/LandingPageActivity;->mLongClickedItemType:I

    .line 163
    iput-object v3, p0, Lcom/htc/music/LandingPageActivity;->mLongClickedLaunchIntent:Landroid/content/Intent;

    .line 164
    iput-object v3, p0, Lcom/htc/music/LandingPageActivity;->mLongClickedName:Ljava/lang/String;

    .line 168
    iput v2, p0, Lcom/htc/music/LandingPageActivity;->mLuanchItemBgWidth:I

    .line 169
    iput v2, p0, Lcom/htc/music/LandingPageActivity;->mLuanchItemBgHeight:I

    .line 170
    iput v2, p0, Lcom/htc/music/LandingPageActivity;->mSmallIconWidth:I

    .line 171
    iput v2, p0, Lcom/htc/music/LandingPageActivity;->mSmallIconHeight:I

    .line 175
    iput v2, p0, Lcom/htc/music/LandingPageActivity;->mOrientation:I

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/LandingPageActivity;->mHeaderViewList:Ljava/util/ArrayList;

    .line 361
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/LandingPageActivity;->mPreloadList:Ljava/util/ArrayList;

    .line 363
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/LandingPageActivity;->mAutoDetectList:Ljava/util/ArrayList;

    .line 365
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/LandingPageActivity;->mUserAddList:Ljava/util/ArrayList;

    .line 367
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    .line 371
    iput-object v3, p0, Lcom/htc/music/LandingPageActivity;->mSelectedAlbumName:Ljava/lang/String;

    .line 372
    iput-object v3, p0, Lcom/htc/music/LandingPageActivity;->mSelectedArtistName:Ljava/lang/String;

    .line 373
    iput v4, p0, Lcom/htc/music/LandingPageActivity;->mSelectedAlbumId:I

    .line 375
    iput-object v3, p0, Lcom/htc/music/LandingPageActivity;->mShareText:Ljava/lang/String;

    .line 377
    iput-object v3, p0, Lcom/htc/music/LandingPageActivity;->mPreferences:Landroid/content/SharedPreferences;

    .line 379
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/music/LandingPageActivity;->mPreloadIntentMap:Ljava/util/HashMap;

    .line 380
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/music/LandingPageActivity;->mPreloadIconMap:Ljava/util/HashMap;

    .line 382
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/music/LandingPageActivity;->mPreloadAutoDetectTypeMap:Ljava/util/HashMap;

    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/htc/music/LandingPageActivity;->mRemoveList:Ljava/lang/StringBuilder;

    .line 386
    iput-object v3, p0, Lcom/htc/music/LandingPageActivity;->mRecentAlbumIds:[I

    .line 393
    iput v2, p0, Lcom/htc/music/LandingPageActivity;->mScreenWidth:I

    .line 394
    iput v2, p0, Lcom/htc/music/LandingPageActivity;->mScreenHeight:I

    .line 396
    iput-boolean v2, p0, Lcom/htc/music/LandingPageActivity;->mStopping:Z

    .line 397
    iput-boolean v2, p0, Lcom/htc/music/LandingPageActivity;->mServiceBound:Z

    .line 399
    const-string v0, "ro.cid"

    invoke-static {v0}, Lcom/htc/wrap/android/os/HtcWrapSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/LandingPageActivity;->mPhoneCID:Ljava/lang/String;

    .line 446
    new-instance v0, Lcom/htc/music/LandingPageActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/music/LandingPageActivity$1;-><init>(Lcom/htc/music/LandingPageActivity;)V

    iput-object v0, p0, Lcom/htc/music/LandingPageActivity;->mUIHandler:Landroid/os/Handler;

    .line 1179
    new-instance v0, Lcom/htc/music/LandingPageActivity$3;

    invoke-direct {v0, p0}, Lcom/htc/music/LandingPageActivity$3;-><init>(Lcom/htc/music/LandingPageActivity;)V

    iput-object v0, p0, Lcom/htc/music/LandingPageActivity;->osc:Landroid/content/ServiceConnection;

    .line 1662
    new-instance v0, Lcom/htc/music/LandingPageActivity$4;

    invoke-direct {v0, p0}, Lcom/htc/music/LandingPageActivity$4;-><init>(Lcom/htc/music/LandingPageActivity;)V

    iput-object v0, p0, Lcom/htc/music/LandingPageActivity;->mStatusListener:Landroid/content/BroadcastReceiver;

    .line 2049
    new-instance v0, Lcom/htc/music/LandingPageActivity$MyContentObserver;

    invoke-direct {v0, p0}, Lcom/htc/music/LandingPageActivity$MyContentObserver;-><init>(Lcom/htc/music/LandingPageActivity;)V

    iput-object v0, p0, Lcom/htc/music/LandingPageActivity;->mContentObserver:Landroid/database/ContentObserver;

    .line 91
    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/LandingPageActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget v0, p0, Lcom/htc/music/LandingPageActivity;->mLongClickedItemType:I

    return v0
.end method

.method static synthetic access$002(Lcom/htc/music/LandingPageActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput p1, p0, Lcom/htc/music/LandingPageActivity;->mLongClickedItemType:I

    return p1
.end method

.method static synthetic access$100(Lcom/htc/music/LandingPageActivity;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mLongClickedLaunchIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/music/LandingPageActivity;)Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mAdapter:Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/htc/music/LandingPageActivity;Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;)Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/htc/music/LandingPageActivity;->mAdapter:Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;

    return-object p1
.end method

.method static synthetic access$102(Lcom/htc/music/LandingPageActivity;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/htc/music/LandingPageActivity;->mLongClickedLaunchIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/htc/music/LandingPageActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/htc/music/LandingPageActivity;->hideRecentlyAlbumDialogs()V

    return-void
.end method

.method static synthetic access$1200(Lcom/htc/music/LandingPageActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mRecentAlbumList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/music/LandingPageActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/htc/music/LandingPageActivity;)Ljava/lang/StringBuilder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mRemoveList:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/htc/music/LandingPageActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mPreloadList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/music/LandingPageActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mLongClickedName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/music/LandingPageActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mAutoDetectList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$202(Lcom/htc/music/LandingPageActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/htc/music/LandingPageActivity;->mLongClickedName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/htc/music/LandingPageActivity;Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/htc/music/LandingPageActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/htc/music/LandingPageActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/htc/music/LandingPageActivity;->mStopping:Z

    return v0
.end method

.method static synthetic access$3502(Lcom/htc/music/LandingPageActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/htc/music/LandingPageActivity;->mServiceBound:Z

    return p1
.end method

.method static synthetic access$3600(Lcom/htc/music/LandingPageActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/htc/music/LandingPageActivity;->reloadRecentAlbumAsync()V

    return-void
.end method

.method static synthetic access$3700(Lcom/htc/music/LandingPageActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/htc/music/widget/MusicMaActivity;->mIsEnhancerExist:Z

    return v0
.end method

.method static synthetic access$3800(Lcom/htc/music/LandingPageActivity;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mRecentAlbumIds:[I

    return-object v0
.end method

.method static synthetic access$3802(Lcom/htc/music/LandingPageActivity;[I)[I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/htc/music/LandingPageActivity;->mRecentAlbumIds:[I

    return-object p1
.end method

.method static synthetic access$3900(Lcom/htc/music/LandingPageActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mAlbumCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$3902(Lcom/htc/music/LandingPageActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/htc/music/LandingPageActivity;->mAlbumCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$4000(Lcom/htc/music/LandingPageActivity;)Landroid/database/ContentObserver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mContentObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic access$402(Lcom/htc/music/LandingPageActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput p1, p0, Lcom/htc/music/LandingPageActivity;->mOrientation:I

    return p1
.end method

.method static synthetic access$4200(Lcom/htc/music/LandingPageActivity;)Lcom/htc/music/util/AsyncImageDecoder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    return-object v0
.end method

.method static synthetic access$4202(Lcom/htc/music/LandingPageActivity;Lcom/htc/music/util/AsyncImageDecoder;)Lcom/htc/music/util/AsyncImageDecoder;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/htc/music/LandingPageActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    return-object p1
.end method

.method static synthetic access$4502(Lcom/htc/music/LandingPageActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/htc/music/LandingPageActivity;->mSelectedAlbumName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4602(Lcom/htc/music/LandingPageActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/htc/music/LandingPageActivity;->mSelectedArtistName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4702(Lcom/htc/music/LandingPageActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput p1, p0, Lcom/htc/music/LandingPageActivity;->mSelectedAlbumId:I

    return p1
.end method

.method static synthetic access$4800(Lcom/htc/music/LandingPageActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/htc/music/LandingPageActivity;->showAlbumOptions()V

    return-void
.end method

.method static synthetic access$4900(Lcom/htc/music/LandingPageActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget v0, p0, Lcom/htc/music/LandingPageActivity;->mScreenWidth:I

    return v0
.end method

.method static synthetic access$500(Lcom/htc/music/LandingPageActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/htc/music/LandingPageActivity;->initConstant()V

    return-void
.end method

.method static synthetic access$5000(Lcom/htc/music/LandingPageActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget v0, p0, Lcom/htc/music/LandingPageActivity;->mScreenHeight:I

    return v0
.end method

.method static synthetic access$5100(Lcom/htc/music/LandingPageActivity;)Lcom/htc/music/util/MemoryCacheMBitmapByTime;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/htc/music/LandingPageActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/htc/music/LandingPageActivity;->reloadRecentAlbum(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/music/LandingPageActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/htc/music/LandingPageActivity;->initPreloadMap()V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/music/LandingPageActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/htc/music/LandingPageActivity;->initPreloadAutoDetectTypeMap()V

    return-void
.end method

.method static synthetic access$800(Lcom/htc/music/LandingPageActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/htc/music/LandingPageActivity;->reloadLaunchItemList()V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/music/LandingPageActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/htc/music/LandingPageActivity;->updateLaunchItemsUI()V

    return-void
.end method

.method private appExist(Landroid/content/Intent;)Z
    .locals 3
    .parameter "intent"

    .prologue
    const/4 v0, 0x0

    .line 1998
    invoke-virtual {p0}, Lcom/htc/music/LandingPageActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 1999
    .local v1, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v0, 0x1

    .line 2000
    .local v0, appExist:Z
    :cond_0
    return v0
.end method

.method private getAutoAddList()[Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2231
    const/4 v0, 0x0

    .line 2232
    .local v0, autoAddList:[Ljava/lang/String;
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    sparse-switch v1, :sswitch_data_0

    .line 2360
    invoke-direct {p0}, Lcom/htc/music/LandingPageActivity;->isChinaSku()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2361
    const/16 v1, 0x13

    new-array v0, v1, [Ljava/lang/String;

    .end local v0           #autoAddList:[Ljava/lang/String;
    const-string v1, "com.melodis.midomiMusicIdentifier"

    aput-object v1, v0, v3

    const-string v1, "com.melodis.midomiMusicIdentifier.freemium"

    aput-object v1, v0, v4

    const-string v1, "radiotime.player"

    aput-object v1, v0, v5

    const-string v1, "tunein.player"

    aput-object v1, v0, v6

    const-string v1, "com.amazon.mp3"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "uk.co.sevendigital.android"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.skysoft.kkbox.android"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.rdio.android.ui"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.spotify.mobile.android.ui"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "deezer.android.app"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "de.simfy.androidapp"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.mog.android"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.pandora.android"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "fm.last.android"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "com.slacker.radio"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "com.douban.radio"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "cn.kuwo.player"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "com.tencent.qqmusic"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "cn.sina.music"

    aput-object v2, v0, v1

    .line 2422
    .restart local v0       #autoAddList:[Ljava/lang/String;
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 2423
    const-string v1, "[LandingPage]"

    const-string v2, "getAutoAddList, autoAddList = null"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2426
    :cond_1
    return-object v0

    .line 2234
    :sswitch_0
    const/16 v1, 0x10

    new-array v0, v1, [Ljava/lang/String;

    .end local v0           #autoAddList:[Ljava/lang/String;
    const-string v1, "com.htc.vmm"

    aput-object v1, v0, v3

    const-string v1, "com.melodis.midomiMusicIdentifier"

    aput-object v1, v0, v4

    const-string v1, "com.melodis.midomiMusicIdentifier.freemium"

    aput-object v1, v0, v5

    const-string v1, "radiotime.player"

    aput-object v1, v0, v6

    const-string v1, "tunein.player"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "com.amazon.mp3"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "uk.co.sevendigital.android"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.skysoft.kkbox.android"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.rdio.android.ui"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.spotify.mobile.android.ui"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "deezer.android.app"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "de.simfy.androidapp"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.mog.android"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "com.pandora.android"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "fm.last.android"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "com.slacker.radio"

    aput-object v2, v0, v1

    .line 2252
    .restart local v0       #autoAddList:[Ljava/lang/String;
    goto :goto_0

    .line 2255
    :sswitch_1
    const/16 v1, 0x10

    new-array v0, v1, [Ljava/lang/String;

    .end local v0           #autoAddList:[Ljava/lang/String;
    const-string v1, "com.vodafone.android.app.music"

    aput-object v1, v0, v3

    const-string v1, "com.melodis.midomiMusicIdentifier"

    aput-object v1, v0, v4

    const-string v1, "com.melodis.midomiMusicIdentifier.freemium"

    aput-object v1, v0, v5

    const-string v1, "radiotime.player"

    aput-object v1, v0, v6

    const-string v1, "tunein.player"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "com.amazon.mp3"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "uk.co.sevendigital.android"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.skysoft.kkbox.android"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.rdio.android.ui"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.spotify.mobile.android.ui"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "deezer.android.app"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "de.simfy.androidapp"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.mog.android"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "com.pandora.android"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "fm.last.android"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "com.slacker.radio"

    aput-object v2, v0, v1

    .line 2273
    .restart local v0       #autoAddList:[Ljava/lang/String;
    goto/16 :goto_0

    .line 2276
    :sswitch_2
    const/16 v1, 0x10

    new-array v0, v1, [Ljava/lang/String;

    .end local v0           #autoAddList:[Ljava/lang/String;
    const-string v1, "com.htc.bpmrss"

    aput-object v1, v0, v3

    const-string v1, "com.melodis.midomiMusicIdentifier"

    aput-object v1, v0, v4

    const-string v1, "com.melodis.midomiMusicIdentifier.freemium"

    aput-object v1, v0, v5

    const-string v1, "radiotime.player"

    aput-object v1, v0, v6

    const-string v1, "tunein.player"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "com.amazon.mp3"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "au.com.zdigital.android"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.skysoft.kkbox.android"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.rdio.android.ui"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.spotify.mobile.android.ui"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "deezer.android.app"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "de.simfy.androidapp"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.mog.android"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "com.pandora.android"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "fm.last.android"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "com.slacker.radio"

    aput-object v2, v0, v1

    .line 2294
    .restart local v0       #autoAddList:[Ljava/lang/String;
    goto/16 :goto_0

    .line 2297
    :sswitch_3
    const/16 v1, 0xf

    new-array v0, v1, [Ljava/lang/String;

    .end local v0           #autoAddList:[Ljava/lang/String;
    const-string v1, "com.melodis.midomiMusicIdentifier"

    aput-object v1, v0, v3

    const-string v1, "com.melodis.midomiMusicIdentifier.freemium"

    aput-object v1, v0, v4

    const-string v1, "radiotime.player"

    aput-object v1, v0, v5

    const-string v1, "tunein.player"

    aput-object v1, v0, v6

    const-string v1, "com.amazon.mp3"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "au.com.zdigital.android"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.skysoft.kkbox.android"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.rdio.android.ui"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.spotify.mobile.android.ui"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "deezer.android.app"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "de.simfy.androidapp"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.mog.android"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.pandora.android"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "fm.last.android"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "com.slacker.radio"

    aput-object v2, v0, v1

    .line 2314
    .restart local v0       #autoAddList:[Ljava/lang/String;
    goto/16 :goto_0

    .line 2317
    :sswitch_4
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v2, 0x10

    if-ne v1, v2, :cond_0

    .line 2318
    const/16 v1, 0xf

    new-array v0, v1, [Ljava/lang/String;

    .end local v0           #autoAddList:[Ljava/lang/String;
    const-string v1, "com.melodis.midomiMusicIdentifier"

    aput-object v1, v0, v3

    const-string v1, "com.melodis.midomiMusicIdentifier.freemium"

    aput-object v1, v0, v4

    const-string v1, "radiotime.player"

    aput-object v1, v0, v5

    const-string v1, "tunein.player"

    aput-object v1, v0, v6

    const-string v1, "com.amazon.mp3"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "au.com.zdigital.android"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.skysoft.kkbox.android"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.rdio.android.ui"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.spotify.mobile.android.ui"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "deezer.android.app"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "de.simfy.androidapp"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.mog.android"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.pandora.android"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "fm.last.android"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "com.slacker.radio"

    aput-object v2, v0, v1

    .restart local v0       #autoAddList:[Ljava/lang/String;
    goto/16 :goto_0

    .line 2339
    :sswitch_5
    const/16 v1, 0xe

    new-array v0, v1, [Ljava/lang/String;

    .end local v0           #autoAddList:[Ljava/lang/String;
    const-string v1, "com.melodis.midomiMusicIdentifier"

    aput-object v1, v0, v3

    const-string v1, "com.melodis.midomiMusicIdentifier.freemium"

    aput-object v1, v0, v4

    const-string v1, "com.amazon.mp3"

    aput-object v1, v0, v5

    const-string v1, "uk.co.sevendigital.android"

    aput-object v1, v0, v6

    const-string v1, "com.skysoft.kkbox.android"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "com.google.android.music"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.rdio.android.ui"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.spotify.mobile.android.ui"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "deezer.android.app"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "de.simfy.androidapp"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.mog.android"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.pandora.android"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "fm.last.android"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "com.slacker.radio"

    aput-object v2, v0, v1

    .line 2357
    .restart local v0       #autoAddList:[Ljava/lang/String;
    goto/16 :goto_0

    .line 2382
    :cond_2
    iget-object v1, p0, Lcom/htc/music/LandingPageActivity;->mPhoneCID:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/htc/music/LandingPageActivity;->isOrangeFRSku(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2383
    const/16 v1, 0xd

    new-array v0, v1, [Ljava/lang/String;

    .end local v0           #autoAddList:[Ljava/lang/String;
    const-string v1, "com.melodis.midomiMusicIdentifier"

    aput-object v1, v0, v3

    const-string v1, "com.melodis.midomiMusicIdentifier.freemium"

    aput-object v1, v0, v4

    const-string v1, "com.amazon.mp3"

    aput-object v1, v0, v5

    const-string v1, "uk.co.sevendigital.android"

    aput-object v1, v0, v6

    const-string v1, "com.skysoft.kkbox.android"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "com.rdio.android.ui"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.spotify.mobile.android.ui"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "deezer.android.app"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "de.simfy.androidapp"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.mog.android"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.pandora.android"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "fm.last.android"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.slacker.radio"

    aput-object v2, v0, v1

    .restart local v0       #autoAddList:[Ljava/lang/String;
    goto/16 :goto_0

    .line 2401
    :cond_3
    const/16 v1, 0xf

    new-array v0, v1, [Ljava/lang/String;

    .end local v0           #autoAddList:[Ljava/lang/String;
    const-string v1, "com.melodis.midomiMusicIdentifier"

    aput-object v1, v0, v3

    const-string v1, "com.melodis.midomiMusicIdentifier.freemium"

    aput-object v1, v0, v4

    const-string v1, "radiotime.player"

    aput-object v1, v0, v5

    const-string v1, "tunein.player"

    aput-object v1, v0, v6

    const-string v1, "com.amazon.mp3"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "uk.co.sevendigital.android"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.skysoft.kkbox.android"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.rdio.android.ui"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.spotify.mobile.android.ui"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "deezer.android.app"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "de.simfy.androidapp"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.mog.android"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.pandora.android"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "fm.last.android"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "com.slacker.radio"

    aput-object v2, v0, v1

    .restart local v0       #autoAddList:[Ljava/lang/String;
    goto/16 :goto_0

    .line 2232
    nop

    :sswitch_data_0
    .sparse-switch
        0x38 -> :sswitch_4
        0x73 -> :sswitch_3
        0x9b -> :sswitch_5
        0x9f -> :sswitch_2
        0xa8 -> :sswitch_0
        0xa9 -> :sswitch_1
    .end sparse-switch
.end method

.method private getLibraryIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 2038
    const/4 v0, 0x0

    .line 2039
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/htc/music/LandingPageActivity;->getParent()Landroid/app/Activity;

    move-result-object v1

    .line 2040
    .local v1, parent:Landroid/app/Activity;
    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    if-eqz v2, :cond_0

    .line 2041
    check-cast v1, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    .end local v1           #parent:Landroid/app/Activity;
    invoke-virtual {v1}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getLastCategoryIntent()Landroid/content/Intent;

    move-result-object v0

    .line 2046
    :goto_0
    return-object v0

    .line 2043
    .restart local v1       #parent:Landroid/app/Activity;
    :cond_0
    const-string v2, "[LandingPage]"

    const-string v3, "can\'t find MusicBrowserTabActivity as parent!!"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getResolveInfo(Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;
    .locals 6
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 2004
    invoke-virtual {p0}, Lcom/htc/music/LandingPageActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 2005
    .local v1, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v1, p1, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 2006
    .local v2, resolveInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v2, :cond_0

    .line 2007
    const-string v4, "[LandingPage]"

    const-string v5, "getResolveInfo, resolveInfoList is null"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2019
    :goto_0
    return-object v3

    .line 2010
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 2011
    .local v0, length:I
    if-gtz v0, :cond_1

    .line 2012
    const-string v4, "[LandingPage]"

    const-string v5, "getResolveInfo, There\'s no app to match the launch intent"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2015
    :cond_1
    const/4 v3, 0x1

    if-le v0, v3, :cond_2

    .line 2016
    const-string v3, "[LandingPage]"

    const-string v4, "getResolveInfo, The intent will launch more than one app"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2019
    :cond_2
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    goto :goto_0
.end method

.method private getUpdatedAddList()[Ljava/lang/String;
    .locals 8

    .prologue
    .line 703
    iget-object v5, p0, Lcom/htc/music/LandingPageActivity;->mPreferences:Landroid/content/SharedPreferences;

    const-string v6, "removelist"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 704
    .local v4, removeListStr:Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/htc/music/LandingPageActivity;->strToStrArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 706
    .local v3, removeList:[Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/music/LandingPageActivity;->mAutoAddList:[Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/htc/music/LandingPageActivity;->strArrayToStr([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 708
    .local v0, autoAddStr:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 709
    array-length v1, v3

    .line 710
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 711
    aget-object v5, v3, v2

    if-eqz v5, :cond_0

    aget-object v5, v3, v2

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 712
    aget-object v5, v3, v2

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 710
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 717
    .end local v1           #count:I
    .end local v2           #i:I
    :cond_1
    invoke-direct {p0, v0}, Lcom/htc/music/LandingPageActivity;->strToStrArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private hideRecentlyAlbumDialogs()V
    .locals 1

    .prologue
    .line 2032
    invoke-virtual {p0}, Lcom/htc/music/LandingPageActivity;->hideHtcContextMenu()V

    .line 2033
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/music/LandingPageActivity;->removeDialog(I)V

    .line 2034
    const/16 v0, 0x25a

    invoke-virtual {p0, v0}, Lcom/htc/music/LandingPageActivity;->removeDialog(I)V

    .line 2035
    return-void
.end method

.method private initConstant()V
    .locals 3

    .prologue
    .line 667
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 668
    .local v0, option:Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 669
    invoke-virtual {p0}, Lcom/htc/music/LandingPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020057

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 670
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v1, p0, Lcom/htc/music/LandingPageActivity;->mLuanchItemBgWidth:I

    .line 671
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v1, p0, Lcom/htc/music/LandingPageActivity;->mLuanchItemBgHeight:I

    .line 672
    invoke-virtual {p0}, Lcom/htc/music/LandingPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2080078

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 673
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v1, p0, Lcom/htc/music/LandingPageActivity;->mSmallIconWidth:I

    .line 674
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v1, p0, Lcom/htc/music/LandingPageActivity;->mSmallIconHeight:I

    .line 675
    invoke-direct {p0}, Lcom/htc/music/LandingPageActivity;->getAutoAddList()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/LandingPageActivity;->mAutoAddList:[Ljava/lang/String;

    .line 676
    return-void
.end method

.method private initPreloadAutoDetectTypeMap()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x2

    .line 1105
    invoke-direct {p0}, Lcom/htc/music/LandingPageActivity;->isVerizonSku()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1106
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mPreloadAutoDetectTypeMap:Ljava/util/HashMap;

    const-string v1, "com.htc.vmm"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1109
    :cond_0
    invoke-direct {p0}, Lcom/htc/music/LandingPageActivity;->isVodaFoneSku()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1110
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mPreloadAutoDetectTypeMap:Ljava/util/HashMap;

    const-string v1, "com.vodafone.android.app.music"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1113
    :cond_1
    invoke-direct {p0}, Lcom/htc/music/LandingPageActivity;->isTelstraSku()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1114
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mPreloadAutoDetectTypeMap:Ljava/util/HashMap;

    const-string v1, "com.htc.bpmrss"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1117
    :cond_2
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mPreloadAutoDetectTypeMap:Ljava/util/HashMap;

    const-string v1, "com.melodis.midomiMusicIdentifier"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1118
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mPreloadAutoDetectTypeMap:Ljava/util/HashMap;

    const-string v1, "com.melodis.midomiMusicIdentifier.freemium"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1120
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mPhoneCID:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/htc/music/LandingPageActivity;->isOrangeFRSku(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/htc/music/LandingPageActivity;->isTMOUSSku()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1121
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mPreloadAutoDetectTypeMap:Ljava/util/HashMap;

    const-string v1, "radiotime.player"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1122
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mPreloadAutoDetectTypeMap:Ljava/util/HashMap;

    const-string v1, "tunein.player"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1125
    :cond_3
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mPreloadAutoDetectTypeMap:Ljava/util/HashMap;

    const-string v1, "com.amazon.mp3"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1126
    invoke-direct {p0}, Lcom/htc/music/LandingPageActivity;->isZdigital()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1127
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mPreloadAutoDetectTypeMap:Ljava/util/HashMap;

    const-string v1, "au.com.zdigital.android"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1131
    :goto_0
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mPreloadAutoDetectTypeMap:Ljava/util/HashMap;

    const-string v1, "com.skysoft.kkbox.android"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1133
    invoke-direct {p0}, Lcom/htc/music/LandingPageActivity;->isTMOUSSku()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1134
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mPreloadAutoDetectTypeMap:Ljava/util/HashMap;

    const-string v1, "com.google.android.music"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1137
    :cond_4
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mPreloadAutoDetectTypeMap:Ljava/util/HashMap;

    const-string v1, "com.rdio.android.ui"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1138
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mPreloadAutoDetectTypeMap:Ljava/util/HashMap;

    const-string v1, "com.spotify.mobile.android.ui"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1139
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mPreloadAutoDetectTypeMap:Ljava/util/HashMap;

    const-string v1, "deezer.android.app"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1140
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mPreloadAutoDetectTypeMap:Ljava/util/HashMap;

    const-string v1, "de.simfy.androidapp"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1141
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mPreloadAutoDetectTypeMap:Ljava/util/HashMap;

    const-string v1, "com.mog.android"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1142
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mPreloadAutoDetectTypeMap:Ljava/util/HashMap;

    const-string v1, "com.pandora.android"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1143
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mPreloadAutoDetectTypeMap:Ljava/util/HashMap;

    const-string v1, "fm.last.android"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1144
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mPreloadAutoDetectTypeMap:Ljava/util/HashMap;

    const-string v1, "com.slacker.radio"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1146
    invoke-direct {p0}, Lcom/htc/music/LandingPageActivity;->isChinaSku()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1147
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mPreloadAutoDetectTypeMap:Ljava/util/HashMap;

    const-string v1, "com.douban.radio"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1148
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mPreloadAutoDetectTypeMap:Ljava/util/HashMap;

    const-string v1, "cn.kuwo.player"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1149
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mPreloadAutoDetectTypeMap:Ljava/util/HashMap;

    const-string v1, "com.tencent.qqmusic"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1150
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mPreloadAutoDetectTypeMap:Ljava/util/HashMap;

    const-string v1, "cn.sina.music"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1152
    :cond_5
    return-void

    .line 1129
    :cond_6
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mPreloadAutoDetectTypeMap:Ljava/util/HashMap;

    const-string v1, "uk.co.sevendigital.android"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method private initPreloadMap()V
    .locals 8

    .prologue
    const v7, 0x7f020043

    const/high16 v6, 0x400

    .line 1022
    invoke-direct {p0}, Lcom/htc/music/LandingPageActivity;->isVerizonSku()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1023
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mPreloadIntentMap:Ljava/util/HashMap;

    const-string v3, "com.htc.vmm"

    invoke-static {}, Lcom/htc/music/util/MusicUtils;->getLaunchVMMIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1024
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mPreloadIconMap:Ljava/util/HashMap;

    const-string v3, "com.htc.vmm"

    const v4, 0x7f02004e

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1028
    :cond_0
    invoke-direct {p0}, Lcom/htc/music/LandingPageActivity;->isVodaFoneSku()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1029
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1030
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "vfmusic://"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1031
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mPreloadIntentMap:Ljava/util/HashMap;

    const-string v3, "com.vodafone.android.app.music"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1032
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mPreloadIconMap:Ljava/util/HashMap;

    const-string v3, "com.vodafone.android.app.music"

    const v4, 0x7f02004d

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1036
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    invoke-direct {p0}, Lcom/htc/music/LandingPageActivity;->isTelstraSku()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1037
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mPreloadIntentMap:Ljava/util/HashMap;

    const-string v3, "com.htc.bpmrss"

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.htc.bpmrss.action.VIEW"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1038
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mPreloadIconMap:Ljava/util/HashMap;

    const-string v3, "com.htc.bpmrss"

    const v4, 0x7f020045

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1043
    :cond_2
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.soundhound.android.ID_NOW_EXTERNAL"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.soundhound.android.EXTRA_ID_NOW_TOKEN"

    const-string v4, "htc"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.melodis.midomiMusicIdentifier"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1047
    .local v0, i:Landroid/content/Intent;
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mPreloadIntentMap:Ljava/util/HashMap;

    const-string v3, "com.melodis.midomiMusicIdentifier"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1048
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mPreloadIconMap:Ljava/util/HashMap;

    const-string v3, "com.melodis.midomiMusicIdentifier"

    const v4, 0x7f02004a

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1051
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.soundhound.android.ID_NOW_EXTERNAL"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.soundhound.android.EXTRA_ID_NOW_TOKEN"

    const-string v4, "htc"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.melodis.midomiMusicIdentifier.freemium"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1055
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mPreloadIntentMap:Ljava/util/HashMap;

    const-string v3, "com.melodis.midomiMusicIdentifier.freemium"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1056
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mPreloadIconMap:Ljava/util/HashMap;

    const-string v3, "com.melodis.midomiMusicIdentifier.freemium"

    const v4, 0x7f020049

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1058
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mPhoneCID:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/htc/music/LandingPageActivity;->isOrangeFRSku(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-direct {p0}, Lcom/htc/music/LandingPageActivity;->isTMOUSSku()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1060
    invoke-virtual {p0}, Lcom/htc/music/LandingPageActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "radiotime.player"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1061
    .restart local v1       #intent:Landroid/content/Intent;
    if-eqz v1, :cond_3

    .line 1062
    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1064
    :cond_3
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mPreloadIntentMap:Ljava/util/HashMap;

    const-string v3, "radiotime.player"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1065
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mPreloadIconMap:Ljava/util/HashMap;

    const-string v3, "radiotime.player"

    const v4, 0x7f02004c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1068
    invoke-virtual {p0}, Lcom/htc/music/LandingPageActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "tunein.player"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1069
    if-eqz v1, :cond_4

    .line 1070
    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1072
    :cond_4
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mPreloadIntentMap:Ljava/util/HashMap;

    const-string v3, "tunein.player"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1073
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mPreloadIconMap:Ljava/util/HashMap;

    const-string v3, "tunein.player"

    const v4, 0x7f02004b

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1077
    .end local v1           #intent:Landroid/content/Intent;
    :cond_5
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mPreloadIntentMap:Ljava/util/HashMap;

    const-string v3, "com.amazon.mp3"

    invoke-static {}, Lcom/htc/music/util/MusicUtils;->getLaunchAmazonIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1078
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mPreloadIconMap:Ljava/util/HashMap;

    const-string v3, "com.amazon.mp3"

    const v4, 0x7f020044

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1080
    invoke-direct {p0}, Lcom/htc/music/LandingPageActivity;->isZdigital()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1082
    invoke-virtual {p0}, Lcom/htc/music/LandingPageActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "au.com.zdigital.android"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1083
    .restart local v1       #intent:Landroid/content/Intent;
    if-eqz v1, :cond_6

    .line 1084
    const-string v2, "uk.co.sevendigital.android.intent.action.VIEW_SHOP"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1086
    :cond_6
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mPreloadIntentMap:Ljava/util/HashMap;

    const-string v3, "au.com.zdigital.android"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1087
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mPreloadIconMap:Ljava/util/HashMap;

    const-string v3, "au.com.zdigital.android"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1099
    :goto_0
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mPreloadIntentMap:Ljava/util/HashMap;

    const-string v3, "com.skysoft.kkbox.android"

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.skysoft.kkbox.android.HOME_VIEWER"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1100
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mPreloadIconMap:Ljava/util/HashMap;

    const-string v3, "com.skysoft.kkbox.android"

    const v4, 0x7f020048

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1101
    return-void

    .line 1090
    .end local v1           #intent:Landroid/content/Intent;
    :cond_7
    invoke-virtual {p0}, Lcom/htc/music/LandingPageActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "uk.co.sevendigital.android"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1091
    .restart local v1       #intent:Landroid/content/Intent;
    if-eqz v1, :cond_8

    .line 1092
    const-string v2, "uk.co.sevendigital.android.intent.action.VIEW_SHOP"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1094
    :cond_8
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mPreloadIntentMap:Ljava/util/HashMap;

    const-string v3, "uk.co.sevendigital.android"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1095
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mPreloadIconMap:Ljava/util/HashMap;

    const-string v3, "uk.co.sevendigital.android"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private isCarModeExist()Z
    .locals 3

    .prologue
    .line 2023
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2024
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.AutoMotive"

    const-string v2, "com.htc.AutoMotive.carousel.MainActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2025
    invoke-direct {p0, v0}, Lcom/htc/music/LandingPageActivity;->appExist(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2026
    const/4 v1, 0x1

    .line 2028
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isChinaSku()Z
    .locals 2

    .prologue
    .line 2442
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isOrangeFRSku(Ljava/lang/String;)Z
    .locals 1
    .parameter "phoneCID"

    .prologue
    .line 2457
    if-eqz p1, :cond_0

    .line 2458
    const-string v0, "ORANG202"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2459
    const/4 v0, 0x1

    .line 2463
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTMOUSSku()Z
    .locals 2

    .prologue
    .line 2453
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x9b

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTelstraSku()Z
    .locals 2

    .prologue
    .line 2438
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x9f

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isVerizonSku()Z
    .locals 2

    .prologue
    .line 2430
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xa8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isVodaFoneSku()Z
    .locals 2

    .prologue
    .line 2434
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xa9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isZdigital()Z
    .locals 2

    .prologue
    .line 2446
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x73

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x9f

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x38

    if-ne v0, v1, :cond_1

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadRecentAlbumIdListFromPref(Landroid/content/SharedPreferences;)[I
    .locals 6
    .parameter "sharedPreferences"

    .prologue
    .line 2161
    const-string v4, "[LandingPage]"

    const-string v5, "loadRecentAlbumIdListFromPref +"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2164
    const/4 v2, 0x0

    .line 2165
    .local v2, newstyle:Z
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/wrap/android/os/HtcWrapFileUtils;->getFatVolumeId(Ljava/lang/String;)I

    move-result v0

    .line 2166
    .local v0, cardId:I
    xor-int/lit8 v1, v0, -0x1

    .line 2167
    .local v1, id:I
    const-string v4, "cardid"

    invoke-interface {p1, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2168
    const/4 v2, 0x1

    .line 2169
    const-string v4, "cardid"

    xor-int/lit8 v5, v0, -0x1

    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2171
    :cond_0
    if-ne v1, v0, :cond_1

    .line 2174
    const-string v4, "[LandingPage]"

    const-string v5, "reloadQueueImpl: card id is the same."

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2175
    invoke-direct {p0, p1, v2}, Lcom/htc/music/LandingPageActivity;->loadRecentAlbumList(Landroid/content/SharedPreferences;Z)[I

    move-result-object v3

    .line 2180
    .local v3, retAry:[I
    :goto_0
    const-string v4, "[LandingPage]"

    const-string v5, "loadRecentAlbumIdListFromPref -"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2181
    return-object v3

    .line 2177
    .end local v3           #retAry:[I
    :cond_1
    const/4 v4, 0x0

    new-array v3, v4, [I

    .restart local v3       #retAry:[I
    goto :goto_0
.end method

.method private loadRecentAlbumList(Landroid/content/SharedPreferences;Z)[I
    .locals 14
    .parameter "sharedPreferences"
    .parameter "newstyle"

    .prologue
    .line 2186
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2188
    .local v8, retIntList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const-string v11, "localrecentalbumid"

    const-string v12, ""

    invoke-interface {p1, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2190
    .local v6, q:Ljava/lang/String;
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x1

    if-le v11, v12, :cond_4

    .line 2191
    const-string v11, ";"

    invoke-virtual {v6, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2192
    .local v1, entries:[Ljava/lang/String;
    array-length v4, v1

    .line 2193
    .local v4, len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_4

    .line 2194
    if-eqz p2, :cond_3

    .line 2195
    aget-object v9, v1, v2

    .line 2196
    .local v9, revhex:Ljava/lang/String;
    const/4 v5, 0x0

    .line 2197
    .local v5, n:I
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v3, v11, -0x1

    .local v3, j:I
    :goto_1
    if-ltz v3, :cond_2

    .line 2198
    shl-int/lit8 v5, v5, 0x4

    .line 2199
    invoke-virtual {v9, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2200
    .local v0, c:C
    const/16 v11, 0x30

    if-lt v0, v11, :cond_0

    const/16 v11, 0x39

    if-gt v0, v11, :cond_0

    .line 2201
    add-int/lit8 v11, v0, -0x30

    add-int/2addr v5, v11

    .line 2197
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 2202
    :cond_0
    const/16 v11, 0x61

    if-lt v0, v11, :cond_1

    const/16 v11, 0x66

    if-gt v0, v11, :cond_1

    .line 2203
    add-int/lit8 v11, v0, 0xa

    add-int/lit8 v11, v11, -0x61

    add-int/2addr v5, v11

    goto :goto_2

    .line 2206
    :cond_1
    const/4 v4, 0x0

    .line 2211
    .end local v0           #c:C
    :cond_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2193
    .end local v3           #j:I
    .end local v5           #n:I
    .end local v9           #revhex:Ljava/lang/String;
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2214
    :cond_3
    aget-object v11, v1, v2

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 2220
    .end local v1           #entries:[Ljava/lang/String;
    .end local v2           #i:I
    .end local v4           #len:I
    :cond_4
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    .line 2221
    .local v10, size:I
    const-string v11, "[LandingPage]"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "size = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2222
    new-array v7, v10, [I

    .line 2223
    .local v7, retAry:[I
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_4
    if-ge v2, v10, :cond_5

    .line 2224
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    aput v11, v7, v2

    .line 2223
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 2227
    :cond_5
    return-object v7
.end method

.method private reloadLaunchItemList()V
    .locals 25

    .prologue
    .line 722
    const-string v22, "LandingPage"

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/htc/music/LandingPageActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/music/LandingPageActivity;->mPreferences:Landroid/content/SharedPreferences;

    .line 723
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity;->mPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v22, v0

    const-string v23, "launchitemlist"

    const/16 v24, 0x0

    invoke-interface/range {v22 .. v24}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 724
    .local v13, launchItemListStr:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity;->mPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v22, v0

    const-string v23, "launchtypelist"

    const/16 v24, 0x0

    invoke-interface/range {v22 .. v24}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 725
    .local v17, launchTypeListStr:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity;->mPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v22, v0

    const-string v23, "launchclassnamelist"

    const/16 v24, 0x0

    invoke-interface/range {v22 .. v24}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 734
    .local v10, launchClassNameListStr:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity;->mPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v22, v0

    const-string v23, "removelist"

    const/16 v24, 0x0

    invoke-interface/range {v22 .. v24}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 735
    .local v20, removeListStr:Ljava/lang/String;
    if-eqz v20, :cond_0

    .line 736
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity;->mRemoveList:Ljava/lang/StringBuilder;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 739
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/LandingPageActivity;->getUpdatedAddList()[Ljava/lang/String;

    move-result-object v3

    .line 741
    .local v3, addList:[Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    const/16 v22, 0x400

    move/from16 v0, v22

    invoke-direct {v14, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 742
    .local v14, launchItemListStrBdr:Ljava/lang/StringBuilder;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/LandingPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0700f2

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 743
    const-string v22, ";"

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 744
    new-instance v18, Ljava/lang/StringBuilder;

    const/16 v22, 0x100

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 745
    .local v18, launchTypeListStrBdr:Ljava/lang/StringBuilder;
    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 746
    const-string v22, ";"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 747
    new-instance v11, Ljava/lang/StringBuilder;

    const/16 v22, 0x400

    move/from16 v0, v22

    invoke-direct {v11, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 748
    .local v11, launchClassNameListStrBdr:Ljava/lang/StringBuilder;
    const-string v22, " ;"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 749
    if-eqz v13, :cond_1

    .line 750
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 751
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 752
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 755
    :cond_1
    array-length v4, v3

    .line 756
    .local v4, count:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v4, :cond_3

    .line 757
    aget-object v22, v3, v5

    const-string v23, ";"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v22

    if-gez v22, :cond_2

    .line 758
    aget-object v22, v3, v5

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 759
    const-string v22, ";"

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 760
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity;->mPreloadAutoDetectTypeMap:Ljava/util/HashMap;

    move-object/from16 v22, v0

    aget-object v23, v3, v5

    invoke-virtual/range {v22 .. v23}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 761
    const-string v22, ";"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 762
    const-string v22, " "

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 763
    const-string v22, ";"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 756
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 767
    :cond_3
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/htc/music/LandingPageActivity;->strToStrArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 768
    .local v12, launchItemList:[Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/htc/music/LandingPageActivity;->strToStrArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 769
    .local v16, launchTypeList:[Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/htc/music/LandingPageActivity;->strToStrArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 771
    .local v9, launchClassNameList:[Ljava/lang/String;
    array-length v0, v12

    move/from16 v19, v0

    .line 772
    .local v19, len:I
    const/4 v5, 0x0

    :goto_1
    move/from16 v0, v19

    if-ge v5, v0, :cond_a

    .line 773
    const/4 v7, 0x0

    .line 774
    .local v7, intent:Landroid/content/Intent;
    aget-object v22, v16, v5

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 775
    .local v15, launchType:I
    const/4 v8, 0x0

    .line 776
    .local v8, item:Lcom/htc/music/LandingPageActivity$LaunchItem;
    const/16 v21, 0x0

    .line 777
    .local v21, resolveInfo:Landroid/content/pm/ResolveInfo;
    packed-switch v15, :pswitch_data_0

    .line 772
    :cond_4
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 779
    :pswitch_0
    new-instance v8, Lcom/htc/music/LandingPageActivity$LaunchItem;

    .end local v8           #item:Lcom/htc/music/LandingPageActivity$LaunchItem;
    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/htc/music/LandingPageActivity$LaunchItem;-><init>(Lcom/htc/music/LandingPageActivity;)V

    .line 780
    .restart local v8       #item:Lcom/htc/music/LandingPageActivity$LaunchItem;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/LandingPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x2080078

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v22

    move-object/from16 v0, v22

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setIcon(Landroid/graphics/drawable/Drawable;)V
    invoke-static {v8, v0}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2100(Lcom/htc/music/LandingPageActivity$LaunchItem;Landroid/graphics/drawable/Drawable;)V

    .line 781
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/LandingPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0700f2

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setName(Ljava/lang/String;)V
    invoke-static {v8, v0}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2200(Lcom/htc/music/LandingPageActivity$LaunchItem;Ljava/lang/String;)V

    .line 782
    const/16 v22, 0x1

    move/from16 v0, v22

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setInnerItemEnable(Z)V
    invoke-static {v8, v0}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2300(Lcom/htc/music/LandingPageActivity$LaunchItem;Z)V

    .line 783
    const/16 v22, 0x0

    move/from16 v0, v22

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setItemType(I)V
    invoke-static {v8, v0}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2400(Lcom/htc/music/LandingPageActivity$LaunchItem;I)V

    .line 784
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/LandingPageActivity;->getLibraryIntent()Landroid/content/Intent;

    move-result-object v22

    move-object/from16 v0, v22

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setLaunchIntent(Landroid/content/Intent;)V
    invoke-static {v8, v0}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$1300(Lcom/htc/music/LandingPageActivity$LaunchItem;Landroid/content/Intent;)V

    .line 785
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 788
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity;->mPreloadIntentMap:Ljava/util/HashMap;

    move-object/from16 v22, v0

    aget-object v23, v12, v5

    invoke-virtual/range {v22 .. v23}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #intent:Landroid/content/Intent;
    check-cast v7, Landroid/content/Intent;

    .line 789
    .restart local v7       #intent:Landroid/content/Intent;
    if-eqz v7, :cond_4

    .line 790
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/htc/music/LandingPageActivity;->getResolveInfo(Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;

    move-result-object v21

    .line 791
    if-eqz v21, :cond_4

    .line 792
    new-instance v8, Lcom/htc/music/LandingPageActivity$LaunchItem;

    .end local v8           #item:Lcom/htc/music/LandingPageActivity$LaunchItem;
    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/htc/music/LandingPageActivity$LaunchItem;-><init>(Lcom/htc/music/LandingPageActivity;)V

    .line 793
    .restart local v8       #item:Lcom/htc/music/LandingPageActivity$LaunchItem;
    const/high16 v22, 0x1000

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v22

    move-object/from16 v0, v22

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setLaunchIntent(Landroid/content/Intent;)V
    invoke-static {v8, v0}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$1300(Lcom/htc/music/LandingPageActivity$LaunchItem;Landroid/content/Intent;)V

    .line 794
    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setItemType(I)V
    invoke-static {v8, v15}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2400(Lcom/htc/music/LandingPageActivity$LaunchItem;I)V

    .line 795
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity;->mPreloadIconMap:Ljava/util/HashMap;

    move-object/from16 v22, v0

    aget-object v23, v12, v5

    invoke-virtual/range {v22 .. v23}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    if-eqz v22, :cond_5

    .line 796
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity;->mPreloadIconMap:Ljava/util/HashMap;

    move-object/from16 v22, v0

    aget-object v23, v12, v5

    invoke-virtual/range {v22 .. v23}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move/from16 v0, v22

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setIcon(I)V
    invoke-static {v8, v0}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2500(Lcom/htc/music/LandingPageActivity$LaunchItem;I)V

    .line 798
    :cond_5
    aget-object v22, v12, v5

    move-object/from16 v0, v22

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setPreloadId(Ljava/lang/String;)V
    invoke-static {v8, v0}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2600(Lcom/htc/music/LandingPageActivity$LaunchItem;Ljava/lang/String;)V

    .line 799
    const-string v22, "com.melodis.midomiMusicIdentifier"

    aget-object v23, v12, v5

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_6

    const-string v22, "com.melodis.midomiMusicIdentifier.freemium"

    aget-object v23, v12, v5

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_7

    .line 801
    :cond_6
    const/16 v22, 0x1

    move/from16 v0, v22

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setSoundHoundEnable(Z)V
    invoke-static {v8, v0}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2700(Lcom/htc/music/LandingPageActivity$LaunchItem;Z)V

    .line 803
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v8, v1}, Lcom/htc/music/LandingPageActivity;->setNameAndIcon(Lcom/htc/music/LandingPageActivity$LaunchItem;Landroid/content/pm/ResolveInfo;)V

    .line 804
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity;->mPreloadList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 806
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity;->mPreloadList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 807
    .local v6, insertIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-gt v6, v0, :cond_8

    .line 808
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v6, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_2

    .line 810
    :cond_8
    const-string v22, "[LandingPage]"

    const-string v23, "reloadLaunchItemList, Insert index > mLaunchItemList size"

    invoke-static/range {v22 .. v23}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 817
    .end local v6           #insertIndex:I
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/LandingPageActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v22

    aget-object v23, v12, v5

    invoke-virtual/range {v22 .. v23}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 818
    if-eqz v7, :cond_4

    .line 819
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/htc/music/LandingPageActivity;->getResolveInfo(Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;

    move-result-object v21

    .line 820
    if-eqz v21, :cond_4

    .line 821
    new-instance v8, Lcom/htc/music/LandingPageActivity$LaunchItem;

    .end local v8           #item:Lcom/htc/music/LandingPageActivity$LaunchItem;
    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/htc/music/LandingPageActivity$LaunchItem;-><init>(Lcom/htc/music/LandingPageActivity;)V

    .line 822
    .restart local v8       #item:Lcom/htc/music/LandingPageActivity$LaunchItem;
    const/high16 v22, 0x1000

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v22

    move-object/from16 v0, v22

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setLaunchIntent(Landroid/content/Intent;)V
    invoke-static {v8, v0}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$1300(Lcom/htc/music/LandingPageActivity$LaunchItem;Landroid/content/Intent;)V

    .line 823
    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setItemType(I)V
    invoke-static {v8, v15}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2400(Lcom/htc/music/LandingPageActivity$LaunchItem;I)V

    .line 824
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v8, v1}, Lcom/htc/music/LandingPageActivity;->setNameAndIcon(Lcom/htc/music/LandingPageActivity$LaunchItem;Landroid/content/pm/ResolveInfo;)V

    .line 825
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity;->mAutoDetectList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 826
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 831
    :pswitch_3
    new-instance v7, Landroid/content/Intent;

    .end local v7           #intent:Landroid/content/Intent;
    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 832
    .restart local v7       #intent:Landroid/content/Intent;
    aget-object v22, v12, v5

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 833
    aget-object v22, v12, v5

    aget-object v23, v9, v5

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 834
    if-eqz v7, :cond_4

    .line 835
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/htc/music/LandingPageActivity;->getResolveInfo(Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;

    move-result-object v21

    .line 836
    if-eqz v21, :cond_4

    .line 837
    new-instance v8, Lcom/htc/music/LandingPageActivity$LaunchItem;

    .end local v8           #item:Lcom/htc/music/LandingPageActivity$LaunchItem;
    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/htc/music/LandingPageActivity$LaunchItem;-><init>(Lcom/htc/music/LandingPageActivity;)V

    .line 838
    .restart local v8       #item:Lcom/htc/music/LandingPageActivity$LaunchItem;
    const/high16 v22, 0x1000

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v22

    move-object/from16 v0, v22

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setLaunchIntent(Landroid/content/Intent;)V
    invoke-static {v8, v0}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$1300(Lcom/htc/music/LandingPageActivity$LaunchItem;Landroid/content/Intent;)V

    .line 839
    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setItemType(I)V
    invoke-static {v8, v15}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2400(Lcom/htc/music/LandingPageActivity$LaunchItem;I)V

    .line 840
    const-string v22, "com.htc.fm"

    aget-object v23, v12, v5

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_9

    .line 841
    const v22, 0x7f020046

    move/from16 v0, v22

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setIcon(I)V
    invoke-static {v8, v0}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2500(Lcom/htc/music/LandingPageActivity$LaunchItem;I)V

    .line 843
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v8, v1}, Lcom/htc/music/LandingPageActivity;->setNameAndIcon(Lcom/htc/music/LandingPageActivity$LaunchItem;Landroid/content/pm/ResolveInfo;)V

    .line 844
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity;->mUserAddList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 845
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 852
    .end local v7           #intent:Landroid/content/Intent;
    .end local v8           #item:Lcom/htc/music/LandingPageActivity$LaunchItem;
    .end local v15           #launchType:I
    .end local v21           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_a
    return-void

    .line 777
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private reloadRecentAlbum(Z)V
    .locals 13
    .parameter "fromPref"

    .prologue
    const/16 v6, 0x2711

    const/16 v5, 0x80

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2092
    const/4 v11, 0x0

    .line 2093
    .local v11, newRecentAlbumIds:[I
    const/4 v9, 0x0

    .line 2094
    .local v9, failFromPref:Z
    if-nez p1, :cond_4

    .line 2096
    :try_start_0
    iget-object v3, p0, Lcom/htc/music/LandingPageActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v3, :cond_1

    .line 2097
    const-string v3, "[LandingPage]"

    const-string v4, "reloadRecentAlbum, mService = null"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2158
    :cond_0
    :goto_0
    return-void

    .line 2101
    :cond_1
    iget-object v3, p0, Lcom/htc/music/LandingPageActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->getRecentAlbumId()[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 2111
    :goto_1
    if-nez v11, :cond_2

    .line 2112
    const-string v3, "[LandingPage]"

    const-string v4, "recentAlbumIds is null"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2115
    :cond_2
    if-nez v9, :cond_c

    .line 2117
    iget-object v3, p0, Lcom/htc/music/LandingPageActivity;->mRecentAlbumIds:[I

    invoke-static {v3, v11}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/htc/music/LandingPageActivity;->mRecentAlbumList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v0, :cond_3

    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mRecentAlbumList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/LandingPageActivity$BaseItem;

    #calls: Lcom/htc/music/LandingPageActivity$BaseItem;->getId()I
    invoke-static {v0}, Lcom/htc/music/LandingPageActivity$BaseItem;->access$4100(Lcom/htc/music/LandingPageActivity$BaseItem;)I

    move-result v0

    const/4 v3, -0x2

    if-eq v0, v3, :cond_7

    .line 2120
    :cond_3
    const-string v0, "[LandingPage]"

    const-string v1, "Recent album didn\'t change."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2102
    :catch_0
    move-exception v8

    .line 2103
    .local v8, e:Landroid/os/RemoteException;
    const-string v3, "[LandingPage]"

    const-string v4, "Cannot get recent album ID from service."

    invoke-static {v3, v4, v8}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 2107
    .end local v8           #e:Landroid/os/RemoteException;
    :cond_4
    const-string v3, "Music"

    const/4 v4, 0x5

    invoke-virtual {p0, v3, v4}, Lcom/htc/music/LandingPageActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/htc/music/LandingPageActivity;->loadRecentAlbumIdListFromPref(Landroid/content/SharedPreferences;)[I

    move-result-object v11

    .line 2108
    if-eqz v11, :cond_5

    array-length v3, v11

    if-nez v3, :cond_6

    :cond_5
    move v9, v0

    :goto_2
    goto :goto_1

    :cond_6
    move v9, v1

    goto :goto_2

    .line 2124
    :cond_7
    iput-object v11, p0, Lcom/htc/music/LandingPageActivity;->mRecentAlbumIds:[I

    .line 2125
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mRecentAlbumIds:[I

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mRecentAlbumIds:[I

    array-length v0, v0

    if-gtz v0, :cond_9

    .line 2126
    :cond_8
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2127
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 2128
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 2133
    :cond_9
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2134
    .local v12, where:Ljava/lang/StringBuilder;
    const-string v0, "_id"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2135
    const-string v0, " IN ("

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2136
    const/4 v10, 0x0

    .local v10, i:I
    :goto_3
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mRecentAlbumIds:[I

    array-length v0, v0

    if-ge v10, v0, :cond_b

    .line 2137
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mRecentAlbumIds:[I

    aget v0, v0, v10

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2138
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mRecentAlbumIds:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ge v10, v0, :cond_a

    .line 2139
    const-string v0, ","

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2136
    :cond_a
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 2142
    :cond_b
    const-string v0, ")"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2144
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mRecentAlbumQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    sget-object v3, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/htc/music/LandingPageActivity;->mAlbumCols:[Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/htc/music/util/DlArtAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2147
    .end local v10           #i:I
    .end local v12           #where:Ljava/lang/StringBuilder;
    :cond_c
    const-string v7, "album COLLATE NOCASE ASC LIMIT 0,8"

    .line 2148
    .local v7, sortOrder:Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2149
    .restart local v12       #where:Ljava/lang/StringBuilder;
    const-string v0, "album != \'\'"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2150
    const-string v0, " AND album != \'<unknown>\'"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2152
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mRecentAlbumQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    sget-object v3, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/htc/music/LandingPageActivity;->mAlbumCols:[Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/htc/music/util/DlArtAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private reloadRecentAlbumAsync()V
    .locals 2

    .prologue
    const/16 v1, 0x2711

    .line 2067
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mNonUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2068
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mNonUIHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2069
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mNonUIHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2071
    :cond_0
    return-void
.end method

.method private saveLaunchItemList()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 855
    const-string v3, "LandingPage"

    const/4 v4, 0x3

    invoke-virtual {p0, v3, v4}, Lcom/htc/music/LandingPageActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/LandingPageActivity;->mPreferences:Landroid/content/SharedPreferences;

    .line 856
    iget-object v3, p0, Lcom/htc/music/LandingPageActivity;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 857
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v3, "launchitemcount"

    iget-object v4, p0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 858
    const-string v3, "preloadlistcount"

    iget-object v4, p0, Lcom/htc/music/LandingPageActivity;->mPreloadList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 859
    const-string v3, "autodetectlistcount"

    iget-object v4, p0, Lcom/htc/music/LandingPageActivity;->mAutoDetectList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 861
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x400

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 862
    .local v2, strBuilder:Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 866
    iget-object v3, p0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/music/LandingPageActivity$LaunchItem;

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getItemType()I
    invoke-static {v3}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$1600(Lcom/htc/music/LandingPageActivity$LaunchItem;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 867
    iget-object v3, p0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/music/LandingPageActivity$LaunchItem;

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getPreloadId()Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$1700(Lcom/htc/music/LandingPageActivity$LaunchItem;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 871
    :goto_1
    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 862
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 869
    :cond_0
    iget-object v3, p0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/music/LandingPageActivity$LaunchItem;

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getLaunchIntent()Landroid/content/Intent;
    invoke-static {v3}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$1500(Lcom/htc/music/LandingPageActivity$LaunchItem;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 873
    :cond_1
    const-string v3, "launchitemlist"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 875
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v2, v5, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 876
    const/4 v1, 0x1

    :goto_2
    iget-object v3, p0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 877
    iget-object v3, p0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/music/LandingPageActivity$LaunchItem;

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getItemType()I
    invoke-static {v3}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$1600(Lcom/htc/music/LandingPageActivity$LaunchItem;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 878
    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 876
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 880
    :cond_2
    const-string v3, "launchtypelist"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 882
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v2, v5, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 883
    const/4 v1, 0x1

    :goto_3
    iget-object v3, p0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 884
    iget-object v3, p0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/music/LandingPageActivity$LaunchItem;

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getLaunchIntent()Landroid/content/Intent;
    invoke-static {v3}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$1500(Lcom/htc/music/LandingPageActivity$LaunchItem;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 885
    iget-object v3, p0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/music/LandingPageActivity$LaunchItem;

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getLaunchIntent()Landroid/content/Intent;
    invoke-static {v3}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$1500(Lcom/htc/music/LandingPageActivity$LaunchItem;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 889
    :goto_4
    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 883
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 887
    :cond_3
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 891
    :cond_4
    const-string v3, "launchclassnamelist"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 893
    const-string v3, "removelist"

    iget-object v4, p0, Lcom/htc/music/LandingPageActivity;->mRemoveList:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 895
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 896
    return-void
.end method

.method private scaleLaunchIcon(Landroid/widget/ImageView;II)V
    .locals 3
    .parameter "iv"
    .parameter "iconWidth"
    .parameter "iconHeight"

    .prologue
    .line 1174
    iget v2, p0, Lcom/htc/music/LandingPageActivity;->mLuanchItemBgWidth:I

    sub-int/2addr v2, p2

    div-int/lit8 v0, v2, 0x2

    .line 1175
    .local v0, paddingLeft:I
    iget v2, p0, Lcom/htc/music/LandingPageActivity;->mLuanchItemBgHeight:I

    sub-int/2addr v2, p3

    div-int/lit8 v1, v2, 0x2

    .line 1176
    .local v1, paddingTop:I
    invoke-virtual {p1, v0, v1, v0, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 1177
    return-void
.end method

.method private setNameAndIcon(Lcom/htc/music/LandingPageActivity$LaunchItem;Landroid/content/pm/ResolveInfo;)V
    .locals 3
    .parameter "item"
    .parameter "resolveInfo"

    .prologue
    .line 1156
    if-nez p2, :cond_1

    .line 1157
    const-string v1, "[LandingPage]"

    const-string v2, "setNameAndIcon(), resolveInfo is null"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1171
    :cond_0
    :goto_0
    return-void

    .line 1161
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/LandingPageActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1162
    .local v0, pm:Landroid/content/pm/PackageManager;
    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getIconId()I
    invoke-static {p1}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$3200(Lcom/htc/music/LandingPageActivity$LaunchItem;)I

    move-result v1

    if-gtz v1, :cond_2

    .line 1163
    invoke-virtual {p2, v0}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setIcon(Landroid/graphics/drawable/Drawable;)V
    invoke-static {p1, v1}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2100(Lcom/htc/music/LandingPageActivity$LaunchItem;Landroid/graphics/drawable/Drawable;)V

    .line 1166
    :cond_2
    invoke-virtual {p2, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setName(Ljava/lang/String;)V
    invoke-static {p1, v1}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2200(Lcom/htc/music/LandingPageActivity$LaunchItem;Ljava/lang/String;)V

    .line 1168
    const-string v1, "com.htc.vmm"

    iget-object v2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1169
    const v1, 0x7f070003

    invoke-virtual {p0, v1}, Lcom/htc/music/LandingPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setName(Ljava/lang/String;)V
    invoke-static {p1, v1}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2200(Lcom/htc/music/LandingPageActivity$LaunchItem;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private shareMusicText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "szTrackName"
    .parameter "szAlbumName"
    .parameter "szArtistName"

    .prologue
    .line 1986
    invoke-static {p0, p1, p2, p3}, Lcom/htc/music/util/MusicUtils;->getShareMusicText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/LandingPageActivity;->mShareText:Ljava/lang/String;

    .line 1988
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mShareText:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1989
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/music/LandingPageActivity;->mShareText:Ljava/lang/String;

    .line 1993
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/music/LandingPageActivity;->showNewDialog(I)V

    .line 1994
    return-void
.end method

.method private showAlbumOptions()V
    .locals 9

    .prologue
    const v8, 0x204020f

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 1931
    const/4 v2, 0x0

    .line 1932
    .local v2, items:[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 1933
    .local v1, ids:[I
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->CheckDLNAStatus(Landroid/content/Context;)I

    move-result v0

    .line 1934
    .local v0, dlnaMode:I
    if-nez v0, :cond_0

    .line 1936
    new-array v2, v7, [Ljava/lang/CharSequence;

    .end local v2           #items:[Ljava/lang/CharSequence;
    const v3, 0x7f070059

    invoke-virtual {p0, v3}, Lcom/htc/music/LandingPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const v3, 0x7f07005a

    invoke-virtual {p0, v3}, Lcom/htc/music/LandingPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0, v8}, Lcom/htc/music/LandingPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 1940
    .restart local v2       #items:[Ljava/lang/CharSequence;
    new-array v1, v7, [I

    .end local v1           #ids:[I
    fill-array-data v1, :array_0

    .line 1948
    .restart local v1       #ids:[I
    :goto_0
    invoke-virtual {p0}, Lcom/htc/music/LandingPageActivity;->hideHtcContextMenu()V

    .line 1949
    iget-object v3, p0, Lcom/htc/music/LandingPageActivity;->mSelectedAlbumName:Ljava/lang/String;

    invoke-virtual {p0, v3, v2, v1}, Lcom/htc/music/LandingPageActivity;->showHtcContextMenu(Ljava/lang/String;[Ljava/lang/CharSequence;[I)V

    .line 1950
    return-void

    .line 1943
    :cond_0
    new-array v2, v4, [Ljava/lang/CharSequence;

    .end local v2           #items:[Ljava/lang/CharSequence;
    const v3, 0x7f070059

    invoke-virtual {p0, v3}, Lcom/htc/music/LandingPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v8}, Lcom/htc/music/LandingPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 1946
    .restart local v2       #items:[Ljava/lang/CharSequence;
    new-array v1, v4, [I

    .end local v1           #ids:[I
    fill-array-data v1, :array_1

    .restart local v1       #ids:[I
    goto :goto_0

    .line 1940
    :array_0
    .array-data 0x4
        0x17t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
    .end array-data

    .line 1946
    :array_1
    .array-data 0x4
        0x17t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private strArrayToStr([Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "strArray"

    .prologue
    .line 679
    if-nez p1, :cond_0

    .line 680
    const-string v3, "[LandingPage]"

    const-string v4, "strArrayToStr, strArray is null"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    const/4 v3, 0x0

    .line 689
    :goto_0
    return-object v3

    .line 683
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x400

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 684
    .local v2, strBuilder:Ljava/lang/StringBuilder;
    array-length v0, p1

    .line 685
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 686
    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 689
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private strToStrArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .parameter "str"

    .prologue
    .line 693
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 694
    :cond_0
    const-string v1, "[LandingPage]"

    const-string v2, "strToStrArray, str is null or empty"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    const/4 v0, 0x0

    .line 698
    :goto_0
    return-object v0

    .line 697
    :cond_1
    const-string v1, ";"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 698
    .local v0, strArray:[Ljava/lang/String;
    goto :goto_0
.end method

.method private updateLaunchItemsUI()V
    .locals 26

    .prologue
    .line 899
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 900
    .local v8, itemNumber:I
    if-gtz v8, :cond_0

    .line 901
    const-string v21, "[LandingPage]"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "itemNumber = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    :goto_0
    return-void

    .line 904
    :cond_0
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity;->mHeaderViewList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v7, v0, :cond_1

    .line 905
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mList:Lcom/htc/widget/HtcListView;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity;->mHeaderViewList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/view/View;

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->removeHeaderView(Landroid/view/View;)Z

    .line 904
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 907
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity;->mHeaderViewList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->clear()V

    .line 909
    const/16 v21, 0x5

    move/from16 v0, v21

    new-array v15, v0, [I

    fill-array-data v15, :array_0

    .line 910
    .local v15, resNameId:[I
    const/16 v21, 0x5

    move/from16 v0, v21

    new-array v13, v0, [I

    fill-array-data v13, :array_1

    .line 911
    .local v13, resIconId:[I
    const/16 v21, 0x5

    move/from16 v0, v21

    new-array v14, v0, [I

    fill-array-data v14, :array_2

    .line 913
    .local v14, resLayoutId:[I
    const/16 v18, 0x0

    .line 914
    .local v18, shortcutView:Landroid/view/View;
    new-instance v10, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 915
    .local v10, ll:Landroid/widget/LinearLayout;
    new-instance v21, Lcom/htc/widget/HtcAbsListView$LayoutParams;

    const/16 v22, -0x1

    const/16 v23, -0x2

    invoke-direct/range {v21 .. v23}, Lcom/htc/widget/HtcAbsListView$LayoutParams;-><init>(II)V

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 916
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 917
    const v21, 0x2080001

    move/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 919
    const/4 v5, 0x3

    .line 920
    .local v5, column:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/LandingPageActivity;->mOrientation:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_4

    .line 921
    const/4 v5, 0x3

    .line 922
    const/16 v21, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/LandingPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x2050011

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v22

    const/16 v23, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/LandingPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x205000b

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v24

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 937
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    move-object/from16 v21, v0

    const v22, 0x7f030035

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v18

    .line 938
    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/LandingPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x205000a

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v24

    move-object/from16 v0, v18

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 939
    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 940
    const v21, 0x7f08007d

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 941
    .local v9, iv:Landroid/widget/ImageView;
    new-instance v11, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v11}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 942
    .local v11, option:Landroid/graphics/BitmapFactory$Options;
    const/16 v21, 0x1

    move/from16 v0, v21

    iput-boolean v0, v11, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 944
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/LandingPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f02003e

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v0, v1, v11}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 945
    iget v0, v11, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v21, v0

    const-wide v23, 0x3fe999999999999aL

    mul-double v21, v21, v23

    move-wide/from16 v0, v21

    double-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v11, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 946
    iget v0, v11, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v21, v0

    const-wide v23, 0x3fe999999999999aL

    mul-double v21, v21, v23

    move-wide/from16 v0, v21

    double-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v11, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 947
    invoke-virtual {v9}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    .line 948
    .local v12, params:Landroid/view/ViewGroup$LayoutParams;
    iget v0, v11, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v12, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 949
    iget v0, v11, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v12, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 950
    const v21, 0x7f02003e

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 952
    const v21, 0x7f08007e

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .end local v9           #iv:Landroid/widget/ImageView;
    check-cast v9, Landroid/widget/ImageView;

    .line 953
    .restart local v9       #iv:Landroid/widget/ImageView;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/LandingPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f02003d

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v0, v1, v11}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 954
    iget v0, v11, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v21, v0

    const-wide v23, 0x3fe999999999999aL

    mul-double v21, v21, v23

    move-wide/from16 v0, v21

    double-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v11, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 955
    iget v0, v11, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v21, v0

    const-wide v23, 0x3fe999999999999aL

    mul-double v21, v21, v23

    move-wide/from16 v0, v21

    double-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v11, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 956
    invoke-virtual {v9}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    .line 957
    iget v0, v11, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v12, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 958
    iget v0, v11, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v12, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 959
    const v21, 0x7f02003d

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 960
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 961
    const/16 v21, 0x0

    aget v21, v15, v21

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 962
    .local v19, tv:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/htc/music/LandingPageActivity$LaunchItem;

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getName()Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2800(Lcom/htc/music/LandingPageActivity$LaunchItem;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 964
    const/16 v21, 0x0

    aget v21, v14, v21

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    .line 965
    .local v20, viewItem:Landroid/view/View;
    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 967
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/htc/music/LandingPageActivity$LaunchItem;

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getClickListener()Landroid/view/View$OnClickListener;
    invoke-static/range {v21 .. v21}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2900(Lcom/htc/music/LandingPageActivity$LaunchItem;)Landroid/view/View$OnClickListener;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 968
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/htc/music/LandingPageActivity$LaunchItem;

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getLongClickListener()Landroid/view/View$OnLongClickListener;
    invoke-static/range {v21 .. v21}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$3000(Lcom/htc/music/LandingPageActivity$LaunchItem;)Landroid/view/View$OnLongClickListener;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 969
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/htc/music/LandingPageActivity$LaunchItem;

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getOnTouchListener()Landroid/view/View$OnTouchListener;
    invoke-static/range {v21 .. v21}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$3100(Lcom/htc/music/LandingPageActivity$LaunchItem;)Landroid/view/View$OnTouchListener;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 971
    const v21, 0x7f08007c

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    .line 972
    .local v6, fl:Landroid/widget/FrameLayout;
    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/LandingPageActivity;->mLuanchItemBgWidth:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 973
    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/LandingPageActivity;->mLuanchItemBgHeight:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 977
    const/4 v7, 0x1

    :goto_3
    if-ge v7, v8, :cond_7

    .line 978
    rem-int v21, v7, v5

    if-nez v21, :cond_2

    .line 979
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    move-object/from16 v21, v0

    const v22, 0x7f030035

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v18

    .line 980
    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/LandingPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x205000a

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v24

    move-object/from16 v0, v18

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 981
    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 984
    :cond_2
    rem-int v21, v7, v5

    aget v21, v13, v21

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .end local v9           #iv:Landroid/widget/ImageView;
    check-cast v9, Landroid/widget/ImageView;

    .line 985
    .restart local v9       #iv:Landroid/widget/ImageView;
    invoke-virtual {v9}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/LandingPageActivity;->mLuanchItemBgWidth:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 986
    invoke-virtual {v9}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/LandingPageActivity;->mLuanchItemBgHeight:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 987
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/htc/music/LandingPageActivity$LaunchItem;

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getIconId()I
    invoke-static/range {v21 .. v21}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$3200(Lcom/htc/music/LandingPageActivity$LaunchItem;)I

    move-result v21

    if-lez v21, :cond_6

    .line 988
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/htc/music/LandingPageActivity$LaunchItem;

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getIconId()I
    invoke-static/range {v21 .. v21}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$3200(Lcom/htc/music/LandingPageActivity$LaunchItem;)I

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 989
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 990
    sget-object v21, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 997
    :goto_4
    rem-int v21, v7, v5

    aget v21, v15, v21

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    .end local v19           #tv:Landroid/widget/TextView;
    check-cast v19, Landroid/widget/TextView;

    .line 998
    .restart local v19       #tv:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/htc/music/LandingPageActivity$LaunchItem;

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getName()Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2800(Lcom/htc/music/LandingPageActivity$LaunchItem;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 999
    if-nez v7, :cond_3

    .line 1000
    const/16 v21, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/LandingPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x205000d

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v22

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1002
    :cond_3
    rem-int v21, v7, v5

    aget v21, v14, v21

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    .line 1003
    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 1005
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/htc/music/LandingPageActivity$LaunchItem;

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getClickListener()Landroid/view/View$OnClickListener;
    invoke-static/range {v21 .. v21}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2900(Lcom/htc/music/LandingPageActivity$LaunchItem;)Landroid/view/View$OnClickListener;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1006
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/htc/music/LandingPageActivity$LaunchItem;

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getLongClickListener()Landroid/view/View$OnLongClickListener;
    invoke-static/range {v21 .. v21}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$3000(Lcom/htc/music/LandingPageActivity$LaunchItem;)Landroid/view/View$OnLongClickListener;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1007
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/htc/music/LandingPageActivity$LaunchItem;

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getOnTouchListener()Landroid/view/View$OnTouchListener;
    invoke-static/range {v21 .. v21}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$3100(Lcom/htc/music/LandingPageActivity$LaunchItem;)Landroid/view/View$OnTouchListener;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 977
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3

    .line 926
    .end local v6           #fl:Landroid/widget/FrameLayout;
    .end local v9           #iv:Landroid/widget/ImageView;
    .end local v11           #option:Landroid/graphics/BitmapFactory$Options;
    .end local v12           #params:Landroid/view/ViewGroup$LayoutParams;
    .end local v19           #tv:Landroid/widget/TextView;
    .end local v20           #viewItem:Landroid/view/View;
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/LandingPageActivity;->mOrientation:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_5

    .line 927
    const/4 v5, 0x5

    .line 928
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/LandingPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x205000a

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v21

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/LandingPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const/high16 v23, 0x205

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v22

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/LandingPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x205000a

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v23

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/LandingPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x205000b

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v24

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto/16 :goto_2

    .line 933
    :cond_5
    const-string v21, "[LandingPage]"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Unknown orientation change. mOrientation = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/LandingPageActivity;->mOrientation:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 992
    .restart local v6       #fl:Landroid/widget/FrameLayout;
    .restart local v9       #iv:Landroid/widget/ImageView;
    .restart local v11       #option:Landroid/graphics/BitmapFactory$Options;
    .restart local v12       #params:Landroid/view/ViewGroup$LayoutParams;
    .restart local v19       #tv:Landroid/widget/TextView;
    .restart local v20       #viewItem:Landroid/view/View;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/htc/music/LandingPageActivity$LaunchItem;

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getIcon()Landroid/graphics/drawable/Drawable;
    invoke-static/range {v21 .. v21}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$3300(Lcom/htc/music/LandingPageActivity$LaunchItem;)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 993
    const v21, 0x7f020057

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 994
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/LandingPageActivity;->mSmallIconWidth:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const v22, 0x3f99999a

    mul-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/LandingPageActivity;->mSmallIconHeight:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    const v23, 0x3f99999a

    mul-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v9, v1, v2}, Lcom/htc/music/LandingPageActivity;->scaleLaunchIcon(Landroid/widget/ImageView;II)V

    goto/16 :goto_4

    .line 1009
    :cond_7
    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 1010
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mList:Lcom/htc/widget/HtcListView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v10, v1, v2}, Lcom/htc/widget/HtcListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 1011
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity;->mHeaderViewList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1012
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    move-object/from16 v21, v0

    const v22, 0x7f03002e

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v17

    .line 1013
    .local v17, seperatorView:Landroid/view/View;
    const v21, 0x7f080077

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/htc/widget/HtcListItemSeparator;

    .line 1014
    .local v16, seperator:Lcom/htc/widget/HtcListItemSeparator;
    const/16 v21, 0x0

    const v22, 0x7f070118

    move-object/from16 v0, v16

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcListItemSeparator;->setText(II)V

    .line 1015
    const/16 v21, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItemSeparator;->setBackgroundStyle(I)V

    .line 1016
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mList:Lcom/htc/widget/HtcListView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    move-object/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 1017
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity;->mHeaderViewList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 909
    nop

    :array_0
    .array-data 0x4
        0x7ft 0x0t 0x8t 0x7ft
        0x82t 0x0t 0x8t 0x7ft
        0x85t 0x0t 0x8t 0x7ft
        0x88t 0x0t 0x8t 0x7ft
        0x8bt 0x0t 0x8t 0x7ft
    .end array-data

    .line 910
    :array_1
    .array-data 0x4
        0x7dt 0x0t 0x8t 0x7ft
        0x81t 0x0t 0x8t 0x7ft
        0x84t 0x0t 0x8t 0x7ft
        0x87t 0x0t 0x8t 0x7ft
        0x8at 0x0t 0x8t 0x7ft
    .end array-data

    .line 911
    :array_2
    .array-data 0x4
        0x7bt 0x0t 0x8t 0x7ft
        0x80t 0x0t 0x8t 0x7ft
        0x83t 0x0t 0x8t 0x7ft
        0x86t 0x0t 0x8t 0x7ft
        0x89t 0x0t 0x8t 0x7ft
    .end array-data
.end method


# virtual methods
.method protected executeMenuAction(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 1779
    if-nez p1, :cond_1

    .line 1794
    :cond_0
    :goto_0
    return-void

    .line 1780
    :cond_1
    const/4 v1, 0x2

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v2, :cond_0

    .line 1781
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1782
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.PICK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1784
    invoke-static {p0}, Lcom/htc/music/util/ProjectSettings;->getEnableExpList(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1785
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v2, "com.htc.media/dlnaexp"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1789
    :goto_1
    const-string v1, "ShowActivityTitle"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1790
    const-string v1, "InnerActivityType"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1791
    const-string v1, "LaunchFromSwitcher"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1792
    invoke-virtual {p0, v0}, Lcom/htc/music/LandingPageActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1787
    :cond_2
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v2, "com.htc.media/dlna"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 16
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 1815
    sparse-switch p1, :sswitch_data_0

    .line 1928
    :cond_0
    :goto_0
    return-void

    .line 1817
    :sswitch_0
    const/4 v12, -0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_0

    .line 1818
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v6

    .line 1819
    .local v6, pkgName:Ljava/lang/String;
    const-string v12, "[LandingPage]"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ADD_APP_SHORTCUT, package name = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1820
    const/4 v4, 0x3

    .line 1821
    .local v4, itemType:I
    if-eqz v6, :cond_4

    .line 1822
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/LandingPageActivity;->mPreloadAutoDetectTypeMap:Ljava/util/HashMap;

    invoke-virtual {v12, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1823
    .local v2, integer:Ljava/lang/Integer;
    if-eqz v2, :cond_1

    .line 1824
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1829
    .end local v2           #integer:Ljava/lang/Integer;
    :cond_1
    :goto_1
    const-string v12, "[LandingPage]"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ADD_APP_SHORTCUT, itemType = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1831
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/LandingPageActivity;->mRemoveList:Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1832
    .local v9, removeListStr:Ljava/lang/String;
    if-eqz v6, :cond_2

    const-string v12, ";"

    invoke-virtual {v6, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1833
    const-string v12, ";"

    invoke-virtual {v6, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, ""

    invoke-virtual {v9, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 1834
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/LandingPageActivity;->mRemoveList:Ljava/lang/StringBuilder;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/LandingPageActivity;->mRemoveList:Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1835
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/LandingPageActivity;->mRemoveList:Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1838
    :cond_2
    new-instance v3, Lcom/htc/music/LandingPageActivity$LaunchItem;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/htc/music/LandingPageActivity$LaunchItem;-><init>(Lcom/htc/music/LandingPageActivity;)V

    .line 1839
    .local v3, item:Lcom/htc/music/LandingPageActivity$LaunchItem;
    const/4 v10, 0x0

    .line 1840
    .local v10, resolveInfo:Landroid/content/pm/ResolveInfo;
    packed-switch v4, :pswitch_data_0

    .line 1914
    :cond_3
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/LandingPageActivity;->updateLaunchItemsUI()V

    goto/16 :goto_0

    .line 1827
    .end local v3           #item:Lcom/htc/music/LandingPageActivity$LaunchItem;
    .end local v9           #removeListStr:Ljava/lang/String;
    .end local v10           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_4
    const-string v12, "[LandingPage]"

    const-string v13, "onActivityResult, ADD_APP_SHORTCUT, package name is null"

    invoke-static {v12, v13}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1842
    .restart local v3       #item:Lcom/htc/music/LandingPageActivity$LaunchItem;
    .restart local v9       #removeListStr:Ljava/lang/String;
    .restart local v10       #resolveInfo:Landroid/content/pm/ResolveInfo;
    :pswitch_0
    if-eqz v6, :cond_3

    .line 1845
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/LandingPageActivity;->mPreloadIntentMap:Ljava/util/HashMap;

    invoke-virtual {v12, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Intent;

    .line 1846
    .local v8, preloadIntent:Landroid/content/Intent;
    if-eqz v8, :cond_9

    .line 1847
    new-instance v3, Lcom/htc/music/LandingPageActivity$LaunchItem;

    .end local v3           #item:Lcom/htc/music/LandingPageActivity$LaunchItem;
    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/htc/music/LandingPageActivity$LaunchItem;-><init>(Lcom/htc/music/LandingPageActivity;)V

    .line 1848
    .restart local v3       #item:Lcom/htc/music/LandingPageActivity$LaunchItem;
    const/high16 v12, 0x1000

    invoke-virtual {v8, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v12

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setLaunchIntent(Landroid/content/Intent;)V
    invoke-static {v3, v12}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$1300(Lcom/htc/music/LandingPageActivity$LaunchItem;Landroid/content/Intent;)V

    .line 1849
    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setItemType(I)V
    invoke-static {v3, v4}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2400(Lcom/htc/music/LandingPageActivity$LaunchItem;I)V

    .line 1850
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/LandingPageActivity;->mPreloadIconMap:Ljava/util/HashMap;

    invoke-virtual {v12, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_5

    .line 1851
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/LandingPageActivity;->mPreloadIconMap:Ljava/util/HashMap;

    invoke-virtual {v12, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setIcon(I)V
    invoke-static {v3, v12}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2500(Lcom/htc/music/LandingPageActivity$LaunchItem;I)V

    .line 1853
    :cond_5
    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setPreloadId(Ljava/lang/String;)V
    invoke-static {v3, v6}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2600(Lcom/htc/music/LandingPageActivity$LaunchItem;Ljava/lang/String;)V

    .line 1854
    const-string v12, "com.melodis.midomiMusicIdentifier"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    const-string v12, "com.melodis.midomiMusicIdentifier.freemium"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 1856
    :cond_6
    const/4 v12, 0x1

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setSoundHoundEnable(Z)V
    invoke-static {v3, v12}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2700(Lcom/htc/music/LandingPageActivity$LaunchItem;Z)V

    .line 1858
    :cond_7
    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getLaunchIntent()Landroid/content/Intent;
    invoke-static {v3}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$1500(Lcom/htc/music/LandingPageActivity$LaunchItem;)Landroid/content/Intent;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/htc/music/LandingPageActivity;->getResolveInfo(Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;

    move-result-object v10

    .line 1859
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v10}, Lcom/htc/music/LandingPageActivity;->setNameAndIcon(Lcom/htc/music/LandingPageActivity$LaunchItem;Landroid/content/pm/ResolveInfo;)V

    .line 1860
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/LandingPageActivity;->mPreloadList:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1862
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/LandingPageActivity;->mPreloadList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1863
    .local v1, insertIndex:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-gt v1, v12, :cond_8

    .line 1864
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v12, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_2

    .line 1866
    :cond_8
    const-string v12, "[LandingPage]"

    const-string v13, "onActivityResult, Insert index > mLaunchItemList size"

    invoke-static {v12, v13}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1867
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1870
    .end local v1           #insertIndex:I
    :cond_9
    const-string v12, "[LandingPage]"

    const-string v13, "onActivityResult, ADD_APP_SHORTCUT, TYPE_PRELOAD, preloadIntent is null"

    invoke-static {v12, v13}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1875
    .end local v8           #preloadIntent:Landroid/content/Intent;
    :pswitch_1
    if-eqz p3, :cond_a

    .line 1876
    new-instance v3, Lcom/htc/music/LandingPageActivity$LaunchItem;

    .end local v3           #item:Lcom/htc/music/LandingPageActivity$LaunchItem;
    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/htc/music/LandingPageActivity$LaunchItem;-><init>(Lcom/htc/music/LandingPageActivity;)V

    .line 1877
    .restart local v3       #item:Lcom/htc/music/LandingPageActivity$LaunchItem;
    const/high16 v12, 0x1000

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v12

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setLaunchIntent(Landroid/content/Intent;)V
    invoke-static {v3, v12}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$1300(Lcom/htc/music/LandingPageActivity$LaunchItem;Landroid/content/Intent;)V

    .line 1878
    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setItemType(I)V
    invoke-static {v3, v4}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2400(Lcom/htc/music/LandingPageActivity$LaunchItem;I)V

    .line 1879
    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getLaunchIntent()Landroid/content/Intent;
    invoke-static {v3}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$1500(Lcom/htc/music/LandingPageActivity$LaunchItem;)Landroid/content/Intent;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/htc/music/LandingPageActivity;->getResolveInfo(Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;

    move-result-object v10

    .line 1880
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v10}, Lcom/htc/music/LandingPageActivity;->setNameAndIcon(Lcom/htc/music/LandingPageActivity$LaunchItem;Landroid/content/pm/ResolveInfo;)V

    .line 1881
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/LandingPageActivity;->mAutoDetectList:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1882
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1884
    :cond_a
    const-string v12, "[LandingPage]"

    const-string v13, "onActivityResult, ADD_APP_SHORTCUT, TYPE_AUTO_DETECT, intent is null"

    invoke-static {v12, v13}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1889
    :pswitch_2
    if-eqz p3, :cond_d

    .line 1890
    new-instance v3, Lcom/htc/music/LandingPageActivity$LaunchItem;

    .end local v3           #item:Lcom/htc/music/LandingPageActivity$LaunchItem;
    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/htc/music/LandingPageActivity$LaunchItem;-><init>(Lcom/htc/music/LandingPageActivity;)V

    .line 1891
    .restart local v3       #item:Lcom/htc/music/LandingPageActivity$LaunchItem;
    const/high16 v12, 0x1000

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v12

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setLaunchIntent(Landroid/content/Intent;)V
    invoke-static {v3, v12}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$1300(Lcom/htc/music/LandingPageActivity$LaunchItem;Landroid/content/Intent;)V

    .line 1892
    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setItemType(I)V
    invoke-static {v3, v4}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2400(Lcom/htc/music/LandingPageActivity$LaunchItem;I)V

    .line 1893
    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getLaunchIntent()Landroid/content/Intent;
    invoke-static {v3}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$1500(Lcom/htc/music/LandingPageActivity$LaunchItem;)Landroid/content/Intent;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/htc/music/LandingPageActivity;->getResolveInfo(Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;

    move-result-object v10

    .line 1894
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v10}, Lcom/htc/music/LandingPageActivity;->setNameAndIcon(Lcom/htc/music/LandingPageActivity$LaunchItem;Landroid/content/pm/ResolveInfo;)V

    .line 1895
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/LandingPageActivity;->mUserAddList:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1897
    const-string v12, "com.htc.fm"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 1898
    const v12, 0x7f020046

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setIcon(I)V
    invoke-static {v3, v12}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2500(Lcom/htc/music/LandingPageActivity$LaunchItem;I)V

    .line 1899
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/LandingPageActivity;->mPreloadList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v1, v12, 0x1

    .line 1900
    .restart local v1       #insertIndex:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-gt v1, v12, :cond_b

    .line 1901
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v12, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_2

    .line 1903
    :cond_b
    const-string v12, "[LandingPage]"

    const-string v13, "FMRadio\'s insert index > mLaunchItemList size"

    invoke-static {v12, v13}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1904
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1907
    .end local v1           #insertIndex:I
    :cond_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1910
    :cond_d
    const-string v12, "[LandingPage]"

    const-string v13, "onActivityResult, ADD_APP_SHORTCUT, TYPE_OTHER, intent is null"

    invoke-static {v12, v13}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1919
    .end local v3           #item:Lcom/htc/music/LandingPageActivity$LaunchItem;
    .end local v4           #itemType:I
    .end local v6           #pkgName:Ljava/lang/String;
    .end local v9           #removeListStr:Ljava/lang/String;
    .end local v10           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :sswitch_1
    const/4 v12, -0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_0

    .line 1920
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/music/LandingPageActivity;->mSelectedAlbumId:I

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v12, v13, v14, v15}, Lcom/htc/music/util/MusicUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1922
    .local v11, where:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lcom/htc/music/util/MusicUtils;->getSongListForAlbum(Landroid/content/Context;Ljava/lang/String;)[I

    move-result-object v5

    .line 1923
    .local v5, list:[I
    const-string v12, "playlist"

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 1924
    .local v7, playlist:I
    int-to-long v12, v7

    move-object/from16 v0, p0

    invoke-static {v0, v5, v12, v13}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    goto/16 :goto_0

    .line 1815
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x17 -> :sswitch_1
    .end sparse-switch

    .line 1840
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    .line 576
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 578
    iget v2, p0, Lcom/htc/music/LandingPageActivity;->mOrientation:I

    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v3, :cond_0

    .line 589
    :goto_0
    return-void

    .line 581
    :cond_0
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/htc/music/LandingPageActivity;->mOrientation:I

    .line 582
    invoke-virtual {p0}, Lcom/htc/music/LandingPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 583
    .local v1, res:Landroid/content/res/Resources;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 584
    .local v0, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/htc/music/LandingPageActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 585
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/htc/music/LandingPageActivity;->mScreenWidth:I

    .line 586
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/htc/music/LandingPageActivity;->mScreenHeight:I

    .line 588
    invoke-direct {p0}, Lcom/htc/music/LandingPageActivity;->updateLaunchItemsUI()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    const/4 v6, 0x1

    .line 403
    const-string v3, "[LandingPage]"

    const-string v4, "onCreate() +"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 406
    iget-object v3, p0, Lcom/htc/music/LandingPageActivity;->mStatusListener:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "com.htc.music.recentlyplayedalbumchanged"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v4}, Lcom/htc/music/LandingPageActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 408
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 409
    .local v0, f:Landroid/content/IntentFilter;
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #f:Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 410
    .restart local v0       #f:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 411
    const-string v3, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 412
    const-string v3, "file"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 413
    iget-object v3, p0, Lcom/htc/music/LandingPageActivity;->mStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v0}, Lcom/htc/music/LandingPageActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 416
    invoke-virtual {p0}, Lcom/htc/music/LandingPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 417
    .local v2, res:Landroid/content/res/Resources;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 418
    .local v1, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/htc/music/LandingPageActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 419
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v3, p0, Lcom/htc/music/LandingPageActivity;->mScreenWidth:I

    .line 420
    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v3, p0, Lcom/htc/music/LandingPageActivity;->mScreenHeight:I

    .line 422
    const v3, 0x7f030033

    invoke-virtual {p0, v3}, Lcom/htc/music/LandingPageActivity;->setContentView(I)V

    .line 423
    const v3, 0x102000a

    invoke-virtual {p0, v3}, Lcom/htc/music/LandingPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListView;

    iput-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mList:Lcom/htc/widget/HtcListView;

    .line 424
    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mList:Lcom/htc/widget/HtcListView;

    const/4 v4, 0x0

    invoke-virtual {v3, v6, v4}, Lcom/htc/widget/HtcListView;->enableAnimation(IZ)V

    .line 426
    new-instance v3, Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;

    invoke-virtual {p0}, Lcom/htc/music/LandingPageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;-><init>(Lcom/htc/music/LandingPageActivity;Landroid/content/ContentResolver;)V

    iput-object v3, p0, Lcom/htc/music/LandingPageActivity;->mRecentAlbumQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    .line 427
    invoke-direct {p0, v6}, Lcom/htc/music/LandingPageActivity;->reloadRecentAlbum(Z)V

    .line 433
    new-instance v3, Landroid/os/HandlerThread;

    const-string v4, "LandingPageNonUIThread"

    invoke-direct {v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/htc/music/LandingPageActivity;->mHandlerThread:Landroid/os/HandlerThread;

    .line 434
    iget-object v3, p0, Lcom/htc/music/LandingPageActivity;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 435
    new-instance v3, Lcom/htc/music/LandingPageActivity$NonUIHandler;

    iget-object v4, p0, Lcom/htc/music/LandingPageActivity;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/htc/music/LandingPageActivity$NonUIHandler;-><init>(Lcom/htc/music/LandingPageActivity;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/htc/music/LandingPageActivity;->mNonUIHandler:Landroid/os/Handler;

    .line 437
    iget-object v3, p0, Lcom/htc/music/LandingPageActivity;->mUIHandler:Landroid/os/Handler;

    const/16 v4, 0x2710

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 439
    const-string v3, "[LandingPage]"

    const-string v4, "onCreate() -"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    .line 593
    packed-switch p1, :pswitch_data_0

    .line 640
    :pswitch_0
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    :goto_0
    return-object v1

    .line 595
    :pswitch_1
    const/4 v0, 0x0

    .line 596
    .local v0, items:[Ljava/lang/CharSequence;
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/CharSequence;

    .end local v0           #items:[Ljava/lang/CharSequence;
    const/4 v2, 0x0

    const v3, 0x7f0701d2

    invoke-virtual {p0, v3}, Lcom/htc/music/LandingPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 599
    .restart local v0       #items:[Ljava/lang/CharSequence;
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/htc/music/LandingPageActivity;->mLongClickedName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/htc/music/LandingPageActivity$2;

    invoke-direct {v3, p0}, Lcom/htc/music/LandingPageActivity$2;-><init>(Lcom/htc/music/LandingPageActivity;)V

    invoke-virtual {v2, v0, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    .line 632
    .local v1, longPressDialog:Lcom/htc/widget/HtcAlertDialog;
    goto :goto_0

    .line 638
    .end local v0           #items:[Ljava/lang/CharSequence;
    .end local v1           #longPressDialog:Lcom/htc/widget/HtcAlertDialog;
    :pswitch_2
    invoke-virtual {p0}, Lcom/htc/music/LandingPageActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/LandingPageActivity;->mShareText:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/htc/music/widget/SharedAdapter;->shareIntentChooser(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v1

    goto :goto_0

    .line 593
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreateFirstPlaylistDialogSaveClick(Ljava/lang/String;)V
    .locals 4
    .parameter "playlistName"

    .prologue
    .line 645
    invoke-static {p0, p1}, Lcom/htc/music/util/MusicUtils;->createPlaylist(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 646
    .local v0, id:I
    iget v1, p0, Lcom/htc/music/LandingPageActivity;->mSelectedAlbumId:I

    invoke-static {p0, v1}, Lcom/htc/music/util/MusicUtils;->getSongListForAlbum(Landroid/content/Context;I)[I

    move-result-object v1

    int-to-long v2, v0

    invoke-static {p0, v1, v2, v3}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    .line 648
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 1686
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 1693
    const v0, 0x7f0701ce

    invoke-interface {p1, v1, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1694
    invoke-static {p0}, Lcom/htc/music/util/ProjectSettings;->getEnableDLNA(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1695
    const v0, 0x7f070034

    invoke-interface {p1, v1, v1, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1700
    :cond_0
    return v3
.end method

.method public onDestroy()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 480
    const-string v2, "[LandingPage]"

    const-string v3, "onDestroy"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mNonUIHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 483
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mNonUIHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 484
    iput-object v5, p0, Lcom/htc/music/LandingPageActivity;->mNonUIHandler:Landroid/os/Handler;

    .line 487
    :cond_0
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v2, :cond_1

    .line 488
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->quit()V

    .line 489
    iput-object v5, p0, Lcom/htc/music/LandingPageActivity;->mHandlerThread:Landroid/os/HandlerThread;

    .line 493
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/htc/music/LandingPageActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 498
    :goto_0
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    if-eqz v2, :cond_2

    .line 499
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    invoke-virtual {v2}, Lcom/htc/music/util/AsyncImageDecoder;->quit()V

    .line 500
    iput-object v5, p0, Lcom/htc/music/LandingPageActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    .line 503
    :cond_2
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mAlbumCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_3

    .line 505
    :try_start_1
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mAlbumCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/htc/music/LandingPageActivity;->mContentObserver:Landroid/database/ContentObserver;

    invoke-interface {v2, v3}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 509
    :goto_1
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mAlbumCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 510
    iput-object v5, p0, Lcom/htc/music/LandingPageActivity;->mAlbumCursor:Landroid/database/Cursor;

    .line 516
    :cond_3
    invoke-virtual {p0, v5}, Lcom/htc/music/LandingPageActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 517
    iput-object v5, p0, Lcom/htc/music/LandingPageActivity;->mAdapter:Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;

    .line 518
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mRemoveList:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 523
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    invoke-virtual {v2}, Lcom/htc/music/util/MemoryCacheMBitmapByTime;->clear()V

    .line 525
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mRecentAlbumList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 526
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mPreloadList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 527
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mAutoDetectList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 528
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mUserAddList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 529
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 530
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mPreloadIntentMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 531
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mPreloadIconMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 532
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mPreloadAutoDetectTypeMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 533
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onDestroy()V

    .line 534
    return-void

    .line 494
    :catch_0
    move-exception v1

    .line 495
    .local v1, ex:Ljava/lang/IllegalArgumentException;
    const-string v2, "[LandingPage]"

    const-string v3, "[onDestroy] unregisterReceiver(mStatusListener)"

    invoke-static {v2, v3, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 506
    .end local v1           #ex:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 507
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "[LandingPage]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mAlbumCursor error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onHtcContextItemSelected(I)Z
    .locals 7
    .parameter "id"

    .prologue
    const/4 v3, 0x1

    .line 1953
    packed-switch p1, :pswitch_data_0

    .line 1982
    :goto_0
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onHtcContextItemSelected(I)Z

    move-result v3

    :goto_1
    return v3

    .line 1955
    :pswitch_0
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->checkPlaylistCount(Landroid/content/Context;)I

    move-result v4

    if-gtz v4, :cond_0

    .line 1956
    const/16 v4, 0x25a

    invoke-virtual {p0, v4}, Lcom/htc/music/LandingPageActivity;->showDialog(I)V

    goto :goto_1

    .line 1959
    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1960
    .local v2, intent:Landroid/content/Intent;
    const-class v4, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;

    invoke-virtual {v2, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1961
    const-string v4, "pickermode"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1962
    iget v4, p0, Lcom/htc/music/LandingPageActivity;->mSelectedAlbumId:I

    invoke-static {p0, v4}, Lcom/htc/music/util/MusicUtils;->getSongListForAlbum(Landroid/content/Context;I)[I

    move-result-object v0

    .line 1963
    .local v0, addToPlaylistData:[I
    const-string v4, "AddToPlaylistData"

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 1964
    const/16 v4, 0x17

    invoke-virtual {p0, v2, v4}, Lcom/htc/music/LandingPageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 1970
    .end local v0           #addToPlaylistData:[I
    .end local v2           #intent:Landroid/content/Intent;
    :pswitch_1
    :try_start_0
    sget-object v4, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v5, 0x0

    iget v6, p0, Lcom/htc/music/LandingPageActivity;->mSelectedAlbumId:I

    invoke-interface {v4, v5, v6}, Lcom/htc/music/IMediaPlaybackService;->addToQueue(II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 1971
    :catch_0
    move-exception v1

    .line 1972
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v4, "[LandingPage]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ADD_TO_QUEUE, NumberFormatException e: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1973
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v1

    .line 1974
    .local v1, e:Landroid/os/RemoteException;
    const-string v4, "[LandingPage]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ADD_TO_QUEUE, RemoteException e: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1979
    .end local v1           #e:Landroid/os/RemoteException;
    :pswitch_2
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/htc/music/LandingPageActivity;->mSelectedAlbumName:Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/music/LandingPageActivity;->mSelectedArtistName:Ljava/lang/String;

    invoke-direct {p0, v3, v4, v5}, Lcom/htc/music/LandingPageActivity;->shareMusicText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1953
    nop

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onListItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 1797
    const-wide/16 v1, -0x2

    cmp-long v1, p4, v1

    if-nez v1, :cond_0

    .line 1811
    :goto_0
    return-void

    .line 1800
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1801
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v2, "com.htc.media/albumtrack"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1802
    const/high16 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1803
    const-string v1, "albumid"

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1807
    const-string v1, "ShowActivityTitle"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1808
    const-string v1, "InnerActivityType"

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1809
    const-string v1, "ForceDisableDropDown"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1810
    invoke-virtual {p0, v0}, Lcom/htc/music/LandingPageActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 12
    .parameter "item"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 1716
    const/4 v2, 0x0

    .line 1717
    .local v2, intent:Landroid/content/Intent;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    .line 1774
    :goto_0
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v7

    return v7

    .line 1724
    :sswitch_0
    new-instance v2, Landroid/content/Intent;

    .end local v2           #intent:Landroid/content/Intent;
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1725
    .restart local v2       #intent:Landroid/content/Intent;
    const-class v7, Lcom/htc/music/AddAppShortcutActivity;

    invoke-virtual {v2, p0, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1726
    iget-object v7, p0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v6, v7, [Ljava/lang/String;

    .line 1727
    .local v6, pkgNameList:[Ljava/lang/String;
    iget-object v7, p0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v0, v7, [Ljava/lang/String;

    .line 1728
    .local v0, clsNameList:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v7, v0

    if-ge v1, v7, :cond_0

    .line 1729
    const/4 v7, 0x0

    aput-object v7, v0, v1

    .line 1728
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1731
    :cond_0
    const/4 v1, 0x0

    :goto_2
    iget-object v7, p0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_4

    .line 1732
    iget-object v7, p0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/music/LandingPageActivity$LaunchItem;

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getItemType()I
    invoke-static {v7}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$1600(Lcom/htc/music/LandingPageActivity$LaunchItem;)I

    move-result v3

    .line 1733
    .local v3, itemType:I
    if-ne v3, v9, :cond_2

    .line 1734
    iget-object v7, p0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/music/LandingPageActivity$LaunchItem;

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getPreloadId()Ljava/lang/String;
    invoke-static {v7}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$1700(Lcom/htc/music/LandingPageActivity$LaunchItem;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    .line 1731
    :cond_1
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1735
    :cond_2
    if-ne v3, v11, :cond_3

    .line 1736
    iget-object v7, p0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/music/LandingPageActivity$LaunchItem;

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getLaunchIntent()Landroid/content/Intent;
    invoke-static {v7}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$1500(Lcom/htc/music/LandingPageActivity$LaunchItem;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    goto :goto_3

    .line 1737
    :cond_3
    const/4 v7, 0x3

    if-ne v3, v7, :cond_1

    .line 1738
    iget-object v7, p0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/music/LandingPageActivity$LaunchItem;

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getLaunchIntent()Landroid/content/Intent;
    invoke-static {v7}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$1500(Lcom/htc/music/LandingPageActivity$LaunchItem;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    .line 1739
    iget-object v7, p0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/music/LandingPageActivity$LaunchItem;

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getLaunchIntent()Landroid/content/Intent;
    invoke-static {v7}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$1500(Lcom/htc/music/LandingPageActivity$LaunchItem;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v1

    goto :goto_3

    .line 1742
    .end local v3           #itemType:I
    :cond_4
    const-string v7, "currentpkg"

    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1743
    const-string v7, "currentcls"

    invoke-virtual {v2, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1744
    const-string v7, "autoaddlist"

    iget-object v8, p0, Lcom/htc/music/LandingPageActivity;->mAutoAddList:[Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/htc/music/LandingPageActivity;->strArrayToStr([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1745
    invoke-virtual {p0, v2, v10}, Lcom/htc/music/LandingPageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1749
    .end local v0           #clsNameList:[Ljava/lang/String;
    .end local v1           #i:I
    .end local v6           #pkgNameList:[Ljava/lang/String;
    :sswitch_1
    iget-object v7, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mBaseUIHandler:Landroid/os/Handler;

    if-eqz v7, :cond_5

    .line 1750
    iget-object v7, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mBaseUIHandler:Landroid/os/Handler;

    const v8, 0xea63

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 1751
    .local v5, msg:Landroid/os/Message;
    iput v11, v5, Landroid/os/Message;->arg1:I

    .line 1752
    iget-object v7, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mBaseUIHandler:Landroid/os/Handler;

    invoke-virtual {v7, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1754
    .end local v5           #msg:Landroid/os/Message;
    :cond_5
    new-instance v2, Landroid/content/Intent;

    .end local v2           #intent:Landroid/content/Intent;
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1755
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v7, "android.intent.action.PICK"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1757
    invoke-static {p0}, Lcom/htc/music/util/ProjectSettings;->getEnableExpList(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1758
    sget-object v7, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v8, "com.htc.media/dlnaexp"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1762
    :goto_4
    const-string v7, "ShowActivityTitle"

    invoke-virtual {v2, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1763
    const-string v7, "InnerActivityType"

    const/4 v8, 0x4

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1764
    const-string v7, "LaunchFromSwitcher"

    invoke-virtual {v2, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1765
    invoke-virtual {p0, v2}, Lcom/htc/music/LandingPageActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1760
    :cond_6
    sget-object v7, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v8, "com.htc.media/dlna"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_4

    .line 1769
    :sswitch_2
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->getLaunchVMMIntent()Landroid/content/Intent;

    move-result-object v4

    .line 1770
    .local v4, launchVmmIntent:Landroid/content/Intent;
    const-string v7, "StartNewActivity"

    invoke-virtual {v4, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1771
    invoke-virtual {p0, v4}, Lcom/htc/music/LandingPageActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1717
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x15 -> :sswitch_2
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 570
    const-string v0, "[LandingPage]"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onPause()V

    .line 572
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 652
    packed-switch p1, :pswitch_data_0

    .line 664
    :goto_0
    return-void

    .line 654
    :pswitch_0
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mLongClickedName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 652
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v0, 0x1

    .line 1706
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1707
    .local v1, item:Landroid/view/MenuItem;
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x9

    if-ge v2, v3, :cond_1

    .line 1708
    .local v0, enable:Z
    :goto_0
    if-eqz v1, :cond_0

    .line 1709
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1711
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2

    .line 1707
    .end local v0           #enable:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 559
    const-string v0, "[LandingPage]"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onResume()V

    .line 563
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 564
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/LandingPageActivity$LaunchItem;

    invoke-direct {p0}, Lcom/htc/music/LandingPageActivity;->getLibraryIntent()Landroid/content/Intent;

    move-result-object v1

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setLaunchIntent(Landroid/content/Intent;)V
    invoke-static {v0, v1}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$1300(Lcom/htc/music/LandingPageActivity$LaunchItem;Landroid/content/Intent;)V

    .line 566
    :cond_0
    return-void
.end method

.method public onScroll(Lcom/htc/widget/HtcAbsListView;III)V
    .locals 3
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 1339
    move v1, p2

    .line 1340
    .local v1, start:I
    add-int v0, p2, p3

    .line 1342
    .local v0, end:I
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    if-eqz v2, :cond_0

    .line 1343
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    invoke-virtual {v2, v1, v0}, Lcom/htc/music/util/AsyncImageDecoder;->setVisibleRange(II)V

    .line 1348
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Lcom/htc/widget/HtcAbsListView;I)V
    .locals 3
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 1316
    const-string v0, "[LandingPage]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScrollStateChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1317
    packed-switch p2, :pswitch_data_0

    .line 1334
    :cond_0
    :goto_0
    return-void

    .line 1319
    :pswitch_0
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/music/LandingPageActivity;->isActivityResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1320
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->resumeDecode()V

    goto :goto_0

    .line 1324
    :pswitch_1
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/music/LandingPageActivity;->isActivityResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1325
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->resumeDecode()V

    goto :goto_0

    .line 1329
    :pswitch_2
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    if-eqz v0, :cond_0

    .line 1330
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->pauseDecode()V

    goto :goto_0

    .line 1317
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 538
    const-string v0, "[LandingPage]"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onStart()V

    .line 540
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/LandingPageActivity;->mStopping:Z

    .line 541
    invoke-virtual {p0}, Lcom/htc/music/LandingPageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->osc:Landroid/content/ServiceConnection;

    invoke-static {v0, v1, v2}, Lcom/htc/music/util/MusicUtils;->bindToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/ServiceConnection;)Z

    .line 542
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 546
    const-string v0, "[LandingPage]"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/LandingPageActivity;->mStopping:Z

    .line 548
    iget-boolean v0, p0, Lcom/htc/music/LandingPageActivity;->mServiceBound:Z

    if-eqz v0, :cond_0

    .line 549
    invoke-virtual {p0}, Lcom/htc/music/LandingPageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    .line 550
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/LandingPageActivity;->mServiceBound:Z

    .line 552
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/LandingPageActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    .line 553
    invoke-direct {p0}, Lcom/htc/music/LandingPageActivity;->saveLaunchItemList()V

    .line 554
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onStop()V

    .line 555
    return-void
.end method
