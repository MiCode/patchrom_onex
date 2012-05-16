.class public abstract Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;
.super Lcom/htc/music/carmode/MusicMaActivity;
.source "CarMusicAutoHeaderFooterGridViewActivity.java"

# interfaces
.implements Lcom/htc/music/carmode/util/CarMusicUtils$Defs;
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;,
        Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;,
        Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$QueryHandler;,
        Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$GridViewInUiHandler;,
        Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;,
        Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$GridItemClickType;
    }
.end annotation


# static fields
.field protected static final DIALOG_CREATE_PLAYLIST:I = 0x64

.field public static final GRID_CHILD_ITEM_PREPARE:I = 0x3

.field public static final GRID_VIEW_ITEM_CLICK:I = 0x0

.field public static final GRID_VIEW_ITEM_DELETE:I = 0x4

.field public static final GRID_VIEW_ITEM_LONG_CLICK:I = 0x1

.field private static final INTRO_ANIMATION_DELAY:I = 0x1f4

.field public static final PREPARE_UPDATE_LIST_READY:I = 0x2

.field public static TAG:Ljava/lang/String; = null

.field public static final TYPE_ALBUM_TITLE:I = 0x0

.field public static final TYPE_ARTIST_TITLE:I = 0x1

.field public static final TYPE_GENRE_TITLE:I = 0x2

.field public static final TYPE_PLAYLIST_TITLE:I = 0x3


# instance fields
.field private final libraryStringResId:[[I

.field private mAsyncQuerying:Z

.field protected mChildClickedIndex:I

.field protected mContentObserver:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;

.field protected mContext:Landroid/content/Context;

.field protected mCurrentAlbumId:Ljava/lang/String;

.field protected mCurrentAlbumName:Ljava/lang/String;

.field protected mCurrentArtistId:Ljava/lang/String;

.field protected mCurrentArtistName:Ljava/lang/String;

.field protected mCurrentGenreId:Ljava/lang/String;

.field protected mCurrentGenreName:Ljava/lang/String;

.field protected mCurrentPlaylistId:Ljava/lang/String;

.field protected mCurrentPlaylistName:Ljava/lang/String;

.field protected mDataSetObserver:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;

.field protected mGlobalClickedIndex:I

.field protected mGridItemClickedType:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$GridItemClickType;

.field protected mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

.field protected mGridViewHandler:Landroid/os/Handler;

.field protected mGridViewInitFinish:Z

.field protected mGridViewItemClickListener:Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;

.field protected mGridViewPreparator:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

.field protected mGridViewRefreshDisable:Z

.field protected mGridViewScrollListener:Lcom/htc/sunny2/widget/gridview/interfaces/OnScrollListener;

.field private mInherentIndentity:Ljava/lang/String;

.field protected mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

.field protected mParentClickedIndex:I

.field protected mParentCursor:Landroid/database/Cursor;

.field protected mPlaylistUri:Ljava/lang/String;

.field protected mReScanHandler:Landroid/os/Handler;

.field protected mScanListener:Landroid/content/BroadcastReceiver;

.field private mServiceBound:Z

.field private mStopping:Z

.field protected mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

.field protected mViewItemLongClickListener:Lcom/htc/sunny2/widget/gridview/GridView$OnItemLongClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-string v0, "[MusicAutoHeaderFooterGridViewActivity]"

    sput-object v0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v1, -0x1

    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 39
    invoke-direct {p0}, Lcom/htc/music/carmode/MusicMaActivity;-><init>()V

    .line 68
    iput-boolean v3, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridViewInitFinish:Z

    .line 69
    new-instance v0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$1;-><init>(Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridViewScrollListener:Lcom/htc/sunny2/widget/gridview/interfaces/OnScrollListener;

    .line 96
    sget-object v0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$GridItemClickType;->GRID_PARENT_TYPE:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    iput-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridItemClickedType:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    .line 97
    iput v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mParentClickedIndex:I

    .line 98
    iput v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mChildClickedIndex:I

    .line 99
    iput v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    .line 101
    iput-boolean v3, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridViewRefreshDisable:Z

    .line 123
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mInherentIndentity:Ljava/lang/String;

    .line 125
    iput-boolean v3, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mStopping:Z

    .line 126
    iput-boolean v3, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mServiceBound:Z

    .line 310
    const/4 v0, 0x4

    new-array v0, v0, [[I

    new-array v1, v4, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v3

    const/4 v1, 0x1

    new-array v2, v4, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v4, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    new-array v1, v4, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->libraryStringResId:[[I

    .line 353
    new-instance v0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$2;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$2;-><init>(Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mReScanHandler:Landroid/os/Handler;

    .line 359
    new-instance v0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$3;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$3;-><init>(Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridViewItemClickListener:Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;

    .line 373
    new-instance v0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$4;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$4;-><init>(Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mViewItemLongClickListener:Lcom/htc/sunny2/widget/gridview/GridView$OnItemLongClickListener;

    .line 390
    new-instance v0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$5;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$5;-><init>(Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridViewHandler:Landroid/os/Handler;

    .line 487
    new-instance v0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$6;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$6;-><init>(Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    .line 519
    iput-boolean v3, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mAsyncQuerying:Z

    .line 746
    return-void

    .line 310
    :array_0
    .array-data 0x4
        0x24t 0x0t 0x7t 0x7ft
        0x25t 0x0t 0x7t 0x7ft
        0x26t 0x0t 0x7t 0x7ft
    .end array-data

    :array_1
    .array-data 0x4
        0x21t 0x0t 0x7t 0x7ft
        0x22t 0x0t 0x7t 0x7ft
        0x23t 0x0t 0x7t 0x7ft
    .end array-data

    :array_2
    .array-data 0x4
        0x30t 0x0t 0x7t 0x7ft
        0x31t 0x0t 0x7t 0x7ft
        0x32t 0x0t 0x7t 0x7ft
    .end array-data

    :array_3
    .array-data 0x4
        0x2bt 0x0t 0x7t 0x7ft
        0x2ct 0x0t 0x7t 0x7ft
        0x2dt 0x0t 0x7t 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mAsyncQuerying:Z

    return v0
.end method

.method static synthetic access$002(Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mAsyncQuerying:Z

    return p1
.end method

.method static synthetic access$100(Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->updateGridView()V

    return-void
.end method

.method private changeCursor(Landroid/database/Cursor;)V
    .locals 4
    .parameter "c"

    .prologue
    .line 529
    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    if-ne p1, v1, :cond_0

    .line 553
    :goto_0
    return-void

    .line 530
    :cond_0
    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mContentObserver:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;

    if-nez v1, :cond_1

    .line 531
    new-instance v1, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, v2, p0}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;-><init>(Landroid/os/Handler;Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;)V

    iput-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mContentObserver:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;

    .line 533
    :cond_1
    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mDataSetObserver:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;

    if-nez v1, :cond_2

    .line 534
    new-instance v1, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;

    invoke-direct {v1, p0}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;-><init>(Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;)V

    iput-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mDataSetObserver:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;

    .line 536
    :cond_2
    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_3

    .line 538
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mContentObserver:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;

    invoke-interface {v1, v2}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 539
    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mDataSetObserver:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;

    invoke-interface {v1, v2}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 545
    :cond_3
    :goto_1
    iput-object p1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    .line 547
    if-eqz p1, :cond_4

    .line 548
    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mContentObserver:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 549
    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mDataSetObserver:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 552
    :cond_4
    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    invoke-virtual {v1, v2}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->updateParentMediaList(Landroid/database/Cursor;)V

    goto :goto_0

    .line 540
    :catch_0
    move-exception v0

    .line 541
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeCursor : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private isCollapseWithScroll()Z
    .locals 6

    .prologue
    .line 236
    iget-object v4, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v4}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->getFirstVisiblePosition()I

    move-result v0

    .line 237
    .local v0, firstVisible:I
    iget-object v4, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v4}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->getLastVisiblePosition()I

    move-result v1

    .line 238
    .local v1, lastVisible:I
    iget-object v4, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v4}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->getClickedParentIdx()I

    move-result v3

    .line 240
    .local v3, parentIndex:I
    iget-object v4, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v4}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->getNumColumn()I

    move-result v4

    iget-object v5, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v5}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->getNumRow()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    mul-int v2, v4, v5

    .line 242
    .local v2, offset:I
    add-int/lit8 v0, v0, -0xa

    .line 243
    if-gez v0, :cond_0

    .line 244
    const/4 v0, 0x0

    .line 246
    :cond_0
    add-int/2addr v1, v2

    .line 247
    iget-object v4, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v4}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->getMediaList()Lcom/htc/sunny2/IMediaList;

    move-result-object v4

    invoke-interface {v4}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v4

    if-le v1, v4, :cond_1

    .line 248
    iget-object v4, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v4}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->getMediaList()Lcom/htc/sunny2/IMediaList;

    move-result-object v4

    invoke-interface {v4}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v1

    .line 250
    :cond_1
    if-lt v3, v0, :cond_2

    if-gt v3, v1, :cond_2

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private updateGridView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 665
    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 667
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->requery()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 671
    :goto_0
    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    if-nez v1, :cond_1

    .line 683
    :cond_0
    :goto_1
    return-void

    .line 668
    :catch_0
    move-exception v0

    .line 669
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateGridView : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 672
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 673
    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->getMediaList()Lcom/htc/sunny2/IMediaList;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->isVisible()Z

    move-result v1

    if-nez v1, :cond_3

    .line 674
    :cond_2
    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v1, v4}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->init(Landroid/database/Cursor;Z)V

    goto :goto_1

    .line 676
    :cond_3
    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v1, v4}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->resumePreparator(Z)V

    .line 677
    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    invoke-virtual {v1, v2}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->updateParentMediaList(Landroid/database/Cursor;)V

    .line 678
    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->notifyMediaDataChange()V

    .line 679
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->setTitle()V

    .line 680
    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->resumePreparator(Z)V

    goto :goto_1
.end method


# virtual methods
.method protected enablePlayAllMenuIcon()Z
    .locals 1

    .prologue
    .line 293
    const/4 v0, 0x0

    return v0
.end method

.method protected enableShuffleAllMenuIcon()Z
    .locals 1

    .prologue
    .line 296
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract getParentCursor()Landroid/database/Cursor;
.end method

.method protected abstract getUnknownCursor(Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method protected init(Landroid/database/Cursor;Z)V
    .locals 4
    .parameter "c"
    .parameter "startIntroAnimation"

    .prologue
    const/4 v3, 0x0

    .line 556
    sget-object v0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    const-string v1, "init+"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    if-nez v0, :cond_1

    .line 558
    sget-object v0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    const-string v1, "mGridView == null"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    :cond_0
    :goto_0
    return-void

    .line 562
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    if-eqz v0, :cond_0

    .line 567
    invoke-direct {p0, p1}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->changeCursor(Landroid/database/Cursor;)V

    .line 569
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->setTitle()V

    .line 571
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    if-nez v0, :cond_4

    .line 572
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->showDatabaseError()V

    .line 573
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->closeContextMenu()V

    .line 574
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 575
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setVisibility(Z)V

    .line 576
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->requestLayout()V

    .line 578
    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->isActivityResumed()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 579
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mReScanHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 580
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mReScanHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 582
    :cond_3
    sget-object v0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    const-string v1, "mParentCursor == null"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 584
    :cond_4
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_5

    .line 585
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->setTitle()V

    .line 586
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->setEmptyView()V

    .line 587
    sget-object v0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    const-string v1, "mParentCursor.getCount() == 0"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 590
    :cond_5
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->hideEmptyErrorView()V

    .line 591
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentMediaList()Lcom/htc/sunny2/IMediaList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setMediaList(Lcom/htc/sunny2/IMediaList;)V

    .line 598
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setVisibility(Z)V

    .line 601
    sget-object v0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    const-string v1, "init-"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isAsyncQuerying()Z
    .locals 1

    .prologue
    .line 521
    iget-boolean v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mAsyncQuerying:Z

    return v0
.end method

.method protected mergeExtraCursor(Landroid/database/Cursor;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 4
    .parameter "cursor"
    .parameter "where"

    .prologue
    .line 629
    invoke-virtual {p0, p2}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->getUnknownCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 630
    .local v0, unknownCursor:Landroid/database/Cursor;
    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    .line 631
    new-instance v1, Landroid/database/MergeCursor;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/database/Cursor;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-direct {v1, v2}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    move-object v0, v1

    .line 635
    .end local v0           #unknownCursor:Landroid/database/Cursor;
    :cond_0
    :goto_0
    return-object v0

    .line 632
    .restart local v0       #unknownCursor:Landroid/database/Cursor;
    :cond_1
    if-nez v0, :cond_0

    move-object v0, p1

    .line 635
    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 284
    invoke-super {p0}, Lcom/htc/music/carmode/MusicMaActivity;->onBackPressed()V

    .line 285
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 208
    invoke-super {p0, p1}, Lcom/htc/music/carmode/MusicMaActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 209
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->resetSDErrorLayout()V

    .line 216
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 130
    invoke-super {p0, p1}, Lcom/htc/music/carmode/MusicMaActivity;->onCreate(Landroid/os/Bundle;)V

    .line 131
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mInherentIndentity:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 186
    invoke-super {p0}, Lcom/htc/music/carmode/MusicMaActivity;->onDestroy()V

    .line 187
    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 188
    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 190
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mContentObserver:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentContentObserver;

    invoke-interface {v1, v2}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 191
    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mDataSetObserver:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;

    invoke-interface {v1, v2}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :goto_0
    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 196
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    .line 198
    :cond_0
    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    if-eqz v1, :cond_1

    .line 199
    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v1}, Lcom/htc/sunny2/view/SSurfaceView;->destroy()V

    .line 201
    :cond_1
    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    if-eqz v1, :cond_2

    .line 202
    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->destroy()V

    .line 204
    :cond_2
    return-void

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDestroy : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected abstract onGridViewChildItemPrepare(Landroid/os/Message;)V
.end method

.method protected abstract onGridViewItemClick(Landroid/os/Message;)V
.end method

.method protected abstract onGridViewItemDelete(Landroid/os/Message;)V
.end method

.method protected abstract onGridViewItemDeleteComplete()V
.end method

.method protected abstract onGridViewItemLongClick(Landroid/os/Message;)V
.end method

.method protected abstract onGridViewPrepareUpdateListReady(Landroid/os/Message;)V
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 164
    invoke-super {p0}, Lcom/htc/music/carmode/MusicMaActivity;->onPause()V

    .line 165
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mReScanHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 166
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v0}, Lcom/htc/sunny2/view/SSurfaceView;->onPause()V

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->resumePreparator(Z)V

    .line 170
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 143
    invoke-super {p0}, Lcom/htc/music/carmode/MusicMaActivity;->onResume()V

    .line 144
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->setTitle()V

    .line 145
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->isAsyncQuerying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mReScanHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 147
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mReScanHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 150
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->isAsyncQuerying()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/htc/music/carmode/util/CarMusicUtils;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 151
    :cond_1
    invoke-virtual {p0, v4}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->showSpinner(Z)V

    .line 153
    :cond_2
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    if-eqz v0, :cond_3

    .line 154
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v0}, Lcom/htc/sunny2/view/SSurfaceView;->onResume()V

    .line 157
    :cond_3
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    if-eqz v0, :cond_4

    .line 158
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v0, v4}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->resumePreparator(Z)V

    .line 160
    :cond_4
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "name"
    .parameter "service"

    .prologue
    .line 220
    sget-object v0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    const-string v1, "[onServiceConnected] ."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-boolean v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mStopping:Z

    if-eqz v0, :cond_0

    .line 222
    sget-object v0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    const-string v1, "[onServiceConnected] Stopping! Disconnect service right away."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mInherentIndentity:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/htc/music/carmode/util/CarMusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    .line 228
    :goto_0
    return-void

    .line 227
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mServiceBound:Z

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 232
    sget-object v0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    const-string v1, "[onServiceDisconnected] ."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 136
    invoke-super {p0}, Lcom/htc/music/carmode/MusicMaActivity;->onStart()V

    .line 137
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mStopping:Z

    .line 138
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mInherentIndentity:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/htc/music/carmode/util/CarMusicUtils;->bindToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/ServiceConnection;)Z

    .line 139
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 174
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mStopping:Z

    .line 176
    iget-boolean v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mServiceBound:Z

    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mInherentIndentity:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/htc/music/carmode/util/CarMusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    .line 178
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mServiceBound:Z

    .line 181
    :cond_0
    invoke-super {p0}, Lcom/htc/music/carmode/MusicMaActivity;->onStop()V

    .line 182
    return-void
.end method

.method protected abstract playAllAction(Z)Z
.end method

.method public setAsyncQueryStatus(Z)V
    .locals 0
    .parameter "isQuerying"

    .prologue
    .line 525
    iput-boolean p1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mAsyncQuerying:Z

    .line 526
    return-void
.end method

.method protected abstract setEmptyView()V
.end method

.method protected abstract setTitle()V
.end method

.method protected setTitleWithCount(II)Ljava/lang/String;
    .locals 8
    .parameter "type"
    .parameter "count"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 326
    if-eqz p1, :cond_0

    if-eq p1, v6, :cond_0

    if-eq p1, v7, :cond_0

    const/4 v4, 0x3

    if-eq p1, v4, :cond_0

    .line 330
    const-string v4, ""

    .line 350
    :goto_0
    return-object v4

    .line 333
    :cond_0
    iget-object v4, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->libraryStringResId:[[I

    aget-object v4, v4, p1

    const/4 v5, 0x0

    aget v1, v4, v5

    .line 334
    .local v1, normalTitle:I
    iget-object v4, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->libraryStringResId:[[I

    aget-object v4, v4, p1

    aget v2, v4, v6

    .line 335
    .local v2, oneCountTitle:I
    iget-object v4, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->libraryStringResId:[[I

    aget-object v4, v4, p1

    aget v0, v4, v7

    .line 337
    .local v0, countsTlte:I
    if-lez p2, :cond_2

    .line 339
    if-ne p2, v6, :cond_1

    if-lez v2, :cond_1

    .line 340
    invoke-virtual {p0, v2}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 341
    .local v3, tempString:Ljava/lang/String;
    const-string v4, "%1s"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 342
    .end local v3           #tempString:Ljava/lang/String;
    :cond_1
    if-le p2, v6, :cond_2

    if-lez v0, :cond_2

    .line 343
    invoke-virtual {p0, v0}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 344
    .restart local v3       #tempString:Ljava/lang/String;
    const-string v4, "%1s"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 347
    .end local v3           #tempString:Ljava/lang/String;
    :cond_2
    if-lez v1, :cond_3

    .line 348
    invoke-virtual {p0, v1}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 350
    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method
