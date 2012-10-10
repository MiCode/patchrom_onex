.class public Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;
.super Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;
.source "ArtistBrowserActivityExpGrid.java"

# interfaces
.implements Lcom/htc/music/util/MusicUtils$Defs;
.implements Lcom/htc/sunny2/widget/gridview/ExpandableGridView$OnPrepareUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;
    }
.end annotation


# static fields
.field private static final ALBUM_DEFAULT_SORT_ORDER:Ljava/lang/String; = "album COLLATE NOCASE ASC"

.field private static final ARTIST_ALBUM_TRACK_SORT_ORDER:Ljava/lang/String; = "artist COLLATE NOCASE ASC, album COLLATE NOCASE ASC, track"

.field private static final ARTIST_DEFAULT_SORT_ORDER:Ljava/lang/String; = "artist COLLATE NOCASE ASC"

.field private static final TAG:Ljava/lang/String; = "[ArtistBrowserActivityExpGrid]"

.field private static final TITLE_DEFAULT_SORT_ORDER:Ljava/lang/String; = "title COLLATE NOCASE ASC"


# instance fields
.field mAlbumCols:[Ljava/lang/String;

.field mAllSongsLabel:Ljava/lang/String;

.field mArtistCols:[Ljava/lang/String;

.field private mCollapseChildIfContainOnlyOneChild:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$OnCollapseChildViewListener;

.field mDeleteMessage:Landroid/os/Message;

.field private mIsHVGA:Z

.field private mItemLayoutParams:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;

.field private mOrientation:I

.field private mQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 67
    invoke-direct {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;-><init>()V

    .line 84
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "artist"

    aput-object v1, v0, v3

    const-string v1, "number_of_albums"

    aput-object v1, v0, v4

    const-string v1, "number_of_tracks"

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mArtistCols:[Ljava/lang/String;

    .line 89
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "album"

    aput-object v1, v0, v3

    const-string v1, "album_art"

    aput-object v1, v0, v4

    const-string v1, "album_key"

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mAlbumCols:[Ljava/lang/String;

    .line 204
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mIsHVGA:Z

    .line 585
    new-instance v0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$5;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$5;-><init>(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mCollapseChildIfContainOnlyOneChild:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$OnCollapseChildViewListener;

    .line 776
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mDeleteMessage:Landroid/os/Message;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewInitFinish:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->getArtistAlbumsCursor(Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Lcom/htc/sunny2/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Lcom/htc/sunny2/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Lcom/htc/sunny2/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Lcom/htc/sunny2/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Lcom/htc/sunny2/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Lcom/htc/sunny2/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Lcom/htc/sunny2/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;II)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 67
    invoke-virtual {p0, p1, p2}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->setTitleWithCount(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentClickedIndex:I

    return v0
.end method

.method static synthetic access$2100(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Lcom/htc/sunny2/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->startAlbumDetailViewActivity(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Lcom/htc/sunny2/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridItemClickedType:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    return v0
.end method

.method static synthetic access$2900(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Lcom/htc/sunny2/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mChildClickedIndex:I

    return v0
.end method

.method static synthetic access$3102(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;)Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridItemClickedType:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    return-object p1
.end method

.method static synthetic access$3202(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput p1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    return p1
.end method

.method static synthetic access$3300(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentClickedIndex:I

    return v0
.end method

.method static synthetic access$3400(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    return v0
.end method

.method static synthetic access$3500(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Lcom/htc/sunny2/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mChildClickedIndex:I

    return v0
.end method

.method static synthetic access$3700(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    return-object v0
.end method

.method static synthetic access$3802(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;)Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridItemClickedType:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    return-object p1
.end method

.method static synthetic access$3902(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput p1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    return p1
.end method

.method static synthetic access$400(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentClickedIndex:I

    return v0
.end method

.method static synthetic access$4100(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    return v0
.end method

.method static synthetic access$4200(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Lcom/htc/sunny2/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    return v0
.end method

.method static synthetic access$4500(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    return v0
.end method

.method static synthetic access$4600(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Lcom/htc/music/widget/gridview/MusicGridViewPreparator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewPreparator:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    return-object v0
.end method

.method private getArtistAlbumChildCusror(I)Landroid/database/Cursor;
    .locals 5
    .parameter "parentIndex"

    .prologue
    const/4 v3, 0x0

    .line 1104
    if-gez p1, :cond_0

    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v4}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentItemCount()I

    move-result v4

    if-lt p1, v4, :cond_0

    .line 1124
    :goto_0
    return-object v3

    .line 1106
    :cond_0
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v4, p1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentMediaDataId(I)Ljava/lang/String;

    move-result-object v1

    .line 1107
    .local v1, artistId:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v4, p1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentMediaDataName(I)Ljava/lang/String;

    move-result-object v0

    .line 1109
    .local v0, artist:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mAlbumCols:[Ljava/lang/String;

    invoke-direct {p0, p0, v4, v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->getArtistAlbumsCursor(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1110
    .local v2, cursor:Landroid/database/Cursor;
    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_2

    .line 1111
    :cond_1
    const/4 v2, 0x0

    .line 1112
    goto :goto_0

    .line 1117
    :cond_2
    const/4 v4, 0x0

    invoke-direct {p0, v2, v1, v0, v4}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mergeAllSongsItem2AlbumCursor(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v3

    .line 1123
    .local v3, ret:Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 1124
    goto :goto_0
.end method

.method private getArtistAlbumsCursor(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "context"
    .parameter "columns"
    .parameter "artistId"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1037
    invoke-direct {p0, p3, v4}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->getArtistAlbumsCursor(Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v0

    .line 1039
    .local v0, ret:Landroid/database/Cursor;
    invoke-direct {p0, p3, v5}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->getArtistAlbumsCursor(Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v2

    .line 1040
    .local v2, unknown:Landroid/database/Cursor;
    if-eqz v2, :cond_0

    .line 1041
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_1

    .line 1042
    new-instance v1, Landroid/database/MergeCursor;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/database/Cursor;

    aput-object v0, v3, v4

    aput-object v2, v3, v5

    invoke-direct {v1, v3}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .end local v0           #ret:Landroid/database/Cursor;
    .local v1, ret:Landroid/database/Cursor;
    move-object v0, v1

    .line 1051
    .end local v1           #ret:Landroid/database/Cursor;
    .restart local v0       #ret:Landroid/database/Cursor;
    :cond_0
    :goto_0
    return-object v0

    .line 1046
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1047
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getArtistAlbumsCursor(Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 8
    .parameter "artistId"
    .parameter "unknown"

    .prologue
    .line 1055
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1056
    .local v7, where:Ljava/lang/StringBuilder;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "artist_id = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1057
    const-string v0, " AND album != \'\'"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1058
    if-nez p2, :cond_1

    .line 1059
    const-string v0, " AND album != \'<unknown>\'"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1067
    :goto_0
    const-string v0, "external"

    invoke-static {v0, p1}, Lcom/htc/music/util/MusicUtils$Artists2$Albums;->getContentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mAlbumCols:[Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "album COLLATE NOCASE ASC"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1071
    .local v6, ret:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    if-nez p2, :cond_0

    iget-boolean v0, p0, Lcom/htc/music/widget/MusicMaActivity;->mIsEnhancerExist:Z

    if-eqz v0, :cond_0

    .line 1072
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/htc/music/util/MusicUtils;->mergeDlAlbumArt(Landroid/content/Context;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v6

    .line 1075
    :cond_0
    return-object v6

    .line 1061
    .end local v6           #ret:Landroid/database/Cursor;
    :cond_1
    const-string v0, " AND album = \'<unknown>\'"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private getArtistCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 18
    .parameter "async"
    .parameter "filterstring"

    .prologue
    .line 1164
    const-string v1, "[ArtistBrowserActivityExpGrid]"

    const-string v2, "@@@@ getArtistCursor() - start"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1166
    if-eqz p2, :cond_0

    const-string v1, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1167
    const/16 p2, 0x0

    .line 1169
    :cond_0
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 1170
    .local v17, where:Ljava/lang/StringBuilder;
    const-string v1, "artist != \'\' "

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1171
    const-string v1, " AND artist != \'<unknown>\'"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1173
    const/4 v7, 0x0

    .line 1174
    .local v7, keywords:[Ljava/lang/String;
    if-nez p2, :cond_2

    const/4 v13, 0x1

    .line 1175
    .local v13, searchContainsUnkown:Z
    :goto_0
    if-eqz p2, :cond_4

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 1177
    const v1, 0x7f07004d

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v16

    .line 1178
    .local v16, unknownArtist:Ljava/lang/String;
    const-string v1, " "

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 1179
    .local v14, searchWords:[Ljava/lang/String;
    array-length v1, v14

    new-array v7, v1, [Ljava/lang/String;

    .line 1180
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v9

    .line 1181
    .local v9, col:Ljava/text/Collator;
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Ljava/text/Collator;->setStrength(I)V

    .line 1182
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    array-length v1, v14

    if-ge v10, v1, :cond_3

    .line 1183
    aget-object v1, v14, v10

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1184
    const/4 v13, 0x1

    .line 1185
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x25

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v14, v10

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x25

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v10

    .line 1182
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1174
    .end local v9           #col:Ljava/text/Collator;
    .end local v10           #i:I
    .end local v13           #searchContainsUnkown:Z
    .end local v14           #searchWords:[Ljava/lang/String;
    .end local v16           #unknownArtist:Ljava/lang/String;
    :cond_2
    const/4 v13, 0x0

    goto :goto_0

    .line 1187
    .restart local v9       #col:Ljava/text/Collator;
    .restart local v10       #i:I
    .restart local v13       #searchContainsUnkown:Z
    .restart local v14       #searchWords:[Ljava/lang/String;
    .restart local v16       #unknownArtist:Ljava/lang/String;
    :cond_3
    const/4 v10, 0x0

    :goto_2
    array-length v1, v14

    if-ge v10, v1, :cond_4

    .line 1188
    const-string v1, " AND "

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1193
    const-string v1, "artist LIKE ?"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1187
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 1197
    .end local v9           #col:Ljava/text/Collator;
    .end local v10           #i:I
    .end local v14           #searchWords:[Ljava/lang/String;
    .end local v16           #unknownArtist:Ljava/lang/String;
    :cond_4
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1199
    .local v6, whereclause:Ljava/lang/String;
    const-string v1, "[ArtistBrowserActivityExpGrid]"

    const-string v2, "getArtistCursor() - 1"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1200
    const/4 v11, 0x0

    .line 1201
    .local v11, ret:Landroid/database/Cursor;
    if-eqz p1, :cond_7

    .line 1202
    const-string v1, "[ArtistBrowserActivityExpGrid]"

    const-string v2, "getArtistCursor() - 2"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1203
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->setAsyncQueryStatus(Z)V

    .line 1206
    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-object v4, Lcom/htc/music/util/MusicUtils$Artists2;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mArtistCols:[Ljava/lang/String;

    const-string v8, "artist COLLATE NOCASE ASC"

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Lcom/htc/music/util/DlArtAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1224
    :cond_5
    :goto_3
    if-eqz v11, :cond_6

    if-eqz p1, :cond_6

    .line 1225
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->init(Landroid/database/Cursor;Z)V

    .line 1229
    :cond_6
    return-object v11

    .line 1209
    :cond_7
    const-string v1, "[ArtistBrowserActivityExpGrid]"

    const-string v2, "getArtistCursor() - 3"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1212
    sget-object v4, Lcom/htc/music/util/MusicUtils$Artists2;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mArtistCols:[Ljava/lang/String;

    const-string v8, "artist COLLATE NOCASE ASC"

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v8}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1214
    if-eqz v13, :cond_5

    .line 1215
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->getUnknownCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 1216
    .local v15, unknown:Landroid/database/Cursor;
    if-eqz v15, :cond_5

    .line 1217
    new-instance v12, Landroid/database/MergeCursor;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/database/Cursor;

    const/4 v2, 0x0

    aput-object v11, v1, v2

    const/4 v2, 0x1

    aput-object v15, v1, v2

    invoke-direct {v12, v1}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .end local v11           #ret:Landroid/database/Cursor;
    .local v12, ret:Landroid/database/Cursor;
    move-object v11, v12

    .end local v12           #ret:Landroid/database/Cursor;
    .restart local v11       #ret:Landroid/database/Cursor;
    goto :goto_3
.end method

.method private getSelectList(ZLcom/htc/music/NpCategory;)[I
    .locals 4
    .parameter "needPrepare"
    .parameter "npc"

    .prologue
    const/4 v3, 0x2

    .line 779
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentArtistId:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 780
    const-string v1, "[ArtistBrowserActivityExpGrid]"

    const-string v2, "mCurrentArtistId = null"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    const/4 v0, 0x0

    .line 805
    :cond_0
    :goto_0
    return-object v0

    .line 783
    :cond_1
    const/4 v0, 0x0

    .line 785
    .local v0, list:[I
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridItemClickedType:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    sget-object v2, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;->GRID_PARENT_TYPE:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    invoke-virtual {v1, v2}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mChildClickedIndex:I

    if-nez v1, :cond_4

    .line 787
    :cond_2
    if-eqz p1, :cond_3

    .line 788
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentArtistId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {p0, v3, v1}, Lcom/htc/music/util/MusicUtils;->getSongListForArtistAndPrepare(Landroid/content/Context;II)[I

    move-result-object v0

    .line 789
    if-eqz p2, :cond_0

    .line 790
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentArtistId:Ljava/lang/String;

    invoke-virtual {p2, v1}, Lcom/htc/music/NpCategory;->setArtistId(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    goto :goto_0

    .line 793
    :cond_3
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentArtistId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {p0, v3, v1}, Lcom/htc/music/util/MusicUtils;->getSongListForArtist(Landroid/content/Context;II)[I

    move-result-object v0

    goto :goto_0

    .line 796
    :cond_4
    if-eqz p1, :cond_5

    .line 797
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {p0, v1}, Lcom/htc/music/util/MusicUtils;->getSongListForAlbumAndPrepare(Landroid/content/Context;I)[I

    move-result-object v0

    .line 798
    if-eqz p2, :cond_0

    .line 799
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-virtual {p2, v1}, Lcom/htc/music/NpCategory;->setAlbumId(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    goto :goto_0

    .line 802
    :cond_5
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {p0, v1}, Lcom/htc/music/util/MusicUtils;->getSongListForAlbum(Landroid/content/Context;I)[I

    move-result-object v0

    goto :goto_0
.end method

.method private initExpGridView()V
    .locals 11

    .prologue
    const v10, 0x205000c

    const/4 v9, 0x0

    .line 292
    const v6, 0x7f080073

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/htc/sunny2/view/SSurfaceView;

    iput-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    .line 294
    new-instance v6, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;

    invoke-direct {v6, p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;-><init>(Landroid/app/Activity;)V

    iput-object v6, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;

    .line 296
    new-instance v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;

    invoke-direct {v2, p0}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;-><init>(Landroid/content/Context;)V

    .line 297
    .local v2, parentFolderParam:Lcom/htc/music/widget/gridview/MusicGridViewItemParams;
    new-instance v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;-><init>(Landroid/content/Context;)V

    .line 298
    .local v0, childFolderParam:Lcom/htc/music/widget/gridview/MusicGridViewItemParams;
    invoke-direct {p0, v2, v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->initMusicGridViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V

    .line 300
    new-instance v1, Lcom/htc/music/widget/gridview/MusicGridViewItem;

    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v6}, Lcom/htc/sunny2/view/SSurfaceView;->getSunnyContext()Lcom/htc/sunny2/SunnyContext;

    move-result-object v6

    invoke-direct {v1, p0, v6, v2, v0}, Lcom/htc/music/widget/gridview/MusicGridViewItem;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V

    .line 301
    .local v1, gridViewItem:Lcom/htc/music/widget/gridview/MusicGridViewItem;
    invoke-direct {p0, v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->initMusicGridViewItem(Lcom/htc/music/widget/gridview/MusicGridViewItem;)V

    .line 303
    new-instance v6, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-direct {v6, p0, v7, v8}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;-><init>(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/music/widget/gridview/MusicGridViewUtil;)V

    iput-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewPreparator:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    .line 304
    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewPreparator:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    invoke-direct {p0, v6, v2}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->initGridViewPreparator(Lcom/htc/music/widget/gridview/MusicGridViewPreparator;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V

    .line 305
    invoke-direct {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->initMusicGridViewUtil()V

    .line 306
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 307
    .local v5, res:Landroid/content/res/Resources;
    new-instance v6, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v7, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v7}, Lcom/htc/sunny2/view/SSurfaceView;->getSunnyContext()Lcom/htc/sunny2/SunnyContext;

    move-result-object v7

    invoke-direct {v6, p0, v7, v1}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Lcom/htc/sunny2/widget/gridview/GridViewItem;)V

    iput-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    .line 308
    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v7, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;

    iget v7, v7, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->verticalSpacing:I

    invoke-virtual {v6, v7}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setVerticalSpacing(I)V

    .line 309
    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v7, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;

    iget v7, v7, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->horizontalSpacing:I

    invoke-virtual {v6, v7}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setHorizontalSpacing(I)V

    .line 310
    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v7, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewItemClickListener:Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;

    invoke-virtual {v6, v7}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setOnItemClickListener(Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;)V

    .line 311
    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v7, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mViewItemLongClickListener:Lcom/htc/sunny2/widget/gridview/GridView$OnItemLongClickListener;

    invoke-virtual {v6, v7}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setOnItemLongClickListener(Lcom/htc/sunny2/widget/gridview/GridView$OnItemLongClickListener;)V

    .line 312
    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v6, p0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setPrepareUpdateListener(Lcom/htc/sunny2/widget/gridview/ExpandableGridView$OnPrepareUpdateListener;)V

    .line 313
    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v7, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewPreparator:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    invoke-virtual {v6, v7}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setPreparation(Lcom/htc/sunny2/widget/gridview/GridViewPreparator;)V

    .line 314
    const-string v6, "com.htc.R.drawable.common_popupmenu"

    invoke-static {v6}, Lcom/htc/util/res/HtcResUtil;->getPrivateResID(Ljava/lang/String;)I

    move-result v3

    .line 315
    .local v3, popupmenu:I
    const-string v6, "com.htc.R.drawable.common_popupmenu_arrow"

    invoke-static {v6}, Lcom/htc/util/res/HtcResUtil;->getPrivateResID(Ljava/lang/String;)I

    move-result v4

    .line 316
    .local v4, popupmenu_arrow:I
    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    .line 317
    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v6, v4, v3}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setChildViewBackground(II)V

    .line 319
    :cond_0
    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    const v7, 0x7f030026

    const v8, 0x7f080067

    invoke-virtual {v6, v7, v8}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setChildViewTitleLayot(II)V

    .line 320
    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v7, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;

    iget v7, v7, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;->verticalSpacing_child:I

    invoke-virtual {v6, v7}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setChildVerticalSpacing(I)V

    .line 321
    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v7, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;

    iget v7, v7, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;->horizontalSpacing_child:I

    invoke-virtual {v6, v7}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setChildHorizontalSpacing(I)V

    .line 322
    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v7, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;

    iget v7, v7, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;->child_view_offsetY:I

    invoke-virtual {v6, v7}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setChildViewOffsetY(I)V

    .line 323
    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v7, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;

    iget v7, v7, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;->indicator_offset:I

    invoke-virtual {v6, v7}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setChildIndicatorOffsetY(I)V

    .line 324
    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {v6, v7, v8}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setChildMargin(II)V

    .line 325
    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v7, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;

    iget v7, v7, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;->bottom_padding_child:I

    invoke-virtual {v6, v9, v7, v9, v9}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setChildPadding(IIII)V

    .line 326
    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    const v7, 0x2080001

    invoke-virtual {v6, v7}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setGlobalBackgroundResource(I)V

    .line 328
    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v7, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;

    iget v7, v7, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->padding_top:I

    iget-object v8, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;

    iget v8, v8, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->padding_bottom:I

    invoke-virtual {v6, v9, v7, v9, v8}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setPadding(IIII)V

    .line 330
    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v7, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewScrollListener:Lcom/htc/sunny2/widget/gridview/interfaces/OnScrollListener;

    invoke-virtual {v6, v7}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setOnScrollListener(Lcom/htc/sunny2/widget/gridview/interfaces/OnScrollListener;)V

    .line 332
    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    iget-object v7, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v6, v7}, Lcom/htc/sunny2/view/SSurfaceView;->addView(Lcom/htc/sunny2/view/SView;)V

    .line 333
    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v6, v9}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setVisibility(Z)V

    .line 334
    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewPreparator:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    iget-object v7, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v6, v7}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->updateMusicGridViewUtil(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)V

    .line 335
    return-void
.end method

.method private initGridViewPreparator(Lcom/htc/music/widget/gridview/MusicGridViewPreparator;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V
    .locals 2
    .parameter "preparator"
    .parameter "folderParam"

    .prologue
    .line 518
    new-instance v0, Lcom/htc/music/widget/gridview/MusicGridViewParamsPreparator;

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->getWidth(I)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewParamsPreparator;-><init>(I)V

    .line 519
    .local v0, paramsPreparator:Lcom/htc/music/widget/gridview/MusicGridViewParamsPreparator;
    invoke-virtual {p1, p0, v0}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->init(Landroid/content/Context;Lcom/htc/sunny2/IParamsPreparator;)V

    .line 520
    new-instance v1, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$4;

    invoke-direct {v1, p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$4;-><init>(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)V

    invoke-virtual {p1, v1}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->setUpdateListener(Lcom/htc/sunny2/Preparator$UpdateListener;)V

    .line 542
    return-void
.end method

.method private initMusicGridViewItem(Lcom/htc/music/widget/gridview/MusicGridViewItem;)V
    .locals 1
    .parameter "gridViewItem"

    .prologue
    .line 397
    new-instance v0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$1;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$1;-><init>(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)V

    invoke-virtual {p1, v0}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->setTextViewBindListener(Lcom/htc/music/widget/gridview/MusicGridViewItem$ITextViewBind;)V

    .line 438
    new-instance v0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$2;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$2;-><init>(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)V

    invoke-virtual {p1, v0}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->setViewItemImageGetter(Lcom/htc/music/widget/gridview/MusicGridViewItem$ViewItemImageGetter;)V

    .line 465
    return-void
.end method

.method private initMusicGridViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V
    .locals 8
    .parameter "parentFolderParam"
    .parameter "childFolderParam"

    .prologue
    const v7, 0x7f030029

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 338
    new-instance v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    invoke-direct {v0}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;-><init>()V

    .line 339
    .local v0, backgroundParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    const v3, 0x7f02003d

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->defaultResourceId:I

    .line 340
    iget-object v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_width:I

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->width:I

    .line 341
    iget-object v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_height:I

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->height:I

    .line 342
    iget-object v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_marginLeft:I

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginLeft:I

    .line 343
    iget-object v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_marginTop:I

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginTop:I

    .line 344
    invoke-virtual {p1, v0, v4}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;I)V

    .line 350
    new-instance v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    invoke-direct {v2}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;-><init>()V

    .line 351
    .local v2, thumbnail:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    const v3, 0x7f02003e

    iput v3, v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->defaultResourceId:I

    .line 352
    iget-object v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->thumb_marginLeft:I

    iput v3, v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginLeft:I

    .line 353
    iget-object v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->thumb_marginTop:I

    iput v3, v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginTop:I

    .line 354
    invoke-virtual {p1, v2, v5}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;I)V

    .line 355
    new-instance v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    invoke-direct {v1}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;-><init>()V

    .line 356
    .local v1, textLayout:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    iget-object v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_height:I

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->height:I

    .line 357
    iget-object v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_width:I

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->width:I

    .line 358
    iput v7, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->defaultResourceId:I

    .line 359
    iget-object v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_marginLeft:I

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginLeft:I

    .line 360
    iget-object v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_marginTop:I

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginTop:I

    .line 361
    invoke-virtual {p1, v1, v6}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;I)V

    .line 362
    iget-object v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->height:I

    invoke-virtual {p1, v3}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setItemHeight(I)V

    .line 363
    iget-object v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->width:I

    invoke-virtual {p1, v3}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setItemWidth(I)V

    .line 365
    new-instance v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    .end local v0           #backgroundParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    invoke-direct {v0}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;-><init>()V

    .line 366
    .restart local v0       #backgroundParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    const v3, 0x7f020041

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->defaultResourceId:I

    .line 367
    const v3, 0x7f020040

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->extraResourceId:I

    .line 368
    iget-object v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;->cover_width_child:I

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->width:I

    .line 369
    iget-object v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;->cover_height_child:I

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->height:I

    .line 370
    iget-object v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;->cover_marginLeft_child:I

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginLeft:I

    .line 371
    iget-object v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;->cover_marginTop_child:I

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginTop:I

    .line 372
    invoke-virtual {p2, v0, v4}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;I)V

    .line 378
    new-instance v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    .end local v2           #thumbnail:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    invoke-direct {v2}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;-><init>()V

    .line 379
    .restart local v2       #thumbnail:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    const v3, 0x7f020042

    iput v3, v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->defaultResourceId:I

    .line 381
    iget-object v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;->thumb_marginLeft_child:I

    iput v3, v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginLeft:I

    .line 382
    iget-object v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;->thumb_marginTop_child:I

    iput v3, v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginTop:I

    .line 383
    invoke-virtual {p2, v2, v5}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;I)V

    .line 384
    new-instance v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    .end local v1           #textLayout:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    invoke-direct {v1}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;-><init>()V

    .line 385
    .restart local v1       #textLayout:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    iget-object v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;->textView_height_child:I

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->height:I

    .line 386
    iget-object v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;->textView_width_child:I

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->width:I

    .line 387
    iput v7, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->defaultResourceId:I

    .line 388
    iget-object v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;->textView_marginLeft_child:I

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginLeft:I

    .line 389
    iget-object v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;->textView_marginTop_child:I

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginTop:I

    .line 390
    invoke-virtual {p2, v1, v6}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;I)V

    .line 392
    iget-object v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;->height_child:I

    invoke-virtual {p2, v3}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setItemHeight(I)V

    .line 393
    iget-object v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;->width_child:I

    invoke-virtual {p2, v3}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setItemWidth(I)V

    .line 394
    return-void
.end method

.method private initMusicGridViewUtil()V
    .locals 4

    .prologue
    .line 468
    new-instance v1, Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    sget-object v2, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->ARTIST_TYPE:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    sget-object v3, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->ALBUM_TYPE:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    invoke-direct {v1, v2, v3, p0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;-><init>(Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    .line 469
    new-instance v0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$3;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$3;-><init>(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)V

    .line 514
    .local v0, musicGridViewItemUpdater:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MusicGridViewItemUpdater;
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v1, v0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->setMusicGridViewItemUpdater(Lcom/htc/music/widget/gridview/MusicGridViewUtil$MusicGridViewItemUpdater;)V

    .line 515
    return-void
.end method

.method private mergeAllSongsItem2AlbumCursor(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 6
    .parameter "cursor"
    .parameter "artistId"
    .parameter "artist"
    .parameter "numTracks"

    .prologue
    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 1084
    if-nez p1, :cond_0

    .line 1098
    .end local p1
    :goto_0
    return-object p1

    .line 1086
    .restart local p1
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1087
    .local v0, albumList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1088
    .local v2, row:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v2, Ljava/util/ArrayList;

    .end local v2           #row:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iget-object v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mAlbumCols:[Ljava/lang/String;

    array-length v3, v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1089
    .restart local v2       #row:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1090
    iget-object v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mAllSongsLabel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1091
    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1092
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1093
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1094
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1095
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1096
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1097
    new-instance v1, Lcom/htc/music/util/ArrayListCursor;

    iget-object v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mAlbumCols:[Ljava/lang/String;

    invoke-direct {v1, v3, v0}, Lcom/htc/music/util/ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1098
    .local v1, albumListCursor:Lcom/htc/music/util/ArrayListCursor;
    new-instance v3, Landroid/database/MergeCursor;

    new-array v4, v4, [Landroid/database/Cursor;

    aput-object v1, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-direct {v3, v4}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    move-object p1, v3

    goto :goto_0
.end method

.method private startAlbumDetailViewActivity(Ljava/lang/String;)V
    .locals 3
    .parameter "albumId"

    .prologue
    .line 574
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 575
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 576
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v2, "com.htc.media/albumtrack"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 577
    const/high16 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 578
    const-string v1, "albumid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 579
    const-string v1, "InnerActivityType"

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 580
    const-string v1, "artistid"

    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentArtistId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 581
    const-string v1, "dbTable"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 582
    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->startActivity(Landroid/content/Intent;)V

    .line 583
    return-void
.end method


# virtual methods
.method public clickIndexInit(I)V
    .locals 3
    .parameter "globalIndex"

    .prologue
    const/4 v2, 0x0

    .line 556
    iput p1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    .line 557
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentIndex(I)I

    move-result v0

    iput v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentClickedIndex:I

    .line 558
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getChildIndex(I)I

    move-result v0

    iput v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mChildClickedIndex:I

    .line 560
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentClickedIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentMediaDataId(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentArtistId:Ljava/lang/String;

    .line 561
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentClickedIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentMediaDataName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentArtistName:Ljava/lang/String;

    .line 562
    iget v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mChildClickedIndex:I

    if-ltz v0, :cond_0

    .line 563
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mChildClickedIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getChildMediaDataId(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumId:Ljava/lang/String;

    .line 564
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mChildClickedIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getChildMediaDataName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumName:Ljava/lang/String;

    .line 565
    sget-object v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;->GRID_CHILD_TYPE:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridItemClickedType:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    .line 571
    :goto_0
    return-void

    .line 567
    :cond_0
    iput-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumId:Ljava/lang/String;

    .line 568
    iput-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumName:Ljava/lang/String;

    .line 569
    sget-object v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;->GRID_PARENT_TYPE:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridItemClickedType:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    goto :goto_0
.end method

.method protected enablePlayAllMenuIcon()Z
    .locals 1

    .prologue
    .line 1280
    const/4 v0, 0x1

    return v0
.end method

.method protected enableShuffleAllMenuIcon()Z
    .locals 1

    .prologue
    .line 1285
    const/4 v0, 0x1

    return v0
.end method

.method protected getParentCursor()Landroid/database/Cursor;
    .locals 2

    .prologue
    .line 1159
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->getArtistCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected getUnknownCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .parameter "where"

    .prologue
    const/4 v4, 0x0

    .line 1237
    sget-object v1, Lcom/htc/music/util/MusicUtils$Artists2;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mArtistCols:[Ljava/lang/String;

    const-string v3, "artist = \'<unknown>\'"

    move-object v0, p0

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1240
    .local v6, cur:Landroid/database/Cursor;
    return-object v6
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 1010
    sparse-switch p1, :sswitch_data_0

    .line 1026
    :cond_0
    :goto_0
    return-void

    .line 1012
    :sswitch_0
    if-ne p2, v2, :cond_0

    .line 1013
    const/4 v2, 0x0

    invoke-direct {p0, v3, v2}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->getSelectList(ZLcom/htc/music/NpCategory;)[I

    move-result-object v0

    .line 1014
    .local v0, list:[I
    if-eqz v0, :cond_0

    .line 1015
    const-string v2, "playlist"

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1016
    .local v1, playlist:I
    int-to-long v2, v1

    invoke-static {p0, v0, v2, v3}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    goto :goto_0

    .line 1021
    .end local v0           #list:[I
    .end local v1           #playlist:I
    :sswitch_1
    if-ne p2, v2, :cond_0

    .line 1022
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->finish()V

    goto :goto_0

    .line 1010
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xf -> :sswitch_1
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .parameter "newConfig"

    .prologue
    .line 208
    const-string v1, "[ArtistBrowserActivityExpGrid]"

    const-string v2, "onConfigurationChanged"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mOrientation:I

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v2, :cond_1

    .line 210
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mOrientation:I

    .line 215
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 219
    iget v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mOrientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 220
    iget-boolean v1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mIsHVGA:Z

    if-eqz v1, :cond_2

    .line 221
    const/4 v0, 0x3

    .line 225
    .local v0, tempNumColumn:I
    :goto_1
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;

    iget v2, v2, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->verticalSpacing_landscape:I

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setVerticalSpacing(I)V

    .line 226
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;

    iget v2, v2, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;->verticalSpacing_landscape_child:I

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setChildVerticalSpacing(I)V

    .line 233
    :goto_2
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->isGridViewExpanded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 234
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v2}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentMediaList()Lcom/htc/sunny2/IMediaList;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentClickedIndex:I

    iget-object v5, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v3, v4, v0, v5}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->updateExpandableGridViewParameters(IILcom/htc/sunny2/widget/gridview/ExpandableGridView;)Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setMediaList(Lcom/htc/sunny2/IMediaList;Lcom/htc/sunny2/widget/gridview/ExpandableGridView$ExpandableGridViewParameters;)V

    goto :goto_0

    .line 223
    .end local v0           #tempNumColumn:I
    :cond_2
    const/4 v0, 0x4

    .restart local v0       #tempNumColumn:I
    goto :goto_1

    .line 228
    .end local v0           #tempNumColumn:I
    :cond_3
    const/4 v0, 0x2

    .line 229
    .restart local v0       #tempNumColumn:I
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;

    iget v2, v2, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->verticalSpacing:I

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setVerticalSpacing(I)V

    .line 230
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;

    iget v2, v2, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$ArtistViewItemLayoutParams;->verticalSpacing_child:I

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setChildVerticalSpacing(I)V

    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 254
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->onCreate(Landroid/os/Bundle;)V

    .line 255
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->setVolumeControlStream(I)V

    .line 257
    if-eqz p1, :cond_2

    .line 258
    const-string v3, "playlisturi"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mPlaylistUri:Ljava/lang/String;

    .line 265
    :goto_0
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 266
    .local v2, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 267
    invoke-static {v2}, Lcom/htc/music/util/MusicUtils;->isHVGA(Landroid/util/DisplayMetrics;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mIsHVGA:Z

    .line 270
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 271
    .local v0, f:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 272
    const-string v3, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 273
    const-string v3, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 274
    const-string v3, "file"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 275
    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 277
    const v3, 0x7f03002a

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->setContentView(I)V

    .line 278
    iput-object p0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mContext:Landroid/content/Context;

    .line 279
    invoke-direct {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->initExpGridView()V

    .line 280
    iget-object v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    if-nez v3, :cond_0

    new-instance v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$QueryHandler;

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$QueryHandler;-><init>(Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;Landroid/content/ContentResolver;)V

    iput-object v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    .line 281
    :cond_0
    iget-object v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->getArtistCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    .line 282
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->setCategoryProgressVisible(Z)V

    .line 284
    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mPlaylistUri:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 285
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->enableSearch()V

    .line 288
    :cond_1
    const v3, 0x7f070028

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mAllSongsLabel:Ljava/lang/String;

    .line 289
    return-void

    .line 260
    .end local v0           #f:Landroid/content/IntentFilter;
    .end local v2           #metrics:Landroid/util/DisplayMetrics;
    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 261
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "playlisturi"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mPlaylistUri:Ljava/lang/String;

    goto :goto_0
.end method

.method protected onCreateFirstPlaylistDialogSaveClick(Ljava/lang/String;)V
    .locals 4
    .parameter "playlistName"

    .prologue
    .line 810
    invoke-static {p0, p1}, Lcom/htc/music/util/MusicUtils;->createPlaylist(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 811
    .local v0, id:I
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->getSelectList(ZLcom/htc/music/NpCategory;)[I

    move-result-object v1

    int-to-long v2, v0

    invoke-static {p0, v1, v2, v3}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    .line 812
    return-void
.end method

.method public onDeleteAllChildsReadyIRT(II)V
    .locals 2
    .parameter "originalIndex"
    .parameter "adjustedIndex"

    .prologue
    .line 1271
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1272
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1273
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1274
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 1275
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1276
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 249
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->onDestroy()V

    .line 250
    return-void
.end method

.method protected onGridViewChildItemPrepare(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 747
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 748
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->resumePreparator(Z)V

    .line 749
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentClickedIndex:I

    invoke-virtual {v1, v2}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->isSameParentClicked(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 750
    iget v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentClickedIndex:I

    invoke-direct {p0, v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->getArtistAlbumChildCusror(I)Landroid/database/Cursor;

    move-result-object v0

    .line 751
    .local v0, cursor:Landroid/database/Cursor;
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v1, v0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->updateChildMediaList(Landroid/database/Cursor;)V

    .line 752
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 753
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 757
    .end local v0           #cursor:Landroid/database/Cursor;
    :cond_0
    return-void
.end method

.method protected onGridViewItemClick(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x2

    .line 608
    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->clickIndexInit(I)V

    .line 609
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mPlaylistUri:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 610
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 611
    .local v0, intent:Landroid/content/Intent;
    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v3, "com.htc.media/albumtrack"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 612
    const-string v2, "playlisturi"

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mPlaylistUri:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 613
    const-string v2, "artistid"

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentArtistId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 614
    const-string v2, "pickermode"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 615
    const-string v2, "dbTable"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 616
    const/16 v2, 0xf

    invoke-virtual {p0, v0, v2}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->startActivityForResult(Landroid/content/Intent;I)V

    .line 648
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 619
    :cond_1
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridItemClickedType:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    sget-object v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;->GRID_CHILD_TYPE:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    invoke-virtual {v2, v3}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 621
    const-string v2, "[ArtistBrowserActivityExpGrid]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Going to launch album detail view. albumId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    iget v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mChildClickedIndex:I

    if-nez v2, :cond_2

    .line 624
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 625
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.PICK"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 626
    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v3, "com.htc.media/albumtrack"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 627
    const-string v2, "artistid"

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentArtistId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 628
    const-string v2, "artist"

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentArtistName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 629
    const-string v2, "dbTable"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 630
    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 632
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->startAlbumDetailViewActivity(Ljava/lang/String;)V

    goto :goto_0

    .line 636
    :cond_3
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    invoke-virtual {v2, v3}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getChildItemCount(I)I

    move-result v2

    if-lez v2, :cond_0

    .line 637
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentClickedIndex:I

    invoke-virtual {v2, v3}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->isContainOnlyOneChild(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 638
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v3, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mCollapseChildIfContainOnlyOneChild:Lcom/htc/sunny2/widget/gridview/ExpandableGridView$OnCollapseChildViewListener;

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->collapseChildView(Lcom/htc/sunny2/widget/gridview/ExpandableGridView$OnCollapseChildViewListener;)V

    goto :goto_0

    .line 641
    :cond_4
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->resumePreparator(Z)V

    .line 642
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->prepareUpdateChildView(I)V

    .line 643
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 644
    .local v1, msgs:Landroid/os/Message;
    const/4 v2, 0x3

    iput v2, v1, Landroid/os/Message;->what:I

    .line 645
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method

.method protected onGridViewItemDelete(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v1, 0x2

    const/4 v4, 0x0

    .line 761
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mDeleteMessage:Landroid/os/Message;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 762
    iget-object v0, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mDeleteMessage:Landroid/os/Message;

    iget v2, p1, Landroid/os/Message;->arg2:I

    iput v2, v0, Landroid/os/Message;->arg2:I

    .line 763
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridItemClickedType:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    sget-object v2, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;->GRID_PARENT_TYPE:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    invoke-virtual {v0, v2}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 764
    const-string v0, "[ArtistBrowserActivityExpGrid]"

    const-string v2, "@@@@ mDeleteType:TYPE_ARTIST"

    invoke-static {v0, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentArtistId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 766
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentArtistId:Ljava/lang/String;

    invoke-static {p0, v1, v0, v4, v4}, Lcom/htc/music/util/MusicUtils;->deleteTracksForArtist(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    :cond_0
    :goto_0
    return-void

    .line 769
    :cond_1
    const-string v0, "[ArtistBrowserActivityExpGrid]"

    const-string v2, "@@@@ mDeleteType:TYPE_ALBUM"

    invoke-static {v0, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 771
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumId:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentArtistId:Ljava/lang/String;

    move-object v0, p0

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->deleteTracksForAlbum(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onGridViewItemDeleteComplete()V
    .locals 4

    .prologue
    .line 891
    const-string v1, "[ArtistBrowserActivityExpGrid]"

    const-string v2, "call onDeletionCompleted()"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    const/4 v1, 0x1

    new-array v0, v1, [I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mDeleteMessage:Landroid/os/Message;

    iget v2, v2, Landroid/os/Message;->arg2:I

    aput v2, v0, v1

    .line 893
    .local v0, a:[I
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget-object v2, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->mDeleteMessage:Landroid/os/Message;

    iget v2, v2, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v1, v2, v3}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->deleteItems(ILcom/htc/sunny2/widget/gridview/ExpandableGridView;)V

    .line 894
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mDeleteAnimationListener:Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;

    invoke-virtual {v1, v0, v2, v3}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->startDataSetChangeAnimation([I[ILcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V

    .line 896
    return-void
.end method

.method protected onGridViewItemLongClick(Landroid/os/Message;)V
    .locals 13
    .parameter "msg"

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x4

    const/4 v8, 0x3

    .line 652
    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->clickIndexInit(I)V

    .line 653
    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mPlaylistUri:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 738
    :goto_0
    return-void

    .line 654
    :cond_0
    const/4 v3, 0x0

    .line 655
    .local v3, headerTitle:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridItemClickedType:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    sget-object v7, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;->GRID_PARENT_TYPE:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    invoke-virtual {v6, v7}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    iget v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mChildClickedIndex:I

    if-nez v6, :cond_5

    .line 656
    :cond_1
    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v7, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentClickedIndex:I

    invoke-virtual {v6, v7}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentMediaDataName(I)Ljava/lang/String;

    move-result-object v3

    .line 660
    :goto_1
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 661
    .local v0, context:Landroid/content/Context;
    const/4 v5, 0x0

    .line 662
    .local v5, items:[Ljava/lang/CharSequence;
    const/4 v4, 0x0

    .line 663
    .local v4, ids:[I
    invoke-static {v0}, Lcom/htc/music/util/MusicUtils;->CheckDLNAStatus(Landroid/content/Context;)I

    move-result v1

    .line 665
    .local v1, dlnaMode:I
    const/4 v2, 0x1

    .line 666
    .local v2, enableSearch:Z
    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridItemClickedType:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    sget-object v7, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;->GRID_PARENT_TYPE:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    invoke-virtual {v6, v7}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    iget v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mChildClickedIndex:I

    if-nez v6, :cond_6

    :cond_2
    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentArtistName:Ljava/lang/String;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentArtistName:Ljava/lang/String;

    const v7, 0x7f07004d

    invoke-virtual {p0, v7}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentArtistName:Ljava/lang/String;

    const-string v7, "<unknown>"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 668
    :cond_3
    const/4 v2, 0x0

    .line 674
    :cond_4
    :goto_2
    if-nez v2, :cond_9

    .line 675
    if-nez v1, :cond_8

    .line 677
    new-array v5, v9, [Ljava/lang/CharSequence;

    .end local v5           #items:[Ljava/lang/CharSequence;
    const v6, 0x7f070058

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    const v6, 0x7f070059

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v11

    const v6, 0x7f07005a

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v12

    const v6, 0x2040214

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    .line 683
    .restart local v5       #items:[Ljava/lang/CharSequence;
    new-array v4, v9, [I

    .end local v4           #ids:[I
    fill-array-data v4, :array_0

    .line 736
    .restart local v4       #ids:[I
    :goto_3
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->hideHtcContextMenu()V

    .line 737
    invoke-virtual {p0, v3, v5, v4}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->showHtcContextMenu(Ljava/lang/String;[Ljava/lang/CharSequence;[I)V

    goto/16 :goto_0

    .line 658
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #dlnaMode:I
    .end local v2           #enableSearch:Z
    .end local v4           #ids:[I
    .end local v5           #items:[Ljava/lang/CharSequence;
    :cond_5
    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v7, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mChildClickedIndex:I

    invoke-virtual {v6, v7}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getChildMediaDataName(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 669
    .restart local v0       #context:Landroid/content/Context;
    .restart local v1       #dlnaMode:I
    .restart local v2       #enableSearch:Z
    .restart local v4       #ids:[I
    .restart local v5       #items:[Ljava/lang/CharSequence;
    :cond_6
    iget v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mChildClickedIndex:I

    if-lez v6, :cond_4

    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumName:Ljava/lang/String;

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumName:Ljava/lang/String;

    const v7, 0x7f07004e

    invoke-virtual {p0, v7}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumName:Ljava/lang/String;

    const-string v7, "<unknown>"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 671
    :cond_7
    const/4 v2, 0x0

    goto :goto_2

    .line 691
    :cond_8
    new-array v5, v8, [Ljava/lang/CharSequence;

    .end local v5           #items:[Ljava/lang/CharSequence;
    const v6, 0x7f070058

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    const v6, 0x7f070059

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v11

    const v6, 0x2040214

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v12

    .line 696
    .restart local v5       #items:[Ljava/lang/CharSequence;
    new-array v4, v8, [I

    .end local v4           #ids:[I
    fill-array-data v4, :array_1

    .restart local v4       #ids:[I
    goto :goto_3

    .line 703
    :cond_9
    if-nez v1, :cond_a

    .line 705
    const/4 v6, 0x5

    new-array v5, v6, [Ljava/lang/CharSequence;

    .end local v5           #items:[Ljava/lang/CharSequence;
    const v6, 0x7f070058

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    const v6, 0x7f070059

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v11

    const v6, 0x7f07005a

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v12

    const v6, 0x2040214

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    const v6, 0x204014d

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    .line 712
    .restart local v5       #items:[Ljava/lang/CharSequence;
    const/4 v6, 0x5

    new-array v4, v6, [I

    .end local v4           #ids:[I
    fill-array-data v4, :array_2

    .restart local v4       #ids:[I
    goto/16 :goto_3

    .line 721
    :cond_a
    new-array v5, v9, [Ljava/lang/CharSequence;

    .end local v5           #items:[Ljava/lang/CharSequence;
    const v6, 0x7f070058

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    const v6, 0x7f070059

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v11

    const v6, 0x2040214

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v12

    const v6, 0x204014d

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    .line 727
    .restart local v5       #items:[Ljava/lang/CharSequence;
    new-array v4, v9, [I

    .end local v4           #ids:[I
    fill-array-data v4, :array_3

    .restart local v4       #ids:[I
    goto/16 :goto_3

    .line 683
    :array_0
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
    .end array-data

    .line 696
    :array_1
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
    .end array-data

    .line 712
    :array_2
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
    .end array-data

    .line 727
    :array_3
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method protected onGridViewPrepareUpdateListReady(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 742
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v0, v1, v2}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->updateExpandableGridView(ILcom/htc/sunny2/widget/gridview/ExpandableGridView;)V

    .line 743
    return-void
.end method

.method public onHtcContextItemSelected(I)Z
    .locals 11
    .parameter "id"

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x1

    .line 900
    sparse-switch p1, :sswitch_data_0

    .line 956
    :goto_0
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->onHtcContextItemSelected(I)Z

    move-result v5

    :cond_0
    :goto_1
    return v5

    .line 902
    :sswitch_0
    new-instance v4, Lcom/htc/music/NpCategory;

    invoke-direct {v4, v7}, Lcom/htc/music/NpCategory;-><init>(S)V

    .line 903
    .local v4, npc:Lcom/htc/music/NpCategory;
    invoke-direct {p0, v5, v4}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->getSelectList(ZLcom/htc/music/NpCategory;)[I

    move-result-object v3

    .line 904
    .local v3, list:[I
    if-eqz v3, :cond_0

    .line 905
    invoke-static {p0, v3, v7, v4}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;[IILcom/htc/music/NpCategory;)V

    goto :goto_1

    .line 909
    .end local v3           #list:[I
    .end local v4           #npc:Lcom/htc/music/NpCategory;
    :sswitch_1
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->checkPlaylistCount(Landroid/content/Context;)I

    move-result v6

    if-gtz v6, :cond_1

    .line 910
    const/16 v6, 0x25a

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->showDialog(I)V

    goto :goto_1

    .line 913
    :cond_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 914
    .local v2, intent:Landroid/content/Intent;
    const-class v6, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;

    invoke-virtual {v2, p0, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 915
    const/4 v6, 0x0

    invoke-direct {p0, v7, v6}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->getSelectList(ZLcom/htc/music/NpCategory;)[I

    move-result-object v0

    .line 916
    .local v0, addToPlaylistData:[I
    const-string v6, "pickermode"

    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 917
    const-string v6, "AddToPlaylistData"

    invoke-virtual {v2, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 918
    invoke-virtual {p0, v2, v5}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 922
    .end local v0           #addToPlaylistData:[I
    .end local v2           #intent:Landroid/content/Intent;
    :sswitch_2
    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumId:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mChildClickedIndex:I

    if-nez v6, :cond_3

    .line 924
    :cond_2
    :try_start_0
    sget-object v6, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentArtistId:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 926
    sget-object v6, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v7, 0x2

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentArtistId:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v6, v7, v8, v9}, Lcom/htc/music/IMediaPlaybackService;->addToQueueByDbTable(III)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 928
    :catch_0
    move-exception v1

    .line 929
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v6, "[ArtistBrowserActivityExpGrid]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ADD_TO_QUEUE, long click artist item, NumberFormatException e: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 930
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v1

    .line 931
    .local v1, e:Landroid/os/RemoteException;
    const-string v6, "[ArtistBrowserActivityExpGrid]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ADD_TO_QUEUE, long click artist item, RemoteException e: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 935
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_3
    :try_start_1
    sget-object v6, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v6, :cond_0

    .line 936
    sget-object v6, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v7, 0x2

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentArtistId:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iget-object v10, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v6, v7, v8, v9, v10}, Lcom/htc/music/IMediaPlaybackService;->addToQueueForMultiConditionsByDbTable(IIII)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3

    goto/16 :goto_1

    .line 938
    :catch_2
    move-exception v1

    .line 939
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v6, "[ArtistBrowserActivityExpGrid]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ADD_TO_QUEUE, long click album item, NumberFormatException e: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 940
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :catch_3
    move-exception v1

    .line 941
    .local v1, e:Landroid/os/RemoteException;
    const-string v6, "[ArtistBrowserActivityExpGrid]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ADD_TO_QUEUE, long click album item, RemoteException e: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 946
    .end local v1           #e:Landroid/os/RemoteException;
    :sswitch_3
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->showDeleteDialog()V

    goto/16 :goto_1

    .line 949
    :sswitch_4
    iget-object v5, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumName:Ljava/lang/String;

    if-eqz v5, :cond_4

    iget v5, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mChildClickedIndex:I

    if-lez v5, :cond_4

    .line 950
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->findRootParent()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumName:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/htc/music/util/MusicUtils;->searchViaAlbumName(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 952
    :cond_4
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->findRootParent()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentArtistName:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/htc/music/util/MusicUtils;->searchViaArtistName(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 900
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5 -> :sswitch_0
        0xa -> :sswitch_3
        0xd -> :sswitch_2
        0x11 -> :sswitch_4
    .end sparse-switch
.end method

.method public onPrepareReadyIRT(I)V
    .locals 2
    .parameter "clickIndex"

    .prologue
    .line 1030
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1031
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1032
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1033
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1034
    return-void
.end method

.method protected playAllAction(Z)Z
    .locals 12
    .parameter "forceShuffle"

    .prologue
    .line 961
    const/4 v7, 0x0

    .line 962
    .local v7, cursor:Landroid/database/Cursor;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 963
    .local v10, where:Ljava/lang/StringBuilder;
    const-string v0, "is_music>=1"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 964
    const-string v0, " AND artist != \'\' "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 965
    const-string v0, " AND artist != \'<unknown>\'"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 970
    sget-object v1, Lcom/htc/music/util/MusicUtils$Media2;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "album_id"

    aput-object v3, v2, v0

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "artist COLLATE NOCASE ASC, album COLLATE NOCASE ASC, track"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 974
    const/4 v9, 0x0

    .line 975
    .local v9, unknown:Landroid/database/Cursor;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 976
    .local v11, whereUnknown:Ljava/lang/StringBuilder;
    const-string v0, "is_music>=1"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 977
    const-string v0, " AND artist= \'<unknown>\'"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 982
    sget-object v1, Lcom/htc/music/util/MusicUtils$Media2;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "album_id"

    aput-object v3, v2, v0

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "title COLLATE NOCASE ASC"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 987
    if-eqz v7, :cond_2

    if-eqz v9, :cond_2

    .line 988
    new-instance v8, Landroid/database/MergeCursor;

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/database/Cursor;

    const/4 v1, 0x0

    aput-object v7, v0, v1

    const/4 v1, 0x1

    aput-object v9, v0, v1

    invoke-direct {v8, v0}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .end local v7           #cursor:Landroid/database/Cursor;
    .local v8, cursor:Landroid/database/Cursor;
    move-object v7, v8

    .line 992
    .end local v8           #cursor:Landroid/database/Cursor;
    .restart local v7       #cursor:Landroid/database/Cursor;
    :cond_0
    :goto_0
    if-eqz v7, :cond_1

    .line 993
    const/4 v6, 0x0

    .line 995
    .local v6, category:Lcom/htc/music/NpCategory;
    new-instance v6, Lcom/htc/music/NpCategory;

    .end local v6           #category:Lcom/htc/music/NpCategory;
    const/4 v0, 0x5

    invoke-direct {v6, v0}, Lcom/htc/music/NpCategory;-><init>(S)V

    .line 997
    .restart local v6       #category:Lcom/htc/music/NpCategory;
    if-eqz p1, :cond_3

    .line 998
    invoke-static {p0, v7, v6}, Lcom/htc/music/util/MusicUtils;->shuffleAll(Landroid/content/Context;Landroid/database/Cursor;Lcom/htc/music/NpCategory;)V

    .line 1001
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1002
    const/4 v7, 0x0

    .line 1004
    .end local v6           #category:Lcom/htc/music/NpCategory;
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 989
    :cond_2
    if-eqz v9, :cond_0

    .line 990
    move-object v7, v9

    goto :goto_0

    .line 1000
    .restart local v6       #category:Lcom/htc/music/NpCategory;
    :cond_3
    invoke-static {p0, v7, v6}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;Lcom/htc/music/NpCategory;)V

    goto :goto_1
.end method

.method protected setEmptyView()V
    .locals 1

    .prologue
    .line 1266
    const v0, 0x7f070039

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->showEmptyView(I)V

    .line 1267
    return-void
.end method

.method protected setTitle()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1247
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mPlaylistUri:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1250
    const v0, 0x7f070073

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->setCatgoryMainTitle(Ljava/lang/String;)V

    .line 1251
    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->setCategorySecondaryTitleVisible(Z)V

    .line 1262
    :goto_0
    return-void

    .line 1259
    :cond_0
    const v0, 0x7f070021

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->setCatgoryMainTitle(Ljava/lang/String;)V

    .line 1260
    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->setCategorySecondaryTitleVisible(Z)V

    goto :goto_0
.end method

.method showDeleteDialog()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 816
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 817
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_0

    move-object v0, p0

    .line 820
    :cond_0
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridItemClickedType:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    sget-object v5, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;->GRID_PARENT_TYPE:Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    invoke-virtual {v4, v5}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$GridItemClickType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 822
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->IsInternalStorage()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 823
    const v4, 0x7f07001a

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 828
    .local v2, f:Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentArtistName:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentArtistName:Ljava/lang/String;

    const-string v5, "<unknown>"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 829
    :cond_1
    const v4, 0x7f07004d

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 833
    .local v3, headerTitle:Ljava/lang/String;
    :goto_1
    new-array v4, v7, [Ljava/lang/Object;

    aput-object v3, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 848
    .end local v3           #headerTitle:Ljava/lang/String;
    .local v1, desc:Ljava/lang/String;
    :goto_2
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    if-nez v4, :cond_2

    .line 849
    new-instance v4, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v4, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x2040214

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x1040013

    new-instance v6, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$7;

    invoke-direct {v6, p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$7;-><init>(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)V

    invoke-virtual {v4, v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x1040009

    new-instance v6, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$6;

    invoke-direct {v6, p0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$6;-><init>(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)V

    invoke-virtual {v4, v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 884
    :cond_2
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 885
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v4, v1}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 886
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 887
    return-void

    .line 825
    .end local v1           #desc:Ljava/lang/String;
    .end local v2           #f:Ljava/lang/String;
    :cond_3
    const v4, 0x7f070019

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #f:Ljava/lang/String;
    goto :goto_0

    .line 831
    :cond_4
    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentArtistName:Ljava/lang/String;

    .restart local v3       #headerTitle:Ljava/lang/String;
    goto :goto_1

    .line 835
    .end local v2           #f:Ljava/lang/String;
    .end local v3           #headerTitle:Ljava/lang/String;
    :cond_5
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->IsInternalStorage()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 836
    const v4, 0x7f07001c

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 841
    .restart local v2       #f:Ljava/lang/String;
    :goto_3
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumName:Ljava/lang/String;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumName:Ljava/lang/String;

    const-string v5, "<unknown>"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 842
    :cond_6
    new-array v4, v7, [Ljava/lang/Object;

    const v5, 0x7f07004e

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #desc:Ljava/lang/String;
    goto :goto_2

    .line 838
    .end local v1           #desc:Ljava/lang/String;
    .end local v2           #f:Ljava/lang/String;
    :cond_7
    const v4, 0x7f07001b

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #f:Ljava/lang/String;
    goto :goto_3

    .line 844
    :cond_8
    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumName:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #desc:Ljava/lang/String;
    goto/16 :goto_2
.end method
