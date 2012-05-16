.class public Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;
.super Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;
.source "PlaylistBrowserActivityGrid.java"

# interfaces
.implements Lcom/htc/music/util/MusicUtils$Defs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$PlaylistViewItemLayoutParams;
    }
.end annotation


# static fields
.field public static final ACTION_SILDER_STATE:Ljava/lang/String; = "com.htc.launcher.ThemeChooser.action.silder_change"

.field private static final ADD_PLAYLIST:J = -0x4L

.field private static final ALL_SONGS_PLAYLIST:I = -0x2

.field private static final CHANGE_WEEKS:I = 0x1e

.field private static final DELETE_CURRENT_PLAYLIST:I = 0x1b

.field private static final DELETE_PLAYLISTS:I = 0x22

.field public static final DIALOG_FOR_LONG_PRESS:I = 0x0

.field private static final EDIT_PLAYLIST:I = 0x1c

.field public static final EXTRA_SILDER_STATE:Ljava/lang/String; = "silder_state"

.field private static final FINISH_DELAY:I = 0x64

.field private static final NEW_PLAYLIST:I = 0x21

.field private static final PLAYLIST_DEFAULT_SORT_ORDER:Ljava/lang/String; = "name COLLATE NOCASE ASC"

.field private static final RECENT_PLAYLIST:Ljava/lang/String; = "-5"

.field private static final RECENT_PLAYLIST_ID:I = -0x5

.field private static RECENT_PLAYLIST_POSITION:I = 0x0

.field private static final RENAME_PLAYLIST:I = 0x1d

.field private static final SELECT_ALL:I = 0x1f

.field private static final TAG:Ljava/lang/String; = "[PlaylistBrowserActivityGrid]"

.field private static final UNSELECT_ALL:I = 0x20


# instance fields
.field private list:[I

.field private mAddPlaylistBtnListener:Landroid/view/View$OnClickListener;

.field private mAddToPlaylistData:[I

.field mBeginIntent:Landroid/content/Intent;

.field mCols:[Ljava/lang/String;

.field private mCreateShortcut:Z

.field mCursorCols:[Ljava/lang/String;

.field private mDelayFinishHandler:Landroid/os/Handler;

.field private mExitByErrorIntent:Z

.field mItemLayoutParams:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$PlaylistViewItemLayoutParams;

.field private mOrientation:I

.field private mPickerMode:I

.field private mPlaybackStatusReceiver:Landroid/content/BroadcastReceiver;

.field mPlaylistMemberCols:[Ljava/lang/String;

.field private mQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

.field private mRecentPlayedPos:I

.field private mSelectedId:I

.field menuOpened:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    sput v0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->RECENT_PLAYLIST_POSITION:I

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 74
    invoke-direct {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;-><init>()V

    .line 110
    iput-object v5, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mAddToPlaylistData:[I

    .line 111
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mCreateShortcut:Z

    .line 112
    iput v2, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mPickerMode:I

    .line 113
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mRecentPlayedPos:I

    .line 114
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mExitByErrorIntent:Z

    .line 159
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "name"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mCols:[Ljava/lang/String;

    .line 199
    new-instance v0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$1;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$1;-><init>(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mPlaybackStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 252
    iput-object v5, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mBeginIntent:Landroid/content/Intent;

    .line 815
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "album_id"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mPlaylistMemberCols:[Ljava/lang/String;

    .line 819
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "album_id"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mCursorCols:[Ljava/lang/String;

    .line 824
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->menuOpened:Z

    .line 825
    new-instance v0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$8;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$8;-><init>(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mDelayFinishHandler:Landroid/os/Handler;

    .line 889
    new-instance v0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$9;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$9;-><init>(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mAddPlaylistBtnListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/sunny2/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/sunny2/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/sunny2/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getPlaylistFirstTrackCursor(Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/sunny2/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/sunny2/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->createNewPlaylist()V

    return-void
.end method

.method static synthetic access$1700(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    return v0
.end method

.method static synthetic access$1800(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/sunny2/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    return-object v0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 74
    sget v0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->RECENT_PLAYLIST_POSITION:I

    return v0
.end method

.method static synthetic access$2000(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    return v0
.end method

.method static synthetic access$2100(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/sunny2/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewRefreshDisable:Z

    return p1
.end method

.method static synthetic access$300(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/music/widget/gridview/MusicGridViewPreparator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewPreparator:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewInitFinish:Z

    return v0
.end method

.method static synthetic access$800(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/sunny2/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/sunny2/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method private applyMenuStatus(Landroid/view/Menu;)V
    .locals 7
    .parameter "menu"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 850
    if-nez p1, :cond_1

    .line 863
    :cond_0
    :goto_0
    return-void

    .line 851
    :cond_1
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    if-eqz v4, :cond_0

    .line 852
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    if-eqz v4, :cond_0

    .line 853
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 854
    .local v2, parentCount:I
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v4}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentItemSelectedCount()I

    move-result v3

    .line 855
    .local v3, selectCount:I
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v4}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentItemDeselectedCount()I

    move-result v0

    .line 857
    .local v0, deselectCount:I
    const/16 v4, 0x20

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .local v1, item:Landroid/view/MenuItem;
    if-eqz v1, :cond_2

    .line 858
    if-eq v2, v0, :cond_3

    move v4, v5

    :goto_1
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 860
    :cond_2
    const/16 v4, 0x1f

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 861
    if-eq v2, v3, :cond_4

    :goto_2
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_3
    move v4, v6

    .line 858
    goto :goto_1

    :cond_4
    move v5, v6

    .line 861
    goto :goto_2
.end method

.method private createNewPlaylist()V
    .locals 4

    .prologue
    .line 867
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 868
    .local v0, intent:Landroid/content/Intent;
    const-class v2, Lcom/htc/music/browserlayer/EditPlaylistActivity;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 869
    iget v2, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mPickerMode:I

    if-nez v2, :cond_0

    .line 870
    const-string v2, "addtrack"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 872
    :cond_0
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_3

    .line 873
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 874
    .local v1, playlistCount:I
    iget-boolean v2, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mCreateShortcut:Z

    if-eqz v2, :cond_1

    if-lez v1, :cond_1

    .line 875
    add-int/lit8 v1, v1, -0x1

    .line 877
    :cond_1
    iget v2, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mRecentPlayedPos:I

    if-ltz v2, :cond_2

    .line 878
    add-int/lit8 v1, v1, -0x1

    .line 879
    :cond_2
    const-string v2, "playlistcount"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 882
    .end local v1           #playlistCount:I
    :cond_3
    iget-object v2, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mAddToPlaylistData:[I

    if-eqz v2, :cond_4

    .line 883
    const-string v2, "AddToPlaylistData"

    iget-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mAddToPlaylistData:[I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 886
    :cond_4
    const/16 v2, 0x21

    invoke-virtual {p0, v0, v2}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->startActivityForResult(Landroid/content/Intent;I)V

    .line 887
    return-void
.end method

.method private finishactivity()V
    .locals 4

    .prologue
    .line 1060
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 1061
    .local v0, handler:Landroid/os/Handler;
    new-instance v1, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$11;

    invoke-direct {v1, p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$11;-><init>(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1066
    return-void
.end method

.method private getPickerMode()I
    .locals 1

    .prologue
    .line 1037
    iget v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mPickerMode:I

    return v0
.end method

.method private getPlaylistCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 13
    .parameter "async"
    .parameter "filterstring"

    .prologue
    .line 614
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 615
    .local v12, where:Ljava/lang/StringBuilder;
    const-string v0, "name != \'\'"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    const/4 v6, 0x0

    .line 619
    .local v6, keywords:[Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 620
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 621
    .local v11, searchWords:[Ljava/lang/String;
    array-length v0, v11

    new-array v6, v0, [Ljava/lang/String;

    .line 622
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v8

    .line 623
    .local v8, col:Ljava/text/Collator;
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/text/Collator;->setStrength(I)V

    .line 624
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    array-length v0, v11

    if-ge v10, v0, :cond_0

    .line 625
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v11, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v10

    .line 624
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 627
    :cond_0
    const/4 v10, 0x0

    :goto_1
    array-length v0, v11

    if-ge v10, v0, :cond_1

    .line 628
    const-string v0, " AND "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    const-string v0, "name LIKE ?"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 627
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 634
    .end local v8           #col:Ljava/text/Collator;
    .end local v10           #i:I
    .end local v11           #searchWords:[Ljava/lang/String;
    :cond_1
    const/4 v9, 0x0

    .line 635
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz p1, :cond_2

    .line 636
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->setAsyncQueryStatus(Z)V

    .line 637
    const/4 v1, 0x0

    const/4 v2, 0x0

    sget-object v3, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mCols:[Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "name COLLATE NOCASE ASC"

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Lcom/htc/music/util/DlArtAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    :goto_2
    return-object v9

    .line 639
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->setAsyncQueryStatus(Z)V

    .line 640
    sget-object v3, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mCols:[Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "name COLLATE NOCASE ASC"

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 641
    const/4 v0, 0x0

    invoke-virtual {p0, v9, v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mergeExtraCursor(Landroid/database/Cursor;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto :goto_2
.end method

.method private getPlaylistFirstTrackCursor(Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 11
    .parameter "playlistId"
    .parameter "unknow"

    .prologue
    const/4 v10, 0x0

    .line 699
    const/4 v8, 0x0

    .line 700
    .local v8, ret:Landroid/database/Cursor;
    const-string v0, "[PlaylistBrowserActivityGrid]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playlistId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 702
    .local v9, where:Ljava/lang/StringBuilder;
    const-string v0, "title != \'\'"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 703
    const-string v0, "-5"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 704
    const-string v0, "[PlaylistBrowserActivityGrid]"

    const-string v1, "prepare recent playlist+"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v0, :cond_1

    .line 706
    const/4 v7, 0x0

    .line 708
    .local v7, recentPlayed:[I
    :try_start_0
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/htc/music/IMediaPlaybackService;->getRecentPlayedPlaylist()[I

    move-result-object v7

    .line 709
    if-eqz v7, :cond_0

    array-length v0, v7

    if-lez v0, :cond_0

    .line 712
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " AND _id == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    aget v1, v7, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 722
    const-string v0, " AND is_music>=1"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 723
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mCursorCols:[Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 743
    .end local v7           #recentPlayed:[I
    :cond_0
    :goto_0
    const-string v0, "[PlaylistBrowserActivityGrid]"

    const-string v1, "prepare recent playlist-"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    :goto_1
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 757
    invoke-direct {p0, v8}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->joinFirstTrackAlbumArt(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    .line 763
    :goto_2
    return-object v0

    .line 737
    .restart local v7       #recentPlayed:[I
    :catch_0
    move-exception v6

    .line 738
    .local v6, ex:Landroid/os/RemoteException;
    const-string v0, "[PlaylistBrowserActivityGrid]"

    const-string v1, "getTrackCursor - (null != mSelectedPlaylistId && !mRecentPlayedPlaylist)."

    invoke-static {v0, v1, v6}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 741
    .end local v6           #ex:Landroid/os/RemoteException;
    .end local v7           #recentPlayed:[I
    :cond_1
    const-string v0, "[PlaylistBrowserActivityGrid]"

    const-string v1, "service is null"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 747
    :cond_2
    const-string v0, "external"

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mPlaylistMemberCols:[Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "play_order LIMIT 0,1"

    move-object v0, p0

    move-object v4, v10

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto :goto_1

    .line 759
    :cond_3
    const-string v0, "[PlaylistBrowserActivityGrid]"

    const-string v1, "ret cursor is null"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v10

    .line 763
    goto :goto_2
.end method

.method private initGridView()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 404
    const v2, 0x7f080073

    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/sunny2/view/SSurfaceView;

    iput-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    .line 405
    new-instance v2, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$PlaylistViewItemLayoutParams;

    invoke-direct {v2, p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$PlaylistViewItemLayoutParams;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$PlaylistViewItemLayoutParams;

    .line 406
    new-instance v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;-><init>(Landroid/content/Context;)V

    .line 407
    .local v0, folderParam:Lcom/htc/music/widget/gridview/MusicGridViewItemParams;
    invoke-direct {p0, v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->initMusicGridViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V

    .line 409
    new-instance v1, Lcom/htc/music/widget/gridview/MusicGridViewItem;

    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v2}, Lcom/htc/sunny2/view/SSurfaceView;->getSunnyContext()Lcom/htc/sunny2/SunnyContext;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/htc/music/widget/gridview/MusicGridViewItem;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V

    .line 410
    .local v1, gridViewItem:Lcom/htc/music/widget/gridview/MusicGridViewItem;
    invoke-direct {p0, v1}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->initMusicGridViewItem(Lcom/htc/music/widget/gridview/MusicGridViewItem;)V

    .line 412
    new-instance v2, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-direct {v2, p0, v3, v4}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;-><init>(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/music/widget/gridview/MusicGridViewUtil;)V

    iput-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewPreparator:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    .line 413
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewPreparator:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    invoke-direct {p0, v2, v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->initGridViewPreparator(Lcom/htc/music/widget/gridview/MusicGridViewPreparator;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V

    .line 414
    invoke-direct {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->initMusicGridViewUtil()V

    .line 415
    new-instance v2, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v3}, Lcom/htc/sunny2/view/SSurfaceView;->getSunnyContext()Lcom/htc/sunny2/SunnyContext;

    move-result-object v3

    invoke-direct {v2, p0, v3, v1}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Lcom/htc/sunny2/widget/gridview/GridViewItem;)V

    iput-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    .line 416
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$PlaylistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->verticalSpacing:I

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setVerticalSpacing(I)V

    .line 417
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$PlaylistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->horizontalSpacing:I

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setHorizontalSpacing(I)V

    .line 418
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewItemClickListener:Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setOnItemClickListener(Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;)V

    .line 419
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mViewItemLongClickListener:Lcom/htc/sunny2/widget/gridview/GridView$OnItemLongClickListener;

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setOnItemLongClickListener(Lcom/htc/sunny2/widget/gridview/GridView$OnItemLongClickListener;)V

    .line 420
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewPreparator:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setPreparation(Lcom/htc/sunny2/widget/gridview/GridViewPreparator;)V

    .line 421
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    const v3, 0x2080001

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setGlobalBackgroundResource(I)V

    .line 423
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$PlaylistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->padding_top:I

    iget-object v4, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$PlaylistViewItemLayoutParams;

    iget v4, v4, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->padding_bottom:I

    invoke-virtual {v2, v5, v3, v5, v4}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setPadding(IIII)V

    .line 424
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/view/SSurfaceView;->addView(Lcom/htc/sunny2/view/SView;)V

    .line 425
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v2, v5}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setVisibility(Z)V

    .line 426
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewScrollListener:Lcom/htc/sunny2/widget/gridview/interfaces/OnScrollListener;

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setOnScrollListener(Lcom/htc/sunny2/widget/gridview/interfaces/OnScrollListener;)V

    .line 427
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewPreparator:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v2, v3}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->updateMusicGridViewUtil(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)V

    .line 428
    return-void
.end method

.method private initGridViewPreparator(Lcom/htc/music/widget/gridview/MusicGridViewPreparator;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V
    .locals 2
    .parameter "preparator"
    .parameter "folderParam"

    .prologue
    .line 586
    new-instance v0, Lcom/htc/music/widget/gridview/MusicGridViewParamsPreparator;

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->getWidth(I)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewParamsPreparator;-><init>(I)V

    .line 587
    .local v0, paramsPreparator:Lcom/htc/music/widget/gridview/MusicGridViewParamsPreparator;
    invoke-virtual {p1, p0, v0}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->init(Landroid/content/Context;Lcom/htc/sunny2/IParamsPreparator;)V

    .line 588
    new-instance v1, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$7;

    invoke-direct {v1, p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$7;-><init>(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)V

    invoke-virtual {p1, v1}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->setUpdateListener(Lcom/htc/sunny2/Preparator$UpdateListener;)V

    .line 609
    return-void
.end method

.method private initMusicGridViewItem(Lcom/htc/music/widget/gridview/MusicGridViewItem;)V
    .locals 1
    .parameter "gridViewItem"

    .prologue
    .line 504
    new-instance v0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$4;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$4;-><init>(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)V

    invoke-virtual {p1, v0}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->setTextViewBindListener(Lcom/htc/music/widget/gridview/MusicGridViewItem$ITextViewBind;)V

    .line 527
    new-instance v0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$5;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$5;-><init>(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)V

    invoke-virtual {p1, v0}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->setViewItemImageGetter(Lcom/htc/music/widget/gridview/MusicGridViewItem$ViewItemImageGetter;)V

    .line 551
    return-void
.end method

.method private initMusicGridViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V
    .locals 4
    .parameter "folderParam"

    .prologue
    .line 474
    new-instance v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    invoke-direct {v0}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;-><init>()V

    .line 475
    .local v0, backgroundParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    const v3, 0x7f02003d

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->defaultResourceId:I

    .line 476
    iget-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$PlaylistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_width:I

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->width:I

    .line 477
    iget-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$PlaylistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_height:I

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->height:I

    .line 478
    iget-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$PlaylistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_marginLeft:I

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginLeft:I

    .line 479
    iget-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$PlaylistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_marginTop:I

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginTop:I

    .line 480
    const/4 v3, 0x1

    invoke-virtual {p1, v0, v3}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;I)V

    .line 486
    new-instance v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    invoke-direct {v2}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;-><init>()V

    .line 487
    .local v2, thumbnail:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    const v3, 0x7f02003e

    iput v3, v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->defaultResourceId:I

    .line 488
    iget-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$PlaylistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->thumb_marginLeft:I

    iput v3, v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginLeft:I

    .line 489
    iget-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$PlaylistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->thumb_marginTop:I

    iput v3, v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginTop:I

    .line 490
    const/4 v3, 0x3

    invoke-virtual {p1, v2, v3}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;I)V

    .line 491
    new-instance v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    invoke-direct {v1}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;-><init>()V

    .line 492
    .local v1, textLayout:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    iget-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$PlaylistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_height:I

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->height:I

    .line 493
    iget-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$PlaylistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_width:I

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->width:I

    .line 494
    const v3, 0x7f030029

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->defaultResourceId:I

    .line 495
    iget-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$PlaylistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_marginLeft:I

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginLeft:I

    .line 496
    iget-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$PlaylistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_marginTop:I

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginTop:I

    .line 497
    const/4 v3, 0x4

    invoke-virtual {p1, v1, v3}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;I)V

    .line 499
    iget-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$PlaylistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->width:I

    invoke-virtual {p1, v3}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setItemWidth(I)V

    .line 500
    iget-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$PlaylistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->height:I

    invoke-virtual {p1, v3}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setItemHeight(I)V

    .line 501
    return-void
.end method

.method private initMusicGridViewUtil()V
    .locals 4

    .prologue
    .line 554
    new-instance v1, Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    sget-object v2, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->PLAYLIST_TYPE:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, p0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;-><init>(Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    .line 556
    new-instance v0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$6;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$6;-><init>(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)V

    .line 582
    .local v0, musicGridViewItemUpdater:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MusicGridViewItemUpdater;
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v1, v0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->setMusicGridViewItemUpdater(Lcom/htc/music/widget/gridview/MusicGridViewUtil$MusicGridViewItemUpdater;)V

    .line 583
    return-void
.end method

.method private joinFirstTrackAlbumArt(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 14
    .parameter "c"

    .prologue
    .line 767
    if-nez p1, :cond_0

    .line 768
    const/4 v0, 0x0

    .line 812
    :goto_0
    return-object v0

    .line 770
    :cond_0
    instance-of v0, p1, Lcom/htc/music/widget/AlbumArtCursorWrapper;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/htc/music/util/AlbumArtMergeCursor;

    if-eqz v0, :cond_2

    :cond_1
    move-object v0, p1

    .line 771
    goto :goto_0

    .line 774
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 775
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 776
    .local v8, albumArtMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 777
    .local v13, where:Ljava/lang/StringBuilder;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "album_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 778
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "album_art"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "album_key"

    aput-object v1, v2, v0

    .line 782
    .local v2, cols:[Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "album_key"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 784
    .local v10, artCursor:Landroid/database/Cursor;
    if-eqz v10, :cond_3

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 785
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v10}, Lcom/htc/music/util/MusicUtils;->mergeDlAlbumArt(Landroid/content/Context;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v10

    .line 786
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 787
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_4

    .line 788
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 789
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 794
    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 795
    const/4 p1, 0x0

    .line 796
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 799
    :cond_4
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 800
    .local v6, albumArt:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 801
    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_5

    .line 802
    new-instance v12, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 803
    .local v12, row:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const-string v0, "album_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 804
    .local v9, albumIdx:I
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 805
    .local v11, id:I
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 806
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 807
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 808
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2

    .line 811
    .end local v9           #albumIdx:I
    .end local v11           #id:I
    .end local v12           #row:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_5
    new-instance v7, Lcom/htc/music/util/ArrayListCursor;

    invoke-direct {v7, v2, v6}, Lcom/htc/music/util/ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 812
    .local v7, albumArtCrsor:Lcom/htc/music/util/ArrayListCursor;
    new-instance v0, Lcom/htc/music/widget/AlbumArtCursorWrapper;

    invoke-direct {v0, p1, v7, v10}, Lcom/htc/music/widget/AlbumArtCursorWrapper;-><init>(Landroid/database/Cursor;Landroid/database/Cursor;Landroid/database/Cursor;)V

    goto/16 :goto_0
.end method

.method private updateButtonCounter(I)V
    .locals 8
    .parameter "count"

    .prologue
    const/4 v7, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1041
    iget v4, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mPickerMode:I

    if-eq v4, v7, :cond_0

    iget v4, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mPickerMode:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    .line 1050
    :goto_0
    return-void

    .line 1044
    :cond_0
    const v4, 0x7f07005e

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1045
    .local v1, text:Ljava/lang/String;
    iget v4, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mPickerMode:I

    if-ne v4, v7, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f07006a

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1047
    :goto_1
    const v4, 0x7f08001d

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    .line 1048
    .local v0, Save:Lcom/htc/widget/HtcFooterButton;
    if-lez p1, :cond_2

    :goto_2
    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 1049
    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1045
    .end local v0           #Save:Lcom/htc/widget/HtcFooterButton;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x2040214

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .restart local v0       #Save:Lcom/htc/widget/HtcFooterButton;
    :cond_2
    move v2, v3

    .line 1048
    goto :goto_2
.end method


# virtual methods
.method public categoryRightAction()Z
    .locals 2

    .prologue
    .line 990
    new-instance v0, Lcom/htc/music/NpCategory;

    const/16 v1, 0x16

    invoke-direct {v0, v1}, Lcom/htc/music/NpCategory;-><init>(S)V

    .line 991
    .local v0, npc:Lcom/htc/music/NpCategory;
    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/htc/music/util/MusicUtils;->playAllPlaylist(Landroid/content/Context;ZLcom/htc/music/NpCategory;)V

    .line 992
    const/4 v1, 0x1

    return v1
.end method

.method public clickIndexInit(I)V
    .locals 2
    .parameter "globalIndex"

    .prologue
    .line 1069
    iput p1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentClickedIndex:I

    iput p1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    .line 1070
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentMediaDataId(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentPlaylistId:Ljava/lang/String;

    .line 1071
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentPlaylistId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mSelectedId:I

    .line 1072
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentMediaDataName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentPlaylistName:Ljava/lang/String;

    .line 1073
    return-void
.end method

.method protected getParentCursor()Landroid/database/Cursor;
    .locals 2

    .prologue
    .line 997
    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getPlaylistCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected getUnknownCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "where"

    .prologue
    .line 1002
    const/4 v0, 0x0

    return-object v0
.end method

.method initButtonsPanel()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    .line 440
    iget v4, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mPickerMode:I

    if-eq v4, v7, :cond_0

    iget v4, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mPickerMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 441
    :cond_0
    const v4, 0x7f08004d

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    .line 442
    .local v3, savePanelStub:Landroid/view/ViewStub;
    invoke-virtual {v3, v6}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 443
    const v4, 0x7f08004e

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcFooter;

    .line 444
    .local v2, savePanel:Lcom/htc/widget/HtcFooter;
    const v4, 0x7f08001d

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcFooterButton;

    .line 445
    .local v1, Save:Lcom/htc/widget/HtcFooterButton;
    const v4, 0x2040145

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcFooterButton;->setText(Ljava/lang/CharSequence;)V

    .line 446
    iget v4, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mPickerMode:I

    if-ne v4, v7, :cond_2

    .line 447
    const v4, 0x20800a6

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcFooterButton;->setImageResource(I)V

    .line 451
    :goto_0
    new-instance v4, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$2;

    invoke-direct {v4, p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$2;-><init>(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)V

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 457
    const v4, 0x7f08001c

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    .line 458
    .local v0, Cancel:Lcom/htc/widget/HtcFooterButton;
    const v4, 0x2040152

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 459
    const v4, 0x20800a3

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcFooterButton;->setImageResource(I)V

    .line 460
    new-instance v4, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$3;

    invoke-direct {v4, p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$3;-><init>(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)V

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 467
    invoke-virtual {v2, v6}, Lcom/htc/widget/HtcFooter;->setVisibility(I)V

    .line 470
    .end local v0           #Cancel:Lcom/htc/widget/HtcFooterButton;
    .end local v1           #Save:Lcom/htc/widget/HtcFooterButton;
    .end local v2           #savePanel:Lcom/htc/widget/HtcFooter;
    .end local v3           #savePanelStub:Landroid/view/ViewStub;
    :cond_1
    invoke-direct {p0, v6}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->updateButtonCounter(I)V

    .line 471
    return-void

    .line 449
    .restart local v1       #Save:Lcom/htc/widget/HtcFooterButton;
    .restart local v2       #savePanel:Lcom/htc/widget/HtcFooter;
    .restart local v3       #savePanelStub:Landroid/view/ViewStub;
    :cond_2
    const v4, 0x20800a7

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcFooterButton;->setImageResource(I)V

    goto :goto_0
.end method

.method protected mergeExtraCursor(Landroid/database/Cursor;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "c"
    .parameter "cookie"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 649
    if-nez p1, :cond_0

    .line 650
    const/4 p1, 0x0

    .line 695
    .end local p1
    :goto_0
    return-object p1

    .line 652
    .restart local p1
    :cond_0
    instance-of v5, p1, Landroid/database/MergeCursor;

    if-eqz v5, :cond_1

    .line 654
    const-string v5, "[PlaylistBrowserActivityGrid]"

    const-string v6, "Already wrapped"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 657
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 658
    .local v2, extraPlaylists:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    iget-boolean v5, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mCreateShortcut:Z

    if-eqz v5, :cond_2

    .line 659
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 660
    .local v0, all:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v5, -0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 661
    const v5, 0x7f07000a

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 662
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 682
    .end local v0           #all:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_2
    iget v5, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mPickerMode:I

    if-nez v5, :cond_3

    iget-boolean v5, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mCreateShortcut:Z

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mAddToPlaylistData:[I

    if-nez v5, :cond_3

    .line 683
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 684
    .local v4, recent:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const-string v5, "-5"

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 685
    const v5, 0x7f070118

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 686
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 687
    iput v7, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mRecentPlayedPos:I

    .line 690
    .end local v4           #recent:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_3
    new-instance v3, Lcom/htc/music/util/ArrayListCursor;

    iget-object v5, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mCols:[Ljava/lang/String;

    invoke-direct {v3, v5, v2}, Lcom/htc/music/util/ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 692
    .local v3, extraPlaylistsCursor:Lcom/htc/music/util/ArrayListCursor;
    new-instance v1, Landroid/database/MergeCursor;

    new-array v5, v6, [Landroid/database/Cursor;

    aput-object v3, v5, v7

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-direct {v1, v5}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .local v1, cc:Landroid/database/Cursor;
    move-object p1, v1

    .line 695
    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    const/4 v3, -0x1

    .line 936
    sparse-switch p1, :sswitch_data_0

    .line 985
    :cond_0
    :goto_0
    return-void

    .line 938
    :sswitch_0
    if-nez p2, :cond_1

    .line 939
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->finish()V

    goto :goto_0

    .line 941
    :cond_1
    iget-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    if-eqz v3, :cond_0

    .line 942
    iget-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getPlaylistCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_0

    .line 947
    :sswitch_1
    if-ne p2, v3, :cond_2

    .line 948
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->setTitle()V

    .line 949
    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v3}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentMediaList()Lcom/htc/sunny2/IMediaList;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 950
    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    if-eqz v3, :cond_2

    .line 951
    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->requery()Z

    .line 952
    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    invoke-virtual {v3, v4}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->updateParentMediaList(Landroid/database/Cursor;)V

    .line 953
    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->notifyMediaDataChange()V

    .line 957
    :cond_2
    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getPickerMode()I

    move-result v4

    if-ne v3, v4, :cond_0

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getParent()Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_0

    .line 958
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->finish()V

    goto :goto_0

    .line 963
    :sswitch_2
    if-ne p2, v3, :cond_0

    .line 964
    const-string v3, "playlist"

    const/4 v4, 0x0

    invoke-virtual {p3, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 965
    .local v1, playlist:I
    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    invoke-virtual {v3, v4}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentMediaDataId(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {p0, v3, v4}, Lcom/htc/music/util/MusicUtils;->getSongListForPlaylist(Landroid/content/Context;J)[I

    move-result-object v0

    .line 966
    .local v0, list:[I
    int-to-long v3, v1

    invoke-static {p0, v0, v3, v4}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    goto :goto_0

    .line 970
    .end local v0           #list:[I
    .end local v1           #playlist:I
    :sswitch_3
    if-ne p2, v3, :cond_0

    .line 971
    const-string v3, "selectedlist"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 972
    .local v2, selectedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {v2}, Lcom/htc/music/util/MusicUtils;->toIntList(Ljava/util/ArrayList;)[I

    move-result-object v0

    .line 973
    .restart local v0       #list:[I
    invoke-static {p0, v0}, Lcom/htc/music/util/MusicUtils;->deletePlaylists(Landroid/content/Context;[I)V

    .line 974
    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v3}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentItemSelectedList()Ljava/util/ArrayList;

    move-result-object v2

    .line 975
    invoke-static {v2}, Lcom/htc/music/util/MusicUtils;->toIntList(Ljava/util/ArrayList;)[I

    move-result-object v0

    .line 976
    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v3, v0, v4}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->deleteParentItems([ILcom/htc/sunny2/widget/gridview/ExpandableGridView;)V

    .line 982
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->setTitle()V

    goto/16 :goto_0

    .line 936
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0xb -> :sswitch_0
        0x21 -> :sswitch_1
        0x22 -> :sswitch_3
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 183
    const-string v0, "[PlaylistBrowserActivityGrid]"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    .line 185
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 197
    :goto_0
    return-void

    .line 189
    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mOrientation:I

    .line 190
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 192
    iget v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 193
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v1, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$PlaylistViewItemLayoutParams;

    iget v1, v1, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->verticalSpacing_landscape:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setVerticalSpacing(I)V

    goto :goto_0

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v1, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$PlaylistViewItemLayoutParams;

    iget v1, v1, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->verticalSpacing:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setVerticalSpacing(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x3

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 256
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->onCreate(Landroid/os/Bundle;)V

    .line 258
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getIntent()Landroid/content/Intent;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mBeginIntent:Landroid/content/Intent;

    .line 259
    iget-object v9, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mBeginIntent:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 260
    .local v0, action:Ljava/lang/String;
    const-string v9, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 261
    iput-boolean v7, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mCreateShortcut:Z

    .line 263
    :cond_0
    if-eqz p1, :cond_5

    .line 264
    const-string v9, "pickermode"

    invoke-virtual {p1, v9, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mPickerMode:I

    .line 265
    const-string v9, "AddToPlaylistData"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v9

    iput-object v9, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mAddToPlaylistData:[I

    .line 271
    :goto_0
    invoke-virtual {p0, v11}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->setVolumeControlStream(I)V

    .line 273
    iput-boolean v8, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mExitByErrorIntent:Z

    .line 275
    const-string v9, "android.intent.action.VIEW"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 277
    const/4 v5, -0x1

    .line 279
    .local v5, id:I
    :try_start_0
    iget-object v9, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mBeginIntent:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "playlist"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    .line 349
    .end local v5           #id:I
    :cond_1
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 350
    .local v3, f:Landroid/content/IntentFilter;
    const-string v9, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 351
    const-string v9, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 352
    const-string v9, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 353
    const-string v9, "file"

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 354
    iget-object v9, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v9, v3}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 357
    iput-object p0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mContext:Landroid/content/Context;

    .line 358
    iget-object v9, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    if-nez v9, :cond_2

    new-instance v9, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$QueryHandler;

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-direct {v9, p0, v10}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$QueryHandler;-><init>(Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;Landroid/content/ContentResolver;)V

    iput-object v9, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    .line 359
    :cond_2
    iget-object v9, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    invoke-direct {p0, v9, v12}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getPlaylistCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    .line 360
    invoke-virtual {p0, v7}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->setCategoryProgressVisible(Z)V

    .line 368
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getParent()Landroid/app/Activity;

    move-result-object v9

    if-eqz v9, :cond_6

    move v6, v7

    .line 370
    .local v6, requestOverlay:Z
    :goto_1
    invoke-direct {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getPickerMode()I

    move-result v9

    if-nez v9, :cond_7

    iget-boolean v9, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mCreateShortcut:Z

    if-nez v9, :cond_7

    .line 371
    const v9, 0x7f03002a

    invoke-virtual {p0, v9, v6}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->setContentView(IZ)V

    .line 372
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 373
    .local v4, filter:Landroid/content/IntentFilter;
    const-string v9, "com.htc.music.recentplayedchanged"

    invoke-virtual {v4, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 374
    iget-object v9, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mPlaybackStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v9, v4}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 375
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->enableSearch()V

    .line 390
    .end local v4           #filter:Landroid/content/IntentFilter;
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->initButtonsPanel()V

    .line 391
    invoke-direct {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->initGridView()V

    .line 392
    iget v9, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mPickerMode:I

    if-ne v9, v7, :cond_4

    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->checkPlaylistCount(Landroid/content/Context;)I

    move-result v7

    if-gtz v7, :cond_4

    .line 393
    invoke-direct {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->createNewPlaylist()V

    .line 394
    invoke-virtual {p0, v8, v12}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->setResult(ILandroid/content/Intent;)V

    .line 395
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->finish()V

    .line 401
    .end local v3           #f:Landroid/content/IntentFilter;
    .end local v6           #requestOverlay:Z
    :cond_4
    :goto_3
    return-void

    .line 267
    :cond_5
    iget-object v9, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mBeginIntent:Landroid/content/Intent;

    const-string v10, "pickermode"

    invoke-virtual {v9, v10, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mPickerMode:I

    .line 268
    iget-object v9, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mBeginIntent:Landroid/content/Intent;

    const-string v10, "AddToPlaylistData"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v9

    iput-object v9, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mAddToPlaylistData:[I

    goto/16 :goto_0

    .line 280
    .restart local v5       #id:I
    :catch_0
    move-exception v1

    .line 281
    .local v1, e:Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 282
    iput-boolean v7, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mExitByErrorIntent:Z

    .line 283
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->finish()V

    goto :goto_3

    .line 285
    .end local v1           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 286
    .local v1, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 287
    iput-boolean v7, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mExitByErrorIntent:Z

    .line 288
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->finish()V

    goto :goto_3

    .end local v1           #e:Ljava/lang/NumberFormatException;
    .end local v5           #id:I
    .restart local v3       #f:Landroid/content/IntentFilter;
    :cond_6
    move v6, v8

    .line 368
    goto :goto_1

    .line 377
    .restart local v6       #requestOverlay:Z
    :cond_7
    const v9, 0x7f03002b

    invoke-virtual {p0, v9, v7}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->setContentView(IZ)V

    .line 378
    iget-object v9, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHeaderText:Lcom/htc/widget/ActionBarText;

    if-nez v9, :cond_8

    .line 379
    new-instance v9, Lcom/htc/widget/ActionBarText;

    invoke-direct {v9, p0}, Lcom/htc/widget/ActionBarText;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHeaderText:Lcom/htc/widget/ActionBarText;

    .line 380
    iget-object v9, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    iget-object v10, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHeaderText:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v9, v10}, Lcom/htc/widget/ActionBarContainer;->addCenterView(Landroid/view/View;)V

    .line 383
    :cond_8
    iget-object v9, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mActionBar:Lcom/htc/widget/ActionBarExt;

    if-eqz v9, :cond_3

    .line 384
    iget v9, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mPickerMode:I

    if-eq v9, v11, :cond_9

    iget v9, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mPickerMode:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_a

    :cond_9
    move v2, v7

    .line 385
    .local v2, enable:Z
    :goto_4
    iget-object v9, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mActionBar:Lcom/htc/widget/ActionBarExt;

    invoke-virtual {v9, v2}, Lcom/htc/widget/ActionBarExt;->enableHTCLandscape(Z)V

    goto :goto_2

    .end local v2           #enable:Z
    :cond_a
    move v2, v8

    .line 384
    goto :goto_4
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter "menu"

    .prologue
    const/16 v5, 0x21

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 1331
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 1332
    invoke-direct {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getPickerMode()I

    move-result v0

    if-eq v0, v2, :cond_0

    invoke-direct {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getPickerMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 1333
    :cond_0
    const/16 v0, 0x1f

    const v1, 0x204014f

    invoke-interface {p1, v2, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1334
    const/16 v0, 0x20

    const v1, 0x2040150

    invoke-interface {p1, v2, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1355
    :cond_1
    :goto_0
    return v4

    .line 1335
    :cond_2
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mCreateShortcut:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mPickerMode:I

    if-nez v0, :cond_3

    .line 1336
    const/16 v0, 0x9

    const v1, 0x7f070009

    invoke-interface {p1, v2, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1337
    const/16 v0, 0xc

    const v1, 0x7f07000a

    invoke-interface {p1, v2, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1339
    const v0, 0x7f070098

    invoke-interface {p1, v2, v5, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1343
    const/16 v0, 0x22

    const v1, 0x7f070099

    invoke-interface {p1, v2, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1346
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isSupportListenStore()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1348
    const/16 v0, 0x16

    const v1, 0x2040218

    invoke-interface {p1, v2, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0

    .line 1350
    :cond_3
    invoke-direct {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getPickerMode()I

    move-result v0

    if-ne v4, v0, :cond_1

    .line 1351
    const v0, 0x204025c

    invoke-interface {p1, v2, v5, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/high16 v1, 0x208

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mReScanHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 168
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mExitByErrorIntent:Z

    if-eqz v0, :cond_0

    .line 169
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->onDestroy()V

    .line 178
    :goto_0
    return-void

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 174
    invoke-direct {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getPickerMode()I

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mCreateShortcut:Z

    if-nez v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mPlaybackStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 177
    :cond_1
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->onDestroy()V

    goto :goto_0
.end method

.method protected onGridViewChildItemPrepare(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 1307
    return-void
.end method

.method protected onGridViewItemClick(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v8, -0x1

    .line 1077
    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->clickIndexInit(I)V

    .line 1078
    invoke-direct {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getPickerMode()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_0

    invoke-direct {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getPickerMode()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    .line 1079
    :cond_0
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v5, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    invoke-virtual {v4, v5}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->switchParentItemSelectedStatus(I)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->updateButtonCounter(I)V

    .line 1080
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget v5, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    invoke-virtual {v4, v5}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->notifyMediaDataChange(I)V

    .line 1144
    :goto_0
    return-void

    .line 1088
    :cond_1
    invoke-direct {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getPickerMode()I

    move-result v6

    if-ne v6, v4, :cond_2

    .line 1089
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1091
    .local v0, intent:Landroid/content/Intent;
    const-string v4, "playlist"

    iget v5, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mSelectedId:I

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1092
    invoke-virtual {p0, v8, v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->setResult(ILandroid/content/Intent;)V

    .line 1100
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->finish()V

    goto :goto_0

    .line 1104
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    iget-boolean v6, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mCreateShortcut:Z

    if-eqz v6, :cond_3

    .line 1105
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1106
    .local v3, shortcut:Landroid/content/Intent;
    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1107
    sget-object v4, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v6, "com.htc.media/playlist"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1108
    const-string v4, "playlist"

    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentPlaylistId:Ljava/lang/String;

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1109
    const/high16 v4, 0x1400

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1111
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1112
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v4, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1113
    const-string v4, "android.intent.extra.shortcut.NAME"

    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentPlaylistName:Ljava/lang/String;

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1114
    const-string v4, "android.intent.extra.shortcut.ICON_RESOURCE"

    const v6, 0x7f02003a

    invoke-static {p0, v6}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1117
    invoke-virtual {p0, v8, v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->setResult(ILandroid/content/Intent;)V

    .line 1120
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.htc.launcher.ThemeChooser.action.silder_change"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1121
    .local v1, intent2:Landroid/content/Intent;
    const-string v4, "silder_state"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1122
    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->sendBroadcast(Landroid/content/Intent;)V

    .line 1123
    invoke-direct {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->finishactivity()V

    goto :goto_0

    .line 1129
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #intent2:Landroid/content/Intent;
    .end local v3           #shortcut:Landroid/content/Intent;
    :cond_3
    iget v6, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mPickerMode:I

    if-ne v6, v4, :cond_4

    .line 1130
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1131
    .restart local v0       #intent:Landroid/content/Intent;
    iget v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    .line 1132
    .local v2, playlistId:I
    const-string v4, "playlist_id"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1133
    invoke-virtual {p0, v8, v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->setResult(ILandroid/content/Intent;)V

    .line 1134
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->finish()V

    goto/16 :goto_0

    .line 1136
    .end local v0           #intent:Landroid/content/Intent;
    .end local v2           #playlistId:I
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.intent.action.PICK"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1137
    .restart local v0       #intent:Landroid/content/Intent;
    sget-object v6, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v7, "com.htc.media/track"

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1139
    const-string v6, "playlist"

    iget-object v7, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentPlaylistId:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1140
    const-string v6, "isrecentplayedplaylist"

    iget v7, p1, Landroid/os/Message;->arg1:I

    iget v8, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mRecentPlayedPos:I

    if-ne v7, v8, :cond_5

    :goto_1
    invoke-virtual {v0, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1141
    const-string v4, "InnerActivityType"

    const/4 v5, 0x7

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1142
    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_5
    move v4, v5

    .line 1140
    goto :goto_1
.end method

.method protected onGridViewItemDelete(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 1321
    return-void
.end method

.method protected onGridViewItemDeleteComplete()V
    .locals 0

    .prologue
    .line 1327
    return-void
.end method

.method protected onGridViewItemLongClick(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    const/4 v11, 0x2

    const v10, 0x7f070058

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1151
    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->clickIndexInit(I)V

    .line 1152
    iget-boolean v5, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mCreateShortcut:Z

    if-nez v5, :cond_1

    invoke-direct {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getPickerMode()I

    move-result v5

    if-nez v5, :cond_1

    .line 1155
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 1156
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_0

    move-object v0, p0

    .line 1158
    :cond_0
    iget-object v5, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    invoke-virtual {v5, v6}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentMediaDataName(I)Ljava/lang/String;

    move-result-object v2

    .line 1159
    .local v2, headerTitle:Ljava/lang/String;
    const/4 v4, 0x0

    .line 1160
    .local v4, items:[Ljava/lang/CharSequence;
    const/4 v3, 0x0

    .line 1162
    .local v3, ids:[I
    iget v5, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mSelectedId:I

    if-gez v5, :cond_2

    .line 1163
    new-array v4, v8, [Ljava/lang/CharSequence;

    .end local v4           #items:[Ljava/lang/CharSequence;
    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    .line 1166
    .restart local v4       #items:[Ljava/lang/CharSequence;
    new-array v3, v8, [I

    .end local v3           #ids:[I
    const/4 v5, 0x5

    aput v5, v3, v7

    .line 1204
    .restart local v3       #ids:[I
    :goto_0
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->hideHtcContextMenu()V

    .line 1205
    invoke-virtual {p0, v2, v4, v3}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->showHtcContextMenu(Ljava/lang/String;[Ljava/lang/CharSequence;[I)V

    .line 1215
    .end local v0           #context:Landroid/content/Context;
    .end local v2           #headerTitle:Ljava/lang/String;
    .end local v3           #ids:[I
    .end local v4           #items:[Ljava/lang/CharSequence;
    :cond_1
    return-void

    .line 1168
    .restart local v0       #context:Landroid/content/Context;
    .restart local v2       #headerTitle:Ljava/lang/String;
    .restart local v3       #ids:[I
    .restart local v4       #items:[Ljava/lang/CharSequence;
    :cond_2
    invoke-static {v0}, Lcom/htc/music/util/MusicUtils;->CheckDLNAStatus(Landroid/content/Context;)I

    move-result v1

    .line 1169
    .local v1, dlnaMode:I
    if-nez v1, :cond_3

    .line 1171
    const/4 v5, 0x4

    new-array v4, v5, [Ljava/lang/CharSequence;

    .end local v4           #items:[Ljava/lang/CharSequence;
    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const v5, 0x7f070059

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const v5, 0x7f07005a

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v11

    const v5, 0x7f07009a

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    .line 1179
    .restart local v4       #items:[Ljava/lang/CharSequence;
    const/4 v5, 0x4

    new-array v3, v5, [I

    .end local v3           #ids:[I
    fill-array-data v3, :array_0

    .restart local v3       #ids:[I
    goto :goto_0

    .line 1188
    :cond_3
    new-array v4, v9, [Ljava/lang/CharSequence;

    .end local v4           #items:[Ljava/lang/CharSequence;
    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const v5, 0x7f070059

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const v5, 0x7f07009a

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v11

    .line 1195
    .restart local v4       #items:[Ljava/lang/CharSequence;
    new-array v3, v9, [I

    .end local v3           #ids:[I
    fill-array-data v3, :array_1

    .restart local v3       #ids:[I
    goto :goto_0

    .line 1179
    :array_0
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
    .end array-data

    .line 1195
    :array_1
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method protected onGridViewPrepareUpdateListReady(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 1301
    return-void
.end method

.method public onHtcContextItemSelected(I)Z
    .locals 12
    .parameter "id"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v11, 0x0

    .line 1219
    sparse-switch p1, :sswitch_data_0

    .line 1294
    :cond_0
    :goto_0
    return v11

    .line 1221
    :sswitch_0
    iget v7, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mSelectedId:I

    int-to-long v7, v7

    const-wide/16 v9, -0x4

    cmp-long v7, v7, v9

    if-eqz v7, :cond_0

    .line 1223
    iget v7, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mSelectedId:I

    const/4 v8, -0x5

    if-ne v7, v8, :cond_1

    .line 1225
    :try_start_0
    sget-object v7, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v7, :cond_0

    .line 1227
    sget-object v7, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v7}, Lcom/htc/music/IMediaPlaybackService;->getRecentPlayedPlaylist()[I

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {p0, v7, v8, v9}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;[IILcom/htc/music/NpCategory;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1229
    :catch_0
    move-exception v1

    .line 1230
    .local v1, e:Landroid/os/RemoteException;
    const-string v7, "[PlaylistBrowserActivityGrid]"

    const-string v8, "Exception when playing recent played list."

    invoke-static {v7, v8, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1233
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_1
    new-instance v7, Lcom/htc/music/NpCategory;

    const/16 v8, 0x14

    invoke-direct {v7, v8}, Lcom/htc/music/NpCategory;-><init>(S)V

    iget v8, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mSelectedId:I

    invoke-virtual {v7, v8}, Lcom/htc/music/NpCategory;->setPlaylistId(I)Lcom/htc/music/NpCategory;

    move-result-object v5

    .line 1235
    .local v5, npc:Lcom/htc/music/NpCategory;
    iget v7, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mSelectedId:I

    int-to-long v7, v7

    invoke-static {p0, v7, v8, v5}, Lcom/htc/music/util/MusicUtils;->playPlaylist(Landroid/content/Context;JLcom/htc/music/NpCategory;)Z

    goto :goto_0

    .line 1240
    .end local v5           #npc:Lcom/htc/music/NpCategory;
    :sswitch_1
    iget v7, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mSelectedId:I

    int-to-long v7, v7

    invoke-static {p0, v7, v8}, Lcom/htc/music/util/MusicUtils;->getSongListForPlaylist(Landroid/content/Context;J)[I

    move-result-object v0

    .line 1241
    .local v0, addToPlaylistData:[I
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1242
    .local v3, intent:Landroid/content/Intent;
    const-class v7, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;

    invoke-virtual {v3, p0, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1243
    const-string v7, "pickermode"

    invoke-virtual {v3, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1244
    const-string v7, "AddToPlaylistData"

    invoke-virtual {v3, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 1245
    invoke-virtual {p0, v3, v9}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1249
    .end local v0           #addToPlaylistData:[I
    .end local v3           #intent:Landroid/content/Intent;
    :sswitch_2
    :try_start_1
    sget-object v7, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v7, :cond_0

    .line 1250
    sget-object v7, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v8, 0x3

    iget v9, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mSelectedId:I

    invoke-interface {v7, v8, v9}, Lcom/htc/music/IMediaPlaybackService;->addToQueue(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1252
    :catch_1
    move-exception v1

    .line 1253
    .restart local v1       #e:Landroid/os/RemoteException;
    const-string v7, "[PlaylistBrowserActivityGrid]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ADD_TO_QUEUE, long click playlist item, RemoteException e: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1257
    .end local v1           #e:Landroid/os/RemoteException;
    :sswitch_3
    iput-boolean v9, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewRefreshDisable:Z

    .line 1258
    sget-object v7, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v8, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v9, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    invoke-virtual {v8, v9}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentMediaDataId(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 1261
    .local v6, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v7, v6, v10, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1262
    const v7, 0x7f070041

    invoke-static {p0, v7, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 1266
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 1267
    .local v2, handler:Landroid/os/Handler;
    new-instance v7, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$12;

    invoke-direct {v7, p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$12;-><init>(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)V

    const-wide/16 v8, 0x1f4

    invoke-virtual {v2, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 1287
    .end local v2           #handler:Landroid/os/Handler;
    .end local v6           #uri:Landroid/net/Uri;
    :sswitch_4
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 1288
    .local v4, intent2:Landroid/content/Intent;
    const-class v7, Lcom/htc/music/browserlayer/EditPlaylistActivity;

    invoke-virtual {v4, p0, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1290
    const-string v7, "playlist"

    iget-object v8, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentPlaylistId:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1291
    const/16 v7, 0x1c

    invoke-virtual {p0, v4, v7}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1219
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5 -> :sswitch_0
        0xd -> :sswitch_2
        0x1c -> :sswitch_4
        0x22 -> :sswitch_3
    .end sparse-switch
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1
    .parameter "featureId"
    .parameter "menu"

    .prologue
    .line 841
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->menuOpened:Z

    .line 844
    invoke-direct {p0, p2}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->applyMenuStatus(Landroid/view/Menu;)V

    .line 846
    invoke-super {p0, p1, p2}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 1405
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 1462
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 1421
    :sswitch_0
    invoke-direct {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->createNewPlaylist()V

    goto :goto_0

    .line 1424
    :sswitch_1
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->SetDLNASuffleMode(Landroid/content/Context;)V

    .line 1425
    new-instance v2, Lcom/htc/music/NpCategory;

    const/16 v3, 0x16

    invoke-direct {v2, v3}, Lcom/htc/music/NpCategory;-><init>(S)V

    invoke-static {p0, v1, v2}, Lcom/htc/music/util/MusicUtils;->playAllPlaylist(Landroid/content/Context;ZLcom/htc/music/NpCategory;)V

    goto :goto_0

    .line 1429
    :sswitch_2
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->categoryRightAction()Z

    goto :goto_0

    .line 1434
    :sswitch_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1435
    .local v0, intent:Landroid/content/Intent;
    const-class v2, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1436
    const-string v2, "pickermode"

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1437
    const/16 v2, 0x22

    invoke-virtual {p0, v0, v2}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1442
    .end local v0           #intent:Landroid/content/Intent;
    :sswitch_4
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v2}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->setAllParentItemSelected()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->updateButtonCounter(I)V

    .line 1443
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->notifyMediaDataChange()V

    goto :goto_0

    .line 1447
    :sswitch_5
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v2}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->setAllParentItemDeselected()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->updateButtonCounter(I)V

    .line 1448
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v2}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->notifyMediaDataChange()V

    goto :goto_0

    .line 1457
    :sswitch_6
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.htc.music.settings.Listen_Online_Setting"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1458
    .restart local v0       #intent:Landroid/content/Intent;
    const/4 v2, -0x2

    invoke-virtual {p0, v0, v2}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1405
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0xc -> :sswitch_2
        0x16 -> :sswitch_6
        0x1f -> :sswitch_4
        0x20 -> :sswitch_5
        0x21 -> :sswitch_0
        0x22 -> :sswitch_3
    .end sparse-switch
.end method

.method protected onPlaybackServiceConnection()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 215
    iget-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mBeginIntent:Landroid/content/Intent;

    if-nez v3, :cond_1

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    iget-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mBeginIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 219
    const/4 v2, 0x1

    .line 220
    .local v2, isPlaylistNotEmpty:Z
    iget-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mBeginIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "playlist"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 221
    .local v1, id:I
    const/4 v3, -0x2

    if-ne v1, v3, :cond_3

    .line 226
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->getAllSongsAndPrepare(Landroid/content/Context;)[I

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->list:[I

    .line 227
    iget-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->list:[I

    if-eqz v3, :cond_2

    .line 228
    iget-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->list:[I

    new-instance v4, Lcom/htc/music/NpCategory;

    invoke-direct {v4, v6}, Lcom/htc/music/NpCategory;-><init>(S)V

    invoke-static {p0, v3, v6, v4}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;[IILcom/htc/music/NpCategory;)V

    .line 236
    :goto_1
    if-nez v2, :cond_4

    .line 238
    const-string v3, "[PlaylistBrowserActivityGrid]"

    const-string v4, "Send delay finish message"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mDelayFinishHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 230
    :cond_2
    const v3, 0x7f07005f

    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 234
    :cond_3
    int-to-long v3, v1

    const/4 v5, 0x0

    invoke-static {p0, v3, v4, v5}, Lcom/htc/music/util/MusicUtils;->playPlaylist(Landroid/content/Context;JLcom/htc/music/NpCategory;)Z

    move-result v2

    goto :goto_1

    .line 245
    :cond_4
    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->setVisible(Z)V

    .line 246
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->finish()V

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter "menu"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1360
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 1361
    const/4 v0, 0x0

    .line 1362
    .local v0, enabled:Z
    iget-object v5, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    if-eqz v5, :cond_1

    .line 1363
    iget-object v5, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 1364
    .local v2, playlistCount:I
    iget v5, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mRecentPlayedPos:I

    if-ltz v5, :cond_0

    .line 1365
    add-int/lit8 v2, v2, -0x1

    .line 1367
    :cond_0
    if-lez v2, :cond_a

    move v0, v3

    .line 1372
    .end local v2           #playlistCount:I
    :cond_1
    :goto_0
    const/16 v5, 0x1f

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1373
    .local v1, item:Landroid/view/MenuItem;
    if-eqz v1, :cond_2

    .line 1374
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1375
    :cond_2
    const/16 v5, 0x20

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1376
    if-eqz v1, :cond_3

    .line 1377
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1378
    :cond_3
    const/16 v5, 0x21

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1379
    if-eqz v1, :cond_5

    .line 1380
    iget-object v5, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    if-eqz v5, :cond_4

    move v4, v3

    :cond_4
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1381
    :cond_5
    const/16 v4, 0x22

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1382
    if-eqz v1, :cond_6

    .line 1383
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1387
    :cond_6
    const/16 v4, 0x9

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1388
    if-eqz v1, :cond_7

    .line 1389
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1390
    :cond_7
    const/16 v4, 0xc

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1391
    if-eqz v1, :cond_8

    .line 1392
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1393
    :cond_8
    const/16 v4, 0x16

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1394
    if-eqz v1, :cond_9

    .line 1395
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1397
    :cond_9
    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->applyMenuStatus(Landroid/view/Menu;)V

    .line 1399
    return v3

    .end local v1           #item:Landroid/view/MenuItem;
    .restart local v2       #playlistCount:I
    :cond_a
    move v0, v4

    .line 1367
    goto :goto_0
.end method

.method public onSaveClick()V
    .locals 3

    .prologue
    .line 431
    invoke-direct {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getPickerMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    invoke-direct {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getPickerMode()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 432
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 433
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "selectedlist"

    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v2}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentItemIdFieldSelectedList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 434
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->setResult(ILandroid/content/Intent;)V

    .line 436
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->finish()V

    .line 437
    return-void
.end method

.method protected playAllAction(Z)Z
    .locals 3
    .parameter "forceShuffle"

    .prologue
    const/4 v2, 0x1

    .line 1031
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->SetDLNASuffleMode(Landroid/content/Context;)V

    .line 1032
    new-instance v0, Lcom/htc/music/NpCategory;

    const/16 v1, 0x16

    invoke-direct {v0, v1}, Lcom/htc/music/NpCategory;-><init>(S)V

    invoke-static {p0, v2, v0}, Lcom/htc/music/util/MusicUtils;->playAllPlaylist(Landroid/content/Context;ZLcom/htc/music/NpCategory;)V

    .line 1033
    return v2
.end method

.method protected setCategoryRightBtn(Z)V
    .locals 10
    .parameter "setEnable"

    .prologue
    const v9, 0x7f07006a

    const/high16 v8, 0x208

    const/4 v7, 0x1

    .line 896
    const/4 v5, 0x0

    .line 897
    .local v5, setEnableInt:I
    if-eqz p1, :cond_0

    const/4 v5, 0x1

    .line 899
    :cond_0
    iput v5, p0, Lcom/htc/music/widget/MusicMaActivity;->mEnableRightBtn:I

    .line 901
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->isActivityResumed()Z

    move-result v6

    if-nez v6, :cond_2

    .line 902
    const-string v6, "[PlaylistBrowserActivityGrid]"

    const-string v7, "activity is paused, do not set category right button status"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    :cond_1
    :goto_0
    return-void

    .line 906
    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->findRootParent()Landroid/app/Activity;

    move-result-object v4

    .line 907
    .local v4, parent:Landroid/app/Activity;
    instance-of v6, v4, Lcom/htc/music/widget/IMusicTabActivityInterface;

    if-eqz v6, :cond_1

    move-object v3, v4

    .line 908
    check-cast v3, Lcom/htc/music/widget/IMusicTabActivityInterface;

    .line 911
    .local v3, multiParent:Lcom/htc/music/widget/IMusicTabActivityInterface;
    if-eqz p1, :cond_3

    .line 912
    invoke-interface {v3, v7}, Lcom/htc/music/widget/IMusicTabActivityInterface;->setCategoryRightBtnEnable(Z)V

    .line 914
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 915
    .local v1, enableAddIcon:Landroid/graphics/drawable/Drawable;
    const/16 v6, 0xff

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 916
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 917
    .local v2, label:Ljava/lang/String;
    invoke-interface {v3, v1, v2}, Lcom/htc/music/widget/IMusicTabActivityInterface;->setCategoryRightBtnImage(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 918
    new-instance v6, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$10;

    invoke-direct {v6, p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$10;-><init>(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)V

    invoke-interface {v3, v6}, Lcom/htc/music/widget/IMusicTabActivityInterface;->setCategoryRightBtnOnClick(Landroid/view/View$OnClickListener;)V

    .line 930
    .end local v1           #enableAddIcon:Landroid/graphics/drawable/Drawable;
    :goto_1
    invoke-interface {v3, v7}, Lcom/htc/music/widget/IMusicTabActivityInterface;->setCategoryRightBtnVisible(Z)V

    goto :goto_0

    .line 924
    .end local v2           #label:Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 925
    .local v0, disableAddIcon:Landroid/graphics/drawable/Drawable;
    const/16 v6, 0x6e

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 926
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 927
    .restart local v2       #label:Ljava/lang/String;
    const/4 v6, 0x0

    invoke-interface {v3, v6}, Lcom/htc/music/widget/IMusicTabActivityInterface;->setCategoryRightBtnEnable(Z)V

    .line 928
    invoke-interface {v3, v0, v2}, Lcom/htc/music/widget/IMusicTabActivityInterface;->setCategoryRightBtnImage(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected setEmptyView()V
    .locals 1

    .prologue
    .line 1007
    const v0, 0x7f07003a

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->showEmptyView(I)V

    .line 1008
    return-void
.end method

.method protected setTitle()V
    .locals 2

    .prologue
    .line 1013
    invoke-direct {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getPickerMode()I

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mCreateShortcut:Z

    if-nez v1, :cond_0

    .line 1014
    const v1, 0x7f07002b

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->setCatgoryMainTitle(Ljava/lang/String;)V

    .line 1015
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->setCategorySecondaryTitleVisible(Z)V

    .line 1027
    :goto_0
    return-void

    .line 1023
    :cond_0
    const v1, 0x7f070074

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1024
    .local v0, fancyName:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->setTitle(Ljava/lang/String;)V

    goto :goto_0
.end method
