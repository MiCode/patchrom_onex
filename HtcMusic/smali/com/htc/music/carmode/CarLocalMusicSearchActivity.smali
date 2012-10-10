.class public Lcom/htc/music/carmode/CarLocalMusicSearchActivity;
.super Lcom/htc/music/carmode/MusicAutoHeaderFooterListActivity;
.source "CarLocalMusicSearchActivity.java"

# interfaces
.implements Lcom/htc/music/carmode/util/CarMusicUtils$Defs;
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/carmode/CarLocalMusicSearchActivity$TrackQueryHandler;,
        Lcom/htc/music/carmode/CarLocalMusicSearchActivity$AlbumQueryHandler;,
        Lcom/htc/music/carmode/CarLocalMusicSearchActivity$ArtistQueryHandler;,
        Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;,
        Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;,
        Lcom/htc/music/carmode/CarLocalMusicSearchActivity$ListInfoItems;,
        Lcom/htc/music/carmode/CarLocalMusicSearchActivity$ListSubTitle;,
        Lcom/htc/music/carmode/CarLocalMusicSearchActivity$OnlineSearchItem;,
        Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchTextWatcher;
    }
.end annotation


# static fields
.field private static final ALBUM_DEFAULT_SORT_ORDER:Ljava/lang/String; = "album COLLATE NOCASE ASC"

.field private static final ARTIST_DEFAULT_SORT_ORDER:Ljava/lang/String; = "artist COLLATE NOCASE ASC"

.field private static final EFFECTIVE_GESTURE_RATIO:D = 0.2

.field public static final INTENT_MSG_DEFAULT_SEARCH_KEY:Ljava/lang/String; = "default_search_key"

.field private static final TAG:Ljava/lang/String; = "[CarLocalMusicSearchActivity]"

.field private static final TITLE_DEFAULT_SORT_ORDER:Ljava/lang/String; = "title COLLATE NOCASE ASC"

.field private static final TYPE_ALBUM:I = 0x4

.field private static final TYPE_ARTIST:I = 0x3

.field private static final TYPE_NO_RESULT:I = 0x6

.field private static final TYPE_SEPARATOR:I = 0x2

.field private static final TYPE_TRACK:I = 0x5

.field private static final TYPE_UNKNOWN:I


# instance fields
.field private final ALBUM_LIST:I

.field private final ARTIST_LIST:I

.field private final DELAY_REFRESH_LIST_VIEW:I

.field private final MSG_DO_ALL_SEARCH:I

.field private final MSG_HANDLE_PROGRESS:I

.field private final MSG_REFRESH_LISTVIEW:I

.field private final MSG_UPDATE_SEARCH_LIST:I

.field private final QUERY_TYPE_CATEGORY_COUNT:I

.field private final TRACK_LIST:I

.field mAlbumCols:[Ljava/lang/String;

.field private mAlbumCursor:Landroid/database/Cursor;

.field private mAlbumCursorAlbumIndex:I

.field private mAlbumCursorArtIndex:I

.field private mAlbumCursorIdIndex:I

.field private mAlbumNoResultItem:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;

.field private mAlbumNoResultItemIndex:I

.field private mAlbumQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

.field private mAlbumResultList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;",
            ">;"
        }
    .end annotation
.end field

.field private mAlbumSubTitleIndex:I

.field private mAlbumSubTitleItem:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;

.field mArtistCols:[Ljava/lang/String;

.field private mArtistCursor:Landroid/database/Cursor;

.field private mArtistCursorArtistIndex:I

.field private mArtistCursorIdIndex:I

.field private mArtistNoResultItem:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;

.field private mArtistNoResultItemIndex:I

.field private mArtistQueryHandler:Landroid/content/AsyncQueryHandler;

.field private mArtistResultList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;",
            ">;"
        }
    .end annotation
.end field

.field private mArtistSubTitleIndex:I

.field private mArtistSubTitleItem:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;

.field private mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

.field mAsyncQuerying:Z

.field private mCarDockListener:Landroid/content/BroadcastReceiver;

.field private mCurrentSearchToken:I

.field private mCustomContainer:Lcom/htc/widget/ActionBarContainer;

.field protected mDefaultSearchKey:Ljava/lang/String;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureHeight:D

.field mInputBox:Lcom/htc/widget/ActionBarSearch;

.field private mIsSearchingCount:I

.field private mListViewTouchListener:Landroid/view/View$OnTouchListener;

.field private mMainLayout:Landroid/widget/RelativeLayout;

.field private mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;

.field private mNoResultCount:I

.field mRes:Landroid/content/res/Resources;

.field private mScanListener:Landroid/content/BroadcastReceiver;

.field mSearchAdapter:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;

.field private mSearchCount:I

.field private mSearchList:Lcom/htc/widget/HtcListView;

.field private mSearchResultList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;",
            ">;"
        }
    .end annotation
.end field

.field protected mSearchStr:Landroid/widget/AutoCompleteTextView;

.field private mServiceBound:Z

.field private mStopping:Z

.field private mTouchListener:Landroid/view/View$OnTouchListener;

.field mTrackCols:[Ljava/lang/String;

.field private mTrackCursor:Landroid/database/Cursor;

.field private mTrackCursorArtIndex:I

.field private mTrackCursorArtistIndex:I

.field private mTrackCursorIdIndex:I

.field private mTrackCursorTitleIndex:I

.field private mTrackNoResultItem:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;

.field private mTrackNoResultItemIndex:I

.field private mTrackQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

.field private mTrackResultList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;",
            ">;"
        }
    .end annotation
.end field

.field private mTrackSubTitleIndex:I

.field private mTrackSubTitleItem:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;

.field private mUiHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 68
    invoke-direct {p0}, Lcom/htc/music/carmode/MusicAutoHeaderFooterListActivity;-><init>()V

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchResultList:Ljava/util/ArrayList;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mArtistResultList:Ljava/util/ArrayList;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumResultList:Ljava/util/ArrayList;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackResultList:Ljava/util/ArrayList;

    .line 98
    iput v3, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mIsSearchingCount:I

    .line 100
    iput v6, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->QUERY_TYPE_CATEGORY_COUNT:I

    .line 101
    iput v3, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mNoResultCount:I

    .line 103
    const/16 v0, 0x12c

    iput v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->DELAY_REFRESH_LIST_VIEW:I

    .line 115
    new-instance v0, Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lcom/htc/music/util/MemoryCacheBitmapByPosition;-><init>(I)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    .line 124
    new-instance v0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$1;-><init>(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mListViewTouchListener:Landroid/view/View$OnTouchListener;

    .line 145
    new-instance v0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$2;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$2;-><init>(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    .line 155
    new-instance v0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$3;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$3;-><init>(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mCarDockListener:Landroid/content/BroadcastReceiver;

    .line 164
    iput v4, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->MSG_REFRESH_LISTVIEW:I

    .line 165
    iput v5, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->MSG_UPDATE_SEARCH_LIST:I

    .line 166
    iput v6, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->MSG_DO_ALL_SEARCH:I

    .line 167
    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->MSG_HANDLE_PROGRESS:I

    .line 170
    iput v4, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->ARTIST_LIST:I

    .line 171
    iput v5, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->ALBUM_LIST:I

    .line 172
    iput v6, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->TRACK_LIST:I

    .line 174
    new-instance v0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$4;-><init>(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mUiHandler:Landroid/os/Handler;

    .line 324
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mMainLayout:Landroid/widget/RelativeLayout;

    .line 331
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mGestureHeight:D

    .line 333
    iput-boolean v3, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mStopping:Z

    .line 334
    iput-boolean v3, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mServiceBound:Z

    .line 515
    new-instance v0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$7;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$7;-><init>(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 1402
    iput v2, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mArtistCursorIdIndex:I

    .line 1403
    iput v2, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mArtistCursorArtistIndex:I

    .line 1405
    iput v2, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumCursorIdIndex:I

    .line 1406
    iput v2, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumCursorAlbumIndex:I

    .line 1407
    iput v2, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumCursorArtIndex:I

    .line 1409
    iput v2, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackCursorIdIndex:I

    .line 1410
    iput v2, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackCursorTitleIndex:I

    .line 1411
    iput v2, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackCursorArtistIndex:I

    .line 1412
    iput v2, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackCursorArtIndex:I

    .line 1414
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "artist"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mArtistCols:[Ljava/lang/String;

    .line 1417
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "album"

    aput-object v1, v0, v4

    const-string v1, "album_key"

    aput-object v1, v0, v5

    const-string v1, "album_art"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumCols:[Ljava/lang/String;

    .line 1423
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "title"

    aput-object v1, v0, v4

    const-string v1, "title_key"

    aput-object v1, v0, v5

    const-string v1, "_data"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "album"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "album_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "artist"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "artist_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "album_key"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackCols:[Ljava/lang/String;

    .line 1432
    iput-boolean v3, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAsyncQuerying:Z

    .line 1663
    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->doLocalSearch(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mArtistResultList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumCursorIdIndex:I

    return v0
.end method

.method static synthetic access$1002(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput p1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumCursorIdIndex:I

    return p1
.end method

.method static synthetic access$1100(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumCursorAlbumIndex:I

    return v0
.end method

.method static synthetic access$1102(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput p1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumCursorAlbumIndex:I

    return p1
.end method

.method static synthetic access$1200(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumCursorArtIndex:I

    return v0
.end method

.method static synthetic access$1202(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput p1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumCursorArtIndex:I

    return p1
.end method

.method static synthetic access$1300(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackResultList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackSubTitleItem:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackCursorIdIndex:I

    return v0
.end method

.method static synthetic access$1602(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput p1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackCursorIdIndex:I

    return p1
.end method

.method static synthetic access$1700(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackCursorTitleIndex:I

    return v0
.end method

.method static synthetic access$1702(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput p1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackCursorTitleIndex:I

    return p1
.end method

.method static synthetic access$1800(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackCursorArtistIndex:I

    return v0
.end method

.method static synthetic access$1802(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput p1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackCursorArtistIndex:I

    return p1
.end method

.method static synthetic access$1900(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackCursorArtIndex:I

    return v0
.end method

.method static synthetic access$1902(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput p1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackCursorArtIndex:I

    return p1
.end method

.method static synthetic access$200(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mArtistCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchResultList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$202(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mArtistCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$2102(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput p1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mArtistSubTitleIndex:I

    return p1
.end method

.method static synthetic access$2202(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput p1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumSubTitleIndex:I

    return p1
.end method

.method static synthetic access$2302(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput p1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackSubTitleIndex:I

    return p1
.end method

.method static synthetic access$2402(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput p1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mArtistNoResultItemIndex:I

    return p1
.end method

.method static synthetic access$2500(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mArtistNoResultItem:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput p1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumNoResultItemIndex:I

    return p1
.end method

.method static synthetic access$2700(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumNoResultItem:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput p1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackNoResultItemIndex:I

    return p1
.end method

.method static synthetic access$2900(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackNoResultItem:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mNoResultCount:I

    return v0
.end method

.method static synthetic access$3000(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->initOnlineSearch(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$308(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mNoResultCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mNoResultCount:I

    return v0
.end method

.method static synthetic access$3100(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mIsSearchingCount:I

    return v0
.end method

.method static synthetic access$3200(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)D
    .locals 2
    .parameter "x0"

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mGestureHeight:D

    return-wide v0
.end method

.method static synthetic access$3300(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Landroid/view/View$OnTouchListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTouchListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Landroid/view/GestureDetector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;Ljava/lang/String;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->doLocalSearch(Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$3700(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Lcom/htc/music/util/AsyncImageDecoder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    return-object v0
.end method

.method static synthetic access$3702(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;Lcom/htc/music/util/AsyncImageDecoder;)Lcom/htc/music/util/AsyncImageDecoder;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    return-object p1
.end method

.method static synthetic access$400(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mArtistSubTitleItem:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Lcom/htc/music/util/MemoryCacheBitmapByPosition;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$4300(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Lcom/htc/widget/HtcListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchList:Lcom/htc/widget/HtcListView;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mCurrentSearchToken:I

    return v0
.end method

.method static synthetic access$4500(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->handleProgress(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mArtistCursorIdIndex:I

    return v0
.end method

.method static synthetic access$502(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput p1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mArtistCursorIdIndex:I

    return p1
.end method

.method static synthetic access$600(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mArtistCursorArtistIndex:I

    return v0
.end method

.method static synthetic access$602(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput p1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mArtistCursorArtistIndex:I

    return p1
.end method

.method static synthetic access$700(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumResultList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$802(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$900(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumSubTitleItem:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;

    return-object v0
.end method

.method private clickTrackItem(I)V
    .locals 5
    .parameter "position"

    .prologue
    const/4 v4, 0x0

    .line 825
    iget-object v2, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchResultList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;

    .line 826
    .local v0, itemInfo:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;
    const/4 v2, 0x1

    new-array v1, v2, [I

    #calls: Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->getId()J
    invoke-static {v0}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->access$3600(Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;)J

    move-result-wide v2

    long-to-int v2, v2

    aput v2, v1, v4

    .line 827
    .local v1, list:[I
    const/4 v2, 0x0

    invoke-static {p0, v1, v4, v2}, Lcom/htc/music/carmode/util/CarMusicUtils;->playAllAndPrepare(Landroid/content/Context;[IILcom/htc/music/NpCategory;)V

    .line 828
    return-void
.end method

.method private doLocalSearch(Ljava/lang/String;)V
    .locals 2
    .parameter "key"

    .prologue
    .line 553
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->doLocalSearch(Ljava/lang/String;J)V

    .line 554
    return-void
.end method

.method private doLocalSearch(Ljava/lang/String;J)V
    .locals 3
    .parameter "key"
    .parameter "delayTime"

    .prologue
    const/4 v2, 0x3

    .line 557
    iget-object v1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 558
    iget-object v1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 559
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 560
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-lez v1, :cond_0

    .line 561
    iget-object v1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 564
    :goto_0
    return-void

    .line 563
    :cond_0
    iget-object v1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private getAlbumCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 12
    .parameter "async"
    .parameter "filter"

    .prologue
    const/4 v2, 0x0

    const/4 v11, 0x1

    .line 1500
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1501
    .local v9, where:Ljava/lang/StringBuilder;
    const-string v0, "album != \'\'"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1502
    const-string v0, " AND album != \'<unknown>\'"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1504
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 1505
    .local v10, whereUnkown:Ljava/lang/StringBuilder;
    const-string v0, "album = \'<unknown>\'"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1508
    const/4 v6, 0x0

    .line 1509
    .local v6, keywords:[Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 1510
    new-array v6, v11, [Ljava/lang/String;

    .line 1511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v2

    .line 1512
    const-string v0, " AND "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1513
    const-string v0, "album LIKE ?"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1516
    :cond_0
    sget-object v3, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1519
    .local v3, asyncUri:Landroid/net/Uri;
    const/4 v8, 0x0

    .line 1520
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz p1, :cond_1

    .line 1521
    iput-boolean v11, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAsyncQuerying:Z

    .line 1522
    iget v1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mCurrentSearchToken:I

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumCols:[Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "album COLLATE NOCASE ASC"

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Lcom/htc/music/util/DlArtAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1524
    invoke-direct {p0, v11}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->handleProgress(Z)V

    .line 1531
    :goto_0
    return-object v8

    .line 1526
    :cond_1
    iput-boolean v2, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAsyncQuerying:Z

    .line 1527
    iget-object v4, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumCols:[Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "album COLLATE NOCASE ASC"

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lcom/htc/music/carmode/util/CarMusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto :goto_0
.end method

.method private getArtistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .parameter "async"
    .parameter "filterstring"

    .prologue
    const/4 v10, 0x1

    .line 1440
    const-string v0, "[CarLocalMusicSearchActivity]"

    const-string v1, "@@@@ getArtistCursor() - start"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1442
    if-eqz p2, :cond_0

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1443
    const/4 p2, 0x0

    .line 1445
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1446
    .local v9, where:Ljava/lang/StringBuilder;
    const-string v0, "artist != \'\' "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1447
    const-string v0, " AND artist != \'<unknown>\'"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1449
    const/4 v6, 0x0

    .line 1451
    .local v6, keywords:[Ljava/lang/String;
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 1466
    new-array v6, v10, [Ljava/lang/String;

    .line 1467
    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v0

    .line 1468
    const-string v0, " AND "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1469
    const-string v0, "artist LIKE ?"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1472
    :cond_1
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1474
    .local v5, whereclause:Ljava/lang/String;
    const-string v0, "[CarLocalMusicSearchActivity]"

    const-string v1, "getArtistCursor() - 1"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1475
    const/4 v8, 0x0

    .line 1476
    .local v8, ret:Landroid/database/Cursor;
    if-eqz p1, :cond_2

    .line 1477
    const-string v0, "[CarLocalMusicSearchActivity]"

    const-string v1, "getArtistCursor() - 2"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1478
    iput-boolean v10, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAsyncQuerying:Z

    .line 1482
    iget v1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mCurrentSearchToken:I

    const/4 v2, 0x0

    sget-object v3, Lcom/htc/music/carmode/util/CarMusicUtils$Artists2;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mArtistCols:[Ljava/lang/String;

    const-string v7, "artist COLLATE NOCASE ASC"

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1485
    invoke-direct {p0, v10}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->handleProgress(Z)V

    .line 1494
    :goto_0
    return-object v8

    .line 1487
    :cond_2
    const-string v0, "[CarLocalMusicSearchActivity]"

    const-string v1, "getArtistCursor() - 3"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1490
    sget-object v3, Lcom/htc/music/carmode/util/CarMusicUtils$Artists2;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mArtistCols:[Ljava/lang/String;

    const-string v7, "artist COLLATE NOCASE ASC"

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lcom/htc/music/carmode/util/CarMusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto :goto_0
.end method

.method private getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 841
    iget v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mArtistSubTitleIndex:I

    if-eq p1, v0, :cond_0

    iget v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumSubTitleIndex:I

    if-eq p1, v0, :cond_0

    iget v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackSubTitleIndex:I

    if-ne p1, v0, :cond_1

    .line 844
    :cond_0
    const/4 v0, 0x2

    .line 859
    :goto_0
    return v0

    .line 845
    :cond_1
    iget v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mArtistNoResultItemIndex:I

    if-eq p1, v0, :cond_2

    iget v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumNoResultItemIndex:I

    if-eq p1, v0, :cond_2

    iget v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackNoResultItemIndex:I

    if-ne p1, v0, :cond_3

    .line 847
    :cond_2
    const/4 v0, 0x6

    goto :goto_0

    .line 848
    :cond_3
    iget v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackSubTitleIndex:I

    if-ltz v0, :cond_4

    iget v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackSubTitleIndex:I

    if-le p1, v0, :cond_4

    .line 850
    const/4 v0, 0x5

    goto :goto_0

    .line 851
    :cond_4
    iget v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumSubTitleIndex:I

    if-ltz v0, :cond_5

    iget v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumSubTitleIndex:I

    if-le p1, v0, :cond_5

    .line 853
    const/4 v0, 0x4

    goto :goto_0

    .line 854
    :cond_5
    iget v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mArtistSubTitleIndex:I

    if-ltz v0, :cond_6

    iget v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mArtistSubTitleIndex:I

    if-le p1, v0, :cond_6

    .line 856
    const/4 v0, 0x3

    goto :goto_0

    .line 859
    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTrackCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .parameter "async"
    .parameter "filter"

    .prologue
    const/4 v1, 0x0

    const/4 v10, 0x1

    .line 1535
    const/4 v8, 0x0

    .line 1536
    .local v8, ret:Landroid/database/Cursor;
    if-eqz p1, :cond_1

    move v0, v10

    :goto_0
    iput-boolean v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAsyncQuerying:Z

    .line 1537
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1538
    .local v9, where:Ljava/lang/StringBuilder;
    const-string v0, "title != \'\'"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1541
    const/4 v6, 0x0

    .line 1542
    .local v6, keywords:[Ljava/lang/String;
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1556
    new-array v6, v10, [Ljava/lang/String;

    .line 1557
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v1

    .line 1558
    const-string v0, " AND "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1559
    const-string v0, "title LIKE ?"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1562
    :cond_0
    const-string v0, " AND is_music>=1"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1564
    if-eqz p1, :cond_2

    .line 1565
    iget v1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mCurrentSearchToken:I

    const/4 v2, 0x0

    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackCols:[Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "title COLLATE NOCASE ASC"

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Lcom/htc/music/util/DlArtAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1568
    invoke-direct {p0, v10}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->handleProgress(Z)V

    .line 1569
    const/4 v8, 0x0

    .line 1575
    :goto_1
    return-object v8

    .end local v6           #keywords:[Ljava/lang/String;
    .end local v9           #where:Ljava/lang/StringBuilder;
    :cond_1
    move v0, v1

    .line 1536
    goto :goto_0

    .line 1571
    .restart local v6       #keywords:[Ljava/lang/String;
    .restart local v9       #where:Ljava/lang/StringBuilder;
    :cond_2
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackCols:[Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "title COLLATE NOCASE ASC"

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lcom/htc/music/carmode/util/CarMusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto :goto_1
.end method

.method private goToAlbumDetail(I)V
    .locals 7
    .parameter "position"

    .prologue
    const/4 v6, 0x0

    .line 809
    iget-object v3, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchResultList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;

    .line 810
    .local v1, itemInfo:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;
    #calls: Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->getId()J
    invoke-static {v1}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->access$3600(Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    .line 811
    .local v0, albumId:Ljava/lang/String;
    const-string v3, "[CarLocalMusicSearchActivity]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Going to launch album detail view. albumId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    invoke-static {v0, v6, v6, v6}, Lcom/htc/music/carmode/util/CarMusicUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/htc/music/carmode/util/CarMusicUtils;->getSongListForAlbum(Landroid/content/Context;Ljava/lang/String;)[I

    move-result-object v2

    .line 820
    .local v2, list:[I
    const/4 v3, 0x0

    new-instance v4, Lcom/htc/music/NpCategory;

    const/16 v5, 0x8

    invoke-direct {v4, v5}, Lcom/htc/music/NpCategory;-><init>(S)V

    invoke-virtual {v4, v0}, Lcom/htc/music/NpCategory;->setAlbumId(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    move-result-object v4

    invoke-static {p0, v2, v3, v4}, Lcom/htc/music/carmode/util/CarMusicUtils;->playAllAndPrepare(Landroid/content/Context;[IILcom/htc/music/NpCategory;)V

    .line 822
    return-void
.end method

.method private goToArtistDetail(I)V
    .locals 6
    .parameter "position"

    .prologue
    .line 785
    iget-object v3, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchResultList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;

    .line 786
    .local v2, itemInfo:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;
    #calls: Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->getId()J
    invoke-static {v2}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->access$3600(Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    .line 800
    .local v0, artistId:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.htc.music.carmode.BROWSE_VIEWER"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 801
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "com.htc.media/artistalbum"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 802
    const/high16 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 803
    const-string v3, "artistid"

    #calls: Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->getId()J
    invoke-static {v2}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->access$3600(Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 804
    const-string v3, "dbTable"

    const/4 v4, 0x2

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 805
    invoke-virtual {p0, v1}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->startActivity(Landroid/content/Intent;)V

    .line 806
    return-void
.end method

.method private goToOnlineSearch(Ljava/lang/String;)V
    .locals 2
    .parameter "key"

    .prologue
    .line 774
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.intent.action.ONLINESEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 775
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 776
    if-eqz p1, :cond_0

    .line 777
    const-string v1, "default_search_key"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 781
    :cond_0
    invoke-virtual {p0, v0}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->startActivity(Landroid/content/Intent;)V

    .line 782
    return-void
.end method

.method private handleProgress(Z)V
    .locals 3
    .parameter "startSearch"

    .prologue
    .line 863
    const-string v0, "[CarLocalMusicSearchActivity]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleProgress, startSearch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    if-eqz p1, :cond_0

    .line 865
    iget v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mIsSearchingCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mIsSearchingCount:I

    .line 873
    :goto_0
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mUiHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 874
    return-void

    .line 867
    :cond_0
    iget v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mIsSearchingCount:I

    if-lez v0, :cond_1

    .line 868
    iget v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mIsSearchingCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mIsSearchingCount:I

    goto :goto_0

    .line 870
    :cond_1
    const-string v0, "[CarLocalMusicSearchActivity]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleProgress, mIsSearchingCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mIsSearchingCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initInOnCreate()V
    .locals 4

    .prologue
    .line 567
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchCount:I

    .line 569
    new-instance v1, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$ListSubTitle;

    iget-object v2, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f070021

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$ListSubTitle;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mArtistSubTitleItem:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;

    .line 570
    new-instance v1, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$ListSubTitle;

    iget-object v2, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f070024

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$ListSubTitle;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumSubTitleItem:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;

    .line 571
    new-instance v1, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$ListSubTitle;

    iget-object v2, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f070027

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$ListSubTitle;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackSubTitleItem:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;

    .line 573
    iget-object v1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f07011f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 574
    .local v0, itemText:Ljava/lang/String;
    new-instance v1, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$ListInfoItems;

    invoke-direct {v1, v0}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$ListInfoItems;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mArtistNoResultItem:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;

    .line 575
    new-instance v1, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$ListInfoItems;

    invoke-direct {v1, v0}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$ListInfoItems;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumNoResultItem:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;

    .line 576
    new-instance v1, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$ListInfoItems;

    invoke-direct {v1, v0}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$ListInfoItems;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackNoResultItem:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;

    .line 578
    new-instance v1, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$ArtistQueryHandler;

    invoke-virtual {p0}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$ArtistQueryHandler;-><init>(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mArtistQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 579
    new-instance v1, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$AlbumQueryHandler;

    invoke-virtual {p0}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$AlbumQueryHandler;-><init>(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    .line 580
    new-instance v1, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$TrackQueryHandler;

    invoke-virtual {p0}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$TrackQueryHandler;-><init>(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    .line 582
    return-void
.end method

.method private initKeypadGestureDetector()V
    .locals 2

    .prologue
    .line 406
    const-string v0, "[CarLocalMusicSearchActivity]"

    const-string v1, "Gesture initKeypadGestureDetector"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$5;

    invoke-direct {v1, p0}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$5;-><init>(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)V

    invoke-direct {v0, p0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mGestureDetector:Landroid/view/GestureDetector;

    .line 437
    return-void
.end method

.method private initOnlineSearch(Ljava/lang/String;)V
    .locals 3
    .parameter "key"

    .prologue
    .line 942
    const-string v0, "[CarLocalMusicSearchActivity]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Do initOnlineSearch(key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 944
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mCurrentSearchToken:I

    .line 947
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mArtistQueryHandler:Landroid/content/AsyncQueryHandler;

    invoke-direct {p0, v0, p1}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->getArtistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    .line 948
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    invoke-direct {p0, v0, p1}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->getAlbumCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    .line 949
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    invoke-direct {p0, v0, p1}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->getTrackCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    .line 950
    return-void
.end method


# virtual methods
.method DumpQueryItemIndex()V
    .locals 0

    .prologue
    .line 598
    return-void
.end method

.method clear()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 601
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mArtistResultList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 602
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumResultList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 603
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackResultList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 604
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchResultList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 605
    iput v1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mArtistSubTitleIndex:I

    .line 606
    iput v1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumSubTitleIndex:I

    .line 607
    iput v1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackSubTitleIndex:I

    .line 608
    iput v1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mArtistNoResultItemIndex:I

    .line 609
    iput v1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumNoResultItemIndex:I

    .line 610
    iput v1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackNoResultItemIndex:I

    .line 612
    iput v3, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mIsSearchingCount:I

    .line 613
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    invoke-virtual {v0}, Lcom/htc/music/util/MemoryCacheBitmapByPosition;->clear()V

    .line 615
    iput v3, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mNoResultCount:I

    .line 618
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mArtistCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 619
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mArtistCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 620
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mArtistCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 621
    :cond_0
    iput-object v2, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mArtistCursor:Landroid/database/Cursor;

    .line 624
    :cond_1
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_3

    .line 625
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 626
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 627
    :cond_2
    iput-object v2, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAlbumCursor:Landroid/database/Cursor;

    .line 630
    :cond_3
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_5

    .line 631
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_4

    .line 632
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 633
    :cond_4
    iput-object v2, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTrackCursor:Landroid/database/Cursor;

    .line 635
    :cond_5
    return-void
.end method

.method isAsyncQuerying()Z
    .locals 1

    .prologue
    .line 1435
    iget-boolean v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAsyncQuerying:Z

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0x400

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 338
    invoke-super {p0, p1}, Lcom/htc/music/carmode/MusicAutoHeaderFooterListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 340
    if-eqz p1, :cond_0

    .line 341
    const-string v4, "default_search_key"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mDefaultSearchKey:Ljava/lang/String;

    .line 346
    :goto_0
    invoke-virtual {p0, v7}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->requestWindowFeature(I)Z

    .line 349
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 350
    .local v2, win:Landroid/view/Window;
    invoke-virtual {v2, v8, v8}, Landroid/view/Window;->setFlags(II)V

    .line 352
    const/high16 v4, 0x40

    invoke-virtual {v2, v4}, Landroid/view/Window;->addFlags(I)V

    .line 353
    const/high16 v4, 0x20

    invoke-virtual {v2, v4}, Landroid/view/Window;->addFlags(I)V

    .line 354
    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->setVolumeControlStream(I)V

    .line 355
    const v4, 0x7f030014

    invoke-virtual {p0, v4}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->setContentView(I)V

    .line 356
    const v4, 0x7f080048

    invoke-virtual {p0, v4}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mMainLayout:Landroid/widget/RelativeLayout;

    .line 358
    iput-object v9, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    .line 359
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mRes:Landroid/content/res/Resources;

    .line 361
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->setTitle()V

    .line 362
    invoke-direct {p0}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->initInOnCreate()V

    .line 363
    invoke-direct {p0}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->initKeypadGestureDetector()V

    .line 365
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchList:Lcom/htc/widget/HtcListView;

    .line 366
    iget-object v4, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcListView;->setTextFilterEnabled(Z)V

    .line 367
    iget-object v4, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v4, v7}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    .line 368
    iget-object v4, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v4, p0}, Lcom/htc/widget/HtcListView;->setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V

    .line 369
    iget-object v4, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcListView;->setTopBorderHeight(I)V

    .line 370
    iget-object v4, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v4, v9}, Lcom/htc/widget/HtcListView;->setTopDivider(Landroid/graphics/drawable/Drawable;)V

    .line 371
    iget-object v4, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchList:Lcom/htc/widget/HtcListView;

    invoke-virtual {p0}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x2080041

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 372
    iget-object v4, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchList:Lcom/htc/widget/HtcListView;

    invoke-virtual {p0}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0010

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListView;->setDividerHeight(I)V

    .line 373
    iget-object v4, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchList:Lcom/htc/widget/HtcListView;

    iget-object v5, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mListViewTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 375
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;

    iput-object v4, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchAdapter:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;

    .line 377
    iget-object v4, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchAdapter:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;

    if-eqz v4, :cond_1

    .line 378
    iget-object v4, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchAdapter:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;

    invoke-virtual {v4, p0}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;->setActivity(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)V

    .line 382
    :goto_1
    iget-object v4, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchAdapter:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;

    invoke-virtual {p0, v4}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 385
    iget-object v4, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mDefaultSearchKey:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->doLocalSearch(Ljava/lang/String;)V

    .line 388
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 389
    .local v1, f:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 390
    const-string v4, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 391
    const-string v4, "file"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 392
    iget-object v4, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v1}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 394
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 395
    .local v0, display:Landroid/view/Display;
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 396
    .local v3, windowSize:Landroid/graphics/Point;
    invoke-virtual {v0, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 397
    iget v4, v3, Landroid/graphics/Point;->y:I

    int-to-double v4, v4

    const-wide v6, 0x3fc999999999999aL

    mul-double/2addr v4, v6

    iput-wide v4, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mGestureHeight:D

    .line 399
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1           #f:Landroid/content/IntentFilter;
    sget-object v4, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    invoke-direct {v1, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 400
    .restart local v1       #f:Landroid/content/IntentFilter;
    iget-object v4, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mCarDockListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v1}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 402
    const-string v4, "[CarLocalMusicSearchActivity]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mGestureHeight = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mGestureHeight:D

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    return-void

    .line 343
    .end local v0           #display:Landroid/view/Display;
    .end local v1           #f:Landroid/content/IntentFilter;
    .end local v2           #win:Landroid/view/Window;
    .end local v3           #windowSize:Landroid/graphics/Point;
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "default_search_key"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mDefaultSearchKey:Ljava/lang/String;

    goto/16 :goto_0

    .line 380
    .restart local v2       #win:Landroid/view/Window;
    :cond_1
    new-instance v4, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;

    invoke-virtual {p0}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5, p0}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;-><init>(Landroid/content/Context;Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)V

    iput-object v4, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchAdapter:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    .line 676
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/htc/music/carmode/util/CarMusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    .line 678
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->clear()V

    .line 680
    iget-object v1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    if-eqz v1, :cond_0

    .line 681
    iget-object v1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    invoke-virtual {v1}, Lcom/htc/music/util/AsyncImageDecoder;->quit()V

    .line 682
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    .line 686
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 692
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mCarDockListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 697
    :goto_1
    invoke-super {p0}, Lcom/htc/music/carmode/MusicAutoHeaderFooterListActivity;->onDestroy()V

    .line 698
    return-void

    .line 687
    :catch_0
    move-exception v0

    .line 688
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const-string v1, "[CarLocalMusicSearchActivity]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDestroy, fail to unregisterReceiver(mScanListener), ex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 693
    .end local v0           #ex:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 694
    .restart local v0       #ex:Ljava/lang/IllegalArgumentException;
    const-string v1, "[CarLocalMusicSearchActivity]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDestroy, fail to unregisterReceiver(mCarDockListener), ex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onListItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 756
    invoke-direct {p0, p3}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->getItemViewType(I)I

    move-result v0

    .line 758
    .local v0, viewType:I
    packed-switch v0, :pswitch_data_0

    .line 770
    :goto_0
    invoke-super/range {p0 .. p5}, Lcom/htc/music/carmode/MusicAutoHeaderFooterListActivity;->onListItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V

    .line 771
    return-void

    .line 760
    :pswitch_0
    invoke-direct {p0, p3}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->goToArtistDetail(I)V

    goto :goto_0

    .line 763
    :pswitch_1
    invoke-direct {p0, p3}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->goToAlbumDetail(I)V

    goto :goto_0

    .line 766
    :pswitch_2
    invoke-direct {p0, p3}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->clickTrackItem(I)V

    goto :goto_0

    .line 758
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 714
    const-string v0, "default_search_key"

    iget-object v1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchStr:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    invoke-super {p0, p1}, Lcom/htc/music/carmode/MusicAutoHeaderFooterListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 716
    return-void
.end method

.method public onScroll(Lcom/htc/widget/HtcAbsListView;III)V
    .locals 4
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 743
    move v1, p2

    .line 744
    .local v1, start:I
    add-int v0, p2, p3

    .line 746
    .local v0, end:I
    iget-object v2, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    if-eqz v2, :cond_0

    .line 747
    iget-object v2, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    invoke-virtual {v2, v1, v0}, Lcom/htc/music/util/AsyncImageDecoder;->setVisibleRange(II)V

    .line 749
    :cond_0
    iget-object v2, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    if-eqz v2, :cond_1

    .line 750
    iget-object v2, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    add-int v3, v1, v0

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Lcom/htc/music/util/MemoryCacheBitmapByPosition;->setPosition(I)V

    .line 752
    :cond_1
    return-void
.end method

.method public onScrollStateChanged(Lcom/htc/widget/HtcAbsListView;I)V
    .locals 3
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 953
    const-string v0, "[CarLocalMusicSearchActivity]"

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

    .line 954
    packed-switch p2, :pswitch_data_0

    .line 971
    :cond_0
    :goto_0
    return-void

    .line 956
    :pswitch_0
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->isActivityResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 957
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->resumeDecode()V

    goto :goto_0

    .line 961
    :pswitch_1
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->isActivityResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 962
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->resumeDecode()V

    goto :goto_0

    .line 966
    :pswitch_2
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    if-eqz v0, :cond_0

    .line 967
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->pauseDecode()V

    goto :goto_0

    .line 954
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 441
    const-string v0, "[CarLocalMusicSearchActivity]"

    const-string v1, "[onServiceConnected] ."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    iget-boolean v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mStopping:Z

    if-eqz v0, :cond_0

    .line 443
    const-string v0, "[CarLocalMusicSearchActivity]"

    const-string v1, "[onServiceConnected] Stopping! Disconnect service right away."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/carmode/util/CarMusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    .line 449
    :goto_0
    return-void

    .line 448
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mServiceBound:Z

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 453
    const-string v0, "[CarLocalMusicSearchActivity]"

    const-string v1, "onServiceDisconnected, Service is disconnected abnormally."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 720
    invoke-super {p0}, Lcom/htc/music/carmode/MusicAutoHeaderFooterListActivity;->onStart()V

    .line 722
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mStopping:Z

    .line 725
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/htc/music/carmode/util/CarMusicUtils;->bindToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/ServiceConnection;)Z

    .line 726
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 730
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mStopping:Z

    .line 732
    iget-boolean v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mServiceBound:Z

    if-eqz v0, :cond_0

    .line 733
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/carmode/util/CarMusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    .line 734
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mServiceBound:Z

    .line 737
    :cond_0
    invoke-super {p0}, Lcom/htc/music/carmode/MusicAutoHeaderFooterListActivity;->onStop()V

    .line 738
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 511
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 512
    const/4 v0, 0x1

    return v0
.end method

.method protected setTitle()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 457
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mInputBox:Lcom/htc/widget/ActionBarSearch;

    if-eqz v0, :cond_0

    .line 507
    :goto_0
    return-void

    .line 460
    :cond_0
    new-instance v0, Lcom/htc/widget/ActionBarContainer;

    invoke-direct {v0, p0}, Lcom/htc/widget/ActionBarContainer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    .line 461
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {v0, v2}, Lcom/htc/widget/ActionBarContainer;->setSupportMode(I)V

    .line 464
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->setBackUpEnabled(Z)V

    .line 465
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    new-instance v1, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$6;

    invoke-direct {v1, p0}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$6;-><init>(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->setBackUpOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 471
    new-instance v0, Lcom/htc/widget/ActionBarSearch;

    invoke-direct {v0, p0, v2}, Lcom/htc/widget/ActionBarSearch;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mInputBox:Lcom/htc/widget/ActionBarSearch;

    .line 474
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    iget-object v1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mInputBox:Lcom/htc/widget/ActionBarSearch;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->addCenterView(Landroid/view/View;)V

    .line 475
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mMainLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 497
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mInputBox:Lcom/htc/widget/ActionBarSearch;

    invoke-virtual {v0}, Lcom/htc/widget/ActionBarSearch;->getAutoCompleteTextView()Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchStr:Landroid/widget/AutoCompleteTextView;

    .line 498
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchStr:Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 499
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchStr:Landroid/widget/AutoCompleteTextView;

    const v1, 0x7f0700c6

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setHint(I)V

    .line 500
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchStr:Landroid/widget/AutoCompleteTextView;

    const/high16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setImeOptions(I)V

    .line 501
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mDefaultSearchKey:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 502
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchStr:Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mDefaultSearchKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 504
    :cond_1
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchStr:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchTextWatcher;

    invoke-direct {v1, p0}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchTextWatcher;-><init>(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 506
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchStr:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    goto :goto_0
.end method
