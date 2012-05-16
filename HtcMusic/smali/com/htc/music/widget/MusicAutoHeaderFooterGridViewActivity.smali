.class public abstract Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;
.super Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;
.source "MusicAutoHeaderFooterGridViewActivity.java"

# interfaces
.implements Lcom/htc/music/util/MusicUtils$Defs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;,
        Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver;,
        Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$QueryHandler;,
        Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridViewInUiHandler;,
        Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;,
        Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;
    }
.end annotation


# static fields
.field public static final GRID_CHILD_ITEM_PREPARE:I = 0x3

.field public static final GRID_VIEW_ITEM_CLICK:I = 0x0

.field public static final GRID_VIEW_ITEM_DELETE:I = 0x4

.field public static final GRID_VIEW_ITEM_LONG_CLICK:I = 0x1

.field private static final INTRO_ANIMATION_DELAY:I = 0xc8

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

.field protected mContentObserver:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver;

.field protected mContext:Landroid/content/Context;

.field protected mCurrentAlbumId:Ljava/lang/String;

.field protected mCurrentAlbumName:Ljava/lang/String;

.field protected mCurrentArtistId:Ljava/lang/String;

.field protected mCurrentArtistName:Ljava/lang/String;

.field protected mCurrentGenreId:Ljava/lang/String;

.field protected mCurrentGenreName:Ljava/lang/String;

.field protected mCurrentPlaylistId:Ljava/lang/String;

.field protected mCurrentPlaylistName:Ljava/lang/String;

.field protected mDataSetObserver:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;

.field protected mDeleteAnimationListener:Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;

.field protected mDialog:Lcom/htc/widget/HtcAlertDialog;

.field protected mGlobalClickedIndex:I

.field protected mGridItemClickedType:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

.field protected mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

.field protected mGridViewHandler:Landroid/os/Handler;

.field protected mGridViewInitFinish:Z

.field protected mGridViewItemClickListener:Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;

.field protected mGridViewPreparator:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

.field protected mGridViewRefreshDisable:Z

.field protected mGridViewScrollListener:Lcom/htc/sunny2/widget/gridview/interfaces/OnScrollListener;

.field private mInherentIndentity:Ljava/lang/String;

.field protected mIsSeriveBinded:Z

.field protected mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

.field protected mNeedBindSerive:Z

.field protected mParentClickedIndex:I

.field protected mParentCursor:Landroid/database/Cursor;

.field mPlaybackServiceConnection:Landroid/content/ServiceConnection;

.field protected mPlaylistUri:Ljava/lang/String;

.field protected mReScanHandler:Landroid/os/Handler;

.field protected mScanListener:Landroid/content/BroadcastReceiver;

.field protected mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

.field protected mViewItemLongClickListener:Lcom/htc/sunny2/widget/gridview/GridView$OnItemLongClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-string v0, "[MusicAutoHeaderFooterGridViewActivity]"

    sput-object v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v1, -0x1

    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 52
    invoke-direct {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;-><init>()V

    .line 73
    iput-boolean v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mNeedBindSerive:Z

    .line 74
    iput-boolean v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mIsSeriveBinded:Z

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 85
    iput-boolean v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewInitFinish:Z

    .line 86
    new-instance v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$1;-><init>(Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;)V

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewScrollListener:Lcom/htc/sunny2/widget/gridview/interfaces/OnScrollListener;

    .line 103
    new-instance v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$2;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$2;-><init>(Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;)V

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mDeleteAnimationListener:Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;

    .line 128
    sget-object v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;->GRID_PARENT_TYPE:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridItemClickedType:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    .line 129
    iput v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentClickedIndex:I

    .line 130
    iput v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mChildClickedIndex:I

    .line 131
    iput v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    .line 133
    iput-boolean v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewRefreshDisable:Z

    .line 155
    new-instance v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$3;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$3;-><init>(Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;)V

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mPlaybackServiceConnection:Landroid/content/ServiceConnection;

    .line 358
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

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->libraryStringResId:[[I

    .line 401
    new-instance v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$6;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$6;-><init>(Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;)V

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mReScanHandler:Landroid/os/Handler;

    .line 407
    new-instance v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$7;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$7;-><init>(Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;)V

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewItemClickListener:Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;

    .line 421
    new-instance v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$8;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$8;-><init>(Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;)V

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mViewItemLongClickListener:Lcom/htc/sunny2/widget/gridview/GridView$OnItemLongClickListener;

    .line 438
    new-instance v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$9;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$9;-><init>(Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;)V

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewHandler:Landroid/os/Handler;

    .line 543
    new-instance v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$10;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$10;-><init>(Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;)V

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    .line 578
    iput-boolean v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mAsyncQuerying:Z

    .line 824
    return-void

    .line 358
    nop

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

.method static synthetic access$000(Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mInherentIndentity:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mAsyncQuerying:Z

    return v0
.end method

.method static synthetic access$102(Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mAsyncQuerying:Z

    return p1
.end method

.method static synthetic access$200(Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->updateGridView()V

    return-void
.end method

.method private changeCursor(Landroid/database/Cursor;)V
    .locals 4
    .parameter "c"

    .prologue
    .line 588
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    if-ne p1, v1, :cond_0

    .line 612
    :goto_0
    return-void

    .line 589
    :cond_0
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mContentObserver:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver;

    if-nez v1, :cond_1

    .line 590
    new-instance v1, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, v2, p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver;-><init>(Landroid/os/Handler;Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;)V

    iput-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mContentObserver:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver;

    .line 592
    :cond_1
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mDataSetObserver:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;

    if-nez v1, :cond_2

    .line 593
    new-instance v1, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;

    invoke-direct {v1, p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;-><init>(Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;)V

    iput-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mDataSetObserver:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;

    .line 595
    :cond_2
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_3

    .line 597
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mContentObserver:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver;

    invoke-interface {v1, v2}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 598
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mDataSetObserver:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;

    invoke-interface {v1, v2}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 604
    :cond_3
    :goto_1
    iput-object p1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    .line 606
    if-eqz p1, :cond_4

    .line 607
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mContentObserver:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 608
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mDataSetObserver:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 611
    :cond_4
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    invoke-virtual {v1, v2}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->updateParentMediaList(Landroid/database/Cursor;)V

    goto :goto_0

    .line 599
    :catch_0
    move-exception v0

    .line 600
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeCursor : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private isCollapseWithScroll()Z
    .locals 6

    .prologue
    .line 272
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v4}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->getFirstVisiblePosition()I

    move-result v0

    .line 273
    .local v0, firstVisible:I
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v4}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->getLastVisiblePosition()I

    move-result v1

    .line 274
    .local v1, lastVisible:I
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v4}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->getClickedParentIdx()I

    move-result v3

    .line 276
    .local v3, parentIndex:I
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v4}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->getNumColumn()I

    move-result v4

    iget-object v5, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v5}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->getNumRow()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    mul-int v2, v4, v5

    .line 278
    .local v2, offset:I
    add-int/lit8 v0, v0, -0xa

    .line 279
    if-gez v0, :cond_0

    .line 280
    const/4 v0, 0x0

    .line 282
    :cond_0
    add-int/2addr v1, v2

    .line 283
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v4}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->getMediaList()Lcom/htc/sunny2/IMediaList;

    move-result-object v4

    invoke-interface {v4}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v4

    if-le v1, v4, :cond_1

    .line 284
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v4}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->getMediaList()Lcom/htc/sunny2/IMediaList;

    move-result-object v4

    invoke-interface {v4}, Lcom/htc/sunny2/IMediaList;->getCount()I

    move-result v1

    .line 286
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

    .line 739
    sget-object v1, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    const-string v2, "updateGridView+"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_3

    .line 742
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->requery()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 746
    :goto_0
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    if-nez v1, :cond_0

    sget-object v1, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    const-string v2, "mGridView == null"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    :goto_1
    return-void

    .line 743
    :catch_0
    move-exception v0

    .line 744
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

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

    .line 747
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_1

    sget-object v1, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mParentCursor.getCount() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 748
    :cond_1
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->getMediaList()Lcom/htc/sunny2/IMediaList;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->isVisible()Z

    move-result v1

    if-nez v1, :cond_4

    .line 749
    :cond_2
    sget-object v1, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    const-string v2, "init medialist and gridview when cursor is changed"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v1, v4}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->init(Landroid/database/Cursor;Z)V

    .line 760
    :cond_3
    :goto_2
    sget-object v1, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    const-string v2, "updateGridView-"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 752
    :cond_4
    sget-object v1, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    const-string v2, "refresh medialist and gridview when cursor is changed"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v1, v4}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->resumePreparator(Z)V

    .line 754
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    invoke-virtual {v1, v2}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->updateParentMediaList(Landroid/database/Cursor;)V

    .line 755
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->notifyMediaDataChange()V

    .line 756
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->setTitle()V

    .line 757
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->resumePreparator(Z)V

    goto :goto_2
.end method


# virtual methods
.method protected enablePlayAllMenuIcon()Z
    .locals 1

    .prologue
    .line 337
    const/4 v0, 0x0

    return v0
.end method

.method protected enableShuffleAllMenuIcon()Z
    .locals 1

    .prologue
    .line 340
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
    .line 642
    sget-object v2, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    const-string v3, "init+"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    if-nez v2, :cond_1

    .line 644
    sget-object v2, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    const-string v3, "mGridView == null"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    :cond_0
    :goto_0
    return-void

    .line 648
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    if-eqz v2, :cond_0

    .line 653
    invoke-direct {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->changeCursor(Landroid/database/Cursor;)V

    .line 654
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v2}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->showMessageView(Landroid/database/Cursor;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 655
    sget-object v2, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    const-string v3, "init : showMessageView"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 658
    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->hideEmptyErrorView()V

    .line 659
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v3}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentMediaList()Lcom/htc/sunny2/IMediaList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setMediaList(Lcom/htc/sunny2/IMediaList;)V

    .line 661
    if-eqz p2, :cond_3

    .line 662
    new-instance v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridViewInUiHandler;

    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-direct {v0, v2}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridViewInUiHandler;-><init>(Lcom/htc/sunny2/widget/gridview/ExpandableGridView;)V

    .line 663
    .local v0, handler:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridViewInUiHandler;
    invoke-virtual {v0}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridViewInUiHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 664
    .local v1, msg:Landroid/os/Message;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridViewInUiHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 669
    .end local v0           #handler:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridViewInUiHandler;
    .end local v1           #msg:Landroid/os/Message;
    :goto_1
    sget-object v2, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    const-string v3, "init-"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 666
    :cond_3
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setVisibility(Z)V

    goto :goto_1
.end method

.method public isAsyncQuerying()Z
    .locals 1

    .prologue
    .line 580
    iget-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mAsyncQuerying:Z

    return v0
.end method

.method protected mergeExtraCursor(Landroid/database/Cursor;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 4
    .parameter "cursor"
    .parameter "where"

    .prologue
    .line 703
    invoke-virtual {p0, p2}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->getUnknownCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 704
    .local v0, unknownCursor:Landroid/database/Cursor;
    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    .line 705
    new-instance v1, Landroid/database/MergeCursor;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/database/Cursor;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-direct {v1, v2}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    move-object v0, v1

    .line 709
    .end local v0           #unknownCursor:Landroid/database/Cursor;
    :cond_0
    :goto_0
    return-object v0

    .line 706
    .restart local v0       #unknownCursor:Landroid/database/Cursor;
    :cond_1
    if-nez v0, :cond_0

    move-object v0, p1

    .line 709
    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 297
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->isGridViewExpanded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 298
    invoke-direct {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->isCollapseWithScroll()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    new-instance v1, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$4;

    invoke-direct {v1, p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$4;-><init>(Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->collapseChildView(Lcom/htc/sunny2/widget/gridview/ExpandableGridView$OnCollapseChildViewListener;Z)V

    .line 329
    :goto_0
    return-void

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->getClickedParentIdx()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setSelection(I)V

    .line 312
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    new-instance v1, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$5;

    invoke-direct {v1, p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$5;-><init>(Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->collapseChildView(Lcom/htc/sunny2/widget/gridview/ExpandableGridView$OnCollapseChildViewListener;Z)V

    goto :goto_0

    .line 328
    :cond_1
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 261
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 262
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->resetSDErrorLayout()V

    .line 269
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 178
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->onCreate(Landroid/os/Bundle;)V

    .line 179
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mInherentIndentity:Ljava/lang/String;

    .line 180
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 472
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 473
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mPlaylistUri:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 486
    :cond_0
    :goto_0
    return v4

    .line 476
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->enableShuffleAllMenuIcon()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 477
    const/16 v0, 0x9

    const v1, 0x7f070009

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 479
    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->enablePlayAllMenuIcon()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 480
    const/16 v0, 0xc

    const v1, 0x7f07000a

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 482
    :cond_3
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isSupportListenStore()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 484
    const/16 v0, 0x16

    const v1, 0x2040218

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onDeletionCompleted()V
    .locals 0

    .prologue
    .line 465
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->onDeletionCompleted()V

    .line 466
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->onGridViewItemDeleteComplete()V

    .line 468
    return-void
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 237
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->onDestroy()V

    .line 238
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 240
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mContentObserver:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentContentObserver;

    invoke-interface {v1, v2}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 241
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mDataSetObserver:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$ParentDataSetObserver;

    invoke-interface {v1, v2}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :goto_0
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 246
    iput-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    .line 248
    :cond_0
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 249
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 251
    :cond_1
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    if-eqz v1, :cond_2

    .line 252
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v1}, Lcom/htc/sunny2/view/SSurfaceView;->destroy()V

    .line 254
    :cond_2
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    if-eqz v1, :cond_3

    .line 255
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->destroy()V

    .line 257
    :cond_3
    return-void

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

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

.method public onMaBackPressed()Z
    .locals 1

    .prologue
    .line 292
    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 514
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 540
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :goto_0
    return v2

    .line 529
    :sswitch_0
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->SetDLNASuffleMode(Landroid/content/Context;)V

    .line 531
    :sswitch_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const/16 v3, 0x9

    if-ne v1, v3, :cond_0

    move v1, v2

    :goto_1
    invoke-virtual {p0, v1}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->playAllAction(Z)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 534
    :sswitch_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.music.settings.Listen_Online_Setting"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 535
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, -0x2

    invoke-virtual {p0, v0, v1}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 514
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xc -> :sswitch_1
        0x16 -> :sswitch_2
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 205
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->onPause()V

    .line 206
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v0}, Lcom/htc/sunny2/view/SSurfaceView;->onPause()V

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mReScanHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 210
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->resumePreparator(Z)V

    .line 211
    return-void
.end method

.method protected onPlaybackServiceConnection()V
    .locals 0

    .prologue
    .line 352
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    .line 492
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_3

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 497
    .local v0, enabled:Ljava/lang/Boolean;
    const/16 v2, 0x9

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 498
    .local v1, item:Landroid/view/MenuItem;
    if-eqz v1, :cond_0

    .line 499
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 500
    :cond_0
    const/16 v2, 0xc

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 501
    if-eqz v1, :cond_1

    .line 502
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 503
    :cond_1
    const/16 v2, 0x16

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 504
    if-eqz v1, :cond_2

    .line 505
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 507
    :cond_2
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2

    .line 492
    .end local v0           #enabled:Ljava/lang/Boolean;
    .end local v1           #item:Landroid/view/MenuItem;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 184
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->onResume()V

    .line 185
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->setTitle()V

    .line 186
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v0}, Lcom/htc/sunny2/view/SSurfaceView;->onResume()V

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->isAsyncQuerying()Z

    move-result v0

    if-nez v0, :cond_1

    .line 191
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mReScanHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 192
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mReScanHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 195
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->isAsyncQuerying()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 196
    :cond_2
    invoke-virtual {p0, v4}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->showSpinner(Z)V

    .line 198
    :cond_3
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    if-eqz v0, :cond_4

    .line 199
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v0, v4}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->resumePreparator(Z)V

    .line 201
    :cond_4
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 215
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mNeedBindSerive:Z

    .line 216
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mInherentIndentity:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mPlaybackServiceConnection:Landroid/content/ServiceConnection;

    invoke-static {v0, v1, v2}, Lcom/htc/music/util/MusicUtils;->bindToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/ServiceConnection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    sget-object v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStart, Fail to bind service. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mInherentIndentity:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mNeedBindSerive:Z

    .line 222
    :cond_0
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->onStart()V

    .line 223
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 227
    iget-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mIsSeriveBinded:Z

    if-eqz v0, :cond_0

    .line 228
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mInherentIndentity:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/htc/music/util/MusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    .line 229
    iput-boolean v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mIsSeriveBinded:Z

    .line 231
    :cond_0
    iput-boolean v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mNeedBindSerive:Z

    .line 232
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->onStop()V

    .line 233
    return-void
.end method

.method protected abstract playAllAction(Z)Z
.end method

.method public setAsyncQueryStatus(Z)V
    .locals 0
    .parameter "isQuerying"

    .prologue
    .line 584
    iput-boolean p1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mAsyncQuerying:Z

    .line 585
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

    .line 374
    if-eqz p1, :cond_0

    if-eq p1, v6, :cond_0

    if-eq p1, v7, :cond_0

    const/4 v4, 0x3

    if-eq p1, v4, :cond_0

    .line 378
    const-string v4, ""

    .line 398
    :goto_0
    return-object v4

    .line 381
    :cond_0
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->libraryStringResId:[[I

    aget-object v4, v4, p1

    const/4 v5, 0x0

    aget v1, v4, v5

    .line 382
    .local v1, normalTitle:I
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->libraryStringResId:[[I

    aget-object v4, v4, p1

    aget v2, v4, v6

    .line 383
    .local v2, oneCountTitle:I
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->libraryStringResId:[[I

    aget-object v4, v4, p1

    aget v0, v4, v7

    .line 385
    .local v0, countsTlte:I
    if-lez p2, :cond_2

    .line 387
    if-ne p2, v6, :cond_1

    if-lez v2, :cond_1

    .line 388
    invoke-virtual {p0, v2}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 389
    .local v3, tempString:Ljava/lang/String;
    const-string v4, "%1s"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 390
    .end local v3           #tempString:Ljava/lang/String;
    :cond_1
    if-le p2, v6, :cond_2

    if-lez v0, :cond_2

    .line 391
    invoke-virtual {p0, v0}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 392
    .restart local v3       #tempString:Ljava/lang/String;
    const-string v4, "%1s"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 395
    .end local v3           #tempString:Ljava/lang/String;
    :cond_2
    if-lez v1, :cond_3

    .line 396
    invoke-virtual {p0, v1}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 398
    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method

.method protected showMessageView(Landroid/database/Cursor;)Z
    .locals 5
    .parameter "cursor"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 615
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->setTitle()V

    .line 616
    if-nez p1, :cond_2

    .line 617
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->showDatabaseError()V

    .line 618
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->closeContextMenu()V

    .line 619
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 620
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v2, v1}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setVisibility(Z)V

    .line 621
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->requestLayout()V

    .line 623
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->isActivityResumed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 624
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mReScanHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 625
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mReScanHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 627
    :cond_1
    sget-object v1, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    const-string v2, "cursor == null"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    :goto_0
    return v0

    .line 629
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_4

    .line 630
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 631
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v2, v1}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setVisibility(Z)V

    .line 632
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->requestLayout()V

    .line 634
    :cond_3
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->setEmptyView()V

    .line 635
    sget-object v1, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->TAG:Ljava/lang/String;

    const-string v2, "cursor.getCount() == 0"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move v0, v1

    .line 638
    goto :goto_0
.end method
