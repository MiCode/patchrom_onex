.class public Lcom/htc/music/browserlayer/LocalMusicSearchActivity;
.super Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;
.source "LocalMusicSearchActivity.java"

# interfaces
.implements Lcom/htc/music/util/MusicUtils$Defs;
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/browserlayer/LocalMusicSearchActivity$TrackQueryHandler;,
        Lcom/htc/music/browserlayer/LocalMusicSearchActivity$AlbumQueryHandler;,
        Lcom/htc/music/browserlayer/LocalMusicSearchActivity$ArtistQueryHandler;,
        Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter;,
        Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;,
        Lcom/htc/music/browserlayer/LocalMusicSearchActivity$ListInfoItems;,
        Lcom/htc/music/browserlayer/LocalMusicSearchActivity$ListSubTitle;,
        Lcom/htc/music/browserlayer/LocalMusicSearchActivity$OnlineSearchItem;,
        Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchTextWatcher;
    }
.end annotation


# static fields
.field private static final ALBUM_DEFAULT_SORT_ORDER:Ljava/lang/String; = "album COLLATE NOCASE ASC"

.field private static final ARTIST_DEFAULT_SORT_ORDER:Ljava/lang/String; = "artist COLLATE NOCASE ASC"

.field public static final INTENT_MSG_DEFAULT_SEARCH_KEY:Ljava/lang/String; = "default_search_key"

.field private static final TAG:Ljava/lang/String; = "[LocalMusicSearchActivity]"

.field private static final TITLE_DEFAULT_SORT_ORDER:Ljava/lang/String; = "title COLLATE NOCASE ASC"

.field private static final TYPE_ALBUM:I = 0x4

.field private static final TYPE_ARTIST:I = 0x3

.field private static final TYPE_NO_RESULT:I = 0x6

.field private static final TYPE_SEPARATOR:I = 0x2

.field private static final TYPE_STORE:I = 0x1

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

.field private mAlbumNoResultItem:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;

.field private mAlbumNoResultItemIndex:I

.field private mAlbumQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

.field private mAlbumResultList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;",
            ">;"
        }
    .end annotation
.end field

.field private mAlbumSubTitleIndex:I

.field private mAlbumSubTitleItem:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;

.field mArtistCols:[Ljava/lang/String;

.field private mArtistCursor:Landroid/database/Cursor;

.field private mArtistCursorArtistIndex:I

.field private mArtistCursorIdIndex:I

.field private mArtistNoResultItem:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;

.field private mArtistNoResultItemIndex:I

.field private mArtistQueryHandler:Landroid/content/AsyncQueryHandler;

.field private mArtistResultList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;",
            ">;"
        }
    .end annotation
.end field

.field private mArtistSubTitleIndex:I

.field private mArtistSubTitleItem:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;

.field private mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

.field mAsyncQuerying:Z

.field private mCurrentSearchToken:I

.field protected mDefaultSearchKey:Ljava/lang/String;

.field mInputBox:Lcom/htc/widget/ActionBarSearch;

.field private mIsSearchingCount:I

.field private mIsSeriveBinded:Z

.field private mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;

.field private mNeedBindSerive:Z

.field private mNoResultCount:I

.field private mOnlineSearchIndex:I

.field private mOnlineSearchItem:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;

.field mRes:Landroid/content/res/Resources;

.field private mScanListener:Landroid/content/BroadcastReceiver;

.field mSearchAdapter:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter;

.field private mSearchCount:I

.field private mSearchList:Lcom/htc/widget/HtcListView;

.field private mSearchResultList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;",
            ">;"
        }
    .end annotation
.end field

.field protected mSearchStr:Landroid/widget/AutoCompleteTextView;

.field mTrackCols:[Ljava/lang/String;

.field private mTrackCursor:Landroid/database/Cursor;

.field private mTrackCursorArtIndex:I

.field private mTrackCursorArtistIndex:I

.field private mTrackCursorIdIndex:I

.field private mTrackCursorTitleIndex:I

.field private mTrackNoResultItem:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;

.field private mTrackNoResultItemIndex:I

.field private mTrackQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

.field private mTrackResultList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;",
            ">;"
        }
    .end annotation
.end field

.field private mTrackSubTitleIndex:I

.field private mTrackSubTitleItem:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;

.field private mUiHandler:Landroid/os/Handler;

.field private mUnlockReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 61
    invoke-direct {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;-><init>()V

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchResultList:Ljava/util/ArrayList;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistResultList:Ljava/util/ArrayList;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumResultList:Ljava/util/ArrayList;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackResultList:Ljava/util/ArrayList;

    .line 91
    iput v3, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mIsSearchingCount:I

    .line 93
    iput v6, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->QUERY_TYPE_CATEGORY_COUNT:I

    .line 94
    iput v3, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mNoResultCount:I

    .line 96
    const/16 v0, 0x12c

    iput v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->DELAY_REFRESH_LIST_VIEW:I

    .line 108
    new-instance v0, Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lcom/htc/music/util/MemoryCacheBitmapByPosition;-><init>(I)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    .line 114
    iput-boolean v3, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mNeedBindSerive:Z

    .line 115
    iput-boolean v3, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mIsSeriveBinded:Z

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mUnlockReceiver:Landroid/content/BroadcastReceiver;

    .line 123
    new-instance v0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$1;-><init>(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    .line 131
    iput v4, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->MSG_REFRESH_LISTVIEW:I

    .line 132
    iput v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->MSG_UPDATE_SEARCH_LIST:I

    .line 133
    iput v6, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->MSG_DO_ALL_SEARCH:I

    .line 134
    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->MSG_HANDLE_PROGRESS:I

    .line 137
    iput v4, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->ARTIST_LIST:I

    .line 138
    iput v5, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->ALBUM_LIST:I

    .line 139
    iput v6, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->TRACK_LIST:I

    .line 142
    new-instance v0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$2;-><init>(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mUiHandler:Landroid/os/Handler;

    .line 1288
    iput v2, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistCursorIdIndex:I

    .line 1289
    iput v2, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistCursorArtistIndex:I

    .line 1291
    iput v2, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumCursorIdIndex:I

    .line 1292
    iput v2, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumCursorAlbumIndex:I

    .line 1293
    iput v2, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumCursorArtIndex:I

    .line 1295
    iput v2, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackCursorIdIndex:I

    .line 1296
    iput v2, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackCursorTitleIndex:I

    .line 1297
    iput v2, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackCursorArtistIndex:I

    .line 1298
    iput v2, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackCursorArtIndex:I

    .line 1300
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "artist"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistCols:[Ljava/lang/String;

    .line 1304
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

    iput-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumCols:[Ljava/lang/String;

    .line 1313
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

    iput-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackCols:[Ljava/lang/String;

    .line 1324
    iput-boolean v3, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAsyncQuerying:Z

    .line 1547
    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->doLocalSearch(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistResultList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumCursorIdIndex:I

    return v0
.end method

.method static synthetic access$1002(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput p1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumCursorIdIndex:I

    return p1
.end method

.method static synthetic access$1100(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumCursorAlbumIndex:I

    return v0
.end method

.method static synthetic access$1102(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput p1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumCursorAlbumIndex:I

    return p1
.end method

.method static synthetic access$1200(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumCursorArtIndex:I

    return v0
.end method

.method static synthetic access$1202(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput p1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumCursorArtIndex:I

    return p1
.end method

.method static synthetic access$1300(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackResultList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackSubTitleItem:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackCursorIdIndex:I

    return v0
.end method

.method static synthetic access$1602(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput p1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackCursorIdIndex:I

    return p1
.end method

.method static synthetic access$1700(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackCursorTitleIndex:I

    return v0
.end method

.method static synthetic access$1702(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput p1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackCursorTitleIndex:I

    return p1
.end method

.method static synthetic access$1800(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackCursorArtistIndex:I

    return v0
.end method

.method static synthetic access$1802(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput p1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackCursorArtistIndex:I

    return p1
.end method

.method static synthetic access$1900(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackCursorArtIndex:I

    return v0
.end method

.method static synthetic access$1902(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput p1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackCursorArtIndex:I

    return p1
.end method

.method static synthetic access$200(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchResultList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$202(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mOnlineSearchItem:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput p1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mOnlineSearchIndex:I

    return p1
.end method

.method static synthetic access$2302(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput p1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistSubTitleIndex:I

    return p1
.end method

.method static synthetic access$2402(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput p1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumSubTitleIndex:I

    return p1
.end method

.method static synthetic access$2502(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput p1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackSubTitleIndex:I

    return p1
.end method

.method static synthetic access$2602(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput p1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistNoResultItemIndex:I

    return p1
.end method

.method static synthetic access$2700(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistNoResultItem:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput p1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumNoResultItemIndex:I

    return p1
.end method

.method static synthetic access$2900(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumNoResultItem:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mNoResultCount:I

    return v0
.end method

.method static synthetic access$3002(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput p1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackNoResultItemIndex:I

    return p1
.end method

.method static synthetic access$308(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mNoResultCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mNoResultCount:I

    return v0
.end method

.method static synthetic access$3100(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackNoResultItem:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->initLocalSearch(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mIsSearchingCount:I

    return v0
.end method

.method static synthetic access$3400(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;Ljava/lang/String;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->doLocalSearch(Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$3600(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Lcom/htc/music/util/AsyncImageDecoder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    return-object v0
.end method

.method static synthetic access$3602(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;Lcom/htc/music/util/AsyncImageDecoder;)Lcom/htc/music/util/AsyncImageDecoder;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    return-object p1
.end method

.method static synthetic access$3800(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 61
    invoke-virtual {p0, p1, p2}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->getMarkedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3900(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 61
    invoke-virtual {p0, p1, p2}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->getMarkedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistSubTitleItem:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Lcom/htc/music/util/MemoryCacheBitmapByPosition;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$4400(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Lcom/htc/widget/HtcListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchList:Lcom/htc/widget/HtcListView;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mCurrentSearchToken:I

    return v0
.end method

.method static synthetic access$4600(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->handleProgress(Z)V

    return-void
.end method

.method static synthetic access$4800(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/htc/music/widget/MusicMaActivity;->mIsEnhancerExist:Z

    return v0
.end method

.method static synthetic access$4900(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/htc/music/widget/MusicMaActivity;->mIsEnhancerExist:Z

    return v0
.end method

.method static synthetic access$500(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistCursorIdIndex:I

    return v0
.end method

.method static synthetic access$502(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput p1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistCursorIdIndex:I

    return p1
.end method

.method static synthetic access$600(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistCursorArtistIndex:I

    return v0
.end method

.method static synthetic access$602(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput p1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistCursorArtistIndex:I

    return p1
.end method

.method static synthetic access$700(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumResultList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$802(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$900(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumSubTitleItem:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;

    return-object v0
.end method

.method private clickTrackItem(I)V
    .locals 5
    .parameter "position"

    .prologue
    const/4 v4, 0x0

    .line 729
    iget-object v2, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchResultList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;

    .line 730
    .local v0, itemInfo:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;
    const/4 v2, 0x1

    new-array v1, v2, [I

    #calls: Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->getId()J
    invoke-static {v0}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->access$3500(Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;)J

    move-result-wide v2

    long-to-int v2, v2

    aput v2, v1, v4

    .line 731
    .local v1, list:[I
    const/4 v2, 0x0

    invoke-static {p0, v1, v4, v2}, Lcom/htc/music/util/MusicUtils;->playAllAndPrepare(Landroid/content/Context;[IILcom/htc/music/NpCategory;)V

    .line 732
    return-void
.end method

.method private doLocalSearch(Ljava/lang/String;)V
    .locals 2
    .parameter "key"

    .prologue
    .line 464
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->doLocalSearch(Ljava/lang/String;J)V

    .line 465
    return-void
.end method

.method private doLocalSearch(Ljava/lang/String;J)V
    .locals 3
    .parameter "key"
    .parameter "delayTime"

    .prologue
    const/4 v2, 0x3

    .line 468
    iget-object v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 469
    iget-object v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 470
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 471
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-lez v1, :cond_0

    .line 472
    iget-object v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 475
    :goto_0
    return-void

    .line 474
    :cond_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mUiHandler:Landroid/os/Handler;

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

    .line 1389
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1390
    .local v9, where:Ljava/lang/StringBuilder;
    const-string v0, "album != \'\'"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1391
    const-string v0, " AND album != \'<unknown>\'"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1393
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 1394
    .local v10, whereUnkown:Ljava/lang/StringBuilder;
    const-string v0, "album = \'<unknown>\'"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1397
    const/4 v6, 0x0

    .line 1398
    .local v6, keywords:[Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 1399
    new-array v6, v11, [Ljava/lang/String;

    .line 1400
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

    .line 1401
    const-string v0, " AND "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1402
    const-string v0, "album LIKE ?"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1405
    :cond_0
    sget-object v3, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1408
    .local v3, asyncUri:Landroid/net/Uri;
    const/4 v8, 0x0

    .line 1409
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz p1, :cond_1

    .line 1410
    iput-boolean v11, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAsyncQuerying:Z

    .line 1411
    iget v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mCurrentSearchToken:I

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumCols:[Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "album COLLATE NOCASE ASC"

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Lcom/htc/music/util/DlArtAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1414
    invoke-direct {p0, v11}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->handleProgress(Z)V

    .line 1421
    :goto_0
    return-object v8

    .line 1416
    :cond_1
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAsyncQuerying:Z

    .line 1417
    iget-object v4, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumCols:[Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "album COLLATE NOCASE ASC"

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto :goto_0
.end method

.method private getArtistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .parameter "async"
    .parameter "filterstring"

    .prologue
    const/4 v10, 0x1

    .line 1332
    const-string v0, "[LocalMusicSearchActivity]"

    const-string v1, "@@@@ getArtistCursor() - start"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1334
    if-eqz p2, :cond_0

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1335
    const/4 p2, 0x0

    .line 1337
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1338
    .local v9, where:Ljava/lang/StringBuilder;
    const-string v0, "artist != \'\' "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1339
    const-string v0, " AND artist != \'<unknown>\'"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1341
    const/4 v6, 0x0

    .line 1343
    .local v6, keywords:[Ljava/lang/String;
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 1357
    new-array v6, v10, [Ljava/lang/String;

    .line 1358
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

    .line 1359
    const-string v0, " AND "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1360
    const-string v0, "artist LIKE ?"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1363
    :cond_1
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1365
    .local v5, whereclause:Ljava/lang/String;
    const-string v0, "[LocalMusicSearchActivity]"

    const-string v1, "getArtistCursor() - 1"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1366
    const/4 v8, 0x0

    .line 1367
    .local v8, ret:Landroid/database/Cursor;
    if-eqz p1, :cond_2

    .line 1368
    const-string v0, "[LocalMusicSearchActivity]"

    const-string v1, "getArtistCursor() - 2"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1369
    iput-boolean v10, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAsyncQuerying:Z

    .line 1372
    iget v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mCurrentSearchToken:I

    const/4 v2, 0x0

    sget-object v3, Lcom/htc/music/util/MusicUtils$Artists2;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistCols:[Ljava/lang/String;

    const-string v7, "artist COLLATE NOCASE ASC"

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1374
    invoke-direct {p0, v10}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->handleProgress(Z)V

    .line 1383
    :goto_0
    return-object v8

    .line 1376
    :cond_2
    const-string v0, "[LocalMusicSearchActivity]"

    const-string v1, "getArtistCursor() - 3"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1379
    sget-object v3, Lcom/htc/music/util/MusicUtils$Artists2;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistCols:[Ljava/lang/String;

    const-string v7, "artist COLLATE NOCASE ASC"

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto :goto_0
.end method

.method private getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 747
    iget v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mOnlineSearchIndex:I

    if-ne p1, v0, :cond_0

    .line 748
    const/4 v0, 0x1

    .line 774
    :goto_0
    return v0

    .line 750
    :cond_0
    iget v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistSubTitleIndex:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumSubTitleIndex:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackSubTitleIndex:I

    if-ne p1, v0, :cond_2

    .line 754
    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    .line 756
    :cond_2
    iget v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistNoResultItemIndex:I

    if-eq p1, v0, :cond_3

    iget v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumNoResultItemIndex:I

    if-eq p1, v0, :cond_3

    iget v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackNoResultItemIndex:I

    if-ne p1, v0, :cond_4

    .line 759
    :cond_3
    const/4 v0, 0x6

    goto :goto_0

    .line 761
    :cond_4
    iget v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackSubTitleIndex:I

    if-ltz v0, :cond_5

    iget v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackSubTitleIndex:I

    if-le p1, v0, :cond_5

    .line 763
    const/4 v0, 0x5

    goto :goto_0

    .line 765
    :cond_5
    iget v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumSubTitleIndex:I

    if-ltz v0, :cond_6

    iget v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumSubTitleIndex:I

    if-le p1, v0, :cond_6

    .line 767
    const/4 v0, 0x4

    goto :goto_0

    .line 769
    :cond_6
    iget v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistSubTitleIndex:I

    if-ltz v0, :cond_7

    iget v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistSubTitleIndex:I

    if-le p1, v0, :cond_7

    .line 771
    const/4 v0, 0x3

    goto :goto_0

    .line 774
    :cond_7
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

    .line 1425
    const/4 v8, 0x0

    .line 1426
    .local v8, ret:Landroid/database/Cursor;
    if-eqz p1, :cond_1

    move v0, v10

    :goto_0
    iput-boolean v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAsyncQuerying:Z

    .line 1427
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1428
    .local v9, where:Ljava/lang/StringBuilder;
    const-string v0, "title != \'\'"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1431
    const/4 v6, 0x0

    .line 1432
    .local v6, keywords:[Ljava/lang/String;
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1446
    new-array v6, v10, [Ljava/lang/String;

    .line 1447
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

    .line 1448
    const-string v0, " AND "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1449
    const-string v0, "title LIKE ?"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1452
    :cond_0
    const-string v0, " AND is_music>=1"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1454
    if-eqz p1, :cond_2

    .line 1455
    iget v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mCurrentSearchToken:I

    const/4 v2, 0x0

    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackCols:[Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "title COLLATE NOCASE ASC"

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Lcom/htc/music/util/DlArtAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1457
    invoke-direct {p0, v10}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->handleProgress(Z)V

    .line 1458
    const/4 v8, 0x0

    .line 1464
    :goto_1
    return-object v8

    .end local v6           #keywords:[Ljava/lang/String;
    .end local v9           #where:Ljava/lang/StringBuilder;
    :cond_1
    move v0, v1

    .line 1426
    goto :goto_0

    .line 1460
    .restart local v6       #keywords:[Ljava/lang/String;
    .restart local v9       #where:Ljava/lang/StringBuilder;
    :cond_2
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackCols:[Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "title COLLATE NOCASE ASC"

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto :goto_1
.end method

.method private goToAlbumDetail(I)V
    .locals 6
    .parameter "position"

    .prologue
    .line 718
    iget-object v3, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchResultList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;

    .line 719
    .local v2, itemInfo:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;
    #calls: Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->getId()J
    invoke-static {v2}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->access$3500(Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    .line 720
    .local v0, albumId:Ljava/lang/String;
    const-string v3, "[LocalMusicSearchActivity]"

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

    .line 721
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 722
    .local v1, intent:Landroid/content/Intent;
    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v4, "com.htc.media/albumtrack"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 723
    const/high16 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 724
    const-string v3, "albumid"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 725
    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->startActivity(Landroid/content/Intent;)V

    .line 726
    return-void
.end method

.method private goToArtistDetail(I)V
    .locals 5
    .parameter "position"

    .prologue
    .line 707
    iget-object v2, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchResultList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;

    .line 709
    .local v1, itemInfo:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 710
    .local v0, intent:Landroid/content/Intent;
    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v3, "vnd.android.cursor.dir/album"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 711
    const/high16 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 712
    const-string v2, "artistid"

    #calls: Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->getId()J
    invoke-static {v1}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;->access$3500(Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 713
    const-string v2, "dbTable"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 714
    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->startActivity(Landroid/content/Intent;)V

    .line 715
    return-void
.end method

.method private goToOnlineSearch(Ljava/lang/String;)V
    .locals 2
    .parameter "key"

    .prologue
    .line 699
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.intent.action.ONLINESEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 700
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 701
    if-eqz p1, :cond_0

    .line 702
    const-string v1, "default_search_key"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 703
    :cond_0
    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->startActivity(Landroid/content/Intent;)V

    .line 704
    return-void
.end method

.method private handleProgress(Z)V
    .locals 3
    .parameter "startSearch"

    .prologue
    .line 779
    const-string v0, "[LocalMusicSearchActivity]"

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

    .line 780
    if-eqz p1, :cond_0

    .line 781
    iget v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mIsSearchingCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mIsSearchingCount:I

    .line 790
    :goto_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mUiHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 791
    return-void

    .line 784
    :cond_0
    iget v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mIsSearchingCount:I

    if-lez v0, :cond_1

    .line 785
    iget v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mIsSearchingCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mIsSearchingCount:I

    goto :goto_0

    .line 787
    :cond_1
    const-string v0, "[LocalMusicSearchActivity]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleProgress, mIsSearchingCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mIsSearchingCount:I

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
    .line 478
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchCount:I

    .line 480
    new-instance v1, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$OnlineSearchItem;

    iget-object v2, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0701b2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$OnlineSearchItem;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mOnlineSearchItem:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;

    .line 482
    new-instance v1, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$ListSubTitle;

    iget-object v2, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f070021

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$ListSubTitle;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistSubTitleItem:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;

    .line 483
    new-instance v1, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$ListSubTitle;

    iget-object v2, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f070024

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$ListSubTitle;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumSubTitleItem:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;

    .line 484
    new-instance v1, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$ListSubTitle;

    iget-object v2, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f070027

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$ListSubTitle;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackSubTitleItem:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;

    .line 486
    iget-object v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f07011f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 487
    .local v0, itemText:Ljava/lang/String;
    new-instance v1, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$ListInfoItems;

    invoke-direct {v1, v0}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$ListInfoItems;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistNoResultItem:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;

    .line 488
    new-instance v1, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$ListInfoItems;

    invoke-direct {v1, v0}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$ListInfoItems;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumNoResultItem:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;

    .line 489
    new-instance v1, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$ListInfoItems;

    invoke-direct {v1, v0}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$ListInfoItems;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackNoResultItem:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$BaseItem;

    .line 491
    new-instance v1, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$ArtistQueryHandler;

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$ArtistQueryHandler;-><init>(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 492
    new-instance v1, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$AlbumQueryHandler;

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$AlbumQueryHandler;-><init>(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    .line 493
    new-instance v1, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$TrackQueryHandler;

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$TrackQueryHandler;-><init>(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    .line 494
    return-void
.end method

.method private initLocalSearch(Ljava/lang/String;)V
    .locals 3
    .parameter "key"

    .prologue
    .line 859
    const-string v0, "[LocalMusicSearchActivity]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Do initLocalSearch, key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mCurrentSearchToken:I

    .line 864
    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistQueryHandler:Landroid/content/AsyncQueryHandler;

    invoke-direct {p0, v0, p1}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->getArtistCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    .line 865
    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    invoke-direct {p0, v0, p1}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->getAlbumCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    .line 866
    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    invoke-direct {p0, v0, p1}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->getTrackCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    .line 867
    return-void
.end method


# virtual methods
.method DumpQueryItemIndex()V
    .locals 0

    .prologue
    .line 510
    return-void
.end method

.method clear()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 513
    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistResultList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 514
    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumResultList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 515
    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackResultList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 516
    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchResultList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 517
    iput v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mOnlineSearchIndex:I

    .line 518
    iput v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistSubTitleIndex:I

    .line 519
    iput v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumSubTitleIndex:I

    .line 520
    iput v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackSubTitleIndex:I

    .line 521
    iput v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistNoResultItemIndex:I

    .line 522
    iput v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumNoResultItemIndex:I

    .line 523
    iput v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackNoResultItemIndex:I

    .line 525
    iput v3, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mIsSearchingCount:I

    .line 526
    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    invoke-virtual {v0}, Lcom/htc/music/util/MemoryCacheBitmapByPosition;->clear()V

    .line 528
    iput v3, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mNoResultCount:I

    .line 531
    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 532
    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 534
    :cond_0
    iput-object v2, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mArtistCursor:Landroid/database/Cursor;

    .line 537
    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_3

    .line 538
    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 539
    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 540
    :cond_2
    iput-object v2, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAlbumCursor:Landroid/database/Cursor;

    .line 543
    :cond_3
    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_5

    .line 544
    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_4

    .line 545
    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 546
    :cond_4
    iput-object v2, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mTrackCursor:Landroid/database/Cursor;

    .line 548
    :cond_5
    return-void
.end method

.method isAsyncQuerying()Z
    .locals 1

    .prologue
    .line 1327
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAsyncQuerying:Z

    return v0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 1597
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onBackPressed()V

    .line 1598
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 306
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 308
    if-eqz p1, :cond_2

    .line 309
    const-string v1, "default_search_key"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mDefaultSearchKey:Ljava/lang/String;

    .line 321
    :goto_0
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->requestWindowFeature(I)Z

    .line 322
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->setVolumeControlStream(I)V

    .line 323
    const v1, 0x7f03003e

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->setContentView(I)V

    .line 326
    iput-object v4, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    .line 327
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mRes:Landroid/content/res/Resources;

    .line 329
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->setTitle()V

    .line 330
    invoke-direct {p0}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->initInOnCreate()V

    .line 332
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchList:Lcom/htc/widget/HtcListView;

    .line 333
    iget-object v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcListView;->setTextFilterEnabled(Z)V

    .line 334
    iget-object v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchList:Lcom/htc/widget/HtcListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    .line 335
    iget-object v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1, p0}, Lcom/htc/widget/HtcListView;->setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V

    .line 336
    iget-object v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcListView;->setTopBorderHeight(I)V

    .line 337
    iget-object v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcListView;->setTopDivider(Landroid/graphics/drawable/Drawable;)V

    .line 339
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter;

    iput-object v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchAdapter:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter;

    .line 341
    iget-object v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchAdapter:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter;

    if-eqz v1, :cond_4

    .line 342
    iget-object v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchAdapter:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter;

    invoke-virtual {v1, p0}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter;->setActivity(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)V

    .line 346
    :goto_1
    iget-object v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchAdapter:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter;

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 349
    iget-object v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mDefaultSearchKey:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->doLocalSearch(Ljava/lang/String;)V

    .line 352
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 353
    .local v0, f:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 354
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 355
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 356
    iget-object v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 358
    invoke-static {}, Lcom/htc/music/util/ProjectSettings;->isSupportBypassPincode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 359
    iget-object v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mUnlockReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 360
    new-instance v1, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$3;

    invoke-direct {v1, p0}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$3;-><init>(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)V

    iput-object v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mUnlockReceiver:Landroid/content/BroadcastReceiver;

    .line 368
    :cond_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mUnlockReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.htc.music.lockscreen_start"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 370
    :cond_1
    return-void

    .line 312
    .end local v0           #f:Landroid/content/IntentFilter;
    :cond_2
    const-string v1, "android.media.action.MEDIA_PLAY_FROM_SEARCH"

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 313
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "query"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mDefaultSearchKey:Ljava/lang/String;

    goto/16 :goto_0

    .line 316
    :cond_3
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "default_search_key"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mDefaultSearchKey:Ljava/lang/String;

    goto/16 :goto_0

    .line 344
    :cond_4
    new-instance v1, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter;

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter;-><init>(Landroid/content/Context;Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)V

    iput-object v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchAdapter:Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchListAdapter;

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    .line 588
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 594
    :goto_0
    invoke-static {}, Lcom/htc/music/util/ProjectSettings;->isSupportBypassPincode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 596
    :try_start_1
    iget-object v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mUnlockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 602
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->clear()V

    .line 604
    iget-object v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    if-eqz v1, :cond_1

    .line 606
    iget-object v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    invoke-virtual {v1}, Lcom/htc/music/util/AsyncImageDecoder;->quit()V

    .line 607
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    .line 610
    :cond_1
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onDestroy()V

    .line 611
    return-void

    .line 590
    :catch_0
    move-exception v0

    .line 591
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const-string v1, "[LocalMusicSearchActivity]"

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

    .line 597
    .end local v0           #ex:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 598
    .restart local v0       #ex:Ljava/lang/IllegalArgumentException;
    const-string v1, "[LocalMusicSearchActivity]"

    const-string v2, "onDestroy, fail to unregisterReceiver(mUnlockReceiver)"

    invoke-static {v1, v2, v0}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method protected onListItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 675
    invoke-direct {p0, p3}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->getItemViewType(I)I

    move-result v1

    .line 677
    .local v1, viewType:I
    packed-switch v1, :pswitch_data_0

    .line 695
    :goto_0
    :pswitch_0
    invoke-super/range {p0 .. p5}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onListItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V

    .line 696
    return-void

    .line 679
    :pswitch_1
    iget-object v2, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchStr:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v2}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchStr:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v2}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 680
    .local v0, searchKey:Ljava/lang/String;
    :goto_1
    invoke-direct {p0, v0}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->goToOnlineSearch(Ljava/lang/String;)V

    goto :goto_0

    .line 679
    .end local v0           #searchKey:Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 684
    :pswitch_2
    invoke-direct {p0, p3}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->goToArtistDetail(I)V

    goto :goto_0

    .line 687
    :pswitch_3
    invoke-direct {p0, p3}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->goToAlbumDetail(I)V

    goto :goto_0

    .line 690
    :pswitch_4
    invoke-direct {p0, p3}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->clickTrackItem(I)V

    goto :goto_0

    .line 677
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 628
    const-string v0, "default_search_key"

    iget-object v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchStr:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 630
    return-void
.end method

.method public onScroll(Lcom/htc/widget/HtcAbsListView;III)V
    .locals 4
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 661
    move v1, p2

    .line 662
    .local v1, start:I
    add-int v0, p2, p3

    .line 664
    .local v0, end:I
    iget-object v2, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    if-eqz v2, :cond_0

    .line 665
    iget-object v2, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    invoke-virtual {v2, v1, v0}, Lcom/htc/music/util/AsyncImageDecoder;->setVisibleRange(II)V

    .line 667
    :cond_0
    iget-object v2, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    if-eqz v2, :cond_1

    .line 668
    iget-object v2, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    add-int v3, v1, v0

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Lcom/htc/music/util/MemoryCacheBitmapByPosition;->setPosition(I)V

    .line 670
    :cond_1
    return-void
.end method

.method public onScrollStateChanged(Lcom/htc/widget/HtcAbsListView;I)V
    .locals 3
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 870
    const-string v0, "[LocalMusicSearchActivity]"

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

    .line 871
    packed-switch p2, :pswitch_data_0

    .line 888
    :cond_0
    :goto_0
    return-void

    .line 873
    :pswitch_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->isActivityResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 874
    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->resumeDecode()V

    goto :goto_0

    .line 878
    :pswitch_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->isActivityResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 879
    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->resumeDecode()V

    goto :goto_0

    .line 883
    :pswitch_2
    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    if-eqz v0, :cond_0

    .line 884
    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->pauseDecode()V

    goto :goto_0

    .line 871
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "classname"
    .parameter "obj"

    .prologue
    .line 374
    const-string v0, "[LocalMusicSearchActivity]"

    const-string v1, "onServiceConnected..."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mNeedBindSerive:Z

    if-nez v0, :cond_1

    .line 376
    const-string v0, "[LocalMusicSearchActivity]"

    const-string v1, "onServiceConnected, mNeedBindSerive is false!!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/htc/music/util/MusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    .line 385
    :cond_0
    :goto_0
    return-void

    .line 380
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mIsSeriveBinded:Z

    .line 382
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-nez v0, :cond_0

    .line 383
    invoke-static {p2}, Lcom/htc/music/IMediaPlaybackService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/music/IMediaPlaybackService;

    move-result-object v0

    sput-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 389
    const-string v0, "[LocalMusicSearchActivity]"

    const-string v1, "onServiceDisconnected, Service is disconnected abnormally."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 635
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mNeedBindSerive:Z

    .line 637
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p0}, Lcom/htc/music/util/MusicUtils;->bindToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/ServiceConnection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 638
    const-string v0, "[LocalMusicSearchActivity]"

    const-string v1, "onStart, Fail to bind service."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mNeedBindSerive:Z

    .line 643
    :cond_0
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onStart()V

    .line 644
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 649
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mIsSeriveBinded:Z

    if-eqz v0, :cond_0

    .line 650
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/htc/music/util/MusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    .line 651
    iput-boolean v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mIsSeriveBinded:Z

    .line 653
    :cond_0
    iput-boolean v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mNeedBindSerive:Z

    .line 655
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onStop()V

    .line 656
    return-void
.end method

.method protected setTitle()V
    .locals 2

    .prologue
    .line 393
    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mInputBox:Lcom/htc/widget/ActionBarSearch;

    if-eqz v0, :cond_0

    .line 436
    :goto_0
    return-void

    .line 395
    :cond_0
    new-instance v0, Lcom/htc/widget/ActionBarSearch;

    invoke-direct {v0, p0}, Lcom/htc/widget/ActionBarSearch;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mInputBox:Lcom/htc/widget/ActionBarSearch;

    .line 396
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    if-eqz v0, :cond_1

    .line 397
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    iget-object v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mInputBox:Lcom/htc/widget/ActionBarSearch;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->addCenterView(Landroid/view/View;)V

    .line 398
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->setBackUpEnabled(Z)V

    .line 399
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    new-instance v1, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$4;

    invoke-direct {v1, p0}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$4;-><init>(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->setBackUpOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 428
    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mInputBox:Lcom/htc/widget/ActionBarSearch;

    invoke-virtual {v0}, Lcom/htc/widget/ActionBarSearch;->getAutoCompleteTextView()Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchStr:Landroid/widget/AutoCompleteTextView;

    .line 429
    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchStr:Landroid/widget/AutoCompleteTextView;

    const v1, 0x7f0700c6

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setHint(I)V

    .line 430
    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mDefaultSearchKey:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 431
    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchStr:Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mDefaultSearchKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 433
    :cond_2
    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchStr:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchTextWatcher;

    invoke-direct {v1, p0}, Lcom/htc/music/browserlayer/LocalMusicSearchActivity$SearchTextWatcher;-><init>(Lcom/htc/music/browserlayer/LocalMusicSearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 435
    iget-object v0, p0, Lcom/htc/music/browserlayer/LocalMusicSearchActivity;->mSearchStr:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    goto :goto_0
.end method
