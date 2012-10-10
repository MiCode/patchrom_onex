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

.field private static final MEDIA_SERVER_PACKAGE_NAME:Ljava/lang/String; = "com.htc.music.mediaserver"

.field private static final MENU_ADD_APP_SHORTCUT:I = 0x1

.field private static final MENU_MEDIA_SERVER:I = 0x2

.field private static final MENU_VMM_UPLOAD:I = 0x15

.field private static final MSG_ULOG_USED_APP:I = 0x2712

.field private static final MUSIC_PACKAGE_NAME:Ljava/lang/String; = "com.htc.music"

.field private static final NO_RECENTLY_PLAYED_ALBUM_ID:I = -0x2

.field private static final QUERY_RECENT_ALBUM_INFO:I = 0x0

.field private static final RELOAD_RECENT_ALBUM:I = 0x2711

.field private static final SHOW_NO_RECENTLY_PLAYED_ALBUM:I = 0x2711

.field private static final TAG:Ljava/lang/String; = "[LandingPage]"

.field private static final ULOG_KEY_LABEL:Ljava/lang/String; = "label"

.field private static final ULOG_KEY_PACKAGENAME:Ljava/lang/String; = "package_name"

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

.field private mPreferences:Landroid/content/SharedPreferences;

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

.field private mShortcutPageInfo:Lcom/htc/music/ShortcutPageInfo;

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
    .line 102
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

    .line 95
    invoke-direct {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;-><init>()V

    .line 98
    iput-object v2, p0, Lcom/htc/music/LandingPageActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    .line 113
    new-instance v0, Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Lcom/htc/music/util/MemoryCacheMBitmapByTime;-><init>(I)V

    iput-object v0, p0, Lcom/htc/music/LandingPageActivity;->mMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/LandingPageActivity;->mRecentAlbumList:Ljava/util/ArrayList;

    .line 132
    iput-object v2, p0, Lcom/htc/music/LandingPageActivity;->mAutoAddList:[Ljava/lang/String;

    .line 134
    iput v4, p0, Lcom/htc/music/LandingPageActivity;->mLongClickedItemType:I

    .line 135
    iput-object v2, p0, Lcom/htc/music/LandingPageActivity;->mLongClickedLaunchIntent:Landroid/content/Intent;

    .line 136
    iput-object v2, p0, Lcom/htc/music/LandingPageActivity;->mLongClickedName:Ljava/lang/String;

    .line 140
    iput v3, p0, Lcom/htc/music/LandingPageActivity;->mLuanchItemBgWidth:I

    .line 141
    iput v3, p0, Lcom/htc/music/LandingPageActivity;->mLuanchItemBgHeight:I

    .line 142
    iput v3, p0, Lcom/htc/music/LandingPageActivity;->mSmallIconWidth:I

    .line 143
    iput v3, p0, Lcom/htc/music/LandingPageActivity;->mSmallIconHeight:I

    .line 147
    iput v3, p0, Lcom/htc/music/LandingPageActivity;->mOrientation:I

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/LandingPageActivity;->mHeaderViewList:Ljava/util/ArrayList;

    .line 331
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/LandingPageActivity;->mPreloadList:Ljava/util/ArrayList;

    .line 333
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/LandingPageActivity;->mAutoDetectList:Ljava/util/ArrayList;

    .line 335
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/LandingPageActivity;->mUserAddList:Ljava/util/ArrayList;

    .line 337
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    .line 341
    iput-object v2, p0, Lcom/htc/music/LandingPageActivity;->mSelectedAlbumName:Ljava/lang/String;

    .line 342
    iput-object v2, p0, Lcom/htc/music/LandingPageActivity;->mSelectedArtistName:Ljava/lang/String;

    .line 343
    iput v4, p0, Lcom/htc/music/LandingPageActivity;->mSelectedAlbumId:I

    .line 345
    iput-object v2, p0, Lcom/htc/music/LandingPageActivity;->mShareText:Ljava/lang/String;

    .line 347
    iput-object v2, p0, Lcom/htc/music/LandingPageActivity;->mPreferences:Landroid/content/SharedPreferences;

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/htc/music/LandingPageActivity;->mRemoveList:Ljava/lang/StringBuilder;

    .line 351
    iput-object v2, p0, Lcom/htc/music/LandingPageActivity;->mRecentAlbumIds:[I

    .line 358
    iput v3, p0, Lcom/htc/music/LandingPageActivity;->mScreenWidth:I

    .line 359
    iput v3, p0, Lcom/htc/music/LandingPageActivity;->mScreenHeight:I

    .line 361
    iput-boolean v3, p0, Lcom/htc/music/LandingPageActivity;->mStopping:Z

    .line 362
    iput-boolean v3, p0, Lcom/htc/music/LandingPageActivity;->mServiceBound:Z

    .line 364
    iput-object v2, p0, Lcom/htc/music/LandingPageActivity;->mShortcutPageInfo:Lcom/htc/music/ShortcutPageInfo;

    .line 411
    new-instance v0, Lcom/htc/music/LandingPageActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/music/LandingPageActivity$1;-><init>(Lcom/htc/music/LandingPageActivity;)V

    iput-object v0, p0, Lcom/htc/music/LandingPageActivity;->mUIHandler:Landroid/os/Handler;

    .line 1000
    new-instance v0, Lcom/htc/music/LandingPageActivity$3;

    invoke-direct {v0, p0}, Lcom/htc/music/LandingPageActivity$3;-><init>(Lcom/htc/music/LandingPageActivity;)V

    iput-object v0, p0, Lcom/htc/music/LandingPageActivity;->osc:Landroid/content/ServiceConnection;

    .line 1498
    new-instance v0, Lcom/htc/music/LandingPageActivity$4;

    invoke-direct {v0, p0}, Lcom/htc/music/LandingPageActivity$4;-><init>(Lcom/htc/music/LandingPageActivity;)V

    iput-object v0, p0, Lcom/htc/music/LandingPageActivity;->mStatusListener:Landroid/content/BroadcastReceiver;

    .line 1887
    new-instance v0, Lcom/htc/music/LandingPageActivity$MyContentObserver;

    invoke-direct {v0, p0}, Lcom/htc/music/LandingPageActivity$MyContentObserver;-><init>(Lcom/htc/music/LandingPageActivity;)V

    iput-object v0, p0, Lcom/htc/music/LandingPageActivity;->mContentObserver:Landroid/database/ContentObserver;

    .line 95
    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/LandingPageActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Lcom/htc/music/LandingPageActivity;->sendUsedAppULogMessage(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/music/LandingPageActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget v0, p0, Lcom/htc/music/LandingPageActivity;->mLongClickedItemType:I

    return v0
.end method

.method static synthetic access$1000(Lcom/htc/music/LandingPageActivity;)Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mAdapter:Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/htc/music/LandingPageActivity;Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;)Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/htc/music/LandingPageActivity;->mAdapter:Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;

    return-object p1
.end method

.method static synthetic access$102(Lcom/htc/music/LandingPageActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput p1, p0, Lcom/htc/music/LandingPageActivity;->mLongClickedItemType:I

    return p1
.end method

.method static synthetic access$1100(Lcom/htc/music/LandingPageActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/htc/music/LandingPageActivity;->hideRecentlyAlbumDialogs()V

    return-void
.end method

.method static synthetic access$1200(Lcom/htc/music/LandingPageActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mRecentAlbumList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/music/LandingPageActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/htc/music/LandingPageActivity;)Ljava/lang/StringBuilder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mRemoveList:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/htc/music/LandingPageActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mPreloadList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/music/LandingPageActivity;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mLongClickedLaunchIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/music/LandingPageActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mAutoDetectList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$202(Lcom/htc/music/LandingPageActivity;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/htc/music/LandingPageActivity;->mLongClickedLaunchIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$300(Lcom/htc/music/LandingPageActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mLongClickedName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/htc/music/LandingPageActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/htc/music/LandingPageActivity;->mLongClickedName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/htc/music/LandingPageActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/htc/music/LandingPageActivity;->mStopping:Z

    return v0
.end method

.method static synthetic access$3502(Lcom/htc/music/LandingPageActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/htc/music/LandingPageActivity;->mServiceBound:Z

    return p1
.end method

.method static synthetic access$3600(Lcom/htc/music/LandingPageActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/htc/music/LandingPageActivity;->reloadRecentAlbumAsync()V

    return-void
.end method

.method static synthetic access$3700(Lcom/htc/music/LandingPageActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/htc/music/widget/MusicMaActivity;->mIsEnhancerExist:Z

    return v0
.end method

.method static synthetic access$3800(Lcom/htc/music/LandingPageActivity;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mRecentAlbumIds:[I

    return-object v0
.end method

.method static synthetic access$3802(Lcom/htc/music/LandingPageActivity;[I)[I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/htc/music/LandingPageActivity;->mRecentAlbumIds:[I

    return-object p1
.end method

.method static synthetic access$3900(Lcom/htc/music/LandingPageActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mAlbumCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$3902(Lcom/htc/music/LandingPageActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/htc/music/LandingPageActivity;->mAlbumCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$4000(Lcom/htc/music/LandingPageActivity;)Landroid/database/ContentObserver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mContentObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic access$402(Lcom/htc/music/LandingPageActivity;Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/htc/music/LandingPageActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object p1
.end method

.method static synthetic access$4200(Lcom/htc/music/LandingPageActivity;)Lcom/htc/music/util/AsyncImageDecoder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    return-object v0
.end method

.method static synthetic access$4202(Lcom/htc/music/LandingPageActivity;Lcom/htc/music/util/AsyncImageDecoder;)Lcom/htc/music/util/AsyncImageDecoder;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/htc/music/LandingPageActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    return-object p1
.end method

.method static synthetic access$4502(Lcom/htc/music/LandingPageActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/htc/music/LandingPageActivity;->mSelectedAlbumName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4602(Lcom/htc/music/LandingPageActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/htc/music/LandingPageActivity;->mSelectedArtistName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4702(Lcom/htc/music/LandingPageActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput p1, p0, Lcom/htc/music/LandingPageActivity;->mSelectedAlbumId:I

    return p1
.end method

.method static synthetic access$4800(Lcom/htc/music/LandingPageActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/htc/music/LandingPageActivity;->showAlbumOptions()V

    return-void
.end method

.method static synthetic access$4900(Lcom/htc/music/LandingPageActivity;)Lcom/htc/music/util/MemoryCacheMBitmapByTime;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    return-object v0
.end method

.method static synthetic access$502(Lcom/htc/music/LandingPageActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput p1, p0, Lcom/htc/music/LandingPageActivity;->mOrientation:I

    return p1
.end method

.method static synthetic access$5100(Lcom/htc/music/LandingPageActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget v0, p0, Lcom/htc/music/LandingPageActivity;->mScreenWidth:I

    return v0
.end method

.method static synthetic access$5200(Lcom/htc/music/LandingPageActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget v0, p0, Lcom/htc/music/LandingPageActivity;->mScreenHeight:I

    return v0
.end method

.method static synthetic access$5300(Lcom/htc/music/LandingPageActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/htc/music/LandingPageActivity;->reloadRecentAlbum(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/music/LandingPageActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/htc/music/LandingPageActivity;->initConstant()V

    return-void
.end method

.method static synthetic access$702(Lcom/htc/music/LandingPageActivity;Lcom/htc/music/ShortcutPageInfo;)Lcom/htc/music/ShortcutPageInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/htc/music/LandingPageActivity;->mShortcutPageInfo:Lcom/htc/music/ShortcutPageInfo;

    return-object p1
.end method

.method static synthetic access$800(Lcom/htc/music/LandingPageActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/htc/music/LandingPageActivity;->reloadLaunchItemList()V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/music/LandingPageActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/htc/music/LandingPageActivity;->updateLaunchItemsUI()V

    return-void
.end method

.method private appExist(Landroid/content/Intent;)Z
    .locals 3
    .parameter "intent"

    .prologue
    const/4 v0, 0x0

    .line 1836
    invoke-virtual {p0}, Lcom/htc/music/LandingPageActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 1837
    .local v1, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v0, 0x1

    .line 1838
    .local v0, appExist:Z
    :cond_0
    return v0
.end method

.method private getLibraryIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 1876
    const/4 v0, 0x0

    .line 1877
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/htc/music/LandingPageActivity;->getParent()Landroid/app/Activity;

    move-result-object v1

    .line 1878
    .local v1, parent:Landroid/app/Activity;
    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    if-eqz v2, :cond_0

    .line 1879
    check-cast v1, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    .end local v1           #parent:Landroid/app/Activity;
    invoke-virtual {v1}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->getLastCategoryIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1884
    :goto_0
    return-object v0

    .line 1881
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

    .line 1842
    invoke-virtual {p0}, Lcom/htc/music/LandingPageActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1843
    .local v1, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v1, p1, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 1844
    .local v2, resolveInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v2, :cond_0

    .line 1845
    const-string v4, "[LandingPage]"

    const-string v5, "getResolveInfo, resolveInfoList is null"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1857
    :goto_0
    return-object v3

    .line 1848
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 1849
    .local v0, length:I
    if-gtz v0, :cond_1

    .line 1850
    const-string v4, "[LandingPage]"

    const-string v5, "getResolveInfo, There\'s no app to match the launch intent"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1853
    :cond_1
    const/4 v3, 0x1

    if-le v0, v3, :cond_2

    .line 1854
    const-string v3, "[LandingPage]"

    const-string v4, "getResolveInfo, The intent will launch more than one app"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1857
    :cond_2
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    goto :goto_0
.end method

.method private getUpdatedAddList()[Ljava/lang/String;
    .locals 8

    .prologue
    .line 668
    iget-object v5, p0, Lcom/htc/music/LandingPageActivity;->mPreferences:Landroid/content/SharedPreferences;

    const-string v6, "removelist"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 669
    .local v4, removeListStr:Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/htc/music/LandingPageActivity;->strToStrArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 671
    .local v3, removeList:[Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/music/LandingPageActivity;->mAutoAddList:[Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/htc/music/LandingPageActivity;->strArrayToStr([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 673
    .local v0, autoAddStr:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 674
    array-length v1, v3

    .line 675
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 676
    aget-object v5, v3, v2

    if-eqz v5, :cond_0

    aget-object v5, v3, v2

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 677
    aget-object v5, v3, v2

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 675
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 682
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
    .line 1870
    invoke-virtual {p0}, Lcom/htc/music/LandingPageActivity;->hideHtcContextMenu()V

    .line 1871
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/music/LandingPageActivity;->removeDialog(I)V

    .line 1872
    const/16 v0, 0x25a

    invoke-virtual {p0, v0}, Lcom/htc/music/LandingPageActivity;->removeDialog(I)V

    .line 1873
    return-void
.end method

.method private initConstant()V
    .locals 3

    .prologue
    .line 632
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 633
    .local v0, option:Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 634
    invoke-virtual {p0}, Lcom/htc/music/LandingPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020059

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 635
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v1, p0, Lcom/htc/music/LandingPageActivity;->mLuanchItemBgWidth:I

    .line 636
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v1, p0, Lcom/htc/music/LandingPageActivity;->mLuanchItemBgHeight:I

    .line 637
    invoke-virtual {p0}, Lcom/htc/music/LandingPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2080078

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 638
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v1, p0, Lcom/htc/music/LandingPageActivity;->mSmallIconWidth:I

    .line 639
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v1, p0, Lcom/htc/music/LandingPageActivity;->mSmallIconHeight:I

    .line 640
    invoke-static {}, Lcom/htc/music/util/LandingUtils;->getAutoAddList()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/LandingPageActivity;->mAutoAddList:[Ljava/lang/String;

    .line 641
    return-void
.end method

.method private isCarModeExist()Z
    .locals 3

    .prologue
    .line 1861
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1862
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.AutoMotive"

    const-string v2, "com.htc.AutoMotive.carousel.MainActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1863
    invoke-direct {p0, v0}, Lcom/htc/music/LandingPageActivity;->appExist(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1864
    const/4 v1, 0x1

    .line 1866
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isHVGA()Z
    .locals 3

    .prologue
    .line 2098
    iget v1, p0, Lcom/htc/music/LandingPageActivity;->mScreenWidth:I

    iget v2, p0, Lcom/htc/music/LandingPageActivity;->mScreenHeight:I

    if-le v1, v2, :cond_0

    iget v0, p0, Lcom/htc/music/LandingPageActivity;->mScreenWidth:I

    .line 2099
    .local v0, length:I
    :goto_0
    const/16 v1, 0x1e0

    if-ne v0, v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 2098
    .end local v0           #length:I
    :cond_0
    iget v0, p0, Lcom/htc/music/LandingPageActivity;->mScreenHeight:I

    goto :goto_0

    .line 2099
    .restart local v0       #length:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private launchMediaServer()V
    .locals 4

    .prologue
    .line 1606
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1607
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.PICK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1609
    invoke-static {p0}, Lcom/htc/music/util/ProjectSettings;->getEnableExpList(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1610
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v2, "com.htc.media/dlnaexp"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1614
    :goto_0
    const-string v1, "ShowActivityTitle"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1615
    const-string v1, "InnerActivityType"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1616
    const-string v1, "LaunchFromSwitcher"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1617
    invoke-virtual {p0, v0}, Lcom/htc/music/LandingPageActivity;->startActivity(Landroid/content/Intent;)V

    .line 1619
    const-string v1, "com.htc.music.mediaserver"

    invoke-virtual {p0}, Lcom/htc/music/LandingPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070034

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/htc/music/LandingPageActivity;->sendUsedAppULogMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 1621
    return-void

    .line 1612
    :cond_0
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v2, "com.htc.media/dlna"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private loadRecentAlbumIdListFromPref(Landroid/content/SharedPreferences;)[I
    .locals 6
    .parameter "sharedPreferences"

    .prologue
    .line 2028
    const-string v4, "[LandingPage]"

    const-string v5, "loadRecentAlbumIdListFromPref +"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2031
    const/4 v2, 0x0

    .line 2032
    .local v2, newstyle:Z
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/wrap/android/os/HtcWrapFileUtils;->getFatVolumeId(Ljava/lang/String;)I

    move-result v0

    .line 2033
    .local v0, cardId:I
    xor-int/lit8 v1, v0, -0x1

    .line 2034
    .local v1, id:I
    const-string v4, "cardid"

    invoke-interface {p1, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2035
    const/4 v2, 0x1

    .line 2036
    const-string v4, "cardid"

    xor-int/lit8 v5, v0, -0x1

    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2038
    :cond_0
    if-ne v1, v0, :cond_1

    .line 2041
    const-string v4, "[LandingPage]"

    const-string v5, "reloadQueueImpl: card id is the same."

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2042
    invoke-direct {p0, p1, v2}, Lcom/htc/music/LandingPageActivity;->loadRecentAlbumList(Landroid/content/SharedPreferences;Z)[I

    move-result-object v3

    .line 2047
    .local v3, retAry:[I
    :goto_0
    const-string v4, "[LandingPage]"

    const-string v5, "loadRecentAlbumIdListFromPref -"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2048
    return-object v3

    .line 2044
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
    .line 2053
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2055
    .local v8, retIntList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const-string v11, "localrecentalbumid"

    const-string v12, ""

    invoke-interface {p1, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2057
    .local v6, q:Ljava/lang/String;
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x1

    if-le v11, v12, :cond_4

    .line 2058
    const-string v11, ";"

    invoke-virtual {v6, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2059
    .local v1, entries:[Ljava/lang/String;
    array-length v4, v1

    .line 2060
    .local v4, len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_4

    .line 2061
    if-eqz p2, :cond_3

    .line 2062
    aget-object v9, v1, v2

    .line 2063
    .local v9, revhex:Ljava/lang/String;
    const/4 v5, 0x0

    .line 2064
    .local v5, n:I
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v3, v11, -0x1

    .local v3, j:I
    :goto_1
    if-ltz v3, :cond_2

    .line 2065
    shl-int/lit8 v5, v5, 0x4

    .line 2066
    invoke-virtual {v9, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2067
    .local v0, c:C
    const/16 v11, 0x30

    if-lt v0, v11, :cond_0

    const/16 v11, 0x39

    if-gt v0, v11, :cond_0

    .line 2068
    add-int/lit8 v11, v0, -0x30

    add-int/2addr v5, v11

    .line 2064
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 2069
    :cond_0
    const/16 v11, 0x61

    if-lt v0, v11, :cond_1

    const/16 v11, 0x66

    if-gt v0, v11, :cond_1

    .line 2070
    add-int/lit8 v11, v0, 0xa

    add-int/lit8 v11, v11, -0x61

    add-int/2addr v5, v11

    goto :goto_2

    .line 2073
    :cond_1
    const/4 v4, 0x0

    .line 2078
    .end local v0           #c:C
    :cond_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2060
    .end local v3           #j:I
    .end local v5           #n:I
    .end local v9           #revhex:Ljava/lang/String;
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2081
    :cond_3
    aget-object v11, v1, v2

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 2087
    .end local v1           #entries:[Ljava/lang/String;
    .end local v2           #i:I
    .end local v4           #len:I
    :cond_4
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    .line 2088
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

    .line 2089
    new-array v7, v10, [I

    .line 2090
    .local v7, retAry:[I
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_4
    if-ge v2, v10, :cond_5

    .line 2091
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    aput v11, v7, v2

    .line 2090
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 2094
    :cond_5
    return-object v7
.end method

.method private reloadLaunchItemList()V
    .locals 15

    .prologue
    .line 687
    iget-object v12, p0, Lcom/htc/music/LandingPageActivity;->mAutoAddList:[Ljava/lang/String;

    invoke-static {p0, v12}, Lcom/htc/music/util/LandingUtils;->getShortcutInfoList(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    .line 688
    .local v11, shortcutInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/music/ShortcutInfo;>;"
    new-instance v10, Lcom/htc/music/ShortcutInfo;

    invoke-direct {v10}, Lcom/htc/music/ShortcutInfo;-><init>()V

    .line 689
    .local v10, shortcutInfo:Lcom/htc/music/ShortcutInfo;
    const-string v12, "com.htc.music"

    invoke-virtual {v10, v12}, Lcom/htc/music/ShortcutInfo;->setPackageName(Ljava/lang/String;)V

    .line 690
    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Lcom/htc/music/ShortcutInfo;->setType(I)V

    .line 691
    const/4 v12, 0x0

    invoke-virtual {v11, v12, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 693
    const-string v12, "LandingPage"

    const/4 v13, 0x5

    invoke-virtual {p0, v12, v13}, Lcom/htc/music/LandingPageActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    iput-object v12, p0, Lcom/htc/music/LandingPageActivity;->mPreferences:Landroid/content/SharedPreferences;

    .line 695
    iget-object v12, p0, Lcom/htc/music/LandingPageActivity;->mPreferences:Landroid/content/SharedPreferences;

    const-string v13, "removelist"

    const/4 v14, 0x0

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 696
    .local v8, removeListStr:Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 697
    iget-object v12, p0, Lcom/htc/music/LandingPageActivity;->mRemoveList:Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 700
    :cond_0
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 701
    .local v6, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v6, :cond_7

    .line 702
    const/4 v3, 0x0

    .line 703
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/htc/music/ShortcutInfo;

    invoke-virtual {v12}, Lcom/htc/music/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 704
    .local v7, pkgName:Ljava/lang/String;
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/htc/music/ShortcutInfo;

    invoke-virtual {v12}, Lcom/htc/music/ShortcutInfo;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 705
    .local v0, clsName:Ljava/lang/String;
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/htc/music/ShortcutInfo;

    invoke-virtual {v12}, Lcom/htc/music/ShortcutInfo;->getType()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 706
    .local v5, launchType:I
    const/4 v4, 0x0

    .line 707
    .local v4, item:Lcom/htc/music/LandingPageActivity$LaunchItem;
    const/4 v9, 0x0

    .line 708
    .local v9, resolveInfo:Landroid/content/pm/ResolveInfo;
    packed-switch v5, :pswitch_data_0

    .line 701
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 710
    :pswitch_0
    new-instance v4, Lcom/htc/music/LandingPageActivity$LaunchItem;

    .end local v4           #item:Lcom/htc/music/LandingPageActivity$LaunchItem;
    invoke-direct {v4, p0}, Lcom/htc/music/LandingPageActivity$LaunchItem;-><init>(Lcom/htc/music/LandingPageActivity;)V

    .line 711
    .restart local v4       #item:Lcom/htc/music/LandingPageActivity$LaunchItem;
    invoke-virtual {p0}, Lcom/htc/music/LandingPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x2080078

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setIcon(Landroid/graphics/drawable/Drawable;)V
    invoke-static {v4, v12}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2100(Lcom/htc/music/LandingPageActivity$LaunchItem;Landroid/graphics/drawable/Drawable;)V

    .line 712
    invoke-virtual {p0}, Lcom/htc/music/LandingPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0700f3

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setName(Ljava/lang/String;)V
    invoke-static {v4, v12}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2200(Lcom/htc/music/LandingPageActivity$LaunchItem;Ljava/lang/String;)V

    .line 713
    const-string v12, "com.htc.music"

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setPackageName(Ljava/lang/String;)V
    invoke-static {v4, v12}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2300(Lcom/htc/music/LandingPageActivity$LaunchItem;Ljava/lang/String;)V

    .line 714
    const/4 v12, 0x1

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setInnerItemEnable(Z)V
    invoke-static {v4, v12}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2400(Lcom/htc/music/LandingPageActivity$LaunchItem;Z)V

    .line 715
    const/4 v12, 0x0

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setItemType(I)V
    invoke-static {v4, v12}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2500(Lcom/htc/music/LandingPageActivity$LaunchItem;I)V

    .line 716
    invoke-direct {p0}, Lcom/htc/music/LandingPageActivity;->getLibraryIntent()Landroid/content/Intent;

    move-result-object v12

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setLaunchIntent(Landroid/content/Intent;)V
    invoke-static {v4, v12}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$1300(Lcom/htc/music/LandingPageActivity$LaunchItem;Landroid/content/Intent;)V

    .line 717
    iget-object v12, p0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 720
    :pswitch_1
    iget-object v12, p0, Lcom/htc/music/LandingPageActivity;->mShortcutPageInfo:Lcom/htc/music/ShortcutPageInfo;

    invoke-virtual {v12, v7}, Lcom/htc/music/ShortcutPageInfo;->getPreloadIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 721
    if-eqz v3, :cond_1

    .line 722
    invoke-direct {p0, v3}, Lcom/htc/music/LandingPageActivity;->getResolveInfo(Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;

    move-result-object v9

    .line 723
    if-eqz v9, :cond_1

    .line 724
    new-instance v4, Lcom/htc/music/LandingPageActivity$LaunchItem;

    .end local v4           #item:Lcom/htc/music/LandingPageActivity$LaunchItem;
    invoke-direct {v4, p0}, Lcom/htc/music/LandingPageActivity$LaunchItem;-><init>(Lcom/htc/music/LandingPageActivity;)V

    .line 725
    .restart local v4       #item:Lcom/htc/music/LandingPageActivity$LaunchItem;
    const/high16 v12, 0x1000

    invoke-virtual {v3, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v12

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setLaunchIntent(Landroid/content/Intent;)V
    invoke-static {v4, v12}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$1300(Lcom/htc/music/LandingPageActivity$LaunchItem;Landroid/content/Intent;)V

    .line 726
    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setItemType(I)V
    invoke-static {v4, v5}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2500(Lcom/htc/music/LandingPageActivity$LaunchItem;I)V

    .line 727
    iget-object v12, p0, Lcom/htc/music/LandingPageActivity;->mShortcutPageInfo:Lcom/htc/music/ShortcutPageInfo;

    invoke-virtual {v12, v7}, Lcom/htc/music/ShortcutPageInfo;->getPreloadIcon(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    if-eqz v12, :cond_2

    .line 728
    iget-object v12, p0, Lcom/htc/music/LandingPageActivity;->mShortcutPageInfo:Lcom/htc/music/ShortcutPageInfo;

    invoke-virtual {v12, v7}, Lcom/htc/music/ShortcutPageInfo;->getPreloadIcon(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setIcon(I)V
    invoke-static {v4, v12}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2600(Lcom/htc/music/LandingPageActivity$LaunchItem;I)V

    .line 731
    :cond_2
    const-string v12, "com.melodis.midomiMusicIdentifier"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    const-string v12, "com.melodis.midomiMusicIdentifier.freemium"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 733
    :cond_3
    const/4 v12, 0x1

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setSoundHoundEnable(Z)V
    invoke-static {v4, v12}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2700(Lcom/htc/music/LandingPageActivity$LaunchItem;Z)V

    .line 735
    :cond_4
    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setPackageName(Ljava/lang/String;)V
    invoke-static {v4, v7}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2300(Lcom/htc/music/LandingPageActivity$LaunchItem;Ljava/lang/String;)V

    .line 737
    invoke-direct {p0, v4, v9}, Lcom/htc/music/LandingPageActivity;->setNameAndIcon(Lcom/htc/music/LandingPageActivity$LaunchItem;Landroid/content/pm/ResolveInfo;)V

    .line 738
    iget-object v12, p0, Lcom/htc/music/LandingPageActivity;->mPreloadList:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 740
    iget-object v12, p0, Lcom/htc/music/LandingPageActivity;->mPreloadList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 741
    .local v2, insertIndex:I
    iget-object v12, p0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-gt v2, v12, :cond_5

    .line 742
    iget-object v12, p0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v12, v2, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 744
    :cond_5
    const-string v12, "[LandingPage]"

    const-string v13, "reloadLaunchItemList, Insert index > mLaunchItemList size"

    invoke-static {v12, v13}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    iget-object v12, p0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 751
    .end local v2           #insertIndex:I
    :pswitch_2
    invoke-virtual {p0}, Lcom/htc/music/LandingPageActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    invoke-virtual {v12, v7}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 752
    if-eqz v3, :cond_1

    .line 753
    invoke-direct {p0, v3}, Lcom/htc/music/LandingPageActivity;->getResolveInfo(Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;

    move-result-object v9

    .line 754
    if-eqz v9, :cond_1

    .line 755
    new-instance v4, Lcom/htc/music/LandingPageActivity$LaunchItem;

    .end local v4           #item:Lcom/htc/music/LandingPageActivity$LaunchItem;
    invoke-direct {v4, p0}, Lcom/htc/music/LandingPageActivity$LaunchItem;-><init>(Lcom/htc/music/LandingPageActivity;)V

    .line 756
    .restart local v4       #item:Lcom/htc/music/LandingPageActivity$LaunchItem;
    const/high16 v12, 0x1000

    invoke-virtual {v3, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v12

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setLaunchIntent(Landroid/content/Intent;)V
    invoke-static {v4, v12}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$1300(Lcom/htc/music/LandingPageActivity$LaunchItem;Landroid/content/Intent;)V

    .line 757
    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setItemType(I)V
    invoke-static {v4, v5}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2500(Lcom/htc/music/LandingPageActivity$LaunchItem;I)V

    .line 758
    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setPackageName(Ljava/lang/String;)V
    invoke-static {v4, v7}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2300(Lcom/htc/music/LandingPageActivity$LaunchItem;Ljava/lang/String;)V

    .line 759
    invoke-direct {p0, v4, v9}, Lcom/htc/music/LandingPageActivity;->setNameAndIcon(Lcom/htc/music/LandingPageActivity$LaunchItem;Landroid/content/pm/ResolveInfo;)V

    .line 760
    iget-object v12, p0, Lcom/htc/music/LandingPageActivity;->mAutoDetectList:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 761
    iget-object v12, p0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 766
    :pswitch_3
    invoke-static {v7, v0}, Lcom/htc/music/util/MusicUtils;->getAppLaunchIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 767
    if-eqz v3, :cond_1

    .line 768
    invoke-direct {p0, v3}, Lcom/htc/music/LandingPageActivity;->getResolveInfo(Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;

    move-result-object v9

    .line 769
    if-eqz v9, :cond_1

    .line 770
    new-instance v4, Lcom/htc/music/LandingPageActivity$LaunchItem;

    .end local v4           #item:Lcom/htc/music/LandingPageActivity$LaunchItem;
    invoke-direct {v4, p0}, Lcom/htc/music/LandingPageActivity$LaunchItem;-><init>(Lcom/htc/music/LandingPageActivity;)V

    .line 771
    .restart local v4       #item:Lcom/htc/music/LandingPageActivity$LaunchItem;
    const/high16 v12, 0x1000

    invoke-virtual {v3, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v12

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setLaunchIntent(Landroid/content/Intent;)V
    invoke-static {v4, v12}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$1300(Lcom/htc/music/LandingPageActivity$LaunchItem;Landroid/content/Intent;)V

    .line 772
    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setItemType(I)V
    invoke-static {v4, v5}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2500(Lcom/htc/music/LandingPageActivity$LaunchItem;I)V

    .line 773
    const-string v12, "com.htc.fm"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 774
    const v12, 0x7f020046

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setIcon(I)V
    invoke-static {v4, v12}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2600(Lcom/htc/music/LandingPageActivity$LaunchItem;I)V

    .line 776
    :cond_6
    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setPackageName(Ljava/lang/String;)V
    invoke-static {v4, v7}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2300(Lcom/htc/music/LandingPageActivity$LaunchItem;Ljava/lang/String;)V

    .line 777
    invoke-direct {p0, v4, v9}, Lcom/htc/music/LandingPageActivity;->setNameAndIcon(Lcom/htc/music/LandingPageActivity$LaunchItem;Landroid/content/pm/ResolveInfo;)V

    .line 778
    iget-object v12, p0, Lcom/htc/music/LandingPageActivity;->mUserAddList:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 779
    iget-object v12, p0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 786
    .end local v0           #clsName:Ljava/lang/String;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #item:Lcom/htc/music/LandingPageActivity$LaunchItem;
    .end local v5           #launchType:I
    .end local v7           #pkgName:Ljava/lang/String;
    .end local v9           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_7
    return-void

    .line 708
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

    .line 1955
    const/4 v11, 0x0

    .line 1956
    .local v11, newRecentAlbumIds:[I
    const/4 v9, 0x0

    .line 1957
    .local v9, failFromPref:Z
    if-nez p1, :cond_4

    .line 1959
    :try_start_0
    iget-object v3, p0, Lcom/htc/music/LandingPageActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v3, :cond_1

    .line 1960
    const-string v3, "[LandingPage]"

    const-string v4, "reloadRecentAlbum, mService = null"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2025
    :cond_0
    :goto_0
    return-void

    .line 1964
    :cond_1
    iget-object v3, p0, Lcom/htc/music/LandingPageActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v3}, Lcom/htc/music/IMediaPlaybackService;->getRecentAlbumId()[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 1974
    :goto_1
    if-nez v11, :cond_2

    .line 1975
    const-string v3, "[LandingPage]"

    const-string v4, "recentAlbumIds is null"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1978
    :cond_2
    if-nez v9, :cond_c

    .line 1980
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

    .line 1983
    :cond_3
    const-string v0, "[LandingPage]"

    const-string v1, "Recent album didn\'t change."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1965
    :catch_0
    move-exception v8

    .line 1966
    .local v8, e:Landroid/os/RemoteException;
    const-string v3, "[LandingPage]"

    const-string v4, "Cannot get recent album ID from service."

    invoke-static {v3, v4, v8}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1970
    .end local v8           #e:Landroid/os/RemoteException;
    :cond_4
    const-string v3, "Music"

    const/4 v4, 0x5

    invoke-virtual {p0, v3, v4}, Lcom/htc/music/LandingPageActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/htc/music/LandingPageActivity;->loadRecentAlbumIdListFromPref(Landroid/content/SharedPreferences;)[I

    move-result-object v11

    .line 1971
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

    .line 1987
    :cond_7
    iput-object v11, p0, Lcom/htc/music/LandingPageActivity;->mRecentAlbumIds:[I

    .line 1988
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mRecentAlbumIds:[I

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mRecentAlbumIds:[I

    array-length v0, v0

    if-gtz v0, :cond_9

    .line 1989
    :cond_8
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1990
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1991
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1996
    :cond_9
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1997
    .local v12, where:Ljava/lang/StringBuilder;
    const-string v0, "_id"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1998
    const-string v0, " IN ("

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1999
    const/4 v10, 0x0

    .local v10, i:I
    :goto_3
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mRecentAlbumIds:[I

    array-length v0, v0

    if-ge v10, v0, :cond_b

    .line 2000
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mRecentAlbumIds:[I

    aget v0, v0, v10

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2001
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mRecentAlbumIds:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ge v10, v0, :cond_a

    .line 2002
    const-string v0, ","

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1999
    :cond_a
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 2005
    :cond_b
    const-string v0, ")"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2009
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mRecentAlbumQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    sget-object v3, Lcom/htc/music/util/MusicUtils$Albums2;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/htc/music/LandingPageActivity;->mAlbumCols:[Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/htc/music/util/DlArtAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2012
    .end local v10           #i:I
    .end local v12           #where:Ljava/lang/StringBuilder;
    :cond_c
    const-string v7, "album COLLATE NOCASE ASC LIMIT 0,8"

    .line 2013
    .local v7, sortOrder:Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2014
    .restart local v12       #where:Ljava/lang/StringBuilder;
    const-string v0, "album != \'\'"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2015
    const-string v0, " AND album != \'<unknown>\'"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2019
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mRecentAlbumQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    sget-object v3, Lcom/htc/music/util/MusicUtils$Albums2;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

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

    .line 1905
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mNonUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1906
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mNonUIHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1907
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mNonUIHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1909
    :cond_0
    return-void
.end method

.method private saveLaunchItemList()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 789
    const-string v3, "LandingPage"

    const/4 v4, 0x7

    invoke-virtual {p0, v3, v4}, Lcom/htc/music/LandingPageActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/LandingPageActivity;->mPreferences:Landroid/content/SharedPreferences;

    .line 790
    iget-object v3, p0, Lcom/htc/music/LandingPageActivity;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 791
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v3, "launchitemcount"

    iget-object v4, p0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 792
    const-string v3, "preloadlistcount"

    iget-object v4, p0, Lcom/htc/music/LandingPageActivity;->mPreloadList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 793
    const-string v3, "autodetectlistcount"

    iget-object v4, p0, Lcom/htc/music/LandingPageActivity;->mAutoDetectList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 795
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x400

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 796
    .local v2, strBuilder:Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 797
    iget-object v3, p0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/music/LandingPageActivity$LaunchItem;

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getPackageName()Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$1700(Lcom/htc/music/LandingPageActivity$LaunchItem;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 798
    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 796
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 800
    :cond_0
    const-string v3, "launchitemlist"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 802
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v2, v5, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 803
    const/4 v1, 0x1

    :goto_1
    iget-object v3, p0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 804
    iget-object v3, p0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/music/LandingPageActivity$LaunchItem;

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getItemType()I
    invoke-static {v3}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$1600(Lcom/htc/music/LandingPageActivity$LaunchItem;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 805
    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 803
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 807
    :cond_1
    const-string v3, "launchtypelist"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 809
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v2, v5, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 810
    const/4 v1, 0x1

    :goto_2
    iget-object v3, p0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 811
    iget-object v3, p0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/music/LandingPageActivity$LaunchItem;

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getLaunchIntent()Landroid/content/Intent;
    invoke-static {v3}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$1500(Lcom/htc/music/LandingPageActivity$LaunchItem;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 812
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

    .line 816
    :goto_3
    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 810
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 814
    :cond_2
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 818
    :cond_3
    const-string v3, "launchclassnamelist"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 820
    const-string v3, "removelist"

    iget-object v4, p0, Lcom/htc/music/LandingPageActivity;->mRemoveList:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 822
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 823
    return-void
.end method

.method private scaleLaunchIcon(Landroid/widget/ImageView;II)V
    .locals 3
    .parameter "iv"
    .parameter "iconWidth"
    .parameter "iconHeight"

    .prologue
    .line 995
    iget v2, p0, Lcom/htc/music/LandingPageActivity;->mLuanchItemBgWidth:I

    sub-int/2addr v2, p2

    div-int/lit8 v0, v2, 0x2

    .line 996
    .local v0, paddingLeft:I
    iget v2, p0, Lcom/htc/music/LandingPageActivity;->mLuanchItemBgHeight:I

    sub-int/2addr v2, p3

    div-int/lit8 v1, v2, 0x2

    .line 997
    .local v1, paddingTop:I
    invoke-virtual {p1, v0, v1, v0, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 998
    return-void
.end method

.method private sendUsedAppULogMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "packageName"
    .parameter "label"

    .prologue
    .line 2104
    if-nez p1, :cond_0

    .line 2105
    const-string v2, "[LandingPage]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendUsedAppULogMessage, packageName is null!, label: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2120
    :goto_0
    return-void

    .line 2109
    :cond_0
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mNonUIHandler:Landroid/os/Handler;

    if-eqz v2, :cond_1

    .line 2110
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mNonUIHandler:Landroid/os/Handler;

    const/16 v3, 0x2712

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 2111
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2112
    .local v0, data:Landroid/os/Bundle;
    const-string v2, "package_name"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2113
    const-string v2, "label"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2114
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2115
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mNonUIHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 2118
    .end local v0           #data:Landroid/os/Bundle;
    .end local v1           #msg:Landroid/os/Message;
    :cond_1
    const-string v2, "[LandingPage]"

    const-string v3, "sendUsedAppULogMessage, mNonUIHandler is null!"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setNameAndIcon(Lcom/htc/music/LandingPageActivity$LaunchItem;Landroid/content/pm/ResolveInfo;)V
    .locals 3
    .parameter "item"
    .parameter "resolveInfo"

    .prologue
    .line 977
    if-nez p2, :cond_1

    .line 978
    const-string v1, "[LandingPage]"

    const-string v2, "setNameAndIcon(), resolveInfo is null"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 992
    :cond_0
    :goto_0
    return-void

    .line 982
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/LandingPageActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 983
    .local v0, pm:Landroid/content/pm/PackageManager;
    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getIconId()I
    invoke-static {p1}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$3200(Lcom/htc/music/LandingPageActivity$LaunchItem;)I

    move-result v1

    if-gtz v1, :cond_2

    .line 984
    invoke-virtual {p2, v0}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setIcon(Landroid/graphics/drawable/Drawable;)V
    invoke-static {p1, v1}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2100(Lcom/htc/music/LandingPageActivity$LaunchItem;Landroid/graphics/drawable/Drawable;)V

    .line 987
    :cond_2
    invoke-virtual {p2, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setName(Ljava/lang/String;)V
    invoke-static {p1, v1}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2200(Lcom/htc/music/LandingPageActivity$LaunchItem;Ljava/lang/String;)V

    .line 989
    const-string v1, "com.htc.vmm"

    iget-object v2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 990
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
    .line 1824
    invoke-static {p0, p1, p2, p3}, Lcom/htc/music/util/MusicUtils;->getShareMusicText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/LandingPageActivity;->mShareText:Ljava/lang/String;

    .line 1826
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mShareText:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1827
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/music/LandingPageActivity;->mShareText:Ljava/lang/String;

    .line 1831
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/music/LandingPageActivity;->showNewDialog(I)V

    .line 1832
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

    .line 1769
    const/4 v2, 0x0

    .line 1770
    .local v2, items:[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 1771
    .local v1, ids:[I
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->CheckDLNAStatus(Landroid/content/Context;)I

    move-result v0

    .line 1772
    .local v0, dlnaMode:I
    if-nez v0, :cond_0

    .line 1774
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

    .line 1778
    .restart local v2       #items:[Ljava/lang/CharSequence;
    new-array v1, v7, [I

    .end local v1           #ids:[I
    fill-array-data v1, :array_0

    .line 1786
    .restart local v1       #ids:[I
    :goto_0
    invoke-virtual {p0}, Lcom/htc/music/LandingPageActivity;->hideHtcContextMenu()V

    .line 1787
    iget-object v3, p0, Lcom/htc/music/LandingPageActivity;->mSelectedAlbumName:Ljava/lang/String;

    invoke-virtual {p0, v3, v2, v1}, Lcom/htc/music/LandingPageActivity;->showHtcContextMenu(Ljava/lang/String;[Ljava/lang/CharSequence;[I)V

    .line 1788
    return-void

    .line 1781
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

    .line 1784
    .restart local v2       #items:[Ljava/lang/CharSequence;
    new-array v1, v4, [I

    .end local v1           #ids:[I
    fill-array-data v1, :array_1

    .restart local v1       #ids:[I
    goto :goto_0

    .line 1778
    :array_0
    .array-data 0x4
        0x17t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
    .end array-data

    .line 1784
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
    .line 644
    if-nez p1, :cond_0

    .line 645
    const-string v3, "[LandingPage]"

    const-string v4, "strArrayToStr, strArray is null"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    const/4 v3, 0x0

    .line 654
    :goto_0
    return-object v3

    .line 648
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x400

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 649
    .local v2, strBuilder:Ljava/lang/StringBuilder;
    array-length v0, p1

    .line 650
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 651
    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 652
    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 654
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private strToStrArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .parameter "str"

    .prologue
    .line 658
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 659
    :cond_0
    const-string v1, "[LandingPage]"

    const-string v2, "strToStrArray, str is null or empty"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    const/4 v0, 0x0

    .line 663
    :goto_0
    return-object v0

    .line 662
    :cond_1
    const-string v1, ";"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 663
    .local v0, strArray:[Ljava/lang/String;
    goto :goto_0
.end method

.method private updateLaunchItemsUI()V
    .locals 27

    .prologue
    .line 826
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 827
    .local v8, itemNumber:I
    if-gtz v8, :cond_0

    .line 828
    const-string v22, "[LandingPage]"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "itemNumber = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 973
    :goto_0
    return-void

    .line 831
    :cond_0
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity;->mHeaderViewList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v7, v0, :cond_1

    .line 832
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mList:Lcom/htc/widget/HtcListView;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity;->mHeaderViewList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/view/View;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->removeHeaderView(Landroid/view/View;)Z

    .line 831
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 834
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity;->mHeaderViewList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->clear()V

    .line 836
    const/16 v22, 0x5

    move/from16 v0, v22

    new-array v15, v0, [I

    fill-array-data v15, :array_0

    .line 837
    .local v15, resNameId:[I
    const/16 v22, 0x5

    move/from16 v0, v22

    new-array v13, v0, [I

    fill-array-data v13, :array_1

    .line 838
    .local v13, resIconId:[I
    const/16 v22, 0x5

    move/from16 v0, v22

    new-array v14, v0, [I

    fill-array-data v14, :array_2

    .line 840
    .local v14, resLayoutId:[I
    const/16 v18, 0x0

    .line 841
    .local v18, shortcutView:Landroid/view/View;
    new-instance v10, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 842
    .local v10, ll:Landroid/widget/LinearLayout;
    new-instance v22, Lcom/htc/widget/HtcAbsListView$LayoutParams;

    const/16 v23, -0x1

    const/16 v24, -0x2

    invoke-direct/range {v22 .. v24}, Lcom/htc/widget/HtcAbsListView$LayoutParams;-><init>(II)V

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 843
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 844
    const v22, 0x2080001

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 846
    const/4 v5, 0x3

    .line 847
    .local v5, column:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/LandingPageActivity;->mOrientation:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_4

    .line 848
    const/4 v5, 0x3

    .line 849
    const/16 v22, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/LandingPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x2050011

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v23

    const/16 v24, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/LandingPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x205000b

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v25

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 872
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    move-object/from16 v22, v0

    const v23, 0x7f030035

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v18

    .line 873
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/LandingPageActivity;->isHVGA()Z

    move-result v22

    if-eqz v22, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/LandingPageActivity;->mOrientation:I

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_7

    .line 874
    const v22, 0x7f08008a

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    .line 875
    .local v20, view:Landroid/view/View;
    const/16 v22, 0x8

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 876
    const v22, 0x7f080089

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    .line 877
    const/16 v22, 0x8

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 879
    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/LandingPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const/high16 v26, 0x205

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v25

    move-object/from16 v0, v18

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 884
    .end local v20           #view:Landroid/view/View;
    :goto_3
    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 885
    const v22, 0x7f08007d

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 886
    .local v9, iv:Landroid/widget/ImageView;
    new-instance v11, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v11}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 887
    .local v11, option:Landroid/graphics/BitmapFactory$Options;
    const/16 v22, 0x1

    move/from16 v0, v22

    iput-boolean v0, v11, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 889
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/LandingPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f02003e

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-static {v0, v1, v11}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 890
    iget v0, v11, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide v24, 0x3fe999999999999aL

    mul-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v11, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 891
    iget v0, v11, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide v24, 0x3fe999999999999aL

    mul-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v11, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 892
    invoke-virtual {v9}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    .line 893
    .local v12, params:Landroid/view/ViewGroup$LayoutParams;
    iget v0, v11, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v12, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 894
    iget v0, v11, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v12, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 895
    const v22, 0x7f02003e

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 897
    const v22, 0x7f08007e

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .end local v9           #iv:Landroid/widget/ImageView;
    check-cast v9, Landroid/widget/ImageView;

    .line 898
    .restart local v9       #iv:Landroid/widget/ImageView;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/LandingPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f02003d

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-static {v0, v1, v11}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 899
    iget v0, v11, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide v24, 0x3fe999999999999aL

    mul-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v11, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 900
    iget v0, v11, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide v24, 0x3fe999999999999aL

    mul-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v11, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 901
    invoke-virtual {v9}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    .line 902
    iget v0, v11, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v12, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 903
    iget v0, v11, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v12, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 904
    const v22, 0x7f02003d

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 905
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 906
    const/16 v22, 0x0

    aget v22, v15, v22

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 907
    .local v19, tv:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/htc/music/LandingPageActivity$LaunchItem;

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getName()Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2800(Lcom/htc/music/LandingPageActivity$LaunchItem;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 909
    const/16 v22, 0x0

    aget v22, v14, v22

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    .line 910
    .local v21, viewItem:Landroid/view/View;
    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    .line 912
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/htc/music/LandingPageActivity$LaunchItem;

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getClickListener()Landroid/view/View$OnClickListener;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2900(Lcom/htc/music/LandingPageActivity$LaunchItem;)Landroid/view/View$OnClickListener;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 913
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/htc/music/LandingPageActivity$LaunchItem;

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getLongClickListener()Landroid/view/View$OnLongClickListener;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$3000(Lcom/htc/music/LandingPageActivity$LaunchItem;)Landroid/view/View$OnLongClickListener;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 914
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/htc/music/LandingPageActivity$LaunchItem;

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getOnTouchListener()Landroid/view/View$OnTouchListener;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$3100(Lcom/htc/music/LandingPageActivity$LaunchItem;)Landroid/view/View$OnTouchListener;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 916
    const v22, 0x7f08007c

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    .line 917
    .local v6, fl:Landroid/widget/FrameLayout;
    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/LandingPageActivity;->mLuanchItemBgWidth:I

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 918
    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/LandingPageActivity;->mLuanchItemBgHeight:I

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 922
    const/4 v7, 0x1

    :goto_4
    if-ge v7, v8, :cond_a

    .line 923
    rem-int v22, v7, v5

    if-nez v22, :cond_2

    .line 924
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    move-object/from16 v22, v0

    const v23, 0x7f030035

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v18

    .line 925
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/LandingPageActivity;->isHVGA()Z

    move-result v22

    if-eqz v22, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/LandingPageActivity;->mOrientation:I

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_8

    .line 926
    const v22, 0x7f08008a

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    .line 927
    .restart local v20       #view:Landroid/view/View;
    const/16 v22, 0x8

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 928
    const v22, 0x7f080089

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    .line 929
    const/16 v22, 0x8

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 931
    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/LandingPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const/high16 v26, 0x205

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v25

    move-object/from16 v0, v18

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 936
    .end local v20           #view:Landroid/view/View;
    :goto_5
    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 939
    :cond_2
    rem-int v22, v7, v5

    aget v22, v13, v22

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .end local v9           #iv:Landroid/widget/ImageView;
    check-cast v9, Landroid/widget/ImageView;

    .line 940
    .restart local v9       #iv:Landroid/widget/ImageView;
    invoke-virtual {v9}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/LandingPageActivity;->mLuanchItemBgWidth:I

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 941
    invoke-virtual {v9}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/LandingPageActivity;->mLuanchItemBgHeight:I

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 942
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/htc/music/LandingPageActivity$LaunchItem;

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getIconId()I
    invoke-static/range {v22 .. v22}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$3200(Lcom/htc/music/LandingPageActivity$LaunchItem;)I

    move-result v22

    if-lez v22, :cond_9

    .line 943
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/htc/music/LandingPageActivity$LaunchItem;

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getIconId()I
    invoke-static/range {v22 .. v22}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$3200(Lcom/htc/music/LandingPageActivity$LaunchItem;)I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 944
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 945
    sget-object v22, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 952
    :goto_6
    rem-int v22, v7, v5

    aget v22, v15, v22

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    .end local v19           #tv:Landroid/widget/TextView;
    check-cast v19, Landroid/widget/TextView;

    .line 953
    .restart local v19       #tv:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/htc/music/LandingPageActivity$LaunchItem;

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getName()Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2800(Lcom/htc/music/LandingPageActivity$LaunchItem;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 954
    if-nez v7, :cond_3

    .line 955
    const/16 v22, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/LandingPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x205000d

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v23

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 957
    :cond_3
    rem-int v22, v7, v5

    aget v22, v14, v22

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    .line 958
    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    .line 960
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/htc/music/LandingPageActivity$LaunchItem;

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getClickListener()Landroid/view/View$OnClickListener;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2900(Lcom/htc/music/LandingPageActivity$LaunchItem;)Landroid/view/View$OnClickListener;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 961
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/htc/music/LandingPageActivity$LaunchItem;

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getLongClickListener()Landroid/view/View$OnLongClickListener;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$3000(Lcom/htc/music/LandingPageActivity$LaunchItem;)Landroid/view/View$OnLongClickListener;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 962
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/htc/music/LandingPageActivity$LaunchItem;

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getOnTouchListener()Landroid/view/View$OnTouchListener;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$3100(Lcom/htc/music/LandingPageActivity$LaunchItem;)Landroid/view/View$OnTouchListener;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 922
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_4

    .line 853
    .end local v6           #fl:Landroid/widget/FrameLayout;
    .end local v9           #iv:Landroid/widget/ImageView;
    .end local v11           #option:Landroid/graphics/BitmapFactory$Options;
    .end local v12           #params:Landroid/view/ViewGroup$LayoutParams;
    .end local v19           #tv:Landroid/widget/TextView;
    .end local v21           #viewItem:Landroid/view/View;
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/LandingPageActivity;->mOrientation:I

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_6

    .line 854
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/LandingPageActivity;->isHVGA()Z

    move-result v22

    if-eqz v22, :cond_5

    .line 855
    const/4 v5, 0x4

    .line 856
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/LandingPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x205000a

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v22

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/LandingPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const/high16 v24, 0x205

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v23

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/LandingPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x205000a

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v24

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/LandingPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x2050001

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v25

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto/16 :goto_2

    .line 861
    :cond_5
    const/4 v5, 0x5

    .line 862
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/LandingPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x205000a

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v22

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/LandingPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const/high16 v24, 0x205

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v23

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/LandingPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x205000a

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v24

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/LandingPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x205000b

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v25

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto/16 :goto_2

    .line 868
    :cond_6
    const-string v22, "[LandingPage]"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Unknown orientation change. mOrientation = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/LandingPageActivity;->mOrientation:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 881
    :cond_7
    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/LandingPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x205000a

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v25

    move-object/from16 v0, v18

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_3

    .line 933
    .restart local v6       #fl:Landroid/widget/FrameLayout;
    .restart local v9       #iv:Landroid/widget/ImageView;
    .restart local v11       #option:Landroid/graphics/BitmapFactory$Options;
    .restart local v12       #params:Landroid/view/ViewGroup$LayoutParams;
    .restart local v19       #tv:Landroid/widget/TextView;
    .restart local v21       #viewItem:Landroid/view/View;
    :cond_8
    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/LandingPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x205000a

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v25

    move-object/from16 v0, v18

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_5

    .line 947
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/htc/music/LandingPageActivity$LaunchItem;

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getIcon()Landroid/graphics/drawable/Drawable;
    invoke-static/range {v22 .. v22}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$3300(Lcom/htc/music/LandingPageActivity$LaunchItem;)Landroid/graphics/drawable/Drawable;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 948
    const v22, 0x7f020059

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 949
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/LandingPageActivity;->mSmallIconWidth:I

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

    iget v0, v0, Lcom/htc/music/LandingPageActivity;->mSmallIconHeight:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const v24, 0x3f99999a

    mul-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v9, v1, v2}, Lcom/htc/music/LandingPageActivity;->scaleLaunchIcon(Landroid/widget/ImageView;II)V

    goto/16 :goto_6

    .line 964
    :cond_a
    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 965
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mList:Lcom/htc/widget/HtcListView;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v10, v1, v2}, Lcom/htc/widget/HtcListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 966
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity;->mHeaderViewList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 967
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    move-object/from16 v22, v0

    const v23, 0x7f03002e

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v17

    .line 968
    .local v17, seperatorView:Landroid/view/View;
    const v22, 0x7f080077

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/htc/widget/HtcListItemSeparator;

    .line 969
    .local v16, seperator:Lcom/htc/widget/HtcListItemSeparator;
    const/16 v22, 0x0

    const v23, 0x7f070119

    move-object/from16 v0, v16

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcListItemSeparator;->setText(II)V

    .line 970
    const/16 v22, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItemSeparator;->setBackgroundStyle(I)V

    .line 971
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mList:Lcom/htc/widget/HtcListView;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    move-object/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 972
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/LandingPageActivity;->mHeaderViewList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 836
    :array_0
    .array-data 0x4
        0x7ft 0x0t 0x8t 0x7ft
        0x82t 0x0t 0x8t 0x7ft
        0x85t 0x0t 0x8t 0x7ft
        0x88t 0x0t 0x8t 0x7ft
        0x8ct 0x0t 0x8t 0x7ft
    .end array-data

    .line 837
    :array_1
    .array-data 0x4
        0x7dt 0x0t 0x8t 0x7ft
        0x81t 0x0t 0x8t 0x7ft
        0x84t 0x0t 0x8t 0x7ft
        0x87t 0x0t 0x8t 0x7ft
        0x8bt 0x0t 0x8t 0x7ft
    .end array-data

    .line 838
    :array_2
    .array-data 0x4
        0x7bt 0x0t 0x8t 0x7ft
        0x80t 0x0t 0x8t 0x7ft
        0x83t 0x0t 0x8t 0x7ft
        0x86t 0x0t 0x8t 0x7ft
        0x8at 0x0t 0x8t 0x7ft
    .end array-data
.end method


# virtual methods
.method protected executeMenuAction(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 1599
    if-nez p1, :cond_1

    .line 1603
    :cond_0
    :goto_0
    return-void

    .line 1600
    :cond_1
    const/4 v0, 0x2

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v1, :cond_0

    .line 1601
    invoke-direct {p0}, Lcom/htc/music/LandingPageActivity;->launchMediaServer()V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 16
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 1645
    sparse-switch p1, :sswitch_data_0

    .line 1766
    :cond_0
    :goto_0
    return-void

    .line 1647
    :sswitch_0
    const/4 v12, -0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_0

    .line 1648
    const/4 v6, 0x0

    .line 1649
    .local v6, pkgName:Ljava/lang/String;
    if-eqz p3, :cond_4

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    if-eqz v12, :cond_4

    .line 1650
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 1654
    :goto_1
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

    .line 1655
    const/4 v4, 0x3

    .line 1656
    .local v4, itemType:I
    if-eqz v6, :cond_5

    .line 1657
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/LandingPageActivity;->mShortcutPageInfo:Lcom/htc/music/ShortcutPageInfo;

    invoke-virtual {v12, v6}, Lcom/htc/music/ShortcutPageInfo;->getPreloadAutoDetectType(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 1658
    .local v2, integer:Ljava/lang/Integer;
    if-eqz v2, :cond_1

    .line 1659
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1664
    .end local v2           #integer:Ljava/lang/Integer;
    :cond_1
    :goto_2
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

    .line 1666
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/LandingPageActivity;->mRemoveList:Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1667
    .local v9, removeListStr:Ljava/lang/String;
    if-eqz v6, :cond_2

    const-string v12, ";"

    invoke-virtual {v6, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1668
    const-string v12, ";"

    invoke-virtual {v6, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, ""

    invoke-virtual {v9, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 1669
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/LandingPageActivity;->mRemoveList:Ljava/lang/StringBuilder;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/LandingPageActivity;->mRemoveList:Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1670
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/LandingPageActivity;->mRemoveList:Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1673
    :cond_2
    new-instance v3, Lcom/htc/music/LandingPageActivity$LaunchItem;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/htc/music/LandingPageActivity$LaunchItem;-><init>(Lcom/htc/music/LandingPageActivity;)V

    .line 1674
    .local v3, item:Lcom/htc/music/LandingPageActivity$LaunchItem;
    const/4 v10, 0x0

    .line 1675
    .local v10, resolveInfo:Landroid/content/pm/ResolveInfo;
    packed-switch v4, :pswitch_data_0

    .line 1752
    :cond_3
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/htc/music/LandingPageActivity;->updateLaunchItemsUI()V

    goto/16 :goto_0

    .line 1652
    .end local v3           #item:Lcom/htc/music/LandingPageActivity$LaunchItem;
    .end local v4           #itemType:I
    .end local v9           #removeListStr:Ljava/lang/String;
    .end local v10           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_4
    const-string v12, "[LandingPage]"

    const-string v13, "ADD_APP_SHORTCUT, intent = null or intent.getComponent() = null"

    invoke-static {v12, v13}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1662
    .restart local v4       #itemType:I
    :cond_5
    const-string v12, "[LandingPage]"

    const-string v13, "onActivityResult, ADD_APP_SHORTCUT, package name is null"

    invoke-static {v12, v13}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1677
    .restart local v3       #item:Lcom/htc/music/LandingPageActivity$LaunchItem;
    .restart local v9       #removeListStr:Ljava/lang/String;
    .restart local v10       #resolveInfo:Landroid/content/pm/ResolveInfo;
    :pswitch_0
    if-eqz v6, :cond_3

    .line 1680
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/LandingPageActivity;->mShortcutPageInfo:Lcom/htc/music/ShortcutPageInfo;

    invoke-virtual {v12, v6}, Lcom/htc/music/ShortcutPageInfo;->getPreloadIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .line 1681
    .local v8, preloadIntent:Landroid/content/Intent;
    if-eqz v8, :cond_a

    .line 1682
    new-instance v3, Lcom/htc/music/LandingPageActivity$LaunchItem;

    .end local v3           #item:Lcom/htc/music/LandingPageActivity$LaunchItem;
    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/htc/music/LandingPageActivity$LaunchItem;-><init>(Lcom/htc/music/LandingPageActivity;)V

    .line 1683
    .restart local v3       #item:Lcom/htc/music/LandingPageActivity$LaunchItem;
    const/high16 v12, 0x1000

    invoke-virtual {v8, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v12

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setLaunchIntent(Landroid/content/Intent;)V
    invoke-static {v3, v12}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$1300(Lcom/htc/music/LandingPageActivity$LaunchItem;Landroid/content/Intent;)V

    .line 1684
    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setItemType(I)V
    invoke-static {v3, v4}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2500(Lcom/htc/music/LandingPageActivity$LaunchItem;I)V

    .line 1685
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/LandingPageActivity;->mShortcutPageInfo:Lcom/htc/music/ShortcutPageInfo;

    invoke-virtual {v12, v6}, Lcom/htc/music/ShortcutPageInfo;->getPreloadIcon(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    if-eqz v12, :cond_6

    .line 1686
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/LandingPageActivity;->mShortcutPageInfo:Lcom/htc/music/ShortcutPageInfo;

    invoke-virtual {v12, v6}, Lcom/htc/music/ShortcutPageInfo;->getPreloadIcon(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setIcon(I)V
    invoke-static {v3, v12}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2600(Lcom/htc/music/LandingPageActivity$LaunchItem;I)V

    .line 1689
    :cond_6
    const-string v12, "com.melodis.midomiMusicIdentifier"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_7

    const-string v12, "com.melodis.midomiMusicIdentifier.freemium"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 1691
    :cond_7
    const/4 v12, 0x1

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setSoundHoundEnable(Z)V
    invoke-static {v3, v12}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2700(Lcom/htc/music/LandingPageActivity$LaunchItem;Z)V

    .line 1693
    :cond_8
    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setPackageName(Ljava/lang/String;)V
    invoke-static {v3, v6}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2300(Lcom/htc/music/LandingPageActivity$LaunchItem;Ljava/lang/String;)V

    .line 1694
    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getLaunchIntent()Landroid/content/Intent;
    invoke-static {v3}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$1500(Lcom/htc/music/LandingPageActivity$LaunchItem;)Landroid/content/Intent;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/htc/music/LandingPageActivity;->getResolveInfo(Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;

    move-result-object v10

    .line 1695
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v10}, Lcom/htc/music/LandingPageActivity;->setNameAndIcon(Lcom/htc/music/LandingPageActivity$LaunchItem;Landroid/content/pm/ResolveInfo;)V

    .line 1696
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/LandingPageActivity;->mPreloadList:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1698
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/LandingPageActivity;->mPreloadList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1699
    .local v1, insertIndex:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-gt v1, v12, :cond_9

    .line 1700
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v12, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_3

    .line 1702
    :cond_9
    const-string v12, "[LandingPage]"

    const-string v13, "onActivityResult, Insert index > mLaunchItemList size"

    invoke-static {v12, v13}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1703
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1706
    .end local v1           #insertIndex:I
    :cond_a
    const-string v12, "[LandingPage]"

    const-string v13, "onActivityResult, ADD_APP_SHORTCUT, TYPE_PRELOAD, preloadIntent is null"

    invoke-static {v12, v13}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1711
    .end local v8           #preloadIntent:Landroid/content/Intent;
    :pswitch_1
    if-eqz p3, :cond_b

    .line 1712
    new-instance v3, Lcom/htc/music/LandingPageActivity$LaunchItem;

    .end local v3           #item:Lcom/htc/music/LandingPageActivity$LaunchItem;
    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/htc/music/LandingPageActivity$LaunchItem;-><init>(Lcom/htc/music/LandingPageActivity;)V

    .line 1713
    .restart local v3       #item:Lcom/htc/music/LandingPageActivity$LaunchItem;
    const/high16 v12, 0x1000

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v12

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setLaunchIntent(Landroid/content/Intent;)V
    invoke-static {v3, v12}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$1300(Lcom/htc/music/LandingPageActivity$LaunchItem;Landroid/content/Intent;)V

    .line 1714
    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setItemType(I)V
    invoke-static {v3, v4}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2500(Lcom/htc/music/LandingPageActivity$LaunchItem;I)V

    .line 1715
    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setPackageName(Ljava/lang/String;)V
    invoke-static {v3, v6}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2300(Lcom/htc/music/LandingPageActivity$LaunchItem;Ljava/lang/String;)V

    .line 1716
    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getLaunchIntent()Landroid/content/Intent;
    invoke-static {v3}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$1500(Lcom/htc/music/LandingPageActivity$LaunchItem;)Landroid/content/Intent;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/htc/music/LandingPageActivity;->getResolveInfo(Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;

    move-result-object v10

    .line 1717
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v10}, Lcom/htc/music/LandingPageActivity;->setNameAndIcon(Lcom/htc/music/LandingPageActivity$LaunchItem;Landroid/content/pm/ResolveInfo;)V

    .line 1718
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/LandingPageActivity;->mAutoDetectList:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1719
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1721
    :cond_b
    const-string v12, "[LandingPage]"

    const-string v13, "onActivityResult, ADD_APP_SHORTCUT, TYPE_AUTO_DETECT, intent is null"

    invoke-static {v12, v13}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1726
    :pswitch_2
    if-eqz p3, :cond_e

    .line 1727
    new-instance v3, Lcom/htc/music/LandingPageActivity$LaunchItem;

    .end local v3           #item:Lcom/htc/music/LandingPageActivity$LaunchItem;
    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/htc/music/LandingPageActivity$LaunchItem;-><init>(Lcom/htc/music/LandingPageActivity;)V

    .line 1728
    .restart local v3       #item:Lcom/htc/music/LandingPageActivity$LaunchItem;
    const/high16 v12, 0x1000

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v12

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setLaunchIntent(Landroid/content/Intent;)V
    invoke-static {v3, v12}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$1300(Lcom/htc/music/LandingPageActivity$LaunchItem;Landroid/content/Intent;)V

    .line 1729
    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setItemType(I)V
    invoke-static {v3, v4}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2500(Lcom/htc/music/LandingPageActivity$LaunchItem;I)V

    .line 1730
    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setPackageName(Ljava/lang/String;)V
    invoke-static {v3, v6}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2300(Lcom/htc/music/LandingPageActivity$LaunchItem;Ljava/lang/String;)V

    .line 1731
    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getLaunchIntent()Landroid/content/Intent;
    invoke-static {v3}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$1500(Lcom/htc/music/LandingPageActivity$LaunchItem;)Landroid/content/Intent;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/htc/music/LandingPageActivity;->getResolveInfo(Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;

    move-result-object v10

    .line 1732
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v10}, Lcom/htc/music/LandingPageActivity;->setNameAndIcon(Lcom/htc/music/LandingPageActivity$LaunchItem;Landroid/content/pm/ResolveInfo;)V

    .line 1733
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/LandingPageActivity;->mUserAddList:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1735
    const-string v12, "com.htc.fm"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 1736
    const v12, 0x7f020046

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setIcon(I)V
    invoke-static {v3, v12}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$2600(Lcom/htc/music/LandingPageActivity$LaunchItem;I)V

    .line 1737
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/LandingPageActivity;->mPreloadList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v1, v12, 0x1

    .line 1738
    .restart local v1       #insertIndex:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-gt v1, v12, :cond_c

    .line 1739
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v12, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_3

    .line 1741
    :cond_c
    const-string v12, "[LandingPage]"

    const-string v13, "FMRadio\'s insert index > mLaunchItemList size"

    invoke-static {v12, v13}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1742
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1745
    .end local v1           #insertIndex:I
    :cond_d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1748
    :cond_e
    const-string v12, "[LandingPage]"

    const-string v13, "onActivityResult, ADD_APP_SHORTCUT, TYPE_OTHER, intent is null"

    invoke-static {v12, v13}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1757
    .end local v3           #item:Lcom/htc/music/LandingPageActivity$LaunchItem;
    .end local v4           #itemType:I
    .end local v6           #pkgName:Ljava/lang/String;
    .end local v9           #removeListStr:Ljava/lang/String;
    .end local v10           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :sswitch_1
    const/4 v12, -0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_0

    .line 1758
    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/music/LandingPageActivity;->mSelectedAlbumId:I

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v12, v13, v14, v15}, Lcom/htc/music/util/MusicUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1760
    .local v11, where:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lcom/htc/music/util/MusicUtils;->getSongListForAlbum(Landroid/content/Context;Ljava/lang/String;)[I

    move-result-object v5

    .line 1761
    .local v5, list:[I
    const-string v12, "playlist"

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 1762
    .local v7, playlist:I
    int-to-long v12, v7

    move-object/from16 v0, p0

    invoke-static {v0, v5, v12, v13}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    goto/16 :goto_0

    .line 1645
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x17 -> :sswitch_1
    .end sparse-switch

    .line 1675
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
    .line 540
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 542
    iget v2, p0, Lcom/htc/music/LandingPageActivity;->mOrientation:I

    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v3, :cond_0

    .line 553
    :goto_0
    return-void

    .line 545
    :cond_0
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/htc/music/LandingPageActivity;->mOrientation:I

    .line 546
    invoke-virtual {p0}, Lcom/htc/music/LandingPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 547
    .local v1, res:Landroid/content/res/Resources;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 548
    .local v0, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/htc/music/LandingPageActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 549
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/htc/music/LandingPageActivity;->mScreenWidth:I

    .line 550
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/htc/music/LandingPageActivity;->mScreenHeight:I

    .line 552
    invoke-direct {p0}, Lcom/htc/music/LandingPageActivity;->updateLaunchItemsUI()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    const/4 v6, 0x1

    .line 368
    const-string v3, "[LandingPage]"

    const-string v4, "onCreate() +"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 370
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/htc/music/LandingPageActivity;->setVolumeControlStream(I)V

    .line 371
    iget-object v3, p0, Lcom/htc/music/LandingPageActivity;->mStatusListener:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "com.htc.music.recentlyplayedalbumchanged"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v4}, Lcom/htc/music/LandingPageActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 373
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 374
    .local v0, f:Landroid/content/IntentFilter;
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #f:Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 375
    .restart local v0       #f:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 376
    const-string v3, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 377
    const-string v3, "file"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 378
    iget-object v3, p0, Lcom/htc/music/LandingPageActivity;->mStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v0}, Lcom/htc/music/LandingPageActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 381
    invoke-virtual {p0}, Lcom/htc/music/LandingPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 382
    .local v2, res:Landroid/content/res/Resources;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 383
    .local v1, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/htc/music/LandingPageActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 384
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v3, p0, Lcom/htc/music/LandingPageActivity;->mScreenWidth:I

    .line 385
    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v3, p0, Lcom/htc/music/LandingPageActivity;->mScreenHeight:I

    .line 387
    const v3, 0x7f030033

    invoke-virtual {p0, v3}, Lcom/htc/music/LandingPageActivity;->setContentView(I)V

    .line 388
    const v3, 0x102000a

    invoke-virtual {p0, v3}, Lcom/htc/music/LandingPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListView;

    iput-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mList:Lcom/htc/widget/HtcListView;

    .line 389
    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mList:Lcom/htc/widget/HtcListView;

    const/4 v4, 0x0

    invoke-virtual {v3, v6, v4}, Lcom/htc/widget/HtcListView;->enableAnimation(IZ)V

    .line 391
    new-instance v3, Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;

    invoke-virtual {p0}, Lcom/htc/music/LandingPageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/htc/music/LandingPageActivity$RecentAlbumQueryHandler;-><init>(Lcom/htc/music/LandingPageActivity;Landroid/content/ContentResolver;)V

    iput-object v3, p0, Lcom/htc/music/LandingPageActivity;->mRecentAlbumQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    .line 392
    invoke-direct {p0, v6}, Lcom/htc/music/LandingPageActivity;->reloadRecentAlbum(Z)V

    .line 398
    new-instance v3, Landroid/os/HandlerThread;

    const-string v4, "LandingPageNonUIThread"

    invoke-direct {v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/htc/music/LandingPageActivity;->mHandlerThread:Landroid/os/HandlerThread;

    .line 399
    iget-object v3, p0, Lcom/htc/music/LandingPageActivity;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 400
    new-instance v3, Lcom/htc/music/LandingPageActivity$NonUIHandler;

    iget-object v4, p0, Lcom/htc/music/LandingPageActivity;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/htc/music/LandingPageActivity$NonUIHandler;-><init>(Lcom/htc/music/LandingPageActivity;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/htc/music/LandingPageActivity;->mNonUIHandler:Landroid/os/Handler;

    .line 402
    iget-object v3, p0, Lcom/htc/music/LandingPageActivity;->mUIHandler:Landroid/os/Handler;

    const/16 v4, 0x2710

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 404
    const-string v3, "[LandingPage]"

    const-string v4, "onCreate() -"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    .line 557
    packed-switch p1, :pswitch_data_0

    .line 605
    :pswitch_0
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    :goto_0
    return-object v1

    .line 560
    :pswitch_1
    const/4 v0, 0x0

    .line 561
    .local v0, items:[Ljava/lang/CharSequence;
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/CharSequence;

    .end local v0           #items:[Ljava/lang/CharSequence;
    const/4 v2, 0x0

    const v3, 0x7f0701d3

    invoke-virtual {p0, v3}, Lcom/htc/music/LandingPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 564
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

    .line 597
    .local v1, longPressDialog:Lcom/htc/widget/HtcAlertDialog;
    goto :goto_0

    .line 603
    .end local v0           #items:[Ljava/lang/CharSequence;
    .end local v1           #longPressDialog:Lcom/htc/widget/HtcAlertDialog;
    :pswitch_2
    invoke-virtual {p0}, Lcom/htc/music/LandingPageActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/LandingPageActivity;->mShareText:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/htc/music/widget/SharedAdapter;->shareIntentChooser(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v1

    goto :goto_0

    .line 557
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
    .line 610
    invoke-static {p0, p1}, Lcom/htc/music/util/MusicUtils;->createPlaylist(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 611
    .local v0, id:I
    iget v1, p0, Lcom/htc/music/LandingPageActivity;->mSelectedAlbumId:I

    invoke-static {p0, v1}, Lcom/htc/music/util/MusicUtils;->getSongListForAlbum(Landroid/content/Context;I)[I

    move-result-object v1

    int-to-long v2, v0

    invoke-static {p0, v1, v2, v3}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    .line 613
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 1522
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 1529
    const v0, 0x7f0701cf

    invoke-interface {p1, v1, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1530
    invoke-static {p0}, Lcom/htc/music/util/ProjectSettings;->getEnableDLNA(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1531
    const v0, 0x7f070034

    invoke-interface {p1, v1, v1, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1536
    :cond_0
    return v3
.end method

.method public onDestroy()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 444
    const-string v2, "[LandingPage]"

    const-string v3, "onDestroy"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mNonUIHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 447
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mNonUIHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 448
    iput-object v5, p0, Lcom/htc/music/LandingPageActivity;->mNonUIHandler:Landroid/os/Handler;

    .line 451
    :cond_0
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v2, :cond_1

    .line 452
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->quit()V

    .line 453
    iput-object v5, p0, Lcom/htc/music/LandingPageActivity;->mHandlerThread:Landroid/os/HandlerThread;

    .line 457
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/htc/music/LandingPageActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    :goto_0
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    if-eqz v2, :cond_2

    .line 463
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    invoke-virtual {v2}, Lcom/htc/music/util/AsyncImageDecoder;->quit()V

    .line 464
    iput-object v5, p0, Lcom/htc/music/LandingPageActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    .line 467
    :cond_2
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mAlbumCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_3

    .line 469
    :try_start_1
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mAlbumCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/htc/music/LandingPageActivity;->mContentObserver:Landroid/database/ContentObserver;

    invoke-interface {v2, v3}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 473
    :goto_1
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mAlbumCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 474
    iput-object v5, p0, Lcom/htc/music/LandingPageActivity;->mAlbumCursor:Landroid/database/Cursor;

    .line 480
    :cond_3
    invoke-virtual {p0, v5}, Lcom/htc/music/LandingPageActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 481
    iput-object v5, p0, Lcom/htc/music/LandingPageActivity;->mAdapter:Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;

    .line 482
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mRemoveList:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 487
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    invoke-virtual {v2}, Lcom/htc/music/util/MemoryCacheMBitmapByTime;->clear()V

    .line 489
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mRecentAlbumList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 490
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mPreloadList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 491
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mAutoDetectList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 492
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mUserAddList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 493
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 494
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mShortcutPageInfo:Lcom/htc/music/ShortcutPageInfo;

    if-eqz v2, :cond_4

    .line 495
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mShortcutPageInfo:Lcom/htc/music/ShortcutPageInfo;

    invoke-virtual {v2}, Lcom/htc/music/ShortcutPageInfo;->clear()V

    .line 497
    :cond_4
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onDestroy()V

    .line 498
    return-void

    .line 458
    :catch_0
    move-exception v1

    .line 459
    .local v1, ex:Ljava/lang/IllegalArgumentException;
    const-string v2, "[LandingPage]"

    const-string v3, "[onDestroy] unregisterReceiver(mStatusListener)"

    invoke-static {v2, v3, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 470
    .end local v1           #ex:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 471
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

    .line 1791
    packed-switch p1, :pswitch_data_0

    .line 1820
    :goto_0
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onHtcContextItemSelected(I)Z

    move-result v3

    :goto_1
    return v3

    .line 1793
    :pswitch_0
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->checkPlaylistCount(Landroid/content/Context;)I

    move-result v4

    if-gtz v4, :cond_0

    .line 1794
    const/16 v4, 0x25a

    invoke-virtual {p0, v4}, Lcom/htc/music/LandingPageActivity;->showDialog(I)V

    goto :goto_1

    .line 1797
    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1798
    .local v2, intent:Landroid/content/Intent;
    const-class v4, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;

    invoke-virtual {v2, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1799
    const-string v4, "pickermode"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1800
    iget v4, p0, Lcom/htc/music/LandingPageActivity;->mSelectedAlbumId:I

    invoke-static {p0, v4}, Lcom/htc/music/util/MusicUtils;->getSongListForAlbum(Landroid/content/Context;I)[I

    move-result-object v0

    .line 1801
    .local v0, addToPlaylistData:[I
    const-string v4, "AddToPlaylistData"

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 1802
    const/16 v4, 0x17

    invoke-virtual {p0, v2, v4}, Lcom/htc/music/LandingPageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 1808
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

    .line 1809
    :catch_0
    move-exception v1

    .line 1810
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

    .line 1811
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v1

    .line 1812
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

    .line 1817
    .end local v1           #e:Landroid/os/RemoteException;
    :pswitch_2
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/htc/music/LandingPageActivity;->mSelectedAlbumName:Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/music/LandingPageActivity;->mSelectedArtistName:Ljava/lang/String;

    invoke-direct {p0, v3, v4, v5}, Lcom/htc/music/LandingPageActivity;->shareMusicText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1791
    nop

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onListItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 1624
    const-wide/16 v1, -0x2

    cmp-long v1, p4, v1

    if-nez v1, :cond_0

    .line 1641
    :goto_0
    return-void

    .line 1627
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1628
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v2, "com.htc.media/albumtrack"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1629
    const/high16 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1630
    const-string v1, "albumid"

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1634
    const-string v1, "ShowActivityTitle"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1635
    const-string v1, "InnerActivityType"

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1636
    const-string v1, "ForceDisableDropDown"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1637
    invoke-virtual {p0, v0}, Lcom/htc/music/LandingPageActivity;->startActivity(Landroid/content/Intent;)V

    .line 1639
    const-string v1, "com.htc.music"

    invoke-virtual {p0}, Lcom/htc/music/LandingPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700f3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/htc/music/LandingPageActivity;->sendUsedAppULogMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter "item"

    .prologue
    .line 1552
    const/4 v2, 0x0

    .line 1553
    .local v2, intent:Landroid/content/Intent;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 1594
    :goto_0
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v6

    return v6

    .line 1560
    :sswitch_0
    new-instance v2, Landroid/content/Intent;

    .end local v2           #intent:Landroid/content/Intent;
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1561
    .restart local v2       #intent:Landroid/content/Intent;
    const-class v6, Lcom/htc/music/AddAppShortcutActivity;

    invoke-virtual {v2, p0, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1562
    iget-object v6, p0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v5, v6, [Ljava/lang/String;

    .line 1563
    .local v5, pkgNameList:[Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v0, v6, [Ljava/lang/String;

    .line 1564
    .local v0, clsNameList:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v6, v0

    if-ge v1, v6, :cond_0

    .line 1565
    const/4 v6, 0x0

    aput-object v6, v0, v1

    .line 1564
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1567
    :cond_0
    const/4 v1, 0x1

    :goto_2
    iget-object v6, p0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 1568
    iget-object v6, p0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/music/LandingPageActivity$LaunchItem;

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getPackageName()Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$1700(Lcom/htc/music/LandingPageActivity$LaunchItem;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 1569
    iget-object v6, p0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/music/LandingPageActivity$LaunchItem;

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getItemType()I
    invoke-static {v6}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$1600(Lcom/htc/music/LandingPageActivity$LaunchItem;)I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    .line 1570
    iget-object v6, p0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/music/LandingPageActivity$LaunchItem;

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->getLaunchIntent()Landroid/content/Intent;
    invoke-static {v6}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$1500(Lcom/htc/music/LandingPageActivity$LaunchItem;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v1

    .line 1567
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1573
    :cond_2
    const-string v6, "currentpkg"

    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1574
    const-string v6, "currentcls"

    invoke-virtual {v2, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1575
    const-string v6, "autoaddlist"

    iget-object v7, p0, Lcom/htc/music/LandingPageActivity;->mAutoAddList:[Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/htc/music/LandingPageActivity;->strArrayToStr([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1576
    const/4 v6, 0x0

    invoke-virtual {p0, v2, v6}, Lcom/htc/music/LandingPageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1580
    .end local v0           #clsNameList:[Ljava/lang/String;
    .end local v1           #i:I
    .end local v5           #pkgNameList:[Ljava/lang/String;
    :sswitch_1
    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mBaseUIHandler:Landroid/os/Handler;

    if-eqz v6, :cond_3

    .line 1581
    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mBaseUIHandler:Landroid/os/Handler;

    const v7, 0xea63

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 1582
    .local v4, msg:Landroid/os/Message;
    const/4 v6, 0x2

    iput v6, v4, Landroid/os/Message;->arg1:I

    .line 1583
    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mBaseUIHandler:Landroid/os/Handler;

    invoke-virtual {v6, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1585
    .end local v4           #msg:Landroid/os/Message;
    :cond_3
    invoke-direct {p0}, Lcom/htc/music/LandingPageActivity;->launchMediaServer()V

    goto/16 :goto_0

    .line 1589
    :sswitch_2
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->getLaunchVMMIntent()Landroid/content/Intent;

    move-result-object v3

    .line 1590
    .local v3, launchVmmIntent:Landroid/content/Intent;
    const-string v6, "StartNewActivity"

    const/4 v7, 0x1

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1591
    invoke-virtual {p0, v3}, Lcom/htc/music/LandingPageActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1553
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
    .line 534
    const-string v0, "[LandingPage]"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onPause()V

    .line 536
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 617
    packed-switch p1, :pswitch_data_0

    .line 629
    :goto_0
    return-void

    .line 619
    :pswitch_0
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mLongClickedName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 617
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

    .line 1542
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1543
    .local v1, item:Landroid/view/MenuItem;
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x9

    if-ge v2, v3, :cond_1

    .line 1544
    .local v0, enable:Z
    :goto_0
    if-eqz v1, :cond_0

    .line 1545
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1547
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2

    .line 1543
    .end local v0           #enable:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 523
    const-string v0, "[LandingPage]"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onResume()V

    .line 527
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mLaunchItemList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/LandingPageActivity$LaunchItem;

    invoke-direct {p0}, Lcom/htc/music/LandingPageActivity;->getLibraryIntent()Landroid/content/Intent;

    move-result-object v1

    #calls: Lcom/htc/music/LandingPageActivity$LaunchItem;->setLaunchIntent(Landroid/content/Intent;)V
    invoke-static {v0, v1}, Lcom/htc/music/LandingPageActivity$LaunchItem;->access$1300(Lcom/htc/music/LandingPageActivity$LaunchItem;Landroid/content/Intent;)V

    .line 530
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
    .line 1168
    move v1, p2

    .line 1169
    .local v1, start:I
    add-int v0, p2, p3

    .line 1171
    .local v0, end:I
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    if-eqz v2, :cond_0

    .line 1172
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    invoke-virtual {v2, v1, v0}, Lcom/htc/music/util/AsyncImageDecoder;->setVisibleRange(II)V

    .line 1177
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Lcom/htc/widget/HtcAbsListView;I)V
    .locals 3
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 1145
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

    .line 1146
    packed-switch p2, :pswitch_data_0

    .line 1163
    :cond_0
    :goto_0
    return-void

    .line 1148
    :pswitch_0
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/music/LandingPageActivity;->isActivityResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1149
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->resumeDecode()V

    goto :goto_0

    .line 1153
    :pswitch_1
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/music/LandingPageActivity;->isActivityResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1154
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->resumeDecode()V

    goto :goto_0

    .line 1158
    :pswitch_2
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    if-eqz v0, :cond_0

    .line 1159
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->pauseDecode()V

    goto :goto_0

    .line 1146
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
    .line 502
    const-string v0, "[LandingPage]"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onStart()V

    .line 504
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/LandingPageActivity;->mStopping:Z

    .line 505
    invoke-virtual {p0}, Lcom/htc/music/LandingPageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/LandingPageActivity;->osc:Landroid/content/ServiceConnection;

    invoke-static {v0, v1, v2}, Lcom/htc/music/util/MusicUtils;->bindToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/ServiceConnection;)Z

    .line 506
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 510
    const-string v0, "[LandingPage]"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/LandingPageActivity;->mStopping:Z

    .line 512
    iget-boolean v0, p0, Lcom/htc/music/LandingPageActivity;->mServiceBound:Z

    if-eqz v0, :cond_0

    .line 513
    invoke-virtual {p0}, Lcom/htc/music/LandingPageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    .line 514
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/LandingPageActivity;->mServiceBound:Z

    .line 516
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/LandingPageActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    .line 517
    invoke-direct {p0}, Lcom/htc/music/LandingPageActivity;->saveLaunchItemList()V

    .line 518
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onStop()V

    .line 519
    return-void
.end method
