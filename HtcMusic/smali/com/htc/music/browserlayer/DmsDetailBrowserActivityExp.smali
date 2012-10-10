.class public Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;
.super Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;
.source "DmsDetailBrowserActivityExp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$itemInfo;,
        Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;,
        Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;,
        Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;,
        Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaNotifyStub;,
        Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$workHandler;
    }
.end annotation


# static fields
.field private static final DETAIL_PAGE:I = 0x4

.field private static final DIALOG_ERROR:I = 0x1

.field private static final DIALOG_LOADING:I = 0x0

.field private static final DIRECTION_DOWN:I = 0x1

.field private static final DIRECTION_UP:I = -0x1

.field public static final DLNA_CALLER_ALBUM:I = 0x0

.field public static final DLNA_CALLER_MUSIC:I = 0x1

.field public static final DLNA_CALLER_MUSIC_BROWSER:I = 0x10

.field private static final GETCURSOR:I = 0x3

.field private static final GET_THUMBNAIL:I = 0x5

.field public static final INTENT_BROWSERLAYER:I = 0x0

.field public static final INTENT_UPPER:I = 0x1

.field public static final MENU_PLAYALL:I = 0xf

.field public static final MENU_REFRESH:I = 0xa

.field public static final MENU_ROOT:I = 0xb

.field public static final MENU_SHUFFLE:I = 0xe

.field public static final MENU_UP:I = 0xc

.field public static final PRESSMENU_DETAILS:I = 0x2

.field public static final PRESSMENU_PLAY:I = 0x1

.field private static final QUERY_COUNT:I = 0xa

.field private static final QUERY_TIMER:I = 0x3

.field private static final REFRESH:I = 0x0

.field private static final REMOVE_DIALOG:I = 0x1

.field private static final REMOVE_SPINNER:I = 0x2

.field public static final RESULT_FINISH:I = 0x0

.field public static final RESULT_ROOT:I = 0x1

.field public static final RESULT_SERVER:I = 0x3

.field public static final RESULT_UPPER:I = 0x2

.field private static final SET_TITLE:I = 0x6

.field private static final SHOW_ERRDIALOG:I = 0x7

.field private static final ServiceError_ServerNotFound:I = -0x1f5

.field private static final TAG:Ljava/lang/String; = "[DMS]"

.field private static final UPnPError_AuthorizationFail:I = 0x321

.field private static final kUPnPError_ConnectionFailed:I = -0x1

.field private static mServerIcon:Landroid/graphics/Bitmap;

.field private static mTime:J


# instance fields
.field private mAdapter:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;

.field private mBrowsingComplete:Z

.field private mClearImageCache:Z

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContainerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContentList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentPage:I

.field mCursorCols:[Ljava/lang/String;

.field private mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

.field private mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

.field private mDestroy:Z

.field private mDetailIntent:Landroid/content/Intent;

.field private mDirection:I

.field private mDlnaMode:I

.field private mDmcService:Lcom/htc/music/IDmcUiPlaybackService;

.field private mDmpListener:Landroid/content/BroadcastReceiver;

.field private mDmpService:Lcom/htc/music/IDmpUiPlaybackService;

.field private mFilePath:Ljava/lang/String;

.field private mFileStartIdx:J

.field private mHandler:Landroid/os/Handler;

.field private mIconPath:Ljava/lang/String;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIniContainerID:Ljava/lang/String;

.field private mIniContainerName:Ljava/lang/String;

.field private mIniServerID:Ljava/lang/String;

.field private mIniServerName:Ljava/lang/String;

.field private mInitial:Z

.field private mIsMusicExist:Z

.field private mIsScrolling:Z

.field private mListView:Lcom/htc/widget/HtcListView;

.field private mLoadingNext:Z

.field private mLoadingPrev:Z

.field private mMediaService:Lcom/htc/music/IMediaPlaybackService;

.field private mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;

.field private mNotifyCallback:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaNotifyStub;

.field private mPage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mSelectedItem:I

.field private mService:Lcom/htc/dlnainterface/IDLNAPluginService;

.field private mWorkHandler:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$workHandler;

.field private mWorkthread:Landroid/os/HandlerThread;

.field private mcurContent:Ljava/lang/String;

.field private mcurDMR:Ljava/lang/String;

.field private msc:Landroid/content/ServiceConnection;

.field private mscDmc:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mServerIcon:Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 82
    invoke-direct {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;-><init>()V

    .line 150
    iput v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDirection:I

    .line 151
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mLoadingPrev:Z

    .line 152
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mLoadingNext:Z

    .line 153
    iput-boolean v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mBrowsingComplete:Z

    .line 154
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mClearImageCache:Z

    .line 160
    iput-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mMediaService:Lcom/htc/music/IMediaPlaybackService;

    .line 161
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDlnaMode:I

    .line 162
    iput-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mcurContent:Ljava/lang/String;

    .line 163
    iput-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mcurDMR:Ljava/lang/String;

    .line 165
    iput-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;

    .line 172
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mIsScrolling:Z

    .line 173
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDestroy:Z

    .line 175
    iput-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mWorkthread:Landroid/os/HandlerThread;

    .line 176
    iput-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mWorkHandler:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$workHandler;

    .line 177
    new-instance v0, Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Lcom/htc/music/util/MemoryCacheBitmapByPosition;-><init>(I)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mContainerList:Ljava/util/List;

    .line 238
    new-instance v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$1;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$1;-><init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDmpListener:Landroid/content/BroadcastReceiver;

    .line 698
    new-instance v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$9;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$9;-><init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mHandler:Landroid/os/Handler;

    .line 1233
    new-instance v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaNotifyStub;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaNotifyStub;-><init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mNotifyCallback:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaNotifyStub;

    .line 1517
    new-instance v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$10;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$10;-><init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mConnection:Landroid/content/ServiceConnection;

    .line 1567
    new-instance v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$11;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$11;-><init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->msc:Landroid/content/ServiceConnection;

    .line 1583
    new-instance v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$12;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$12;-><init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mscDmc:Landroid/content/ServiceConnection;

    .line 2128
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "content_id"

    aput-object v1, v0, v2

    const-string v1, "content_name"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "container"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mCursorCols:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->getDmpCurContent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mcurContent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->setTitle()V

    return-void
.end method

.method static synthetic access$102(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mcurContent:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200()J
    .locals 2

    .prologue
    .line 82
    sget-wide v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mTime:J

    return-wide v0
.end method

.method static synthetic access$1202(J)J
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    sput-wide p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mTime:J

    return-wide p0
.end method

.method static synthetic access$1300(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mCurrentPage:I

    return v0
.end method

.method static synthetic access$1400(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mPage:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mLoadingNext:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mLoadingNext:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mLoadingPrev:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mLoadingPrev:Z

    return p1
.end method

.method static synthetic access$1802(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mBrowsingComplete:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 82
    iget-wide v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mFileStartIdx:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDirection:I

    return v0
.end method

.method static synthetic access$2100(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Lcom/htc/widget/HtcListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mListView:Lcom/htc/widget/HtcListView;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Lcom/htc/music/util/AsyncImageDecoder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;Lcom/htc/music/util/AsyncImageDecoder;)Lcom/htc/music/util/AsyncImageDecoder;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mIconPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mIconPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDlnaMode:I

    return v0
.end method

.method static synthetic access$2600(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mcurDMR:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaNotifyStub;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mNotifyCallback:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaNotifyStub;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;Lcom/htc/music/IDmpUiPlaybackService;)Lcom/htc/music/IDmpUiPlaybackService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDmpService:Lcom/htc/music/IDmpUiPlaybackService;

    return-object p1
.end method

.method static synthetic access$2902(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;Lcom/htc/music/IDmcUiPlaybackService;)Lcom/htc/music/IDmcUiPlaybackService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDmcService:Lcom/htc/music/IDmcUiPlaybackService;

    return-object p1
.end method

.method static synthetic access$300(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mContentList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Lcom/htc/music/util/MemoryCacheBitmapByPosition;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mIsScrolling:Z

    return v0
.end method

.method static synthetic access$3400(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$workHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mWorkHandler:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$workHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Lcom/htc/dlnainterface/IDLNAPluginService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    return-object v0
.end method

.method static synthetic access$402(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;Lcom/htc/dlnainterface/IDLNAPluginService;)Lcom/htc/dlnainterface/IDLNAPluginService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    return-object p1
.end method

.method static synthetic access$500(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mIniServerID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mIniContainerID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mInitial:Z

    return v0
.end method

.method static synthetic access$702(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mInitial:Z

    return p1
.end method

.method static synthetic access$800(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDestroy:Z

    return v0
.end method

.method static synthetic access$900(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDetailIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$902(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDetailIntent:Landroid/content/Intent;

    return-object p1
.end method

.method public static getApplyMaskBitmap(Landroid/content/res/Resources;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "res"
    .parameter "bmSrc"
    .parameter "nMaskID"

    .prologue
    const/4 v9, 0x0

    .line 1799
    invoke-static {p0, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1800
    .local v1, bmMask:Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1801
    .local v0, bmAlpha:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1804
    .local v2, bmRet:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1805
    .local v3, c:Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v5, v9, v9, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v6, v9, v9, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v7, 0x0

    invoke-virtual {v3, p1, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1809
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 1810
    .local v4, p:Landroid/graphics/Paint;
    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1811
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v5, v9, v9, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v6, v9, v9, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v0, v5, v6, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1815
    if-eqz v1, :cond_0

    .line 1816
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1817
    const/4 v1, 0x0

    .line 1819
    :cond_0
    if-eqz v0, :cond_1

    .line 1820
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1821
    const/4 v0, 0x0

    .line 1823
    :cond_1
    return-object v2
.end method

.method private getDmpCurContent()Ljava/lang/String;
    .locals 3

    .prologue
    .line 257
    const-string v1, "[DMS]"

    const-string v2, "getDmpCurContent"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    const-string v1, "DMP"

    const/4 v2, 0x5

    invoke-virtual {p0, v1, v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 261
    .local v0, Preferences:Landroid/content/SharedPreferences;
    const-string v1, "curContentId"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getFirstContent()Ljava/lang/String;
    .locals 3

    .prologue
    .line 670
    iget-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mContentList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mContentList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 672
    :cond_0
    const/4 v0, 0x0

    .line 680
    :cond_1
    :goto_0
    return-object v0

    .line 675
    :cond_2
    iget-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mContentList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;->GetId()Ljava/lang/String;

    move-result-object v0

    .line 677
    .local v0, ID:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 680
    iget-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mContentList:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;->GetId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getRandomContent()Ljava/lang/String;
    .locals 6

    .prologue
    .line 684
    iget-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mContentList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mContentList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 686
    :cond_0
    const/4 v2, 0x0

    .line 695
    :goto_0
    return-object v2

    .line 689
    :cond_1
    iget-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mContentList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 690
    .local v1, size:I
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    int-to-double v4, v1

    mul-double/2addr v2, v4

    double-to-int v0, v2

    .line 692
    .local v0, list:I
    iget-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mContentList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;->GetId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 693
    iget-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mContentList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;->GetId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 695
    :cond_2
    invoke-direct {p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->getRandomContent()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private playAll(Ljava/lang/String;Z)V
    .locals 20
    .parameter "contentId"
    .parameter "isShuffle"

    .prologue
    .line 964
    const-string v2, "[DMS]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "server = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mIniServerID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 965
    const-string v2, "[DMS]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "container = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mIniContainerID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 967
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v15

    .line 968
    .local v15, ed:Landroid/content/SharedPreferences$Editor;
    const-string v2, "server"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mIniServerID:Ljava/lang/String;

    invoke-interface {v15, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "container"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mIniContainerID:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "content"

    move-object/from16 v0, p1

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "filepath"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mFilePath:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "startIdx"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mPage:Ljava/util/List;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mCurrentPage:I

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;->getStartIdx()J

    move-result-wide v5

    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "endIdx"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mPage:Ljava/util/List;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mCurrentPage:I

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;->getEndIdx()J

    move-result-wide v5

    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "direction"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDirection:I

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 975
    if-eqz p2, :cond_0

    .line 976
    const-string v2, "shuffle"

    const/4 v3, 0x1

    invoke-interface {v15, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 977
    :cond_0
    invoke-interface {v15}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 979
    const/16 v18, 0x0

    .line 980
    .local v18, isDmcOrPushMode:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mMediaService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v2, :cond_1

    .line 982
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mMediaService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->isDmcOrPushMode()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v18

    .line 988
    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/dlnasharedmodule/HtcTVDisplayHelper;->isTVOn(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez v18, :cond_2

    const/16 v19, 0x1

    .line 990
    .local v19, isMirrorPlayOnTV:Z
    :goto_1
    if-eqz v19, :cond_3

    .line 991
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->handleTVReadyToPlay(Z)V

    .line 1038
    :goto_2
    return-void

    .line 983
    .end local v19           #isMirrorPlayOnTV:Z
    :catch_0
    move-exception v16

    .line 984
    .local v16, ex:Landroid/os/RemoteException;
    const-string v2, "[DMS]"

    const-string v3, "Remote Exception in playAll"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 988
    .end local v16           #ex:Landroid/os/RemoteException;
    :cond_2
    const/16 v19, 0x0

    goto :goto_1

    .line 994
    .restart local v19       #isMirrorPlayOnTV:Z
    :cond_3
    const-string v2, "[DMS]"

    const-string v3, "check DLNA mode first"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 995
    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3, v4}, Lcom/htc/music/util/MusicUtils;->checkDLNAMode(Landroid/content/Context;[IIZ)I

    move-result v13

    .line 996
    .local v13, dlnaMode:I
    const-string v2, "[DMS]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DLNA mode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 998
    const/4 v2, 0x1

    if-ne v13, v2, :cond_6

    .line 999
    const-string v2, "[DMS]"

    const-string v3, "DLNA_DMP mode, modify DMP.xml info"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    const-string v2, "[DMS]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "server = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mIniServerID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    const-string v2, "[DMS]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "container = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mIniContainerID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
    const-string v2, "[DMS]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    const-string v2, "[DMS]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shufflemode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1004
    const-string v2, "[DMS]"

    const-string v3, "dmsplayall"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1006
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDmpService:Lcom/htc/music/IDmpUiPlaybackService;

    if-eqz v2, :cond_4

    .line 1008
    const-string v2, "[DMS]"

    const-string v3, "enter click"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1010
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDmpService:Lcom/htc/music/IDmpUiPlaybackService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mIniServerID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mIniContainerID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mPage:Ljava/util/List;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mCurrentPage:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;

    invoke-virtual {v5}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;->getStartIdx()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mPage:Ljava/util/List;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mCurrentPage:I

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;

    invoke-virtual {v5}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;->getEndIdx()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget v10, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDirection:I

    if-eqz p2, :cond_5

    const/4 v11, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mFilePath:Ljava/lang/String;

    move-object/from16 v5, p1

    invoke-interface/range {v2 .. v12}, Lcom/htc/music/IDmpUiPlaybackService;->setDlnaPlaylist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJIILjava/lang/String;)V

    .line 1015
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDmpService:Lcom/htc/music/IDmpUiPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IDmpUiPlaybackService;->play()V

    .line 1017
    new-instance v17, Landroid/content/Intent;

    const-class v2, Lcom/htc/music/MediaPlaybackService;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1018
    .local v17, intent:Landroid/content/Intent;
    const-string v2, "command"

    const-string v3, "bindplugin"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1020
    const-string v2, "classname"

    const-string v3, "com.htc.music.DMPMusicPlaybackService"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1021
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1033
    .end local v17           #intent:Landroid/content/Intent;
    :cond_4
    :goto_4
    new-instance v17, Landroid/content/Intent;

    const-string v2, "com.htc.music.PLAYBACK_VIEWER"

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1034
    .restart local v17       #intent:Landroid/content/Intent;
    const/high16 v2, 0x400

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1035
    const/4 v2, -0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_2

    .line 1010
    .end local v17           #intent:Landroid/content/Intent;
    :cond_5
    const/4 v11, 0x0

    goto :goto_3

    .line 1023
    :catch_1
    move-exception v14

    .line 1024
    .local v14, e:Landroid/os/RemoteException;
    invoke-virtual {v14}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_4

    .line 1028
    .end local v14           #e:Landroid/os/RemoteException;
    :cond_6
    const/4 v2, 0x2

    if-ne v13, v2, :cond_4

    .line 1030
    invoke-virtual/range {p0 .. p1}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->switchToDMC(Ljava/lang/String;)V

    goto :goto_4
.end method

.method private setTitle()V
    .locals 0

    .prologue
    .line 267
    return-void
.end method


# virtual methods
.method public GetCursor(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "serverID"
    .parameter "containerID"

    .prologue
    const/4 v2, 0x0

    .line 1605
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "serve_id = \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "container"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "file_type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "file_type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1611
    .local v3, where:Ljava/lang/String;
    const-string v5, "index_id COLLATE NOCASE ASC"

    .line 1613
    .local v5, sort:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/htc/music/util/MusicDLNAStore;->getServerContentUri()Landroid/net/Uri;

    move-result-object v1

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1615
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_1

    .line 1623
    :cond_0
    :goto_0
    return-object v2

    .line 1618
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 1619
    .local v6, count:I
    if-lez v6, :cond_0

    move-object v2, v7

    .line 1623
    goto :goto_0
.end method

.method public GetCursorIdx(Landroid/database/Cursor;)Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;
    .locals 12
    .parameter "cursor"

    .prologue
    const/4 v11, 0x1

    const/4 v10, -0x1

    .line 1627
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 1629
    .local v0, count:I
    if-eqz p1, :cond_0

    if-gtz v0, :cond_2

    .line 1630
    :cond_0
    const/4 v4, 0x0

    .line 1687
    :cond_1
    :goto_0
    return-object v4

    .line 1632
    :cond_2
    new-instance v4, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;

    invoke-direct {v4, p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;-><init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)V

    .line 1634
    .local v4, info:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;
    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mPage:Ljava/util/List;

    iget v8, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mCurrentPage:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;

    invoke-virtual {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;->getStartIdx()J

    move-result-wide v7

    long-to-int v6, v7

    .line 1635
    .local v6, startID:I
    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mPage:Ljava/util/List;

    iget v8, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mCurrentPage:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;

    invoke-virtual {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;->getEndIdx()J

    move-result-wide v7

    long-to-int v1, v7

    .line 1637
    .local v1, endID:I
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1638
    const-string v7, "[DMS]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "currentstartIdx = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1639
    const-string v7, "[DMS]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "currentendIdx = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1644
    if-le v1, v10, :cond_1

    .line 1646
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 1647
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1650
    const-string v7, "index_id"

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 1652
    .local v3, index:I
    iget v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDirection:I

    if-ne v7, v11, :cond_3

    if-lt v3, v6, :cond_6

    :cond_3
    iget v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDirection:I

    if-ne v7, v11, :cond_4

    if-gt v3, v1, :cond_6

    :cond_4
    iget v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDirection:I

    if-ne v7, v10, :cond_5

    if-gt v3, v6, :cond_6

    :cond_5
    iget v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDirection:I

    if-ne v7, v10, :cond_7

    if-ge v3, v1, :cond_7

    .line 1656
    :cond_6
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 1646
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1668
    :cond_7
    iget v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDirection:I

    if-ne v7, v11, :cond_8

    .line 1669
    add-int/lit8 v5, v6, 0x63

    .line 1673
    .local v5, middleIdx:I
    :goto_3
    if-ne v3, v5, :cond_9

    .line 1674
    int-to-long v7, v3

    invoke-virtual {v4, v7, v8}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;->setMiddleIdx(J)V

    .line 1675
    const-string v7, "[DMS]"

    const-string v8, "DlnaUtils.MAX_QUERY_CONTENTS = 199"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1676
    const-string v7, "[DMS]"

    const-string v8, "middle point is 99"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1677
    const-string v7, "[DMS]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setMiddleIdx = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1671
    .end local v5           #middleIdx:I
    :cond_8
    add-int/lit8 v5, v6, -0x63

    .restart local v5       #middleIdx:I
    goto :goto_3

    .line 1681
    :cond_9
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2
.end method

.method public GetCursorInfo(Landroid/database/Cursor;)V
    .locals 23
    .parameter "cursor"

    .prologue
    .line 1692
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    .line 1795
    :cond_0
    :goto_0
    return-void

    .line 1700
    :cond_1
    const/4 v8, -0x1

    .line 1702
    .local v8, Pos:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mContentList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1703
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1706
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mCurrentPage:I

    if-gtz v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mCurrentPage:I

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDirection:I

    const/4 v5, -0x1

    if-ne v2, v5, :cond_3

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mBrowsingComplete:Z

    if-nez v2, :cond_3

    .line 1708
    :cond_2
    new-instance v1, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;-><init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)V

    .line 1709
    .local v1, info:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mContentList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1712
    .end local v1           #info:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;
    :cond_3
    const-string v2, "[DMS]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GetCursorInfo: Cursor length = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1714
    const/4 v13, 0x0

    .local v13, i:I
    :goto_1
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ge v13, v2, :cond_4

    .line 1715
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1763
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mBrowsingComplete:Z

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDirection:I

    const/4 v5, -0x1

    if-ne v2, v5, :cond_8

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mCurrentPage:I

    if-nez v2, :cond_8

    .line 1766
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mPage:Ljava/util/List;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mCurrentPage:I

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;->getEndIdx()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 1767
    .local v11, endIdx:Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mPage:Ljava/util/List;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mCurrentPage:I

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;->getStartIdx()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    .line 1769
    .local v17, startIdx:Ljava/lang/Long;
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    const-wide/16 v21, -0x1

    cmp-long v2, v19, v21

    if-lez v2, :cond_8

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDirection:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_6

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mBrowsingComplete:Z

    if-eqz v2, :cond_7

    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDirection:I

    const/4 v5, -0x1

    if-ne v2, v5, :cond_8

    .line 1773
    :cond_7
    new-instance v1, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;-><init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)V

    .line 1774
    .restart local v1       #info:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mContentList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1785
    .end local v1           #info:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;
    .end local v11           #endIdx:Ljava/lang/Long;
    .end local v17           #startIdx:Ljava/lang/Long;
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mClearImageCache:Z

    if-eqz v2, :cond_9

    .line 1786
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    invoke-virtual {v2}, Lcom/htc/music/util/MemoryCacheBitmapByPosition;->clear()V

    .line 1787
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mClearImageCache:Z

    .line 1789
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;->notifyDataSetChanged()V

    .line 1791
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v16

    .line 1792
    .local v16, msg:Landroid/os/Message;
    invoke-virtual/range {v16 .. v16}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v5, "NotRefresh"

    const/4 v7, 0x1

    invoke-virtual {v2, v5, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1793
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1718
    .end local v16           #msg:Landroid/os/Message;
    :cond_a
    const-string v2, "content_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1719
    .local v3, contentID:Ljava/lang/String;
    const-string v2, "content_name"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1720
    .local v4, contentName:Ljava/lang/String;
    const-string v2, "index_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v14, v2

    .line 1721
    .local v14, index:J
    const-string v2, "file_type"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1729
    .local v6, fileType:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mPage:Ljava/util/List;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mCurrentPage:I

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;->getStartIdx()J

    move-result-wide v9

    .line 1730
    .local v9, boundary:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mPage:Ljava/util/List;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mCurrentPage:I

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;->getEndIdx()J

    move-result-wide v11

    .line 1732
    .local v11, endIdx:J
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDirection:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_c

    .line 1733
    cmp-long v2, v14, v9

    if-ltz v2, :cond_b

    cmp-long v2, v14, v11

    if-lez v2, :cond_e

    .line 1734
    :cond_b
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 1714
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 1738
    :cond_c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDirection:I

    const/4 v5, -0x1

    if-ne v2, v5, :cond_e

    .line 1739
    cmp-long v2, v11, v14

    if-gtz v2, :cond_d

    cmp-long v2, v14, v9

    if-lez v2, :cond_e

    .line 1740
    :cond_d
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2

    .line 1745
    :cond_e
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 1746
    .local v18, type:I
    if-nez v18, :cond_f

    .line 1748
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2

    .line 1751
    :cond_f
    const/4 v2, 0x1

    move/from16 v0, v18

    if-ne v0, v2, :cond_10

    .line 1752
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mIsMusicExist:Z

    .line 1755
    :cond_10
    new-instance v1, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;

    const/4 v5, 0x0

    long-to-int v7, v14

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;-><init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1756
    .restart local v1       #info:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mContentList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1757
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2
.end method

.method public browse(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 10
    .parameter "container"
    .parameter "startIdx"
    .parameter "boundary"

    .prologue
    const/4 v4, 0x1

    .line 1073
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-nez v0, :cond_0

    .line 1091
    :goto_0
    return-void

    .line 1076
    :cond_0
    const-string v0, "[DMS]"

    const-string v1, "Browse"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    const-string v0, "[DMS]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1078
    const-string v0, "[DMS]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "boundary = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1080
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 1081
    iput-boolean v4, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mBrowsingComplete:Z

    .line 1084
    :cond_1
    :try_start_0
    const-string v0, "[DMS]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "browse container = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1085
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mIniServerID:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/16 v6, 0x1e

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    move-object v3, p1

    invoke-interface/range {v0 .. v8}, Lcom/htc/dlnainterface/IDLNAPluginService;->browse(ILjava/lang/String;Ljava/lang/String;JIJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1086
    :catch_0
    move-exception v9

    .line 1088
    .local v9, e:Landroid/os/RemoteException;
    invoke-virtual {v9}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public cancelBrowse(Ljava/lang/Long;)V
    .locals 8
    .parameter "startIdx"

    .prologue
    .line 1094
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-nez v0, :cond_1

    .line 1109
    :cond_0
    :goto_0
    return-void

    .line 1097
    :cond_1
    const-string v0, "[DMS]"

    const-string v1, "cancelBrowse"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1099
    const/4 v6, 0x0

    .line 1101
    .local v6, bDone:Z
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mIniServerID:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mIniContainerID:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->isBrowsingCmdDone(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 1103
    if-nez v6, :cond_0

    .line 1104
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mIniServerID:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mIniContainerID:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Lcom/htc/dlnainterface/IDLNAPluginService;->browseCancel(ILjava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1105
    :catch_0
    move-exception v7

    .line 1107
    .local v7, e:Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public categoryRightAction()Z
    .locals 5

    .prologue
    .line 658
    const-string v0, "[DMS]"

    const-string v1, "Playing All, save current info to DLNA.xml"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    const-string v0, "[DMS]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current page = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mCurrentPage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    const-string v1, "[DMS]"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start idx = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mPage:Ljava/util/List;

    iget v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mCurrentPage:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;->getStartIdx()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    const-string v1, "[DMS]"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "end idx = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mPage:Ljava/util/List;

    iget v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mCurrentPage:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;->getEndIdx()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    invoke-direct {p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->getFirstContent()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->playAll(Ljava/lang/String;Z)V

    .line 666
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "icicle"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 185
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 188
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->setVolumeControlStream(I)V

    .line 189
    const v3, 0x7f030020

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->setContentView(I)V

    .line 191
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 192
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "ServerName"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mIniServerName:Ljava/lang/String;

    .line 193
    const-string v3, "ContainerID"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mIniContainerID:Ljava/lang/String;

    .line 194
    const-string v3, "ContainerName"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mIniContainerName:Ljava/lang/String;

    .line 195
    const-string v3, "ServerID"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mIniServerID:Ljava/lang/String;

    .line 196
    const-string v3, "IconPath"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mIconPath:Ljava/lang/String;

    .line 197
    const-string v3, "startIdx"

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mFileStartIdx:J

    .line 199
    const-string v3, "FilePath"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mFilePath:Ljava/lang/String;

    .line 200
    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mFilePath:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 201
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mIniServerName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mFilePath:Ljava/lang/String;

    .line 203
    :cond_0
    new-instance v1, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;

    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mIniContainerID:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mIniServerName:Ljava/lang/String;

    invoke-direct {v1, p0, v3, v4}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;-><init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    .local v1, iniInfo:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;
    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mContainerList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    iput-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mInflater:Landroid/view/LayoutInflater;

    .line 208
    new-instance v3, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;

    invoke-direct {v3, p0, p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;-><init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;

    .line 209
    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;

    if-eqz v3, :cond_1

    .line 210
    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 213
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mContentList:Ljava/util/ArrayList;

    .line 214
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v3}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mPage:Ljava/util/List;

    .line 216
    const-string v3, "DLNA"

    const/4 v4, 0x7

    invoke-virtual {p0, v3, v4}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mPreferences:Landroid/content/SharedPreferences;

    .line 217
    iput-boolean v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mInitial:Z

    .line 218
    iput-boolean v6, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mIsMusicExist:Z

    .line 221
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mListView:Lcom/htc/widget/HtcListView;

    .line 222
    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v3, v6}, Lcom/htc/widget/HtcListView;->setTextFilterEnabled(Z)V

    .line 223
    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v3, v7}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    .line 224
    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v3, p0}, Lcom/htc/widget/HtcListView;->setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V

    .line 226
    new-instance v3, Landroid/os/HandlerThread;

    const-string v4, "workThread"

    invoke-direct {v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mWorkthread:Landroid/os/HandlerThread;

    .line 227
    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mWorkthread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 229
    new-instance v3, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$workHandler;

    iget-object v4, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mWorkthread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$workHandler;-><init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mWorkHandler:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$workHandler;

    .line 230
    iput v6, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mCurrentPage:I

    .line 232
    new-instance v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;-><init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)V

    .line 233
    .local v0, info:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;
    iget-wide v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mFileStartIdx:J

    invoke-virtual {v0, v3, v4}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;->setStartIdx(J)V

    .line 234
    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mPage:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    const v2, 0x2040177

    const v3, 0x2040151

    .line 320
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 321
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_0

    move-object v0, p0

    .line 322
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 426
    :cond_1
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    :goto_0
    return-object v1

    .line 350
    :sswitch_0
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0700cf

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0700d0

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$3;

    invoke-direct {v2, p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$3;-><init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$2;

    invoke-direct {v2, p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$2;-><init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)V

    invoke-virtual {v1, v3, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    goto :goto_0

    .line 371
    :sswitch_1
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0700d2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$5;

    invoke-direct {v2, p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$5;-><init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$4;

    invoke-direct {v2, p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$4;-><init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)V

    invoke-virtual {v1, v3, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    goto :goto_0

    .line 391
    :sswitch_2
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/music/util/DlnaUtils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 392
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0700d1

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$8;

    invoke-direct {v2, p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$8;-><init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x2040178

    new-instance v3, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$7;

    invoke-direct {v3, p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$7;-><init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x2040152

    new-instance v3, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$6;

    invoke-direct {v3, p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$6;-><init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)V

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    goto/16 :goto_0

    .line 322
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1f5 -> :sswitch_1
        -0x1 -> :sswitch_2
        0x321 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 497
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 500
    const/16 v0, 0xe

    const v1, 0x7f070009

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 501
    const/16 v0, 0xf

    const v1, 0x7f07000a

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 502
    const/16 v0, 0xa

    const v1, 0x204021a

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 508
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 469
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onDestroy()V

    .line 471
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    invoke-virtual {v0}, Lcom/htc/music/util/MemoryCacheBitmapByPosition;->clear()V

    .line 472
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->quit()V

    .line 474
    iput-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    .line 480
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDestroy:Z

    .line 481
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 482
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 483
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 484
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 485
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 487
    sput-object v2, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mServerIcon:Landroid/graphics/Bitmap;

    .line 489
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mWorkHandler:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$workHandler;

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$workHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 490
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mWorkthread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 492
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mContentList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 493
    return-void
.end method

.method public onHtcContextItemSelected(I)Z
    .locals 6
    .parameter "id"

    .prologue
    const/4 v5, 0x0

    .line 1147
    packed-switch p1, :pswitch_data_0

    .line 1187
    :cond_0
    :goto_0
    return v5

    .line 1150
    :pswitch_0
    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mContentList:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mContentList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ltz v3, :cond_0

    .line 1153
    :cond_1
    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mContentList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mSelectedItem:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;

    invoke-virtual {v3}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;->GetId()Ljava/lang/String;

    move-result-object v0

    .line 1154
    .local v0, ContentID:Ljava/lang/String;
    invoke-direct {p0, v0, v5}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->playAll(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1161
    .end local v0           #ContentID:Ljava/lang/String;
    :pswitch_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1162
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "duration"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1163
    const-string v3, "filename"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1164
    const-string v3, "trackname"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1165
    const-string v3, "artistname"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1166
    const-string v3, "albumname"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1167
    const-string v3, "genre"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1168
    const-string v3, "composer"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1169
    const-string v3, "location"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1171
    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDetailIntent:Landroid/content/Intent;

    if-eqz v3, :cond_2

    .line 1172
    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDetailIntent:Landroid/content/Intent;

    const-string v4, "contentID"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1173
    .local v1, ID:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mContentList:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mContentList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mSelectedItem:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;

    invoke-virtual {v3}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;->GetId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1175
    iget-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDetailIntent:Landroid/content/Intent;

    .line 1179
    .end local v1           #ID:Ljava/lang/String;
    :cond_2
    const-class v3, Lcom/htc/music/PluginPropertyListActivity;

    invoke-virtual {v2, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1181
    const/4 v3, -0x2

    invoke-virtual {p0, v2, v3}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1183
    const-string v3, "DLNA"

    const-string v4, "PRESSMENU_DETAILS"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1147
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onListItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 10
    .parameter "lv"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v9, 0x1

    .line 881
    iget-object v6, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mContentList:Ljava/util/ArrayList;

    invoke-virtual {v6, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;

    invoke-virtual {v6}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;->GetId()Ljava/lang/String;

    move-result-object v0

    .line 882
    .local v0, ContentID:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mContentList:Ljava/util/ArrayList;

    invoke-virtual {v6, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;

    invoke-virtual {v6}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;->GetName()Ljava/lang/String;

    move-result-object v1

    .line 885
    .local v1, ContentName:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mContentList:Ljava/util/ArrayList;

    invoke-virtual {v6, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;

    .line 887
    .local v3, info:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;
    const/4 v4, 0x0

    .line 888
    .local v4, prevPage:I
    iget v6, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mCurrentPage:I

    if-lez v6, :cond_0

    .line 889
    const/4 v4, 0x1

    .line 891
    :cond_0
    if-nez v0, :cond_7

    if-nez v1, :cond_7

    .line 892
    const/4 v5, 0x0

    .line 893
    .local v5, start:Ljava/lang/Long;
    const/4 v2, 0x0

    .line 895
    .local v2, boundary:Ljava/lang/Long;
    iget-boolean v6, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mLoadingPrev:Z

    if-eq v6, v9, :cond_1

    iget-boolean v6, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mLoadingNext:Z

    if-ne v6, v9, :cond_3

    .line 896
    :cond_1
    const-string v6, "[DMS]"

    const-string v7, "user press next/prev page when it still loading, ignore..."

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 960
    .end local v2           #boundary:Ljava/lang/Long;
    .end local v5           #start:Ljava/lang/Long;
    :cond_2
    :goto_0
    return-void

    .line 900
    .restart local v2       #boundary:Ljava/lang/Long;
    .restart local v5       #start:Ljava/lang/Long;
    :cond_3
    if-nez p3, :cond_5

    .line 901
    const-string v6, "[DMS]"

    const-string v7, "Press Prev Page"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    invoke-virtual {p0, p3, v9}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->showContentLoading(IZ)V

    .line 903
    invoke-virtual {p0, v9}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->showSpinner(Z)V

    .line 905
    iget-object v6, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mPage:Ljava/util/List;

    iget v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mCurrentPage:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;

    invoke-virtual {v6}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;->getStartIdx()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->cancelBrowse(Ljava/lang/Long;)V

    .line 906
    iput-boolean v9, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mLoadingPrev:Z

    .line 908
    iget-object v6, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mPage:Ljava/util/List;

    iget v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mCurrentPage:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;

    invoke-virtual {v6}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;->getMiddleIdx()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 909
    iget v6, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDirection:I

    if-ne v6, v9, :cond_4

    .line 910
    iget-object v6, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mPage:Ljava/util/List;

    iget v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mCurrentPage:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;

    invoke-virtual {v6}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;->getEndIdx()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 914
    :goto_1
    iget v6, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mCurrentPage:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mCurrentPage:I

    .line 915
    const/4 v6, -0x1

    iput v6, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDirection:I

    .line 916
    const-string v6, "[DMS]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "start idx = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    const-string v6, "[DMS]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "boundary idx = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    iget-object v6, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mIniContainerID:Ljava/lang/String;

    invoke-virtual {p0, v6, v5, v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->browse(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 948
    :goto_2
    const-string v6, "[DMS]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "start idx = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    const-string v6, "[DMS]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "boundary idx = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 912
    :cond_4
    iget-object v6, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mPage:Ljava/util/List;

    iget v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mCurrentPage:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;

    invoke-virtual {v6}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;->getStartIdx()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto/16 :goto_1

    .line 925
    :cond_5
    const-string v6, "[DMS]"

    const-string v7, "Press Next Page"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 927
    invoke-virtual {p0, p3, v9}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->showContentLoading(IZ)V

    .line 928
    invoke-virtual {p0, v9}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->showSpinner(Z)V

    .line 930
    iget-object v6, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mPage:Ljava/util/List;

    iget v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mCurrentPage:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;

    invoke-virtual {v6}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;->getMiddleIdx()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 931
    iget v6, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDirection:I

    if-ne v6, v9, :cond_6

    .line 932
    iget-object v6, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mPage:Ljava/util/List;

    iget v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mCurrentPage:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;

    invoke-virtual {v6}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;->getStartIdx()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 935
    :goto_3
    iget v6, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mCurrentPage:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mCurrentPage:I

    .line 936
    iput v9, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDirection:I

    .line 937
    const-string v6, "[DMS]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "start idx = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    const-string v6, "[DMS]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "boundary idx = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    iput-boolean v9, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mLoadingNext:Z

    .line 942
    iget-object v6, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mIniContainerID:Ljava/lang/String;

    invoke-virtual {p0, v6, v5, v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->browse(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    goto/16 :goto_2

    .line 934
    :cond_6
    iget-object v6, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mPage:Ljava/util/List;

    iget v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mCurrentPage:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;

    invoke-virtual {v6}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;->getEndIdx()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_3

    .line 953
    .end local v2           #boundary:Ljava/lang/Long;
    .end local v5           #start:Ljava/lang/Long;
    :cond_7
    invoke-virtual {v3}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;->IsContainer()Z

    move-result v6

    if-nez v6, :cond_2

    .line 957
    const-string v6, "[DMS]"

    const-string v7, "itemclick"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 958
    const/4 v6, 0x0

    invoke-direct {p0, v0, v6}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->playAll(Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method

.method protected onListItemLongClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)Z
    .locals 9
    .parameter "lv"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v7, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1115
    iget-object v6, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mContentList:Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mContentList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v6, p3, :cond_1

    :cond_0
    move v4, v5

    .line 1142
    :goto_0
    return v4

    .line 1118
    :cond_1
    iput p3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mSelectedItem:I

    .line 1119
    iget-object v6, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mContentList:Ljava/util/ArrayList;

    invoke-virtual {v6, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;

    .line 1121
    .local v2, info:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;
    invoke-virtual {v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;->IsContainer()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;->GetId()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 1124
    new-array v3, v7, [Ljava/lang/CharSequence;

    const v6, 0x7f070058

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const v5, 0x2040216

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1126
    .local v3, items:[Ljava/lang/CharSequence;
    new-array v1, v7, [I

    fill-array-data v1, :array_0

    .line 1129
    .local v1, ids:[I
    iget-object v5, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v5, :cond_2

    .line 1131
    :try_start_0
    iget-object v5, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mIniServerID:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;->GetId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v6, v7, v8}, Lcom/htc/dlnainterface/IDLNAPluginService;->getDMPContentItemDetails(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1138
    :cond_2
    :goto_1
    invoke-virtual {v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;->GetName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, v3, v1}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->showHtcContextMenu(Ljava/lang/String;[Ljava/lang/CharSequence;[I)V

    goto :goto_0

    .line 1133
    :catch_0
    move-exception v0

    .line 1135
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 1142
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #ids:[I
    .end local v3           #items:[Ljava/lang/CharSequence;
    :cond_3
    invoke-super/range {p0 .. p5}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onListItemLongClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)Z

    move-result v4

    goto :goto_0

    .line 1126
    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public onMaBackPressed()Z
    .locals 2

    .prologue
    .line 858
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mPage:Ljava/util/List;

    iget v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mCurrentPage:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;->getStartIdx()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->cancelBrowse(Ljava/lang/Long;)V

    .line 861
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->setResult(I)V

    .line 862
    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 12
    .parameter "item"

    .prologue
    const/4 v8, 0x1

    .line 534
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 613
    :pswitch_0
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v7

    :goto_0
    return v7

    .line 538
    :pswitch_1
    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v7, :cond_0

    .line 540
    const-wide/16 v0, 0x0

    .line 541
    .local v0, boundary:J
    iget v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDirection:I

    if-ne v7, v8, :cond_2

    .line 542
    iget v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mCurrentPage:I

    if-le v7, v8, :cond_1

    .line 543
    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mPage:Ljava/util/List;

    iget v9, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mCurrentPage:I

    add-int/lit8 v9, v9, -0x1

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;

    invoke-virtual {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;->getStartIdx()J

    move-result-wide v0

    .line 556
    :goto_1
    iget-object v9, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mIniContainerID:Ljava/lang/String;

    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mPage:Ljava/util/List;

    iget v10, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mCurrentPage:I

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;

    invoke-virtual {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;->getStartIdx()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {p0, v9, v7, v10}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->browse(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 557
    invoke-virtual {p0, v8}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->showSpinner(Z)V

    .line 558
    const v7, 0x7f0700ca

    invoke-virtual {p0, v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->showEmptyView(I)V

    .line 559
    new-instance v7, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;

    invoke-direct {v7, p0, p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;-><init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;Landroid/content/Context;)V

    iput-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;

    .line 560
    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;

    invoke-virtual {p0, v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 561
    iput-boolean v8, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mInitial:Z

    .end local v0           #boundary:J
    :cond_0
    move v7, v8

    .line 563
    goto :goto_0

    .line 546
    .restart local v0       #boundary:J
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_1

    .line 550
    :cond_2
    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mPage:Ljava/util/List;

    iget v9, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mCurrentPage:I

    add-int/lit8 v9, v9, 0x1

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;

    invoke-virtual {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;->getEndIdx()J

    move-result-wide v2

    .line 551
    .local v2, endIdx:J
    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mPage:Ljava/util/List;

    iget v9, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mCurrentPage:I

    add-int/lit8 v9, v9, 0x1

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;

    invoke-virtual {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;->getStartIdx()J

    move-result-wide v5

    .line 553
    .local v5, startIdx:J
    cmp-long v7, v5, v2

    if-lez v7, :cond_3

    move-wide v0, v5

    :goto_2
    goto :goto_1

    :cond_3
    move-wide v0, v2

    goto :goto_2

    .line 601
    .end local v0           #boundary:J
    .end local v2           #endIdx:J
    .end local v5           #startIdx:J
    :pswitch_2
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->categoryRightAction()Z

    move v7, v8

    .line 602
    goto/16 :goto_0

    .line 605
    :pswitch_3
    const-string v7, "[DMS]"

    const-string v9, "Shuffle All, save current info to DLNA.xml"

    invoke-static {v7, v9}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    invoke-direct {p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->getRandomContent()Ljava/lang/String;

    move-result-object v4

    .line 608
    .local v4, randomContent:Ljava/lang/String;
    invoke-direct {p0, v4, v8}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->playAll(Ljava/lang/String;Z)V

    move v7, v8

    .line 610
    goto/16 :goto_0

    .line 534
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 513
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 516
    const/16 v1, 0xe

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 517
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 518
    iget-boolean v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mIsMusicExist:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 520
    :cond_0
    const/16 v1, 0xf

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 521
    if-eqz v0, :cond_1

    .line 522
    iget-boolean v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mIsMusicExist:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 528
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public onScroll(Lcom/htc/widget/HtcAbsListView;III)V
    .locals 4
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 1216
    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mContentList:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mContentList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 1232
    :cond_0
    :goto_0
    return-void

    .line 1218
    :cond_1
    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    if-eqz v3, :cond_0

    .line 1220
    div-int/lit8 v3, p3, 0x2

    add-int v2, p2, v3

    .line 1221
    .local v2, position:I
    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mContentList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 1224
    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mContentList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;

    .line 1226
    .local v0, info:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;
    if-eqz v0, :cond_0

    .line 1227
    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mContentList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;

    #calls: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;->GetPosition()I
    invoke-static {v3}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;->access$1100(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;)I

    move-result v1

    .line 1228
    .local v1, pos:I
    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    invoke-virtual {v3, v1}, Lcom/htc/music/util/MemoryCacheBitmapByPosition;->setPosition(I)V

    goto :goto_0
.end method

.method public onScrollStateChanged(Lcom/htc/widget/HtcAbsListView;I)V
    .locals 4
    .parameter "view"
    .parameter "scrollState"

    .prologue
    const/4 v1, 0x1

    .line 1191
    packed-switch p2, :pswitch_data_0

    .line 1212
    :cond_0
    :goto_0
    return-void

    .line 1193
    :pswitch_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mIsScrolling:Z

    .line 1194
    iget-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 1197
    :pswitch_1
    iput-boolean v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mIsScrolling:Z

    goto :goto_0

    .line 1200
    :pswitch_2
    iput-boolean v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mIsScrolling:Z

    .line 1202
    iget-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_0

    .line 1204
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    const/4 v2, 0x1

    const/16 v3, 0x10

    invoke-interface {v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->cancelContentThumbnail(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1205
    :catch_0
    move-exception v0

    .line 1207
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1191
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onStart()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 271
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onStart()V

    .line 273
    const-string v2, "[DMS]"

    const-string v3, "onStart"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 276
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 279
    iget-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mContentList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mContentList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 281
    :cond_0
    const v2, 0x7f0700ca

    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->showEmptyView(I)V

    .line 284
    :cond_1
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->CheckDLNAStatus(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDlnaMode:I

    .line 285
    const-string v2, "[DMS]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mDlnaMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDlnaMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    iget v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDlnaMode:I

    if-ne v2, v7, :cond_5

    .line 288
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->getCurDMR(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mcurDMR:Ljava/lang/String;

    .line 308
    :cond_2
    :goto_0
    iget v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDlnaMode:I

    if-eq v2, v7, :cond_3

    iget v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDlnaMode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_7

    .line 309
    :cond_3
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.htc.music.IDmcUiPlaybackService"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 310
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.htc.music.IDmcUiPlaybackService"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mscDmc:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 317
    :cond_4
    :goto_1
    return-void

    .line 289
    :cond_5
    iget v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDlnaMode:I

    if-ne v2, v6, :cond_2

    .line 290
    invoke-direct {p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->getDmpCurContent()Ljava/lang/String;

    move-result-object v0

    .line 291
    .local v0, content:Ljava/lang/String;
    const-string v2, "[DMS]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current content = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    const-string v2, "[DMS]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mcurContent = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mcurContent:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    if-eqz v0, :cond_6

    iget-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mcurContent:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 295
    iput-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mcurContent:Ljava/lang/String;

    .line 297
    iget-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;

    if-eqz v2, :cond_6

    .line 298
    const-string v2, "[DMS]"

    const-string v3, "onStart: update indicator"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    iget-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;->notifyDataSetChanged()V

    .line 303
    :cond_6
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 304
    .local v1, pluginIntentFilter:Landroid/content/IntentFilter;
    const-string v2, "com.htc.music.metachanged"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 305
    iget-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDmpListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 312
    .end local v0           #content:Ljava/lang/String;
    .end local v1           #pluginIntentFilter:Landroid/content/IntentFilter;
    :cond_7
    iget v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDlnaMode:I

    if-eq v2, v6, :cond_8

    iget v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDlnaMode:I

    if-nez v2, :cond_4

    .line 313
    :cond_8
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.htc.music.IDmpUiPlaybackService"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 314
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.htc.music.IDmpUiPlaybackService"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->msc:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto/16 :goto_1
.end method

.method public onStop()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 433
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onStop()V

    .line 435
    iget-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    if-eqz v1, :cond_0

    .line 437
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    const/4 v2, 0x1

    const/16 v3, 0x10

    invoke-interface {v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->cancelContentThumbnail(II)V

    .line 438
    iget-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mIniServerID:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->serverUnsubscribed(ILjava/lang/String;)V

    .line 439
    iget-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mNotifyCallback:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaNotifyStub;

    invoke-interface {v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->unregisterCallback(ILcom/htc/dlnainterface/IDLNAPluginNotify;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 444
    :goto_0
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 445
    iput-object v5, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;

    .line 449
    :cond_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDmpService:Lcom/htc/music/IDmpUiPlaybackService;

    if-eqz v1, :cond_1

    .line 450
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->msc:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 451
    iput-object v5, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDmpService:Lcom/htc/music/IDmpUiPlaybackService;

    .line 455
    :cond_1
    iget-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDmcService:Lcom/htc/music/IDmcUiPlaybackService;

    if-eqz v1, :cond_2

    .line 456
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mscDmc:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 457
    iput-object v5, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDmcService:Lcom/htc/music/IDmcUiPlaybackService;

    .line 461
    :cond_2
    iget v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDlnaMode:I

    if-ne v1, v4, :cond_3

    .line 462
    iget-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDmpListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 465
    :cond_3
    return-void

    .line 440
    :catch_0
    move-exception v0

    .line 442
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public showContentLoading(IZ)V
    .locals 5
    .parameter "position"
    .parameter "show"

    .prologue
    .line 826
    const/4 v1, 0x0

    .line 827
    .local v1, pb:Landroid/widget/ProgressBar;
    const/4 v2, 0x0

    .line 828
    .local v2, tv:Landroid/widget/TextView;
    const/4 v0, 0x0

    .line 830
    .local v0, fl:Lcom/htc/widget/HtcListItem;
    if-nez p1, :cond_2

    .line 831
    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v3, p1}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #fl:Lcom/htc/widget/HtcListItem;
    check-cast v0, Lcom/htc/widget/HtcListItem;

    .line 835
    .restart local v0       #fl:Lcom/htc/widget/HtcListItem;
    :goto_0
    if-eqz v0, :cond_0

    .line 836
    const v3, 0x7f080021

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #pb:Landroid/widget/ProgressBar;
    check-cast v1, Landroid/widget/ProgressBar;

    .line 837
    .restart local v1       #pb:Landroid/widget/ProgressBar;
    const v3, 0x7f080022

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcListItem;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #tv:Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;

    .line 840
    .restart local v2       #tv:Landroid/widget/TextView;
    :cond_0
    if-eqz v1, :cond_1

    if-nez v2, :cond_3

    .line 854
    :cond_1
    :goto_1
    return-void

    .line 833
    :cond_2
    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mListView:Lcom/htc/widget/HtcListView;

    iget-object v4, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v4}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #fl:Lcom/htc/widget/HtcListItem;
    check-cast v0, Lcom/htc/widget/HtcListItem;

    .restart local v0       #fl:Lcom/htc/widget/HtcListItem;
    goto :goto_0

    .line 843
    :cond_3
    if-eqz p2, :cond_4

    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 845
    if-nez p1, :cond_6

    .line 846
    if-eqz p2, :cond_5

    const v3, 0x7f0700ce

    :goto_3
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 843
    :cond_4
    const/16 v3, 0x8

    goto :goto_2

    .line 846
    :cond_5
    const v3, 0x7f0700cd

    goto :goto_3

    .line 849
    :cond_6
    if-eqz p2, :cond_7

    const v3, 0x7f0700cc

    :goto_4
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_7
    const v3, 0x7f0700cb

    goto :goto_4
.end method

.method public switchToDMC(Ljava/lang/String;)V
    .locals 12
    .parameter "ContentID"

    .prologue
    .line 1042
    const-string v0, "[DMS]"

    const-string v1, "DLNA_DMC mode, modify DMC.xml info"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1043
    const-string v0, "[DMS]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "server = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mIniServerID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1044
    const-string v0, "[DMS]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "container = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mIniContainerID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1045
    const-string v0, "[DMS]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1046
    const-string v0, "[DMS]"

    const-string v1, "shufflemode = 0"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1047
    const-string v0, "[DMS]"

    const-string v1, "dmcplayall"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDmcService:Lcom/htc/music/IDmcUiPlaybackService;

    if-eqz v0, :cond_0

    .line 1051
    const-string v0, "[DMS]"

    const-string v1, "enter click"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    :try_start_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDmcService:Lcom/htc/music/IDmcUiPlaybackService;

    iget-object v1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mIniServerID:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mIniContainerID:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mPage:Ljava/util/List;

    iget v4, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mCurrentPage:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;

    invoke-virtual {v3}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;->getStartIdx()J

    move-result-wide v4

    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mPage:Ljava/util/List;

    iget v6, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mCurrentPage:I

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;

    invoke-virtual {v3}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$pageInfo;->getEndIdx()J

    move-result-wide v6

    iget v8, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDirection:I

    iget-object v9, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mFilePath:Ljava/lang/String;

    move-object v3, p1

    invoke-interface/range {v0 .. v9}, Lcom/htc/music/IDmcUiPlaybackService;->setDlnaPlaylist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJILjava/lang/String;)V

    .line 1057
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDmcService:Lcom/htc/music/IDmcUiPlaybackService;

    invoke-interface {v0}, Lcom/htc/music/IDmcUiPlaybackService;->play()V

    .line 1059
    new-instance v11, Landroid/content/Intent;

    const-class v0, Lcom/htc/music/MediaPlaybackService;

    invoke-direct {v11, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1060
    .local v11, intent:Landroid/content/Intent;
    const-string v0, "command"

    const-string v1, "bindplugin"

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1062
    const-string v0, "classname"

    const-string v1, "com.htc.music.DMCMusicPlaybackService"

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1063
    invoke-virtual {p0, v11}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1070
    .end local v11           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 1065
    :catch_0
    move-exception v10

    .line 1066
    .local v10, e:Landroid/os/RemoteException;
    invoke-virtual {v10}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public updateFilePath()V
    .locals 4

    .prologue
    .line 868
    iget-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mContainerList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 870
    .local v1, size:I
    const-string v2, ""

    iput-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mFilePath:Ljava/lang/String;

    .line 872
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 873
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mFilePath:Ljava/lang/String;

    .line 874
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mContainerList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;->GetName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mFilePath:Ljava/lang/String;

    .line 872
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 876
    :cond_0
    return-void
.end method
