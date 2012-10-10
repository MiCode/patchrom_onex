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

.field private static final DELETE_ALL_PLAYLISTS:I = 0x23

.field private static final DELETE_ALL_PLAYLISTS_MESSAGE:I = 0x0

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

.field mUiHandler:Landroid/os/Handler;

.field private mUnlockReceiver:Landroid/content/BroadcastReceiver;

.field menuOpened:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 109
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

    .line 75
    invoke-direct {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;-><init>()V

    .line 113
    iput-object v5, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mAddToPlaylistData:[I

    .line 114
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mCreateShortcut:Z

    .line 115
    iput v2, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mPickerMode:I

    .line 116
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mRecentPlayedPos:I

    .line 117
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mExitByErrorIntent:Z

    .line 121
    iput-object v5, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mUnlockReceiver:Landroid/content/BroadcastReceiver;

    .line 164
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "name"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mCols:[Ljava/lang/String;

    .line 213
    new-instance v0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$1;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$1;-><init>(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mPlaybackStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 266
    iput-object v5, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mBeginIntent:Landroid/content/Intent;

    .line 843
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "album_id"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mPlaylistMemberCols:[Ljava/lang/String;

    .line 847
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "album_id"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mCursorCols:[Ljava/lang/String;

    .line 852
    iput-boolean v2, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->menuOpened:Z

    .line 853
    new-instance v0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$9;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$9;-><init>(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mDelayFinishHandler:Landroid/os/Handler;

    .line 917
    new-instance v0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$10;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$10;-><init>(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mAddPlaylistBtnListener:Landroid/view/View$OnClickListener;

    .line 1518
    new-instance v0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$14;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$14;-><init>(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mUiHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/sunny2/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/sunny2/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/sunny2/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getPlaylistFirstTrackCursor(Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/sunny2/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/sunny2/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->createNewPlaylist()V

    return-void
.end method

.method static synthetic access$1700(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    return v0
.end method

.method static synthetic access$1800(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/sunny2/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    return-object v0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 75
    sget v0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->RECENT_PLAYLIST_POSITION:I

    return v0
.end method

.method static synthetic access$2000(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    return v0
.end method

.method static synthetic access$2100(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/sunny2/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewRefreshDisable:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/sunny2/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/sunny2/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mDeleteAnimationListener:Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/sunny2/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/music/widget/gridview/MusicGridViewPreparator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewPreparator:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewInitFinish:Z

    return v0
.end method

.method static synthetic access$800(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/sunny2/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/sunny2/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method private applyMenuStatus(Landroid/view/Menu;)V
    .locals 7
    .parameter "menu"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 878
    if-nez p1, :cond_1

    .line 891
    :cond_0
    :goto_0
    return-void

    .line 879
    :cond_1
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    if-eqz v4, :cond_0

    .line 880
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    if-eqz v4, :cond_0

    .line 881
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 882
    .local v2, parentCount:I
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v4}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentItemSelectedCount()I

    move-result v3

    .line 883
    .local v3, selectCount:I
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v4}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentItemDeselectedCount()I

    move-result v0

    .line 885
    .local v0, deselectCount:I
    const/16 v4, 0x20

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .local v1, item:Landroid/view/MenuItem;
    if-eqz v1, :cond_2

    .line 886
    if-eq v2, v0, :cond_3

    move v4, v5

    :goto_1
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 888
    :cond_2
    const/16 v4, 0x1f

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 889
    if-eq v2, v3, :cond_4

    :goto_2
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_3
    move v4, v6

    .line 886
    goto :goto_1

    :cond_4
    move v5, v6

    .line 889
    goto :goto_2
.end method

.method private createNewPlaylist()V
    .locals 4

    .prologue
    .line 895
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 896
    .local v0, intent:Landroid/content/Intent;
    const-class v2, Lcom/htc/music/browserlayer/EditPlaylistActivity;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 897
    iget v2, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mPickerMode:I

    if-nez v2, :cond_0

    .line 898
    const-string v2, "addtrack"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 900
    :cond_0
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_3

    .line 901
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 902
    .local v1, playlistCount:I
    iget-boolean v2, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mCreateShortcut:Z

    if-eqz v2, :cond_1

    if-lez v1, :cond_1

    .line 903
    add-int/lit8 v1, v1, -0x1

    .line 905
    :cond_1
    iget v2, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mRecentPlayedPos:I

    if-ltz v2, :cond_2

    .line 906
    add-int/lit8 v1, v1, -0x1

    .line 907
    :cond_2
    const-string v2, "playlistcount"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 910
    .end local v1           #playlistCount:I
    :cond_3
    iget-object v2, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mAddToPlaylistData:[I

    if-eqz v2, :cond_4

    .line 911
    const-string v2, "AddToPlaylistData"

    iget-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mAddToPlaylistData:[I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 914
    :cond_4
    const/16 v2, 0x21

    invoke-virtual {p0, v0, v2}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->startActivityForResult(Landroid/content/Intent;I)V

    .line 915
    return-void
.end method

.method private finishactivity()V
    .locals 4

    .prologue
    .line 1088
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 1089
    .local v0, handler:Landroid/os/Handler;
    new-instance v1, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$12;

    invoke-direct {v1, p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$12;-><init>(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1094
    return-void
.end method

.method private getPickerMode()I
    .locals 1

    .prologue
    .line 1065
    iget v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mPickerMode:I

    return v0
.end method

.method private getPlaylistCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 13
    .parameter "async"
    .parameter "filterstring"

    .prologue
    .line 642
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 643
    .local v12, where:Ljava/lang/StringBuilder;
    const-string v0, "name != \'\'"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 646
    const/4 v6, 0x0

    .line 647
    .local v6, keywords:[Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 648
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 649
    .local v11, searchWords:[Ljava/lang/String;
    array-length v0, v11

    new-array v6, v0, [Ljava/lang/String;

    .line 650
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v8

    .line 651
    .local v8, col:Ljava/text/Collator;
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/text/Collator;->setStrength(I)V

    .line 652
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    array-length v0, v11

    if-ge v10, v0, :cond_0

    .line 653
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

    .line 652
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 655
    :cond_0
    const/4 v10, 0x0

    :goto_1
    array-length v0, v11

    if-ge v10, v0, :cond_1

    .line 656
    const-string v0, " AND "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    const-string v0, "name LIKE ?"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 655
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 662
    .end local v8           #col:Ljava/text/Collator;
    .end local v10           #i:I
    .end local v11           #searchWords:[Ljava/lang/String;
    :cond_1
    const/4 v9, 0x0

    .line 663
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz p1, :cond_2

    .line 664
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->setAsyncQueryStatus(Z)V

    .line 665
    const/4 v1, 0x0

    const/4 v2, 0x0

    sget-object v3, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mCols:[Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "name COLLATE NOCASE ASC"

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Lcom/htc/music/util/DlArtAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    :goto_2
    return-object v9

    .line 667
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->setAsyncQueryStatus(Z)V

    .line 668
    sget-object v3, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mCols:[Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "name COLLATE NOCASE ASC"

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 669
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

    .line 727
    const/4 v8, 0x0

    .line 728
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

    .line 729
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 730
    .local v9, where:Ljava/lang/StringBuilder;
    const-string v0, "title != \'\'"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 731
    const-string v0, "-5"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 732
    const-string v0, "[PlaylistBrowserActivityGrid]"

    const-string v1, "prepare recent playlist+"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v0, :cond_1

    .line 734
    const/4 v7, 0x0

    .line 736
    .local v7, recentPlayed:[I
    :try_start_0
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/htc/music/IMediaPlaybackService;->getRecentPlayedPlaylist()[I

    move-result-object v7

    .line 737
    if-eqz v7, :cond_0

    array-length v0, v7

    if-lez v0, :cond_0

    .line 740
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

    .line 750
    const-string v0, " AND is_music>=1"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 751
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

    .line 771
    .end local v7           #recentPlayed:[I
    :cond_0
    :goto_0
    const-string v0, "[PlaylistBrowserActivityGrid]"

    const-string v1, "prepare recent playlist-"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    :goto_1
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 785
    invoke-direct {p0, v8}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->joinFirstTrackAlbumArt(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    .line 791
    :goto_2
    return-object v0

    .line 765
    .restart local v7       #recentPlayed:[I
    :catch_0
    move-exception v6

    .line 766
    .local v6, ex:Landroid/os/RemoteException;
    const-string v0, "[PlaylistBrowserActivityGrid]"

    const-string v1, "getTrackCursor - (null != mSelectedPlaylistId && !mRecentPlayedPlaylist)."

    invoke-static {v0, v1, v6}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 769
    .end local v6           #ex:Landroid/os/RemoteException;
    .end local v7           #recentPlayed:[I
    :cond_1
    const-string v0, "[PlaylistBrowserActivityGrid]"

    const-string v1, "service is null"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 775
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

    .line 787
    :cond_3
    const-string v0, "[PlaylistBrowserActivityGrid]"

    const-string v1, "ret cursor is null"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v10

    .line 791
    goto :goto_2
.end method

.method private initGridView()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 432
    const v2, 0x7f080073

    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/sunny2/view/SSurfaceView;

    iput-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    .line 433
    new-instance v2, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$PlaylistViewItemLayoutParams;

    invoke-direct {v2, p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$PlaylistViewItemLayoutParams;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$PlaylistViewItemLayoutParams;

    .line 434
    new-instance v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;-><init>(Landroid/content/Context;)V

    .line 435
    .local v0, folderParam:Lcom/htc/music/widget/gridview/MusicGridViewItemParams;
    invoke-direct {p0, v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->initMusicGridViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V

    .line 437
    new-instance v1, Lcom/htc/music/widget/gridview/MusicGridViewItem;

    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v2}, Lcom/htc/sunny2/view/SSurfaceView;->getSunnyContext()Lcom/htc/sunny2/SunnyContext;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/htc/music/widget/gridview/MusicGridViewItem;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V

    .line 438
    .local v1, gridViewItem:Lcom/htc/music/widget/gridview/MusicGridViewItem;
    invoke-direct {p0, v1}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->initMusicGridViewItem(Lcom/htc/music/widget/gridview/MusicGridViewItem;)V

    .line 440
    new-instance v2, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-direct {v2, p0, v3, v4}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;-><init>(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/music/widget/gridview/MusicGridViewUtil;)V

    iput-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewPreparator:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    .line 441
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewPreparator:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    invoke-direct {p0, v2, v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->initGridViewPreparator(Lcom/htc/music/widget/gridview/MusicGridViewPreparator;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V

    .line 442
    invoke-direct {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->initMusicGridViewUtil()V

    .line 443
    new-instance v2, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v3}, Lcom/htc/sunny2/view/SSurfaceView;->getSunnyContext()Lcom/htc/sunny2/SunnyContext;

    move-result-object v3

    invoke-direct {v2, p0, v3, v1}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Lcom/htc/sunny2/widget/gridview/GridViewItem;)V

    iput-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    .line 444
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$PlaylistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->verticalSpacing:I

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setVerticalSpacing(I)V

    .line 445
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$PlaylistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->horizontalSpacing:I

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setHorizontalSpacing(I)V

    .line 446
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewItemClickListener:Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setOnItemClickListener(Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;)V

    .line 447
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mViewItemLongClickListener:Lcom/htc/sunny2/widget/gridview/GridView$OnItemLongClickListener;

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setOnItemLongClickListener(Lcom/htc/sunny2/widget/gridview/GridView$OnItemLongClickListener;)V

    .line 448
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewPreparator:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setPreparation(Lcom/htc/sunny2/widget/gridview/GridViewPreparator;)V

    .line 449
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    const v3, 0x2080001

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setGlobalBackgroundResource(I)V

    .line 451
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$PlaylistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->padding_top:I

    iget-object v4, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$PlaylistViewItemLayoutParams;

    iget v4, v4, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->padding_bottom:I

    invoke-virtual {v2, v5, v3, v5, v4}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setPadding(IIII)V

    .line 452
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/view/SSurfaceView;->addView(Lcom/htc/sunny2/view/SView;)V

    .line 453
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v2, v5}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setVisibility(Z)V

    .line 454
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewScrollListener:Lcom/htc/sunny2/widget/gridview/interfaces/OnScrollListener;

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setOnScrollListener(Lcom/htc/sunny2/widget/gridview/interfaces/OnScrollListener;)V

    .line 455
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewPreparator:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v2, v3}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->updateMusicGridViewUtil(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)V

    .line 456
    return-void
.end method

.method private initGridViewPreparator(Lcom/htc/music/widget/gridview/MusicGridViewPreparator;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V
    .locals 2
    .parameter "preparator"
    .parameter "folderParam"

    .prologue
    .line 614
    new-instance v0, Lcom/htc/music/widget/gridview/MusicGridViewParamsPreparator;

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->getWidth(I)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewParamsPreparator;-><init>(I)V

    .line 615
    .local v0, paramsPreparator:Lcom/htc/music/widget/gridview/MusicGridViewParamsPreparator;
    invoke-virtual {p1, p0, v0}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->init(Landroid/content/Context;Lcom/htc/sunny2/IParamsPreparator;)V

    .line 616
    new-instance v1, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$8;

    invoke-direct {v1, p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$8;-><init>(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)V

    invoke-virtual {p1, v1}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->setUpdateListener(Lcom/htc/sunny2/Preparator$UpdateListener;)V

    .line 637
    return-void
.end method

.method private initMusicGridViewItem(Lcom/htc/music/widget/gridview/MusicGridViewItem;)V
    .locals 1
    .parameter "gridViewItem"

    .prologue
    .line 532
    new-instance v0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$5;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$5;-><init>(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)V

    invoke-virtual {p1, v0}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->setTextViewBindListener(Lcom/htc/music/widget/gridview/MusicGridViewItem$ITextViewBind;)V

    .line 555
    new-instance v0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$6;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$6;-><init>(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)V

    invoke-virtual {p1, v0}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->setViewItemImageGetter(Lcom/htc/music/widget/gridview/MusicGridViewItem$ViewItemImageGetter;)V

    .line 579
    return-void
.end method

.method private initMusicGridViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V
    .locals 4
    .parameter "folderParam"

    .prologue
    .line 502
    new-instance v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    invoke-direct {v0}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;-><init>()V

    .line 503
    .local v0, backgroundParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    const v3, 0x7f02003d

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->defaultResourceId:I

    .line 504
    iget-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$PlaylistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_width:I

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->width:I

    .line 505
    iget-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$PlaylistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_height:I

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->height:I

    .line 506
    iget-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$PlaylistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_marginLeft:I

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginLeft:I

    .line 507
    iget-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$PlaylistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_marginTop:I

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginTop:I

    .line 508
    const/4 v3, 0x1

    invoke-virtual {p1, v0, v3}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;I)V

    .line 514
    new-instance v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    invoke-direct {v2}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;-><init>()V

    .line 515
    .local v2, thumbnail:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    const v3, 0x7f02003e

    iput v3, v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->defaultResourceId:I

    .line 516
    iget-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$PlaylistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->thumb_marginLeft:I

    iput v3, v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginLeft:I

    .line 517
    iget-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$PlaylistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->thumb_marginTop:I

    iput v3, v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginTop:I

    .line 518
    const/4 v3, 0x3

    invoke-virtual {p1, v2, v3}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;I)V

    .line 519
    new-instance v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    invoke-direct {v1}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;-><init>()V

    .line 520
    .local v1, textLayout:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    iget-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$PlaylistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_height:I

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->height:I

    .line 521
    iget-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$PlaylistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_width:I

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->width:I

    .line 522
    const v3, 0x7f030029

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->defaultResourceId:I

    .line 523
    iget-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$PlaylistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_marginLeft:I

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginLeft:I

    .line 524
    iget-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$PlaylistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_marginTop:I

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginTop:I

    .line 525
    const/4 v3, 0x4

    invoke-virtual {p1, v1, v3}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;I)V

    .line 527
    iget-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$PlaylistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->width:I

    invoke-virtual {p1, v3}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setItemWidth(I)V

    .line 528
    iget-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$PlaylistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->height:I

    invoke-virtual {p1, v3}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setItemHeight(I)V

    .line 529
    return-void
.end method

.method private initMusicGridViewUtil()V
    .locals 4

    .prologue
    .line 582
    new-instance v1, Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    sget-object v2, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->PLAYLIST_TYPE:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, p0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;-><init>(Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    .line 584
    new-instance v0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$7;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$7;-><init>(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)V

    .line 610
    .local v0, musicGridViewItemUpdater:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MusicGridViewItemUpdater;
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v1, v0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->setMusicGridViewItemUpdater(Lcom/htc/music/widget/gridview/MusicGridViewUtil$MusicGridViewItemUpdater;)V

    .line 611
    return-void
.end method

.method private joinFirstTrackAlbumArt(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 14
    .parameter "c"

    .prologue
    .line 795
    if-nez p1, :cond_0

    .line 796
    const/4 v0, 0x0

    .line 840
    :goto_0
    return-object v0

    .line 798
    :cond_0
    instance-of v0, p1, Lcom/htc/music/widget/AlbumArtCursorWrapper;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/htc/music/util/AlbumArtMergeCursor;

    if-eqz v0, :cond_2

    :cond_1
    move-object v0, p1

    .line 799
    goto :goto_0

    .line 802
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 803
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 804
    .local v8, albumArtMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 805
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

    .line 806
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

    .line 810
    .local v2, cols:[Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "album_key"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 812
    .local v10, artCursor:Landroid/database/Cursor;
    if-eqz v10, :cond_3

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 813
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v10}, Lcom/htc/music/util/MusicUtils;->mergeDlAlbumArt(Landroid/content/Context;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v10

    .line 814
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 815
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_4

    .line 816
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 817
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 822
    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 823
    const/4 p1, 0x0

    .line 824
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 827
    :cond_4
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 828
    .local v6, albumArt:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 829
    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_5

    .line 830
    new-instance v12, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 831
    .local v12, row:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const-string v0, "album_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 832
    .local v9, albumIdx:I
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 833
    .local v11, id:I
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 834
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 835
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 836
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2

    .line 839
    .end local v9           #albumIdx:I
    .end local v11           #id:I
    .end local v12           #row:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_5
    new-instance v7, Lcom/htc/music/util/ArrayListCursor;

    invoke-direct {v7, v2, v6}, Lcom/htc/music/util/ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 840
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

    .line 1069
    iget v4, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mPickerMode:I

    if-eq v4, v7, :cond_0

    iget v4, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mPickerMode:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    .line 1078
    :goto_0
    return-void

    .line 1072
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

    .line 1073
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

    .line 1075
    :goto_1
    const v4, 0x7f08001d

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    .line 1076
    .local v0, Save:Lcom/htc/widget/HtcFooterButton;
    if-lez p1, :cond_2

    :goto_2
    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 1077
    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1073
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

    .line 1076
    goto :goto_2
.end method


# virtual methods
.method public categoryRightAction()Z
    .locals 2

    .prologue
    .line 1018
    new-instance v0, Lcom/htc/music/NpCategory;

    const/16 v1, 0x16

    invoke-direct {v0, v1}, Lcom/htc/music/NpCategory;-><init>(S)V

    .line 1019
    .local v0, npc:Lcom/htc/music/NpCategory;
    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/htc/music/util/MusicUtils;->playAllPlaylist(Landroid/content/Context;ZLcom/htc/music/NpCategory;)V

    .line 1020
    const/4 v1, 0x1

    return v1
.end method

.method public clickIndexInit(I)V
    .locals 2
    .parameter "globalIndex"

    .prologue
    .line 1097
    iput p1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentClickedIndex:I

    iput p1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    .line 1098
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentMediaDataId(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentPlaylistId:Ljava/lang/String;

    .line 1099
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentPlaylistId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mSelectedId:I

    .line 1100
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentMediaDataName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentPlaylistName:Ljava/lang/String;

    .line 1101
    return-void
.end method

.method protected getParentCursor()Landroid/database/Cursor;
    .locals 2

    .prologue
    .line 1025
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
    .line 1030
    const/4 v0, 0x0

    return-object v0
.end method

.method initButtonsPanel()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    .line 468
    iget v4, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mPickerMode:I

    if-eq v4, v7, :cond_0

    iget v4, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mPickerMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 469
    :cond_0
    const v4, 0x7f08004d

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    .line 470
    .local v3, savePanelStub:Landroid/view/ViewStub;
    invoke-virtual {v3, v6}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 471
    const v4, 0x7f08004e

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcFooter;

    .line 472
    .local v2, savePanel:Lcom/htc/widget/HtcFooter;
    const v4, 0x7f08001d

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcFooterButton;

    .line 473
    .local v1, Save:Lcom/htc/widget/HtcFooterButton;
    const v4, 0x2040145

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcFooterButton;->setText(Ljava/lang/CharSequence;)V

    .line 474
    iget v4, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mPickerMode:I

    if-ne v4, v7, :cond_2

    .line 475
    const v4, 0x20800a6

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcFooterButton;->setImageResource(I)V

    .line 479
    :goto_0
    new-instance v4, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$3;

    invoke-direct {v4, p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$3;-><init>(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)V

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 485
    const v4, 0x7f08001c

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    .line 486
    .local v0, Cancel:Lcom/htc/widget/HtcFooterButton;
    const v4, 0x2040152

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 487
    const v4, 0x20800a3

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcFooterButton;->setImageResource(I)V

    .line 488
    new-instance v4, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$4;

    invoke-direct {v4, p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$4;-><init>(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)V

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 495
    invoke-virtual {v2, v6}, Lcom/htc/widget/HtcFooter;->setVisibility(I)V

    .line 498
    .end local v0           #Cancel:Lcom/htc/widget/HtcFooterButton;
    .end local v1           #Save:Lcom/htc/widget/HtcFooterButton;
    .end local v2           #savePanel:Lcom/htc/widget/HtcFooter;
    .end local v3           #savePanelStub:Landroid/view/ViewStub;
    :cond_1
    invoke-direct {p0, v6}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->updateButtonCounter(I)V

    .line 499
    return-void

    .line 477
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

    .line 677
    if-nez p1, :cond_0

    .line 678
    const/4 p1, 0x0

    .line 723
    .end local p1
    :goto_0
    return-object p1

    .line 680
    .restart local p1
    :cond_0
    instance-of v5, p1, Landroid/database/MergeCursor;

    if-eqz v5, :cond_1

    .line 682
    const-string v5, "[PlaylistBrowserActivityGrid]"

    const-string v6, "Already wrapped"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 685
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 686
    .local v2, extraPlaylists:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    iget-boolean v5, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mCreateShortcut:Z

    if-eqz v5, :cond_2

    .line 687
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 688
    .local v0, all:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v5, -0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 689
    const v5, 0x7f07000a

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 690
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 710
    .end local v0           #all:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_2
    iget v5, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mPickerMode:I

    if-nez v5, :cond_3

    iget-boolean v5, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mCreateShortcut:Z

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mAddToPlaylistData:[I

    if-nez v5, :cond_3

    .line 711
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 712
    .local v4, recent:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const-string v5, "-5"

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 713
    const v5, 0x7f070119

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 714
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 715
    iput v7, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mRecentPlayedPos:I

    .line 718
    .end local v4           #recent:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_3
    new-instance v3, Lcom/htc/music/util/ArrayListCursor;

    iget-object v5, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mCols:[Ljava/lang/String;

    invoke-direct {v3, v5, v2}, Lcom/htc/music/util/ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 720
    .local v3, extraPlaylistsCursor:Lcom/htc/music/util/ArrayListCursor;
    new-instance v1, Landroid/database/MergeCursor;

    new-array v5, v6, [Landroid/database/Cursor;

    aput-object v3, v5, v7

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-direct {v1, v5}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .local v1, cc:Landroid/database/Cursor;
    move-object p1, v1

    .line 723
    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    const/4 v3, -0x1

    .line 964
    sparse-switch p1, :sswitch_data_0

    .line 1013
    :cond_0
    :goto_0
    return-void

    .line 966
    :sswitch_0
    if-nez p2, :cond_1

    .line 967
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->finish()V

    goto :goto_0

    .line 969
    :cond_1
    iget-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    if-eqz v3, :cond_0

    .line 970
    iget-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getPlaylistCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_0

    .line 975
    :sswitch_1
    if-ne p2, v3, :cond_2

    .line 976
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->setTitle()V

    .line 977
    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v3}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentMediaList()Lcom/htc/sunny2/IMediaList;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 978
    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    if-eqz v3, :cond_2

    .line 979
    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->requery()Z

    .line 980
    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    invoke-virtual {v3, v4}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->updateParentMediaList(Landroid/database/Cursor;)V

    .line 981
    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v3}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->notifyMediaDataChange()V

    .line 985
    :cond_2
    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getPickerMode()I

    move-result v4

    if-ne v3, v4, :cond_0

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getParent()Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_0

    .line 986
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->finish()V

    goto :goto_0

    .line 991
    :sswitch_2
    if-ne p2, v3, :cond_0

    .line 992
    const-string v3, "playlist"

    const/4 v4, 0x0

    invoke-virtual {p3, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 993
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

    .line 994
    .local v0, list:[I
    int-to-long v3, v1

    invoke-static {p0, v0, v3, v4}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    goto :goto_0

    .line 998
    .end local v0           #list:[I
    .end local v1           #playlist:I
    :sswitch_3
    if-ne p2, v3, :cond_0

    .line 999
    const-string v3, "selectedlist"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1000
    .local v2, selectedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {v2}, Lcom/htc/music/util/MusicUtils;->toIntList(Ljava/util/ArrayList;)[I

    move-result-object v0

    .line 1001
    .restart local v0       #list:[I
    invoke-static {p0, v0}, Lcom/htc/music/util/MusicUtils;->deletePlaylists(Landroid/content/Context;[I)V

    .line 1010
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->setTitle()V

    goto/16 :goto_0

    .line 964
    nop

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
    .line 197
    const-string v0, "[PlaylistBrowserActivityGrid]"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    .line 199
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 211
    :goto_0
    return-void

    .line 203
    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mOrientation:I

    .line 204
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 206
    iget v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 207
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v1, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$PlaylistViewItemLayoutParams;

    iget v1, v1, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->verticalSpacing_landscape:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setVerticalSpacing(I)V

    goto :goto_0

    .line 209
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

    .line 270
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->onCreate(Landroid/os/Bundle;)V

    .line 272
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getIntent()Landroid/content/Intent;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mBeginIntent:Landroid/content/Intent;

    .line 273
    iget-object v9, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mBeginIntent:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 274
    .local v0, action:Ljava/lang/String;
    const-string v9, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 275
    iput-boolean v7, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mCreateShortcut:Z

    .line 277
    :cond_0
    if-eqz p1, :cond_7

    .line 278
    const-string v9, "pickermode"

    invoke-virtual {p1, v9, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mPickerMode:I

    .line 279
    const-string v9, "AddToPlaylistData"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v9

    iput-object v9, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mAddToPlaylistData:[I

    .line 285
    :goto_0
    invoke-virtual {p0, v11}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->setVolumeControlStream(I)V

    .line 287
    iput-boolean v8, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mExitByErrorIntent:Z

    .line 289
    const-string v9, "android.intent.action.VIEW"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 291
    const/4 v5, -0x1

    .line 293
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

    .line 363
    .end local v5           #id:I
    :cond_1
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 364
    .local v3, f:Landroid/content/IntentFilter;
    const-string v9, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 365
    const-string v9, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 366
    const-string v9, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 367
    const-string v9, "file"

    invoke-virtual {v3, v9}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 368
    iget-object v9, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v9, v3}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 371
    iput-object p0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mContext:Landroid/content/Context;

    .line 372
    iget-object v9, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    if-nez v9, :cond_2

    new-instance v9, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$QueryHandler;

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-direct {v9, p0, v10}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$QueryHandler;-><init>(Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;Landroid/content/ContentResolver;)V

    iput-object v9, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    .line 373
    :cond_2
    iget-object v9, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    invoke-direct {p0, v9, v12}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getPlaylistCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    .line 374
    invoke-virtual {p0, v7}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->setCategoryProgressVisible(Z)V

    .line 382
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getParent()Landroid/app/Activity;

    move-result-object v9

    if-eqz v9, :cond_8

    move v6, v7

    .line 384
    .local v6, requestOverlay:Z
    :goto_1
    invoke-direct {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getPickerMode()I

    move-result v9

    if-nez v9, :cond_9

    iget-boolean v9, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mCreateShortcut:Z

    if-nez v9, :cond_9

    .line 385
    const v9, 0x7f03002a

    invoke-virtual {p0, v9, v6}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->setContentView(IZ)V

    .line 386
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 387
    .local v4, filter:Landroid/content/IntentFilter;
    const-string v9, "com.htc.music.recentplayedchanged"

    invoke-virtual {v4, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 388
    iget-object v9, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mPlaybackStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v9, v4}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 389
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->enableSearch()V

    .line 405
    .end local v4           #filter:Landroid/content/IntentFilter;
    :cond_3
    :goto_2
    iget-boolean v9, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mIsOnlineInnerType:Z

    if-nez v9, :cond_5

    invoke-static {}, Lcom/htc/music/util/ProjectSettings;->isSupportBypassPincode()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 406
    iget-object v9, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mUnlockReceiver:Landroid/content/BroadcastReceiver;

    if-nez v9, :cond_4

    .line 407
    new-instance v9, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$2;

    invoke-direct {v9, p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$2;-><init>(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)V

    iput-object v9, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mUnlockReceiver:Landroid/content/BroadcastReceiver;

    .line 415
    :cond_4
    iget-object v9, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mUnlockReceiver:Landroid/content/BroadcastReceiver;

    new-instance v10, Landroid/content/IntentFilter;

    const-string v11, "com.htc.music.lockscreen_start"

    invoke-direct {v10, v11}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v9, v10}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 418
    :cond_5
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->initButtonsPanel()V

    .line 419
    invoke-direct {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->initGridView()V

    .line 420
    iget v9, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mPickerMode:I

    if-ne v9, v7, :cond_6

    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->checkPlaylistCount(Landroid/content/Context;)I

    move-result v7

    if-gtz v7, :cond_6

    .line 421
    invoke-direct {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->createNewPlaylist()V

    .line 422
    invoke-virtual {p0, v8, v12}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->setResult(ILandroid/content/Intent;)V

    .line 423
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->finish()V

    .line 429
    .end local v3           #f:Landroid/content/IntentFilter;
    .end local v6           #requestOverlay:Z
    :cond_6
    :goto_3
    return-void

    .line 281
    :cond_7
    iget-object v9, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mBeginIntent:Landroid/content/Intent;

    const-string v10, "pickermode"

    invoke-virtual {v9, v10, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mPickerMode:I

    .line 282
    iget-object v9, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mBeginIntent:Landroid/content/Intent;

    const-string v10, "AddToPlaylistData"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v9

    iput-object v9, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mAddToPlaylistData:[I

    goto/16 :goto_0

    .line 294
    .restart local v5       #id:I
    :catch_0
    move-exception v1

    .line 295
    .local v1, e:Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 296
    iput-boolean v7, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mExitByErrorIntent:Z

    .line 297
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->finish()V

    goto :goto_3

    .line 299
    .end local v1           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 300
    .local v1, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 301
    iput-boolean v7, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mExitByErrorIntent:Z

    .line 302
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->finish()V

    goto :goto_3

    .end local v1           #e:Ljava/lang/NumberFormatException;
    .end local v5           #id:I
    .restart local v3       #f:Landroid/content/IntentFilter;
    :cond_8
    move v6, v8

    .line 382
    goto/16 :goto_1

    .line 391
    .restart local v6       #requestOverlay:Z
    :cond_9
    const v9, 0x7f03002b

    invoke-virtual {p0, v9, v7}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->setContentView(IZ)V

    .line 392
    iget-object v9, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    if-eqz v9, :cond_a

    iget-object v9, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHeaderText:Lcom/htc/widget/ActionBarText;

    if-nez v9, :cond_a

    .line 393
    new-instance v9, Lcom/htc/widget/ActionBarText;

    invoke-direct {v9, p0}, Lcom/htc/widget/ActionBarText;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHeaderText:Lcom/htc/widget/ActionBarText;

    .line 394
    iget-object v9, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    iget-object v10, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHeaderText:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v9, v10}, Lcom/htc/widget/ActionBarContainer;->addCenterView(Landroid/view/View;)V

    .line 397
    :cond_a
    iget-object v9, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mActionBar:Lcom/htc/widget/ActionBarExt;

    if-eqz v9, :cond_3

    .line 398
    iget v9, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mPickerMode:I

    if-eq v9, v11, :cond_b

    iget v9, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mPickerMode:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_c

    :cond_b
    move v2, v7

    .line 399
    .local v2, enable:Z
    :goto_4
    iget-object v9, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mActionBar:Lcom/htc/widget/ActionBarExt;

    invoke-virtual {v9, v2}, Lcom/htc/widget/ActionBarExt;->enableHTCLandscape(Z)V

    goto/16 :goto_2

    .end local v2           #enable:Z
    :cond_c
    move v2, v8

    .line 398
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

    .line 1360
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 1361
    invoke-direct {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getPickerMode()I

    move-result v0

    if-eq v0, v2, :cond_0

    invoke-direct {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getPickerMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 1362
    :cond_0
    const/16 v0, 0x1f

    const v1, 0x204014f

    invoke-interface {p1, v2, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1363
    const/16 v0, 0x20

    const v1, 0x2040150

    invoke-interface {p1, v2, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1387
    :cond_1
    :goto_0
    return v4

    .line 1364
    :cond_2
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mCreateShortcut:Z

    if-nez v0, :cond_4

    iget v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mPickerMode:I

    if-nez v0, :cond_4

    .line 1365
    const/16 v0, 0x9

    const v1, 0x7f070009

    invoke-interface {p1, v2, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1366
    const/16 v0, 0xc

    const v1, 0x7f07000a

    invoke-interface {p1, v2, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1368
    const v0, 0x7f070098

    invoke-interface {p1, v2, v5, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1372
    const/16 v0, 0x22

    const v1, 0x7f070099

    invoke-interface {p1, v2, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1374
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isDeleteAllPlaylistEnable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1375
    const/16 v0, 0x23

    const v1, 0x7f07009b

    invoke-interface {p1, v2, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1378
    :cond_3
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isSupportListenStore()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1380
    const/16 v0, 0x16

    const v1, 0x2040218

    invoke-interface {p1, v2, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0

    .line 1382
    :cond_4
    invoke-direct {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getPickerMode()I

    move-result v0

    if-ne v4, v0, :cond_1

    .line 1383
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
    .locals 3

    .prologue
    .line 171
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mReScanHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 173
    iget-boolean v1, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mExitByErrorIntent:Z

    if-eqz v1, :cond_0

    .line 174
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->onDestroy()V

    .line 192
    :goto_0
    return-void

    .line 178
    :cond_0
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 179
    invoke-direct {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getPickerMode()I

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mCreateShortcut:Z

    if-nez v1, :cond_1

    .line 180
    iget-object v1, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mPlaybackStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 183
    :cond_1
    iget-boolean v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mIsOnlineInnerType:Z

    if-nez v1, :cond_2

    invoke-static {}, Lcom/htc/music/util/ProjectSettings;->isSupportBypassPincode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 185
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mUnlockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :cond_2
    :goto_1
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->onDestroy()V

    goto :goto_0

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const-string v1, "[PlaylistBrowserActivityGrid]"

    const-string v2, "onDestroy, fail to unregisterReceiver(mUnlockReceiver)"

    invoke-static {v1, v2, v0}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method protected onGridViewChildItemPrepare(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 1336
    return-void
.end method

.method protected onGridViewItemClick(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v8, -0x1

    .line 1105
    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->clickIndexInit(I)V

    .line 1106
    invoke-direct {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getPickerMode()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_0

    invoke-direct {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getPickerMode()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    .line 1107
    :cond_0
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v5, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    invoke-virtual {v4, v5}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->switchParentItemSelectedStatus(I)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->updateButtonCounter(I)V

    .line 1108
    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget v5, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    invoke-virtual {v4, v5}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->notifyMediaDataChange(I)V

    .line 1172
    :goto_0
    return-void

    .line 1116
    :cond_1
    invoke-direct {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getPickerMode()I

    move-result v6

    if-ne v6, v4, :cond_2

    .line 1117
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1119
    .local v0, intent:Landroid/content/Intent;
    const-string v4, "playlist"

    iget v5, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mSelectedId:I

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1120
    invoke-virtual {p0, v8, v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->setResult(ILandroid/content/Intent;)V

    .line 1128
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->finish()V

    goto :goto_0

    .line 1132
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    iget-boolean v6, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mCreateShortcut:Z

    if-eqz v6, :cond_3

    .line 1133
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1134
    .local v3, shortcut:Landroid/content/Intent;
    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1135
    sget-object v4, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v6, "com.htc.media/playlist"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1136
    const-string v4, "playlist"

    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentPlaylistId:Ljava/lang/String;

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1137
    const/high16 v4, 0x1400

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1139
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1140
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v4, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1141
    const-string v4, "android.intent.extra.shortcut.NAME"

    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentPlaylistName:Ljava/lang/String;

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1142
    const-string v4, "android.intent.extra.shortcut.ICON_RESOURCE"

    const v6, 0x7f02003a

    invoke-static {p0, v6}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1145
    invoke-virtual {p0, v8, v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->setResult(ILandroid/content/Intent;)V

    .line 1148
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.htc.launcher.ThemeChooser.action.silder_change"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1149
    .local v1, intent2:Landroid/content/Intent;
    const-string v4, "silder_state"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1150
    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->sendBroadcast(Landroid/content/Intent;)V

    .line 1151
    invoke-direct {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->finishactivity()V

    goto :goto_0

    .line 1157
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #intent2:Landroid/content/Intent;
    .end local v3           #shortcut:Landroid/content/Intent;
    :cond_3
    iget v6, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mPickerMode:I

    if-ne v6, v4, :cond_4

    .line 1158
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1159
    .restart local v0       #intent:Landroid/content/Intent;
    iget v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    .line 1160
    .local v2, playlistId:I
    const-string v4, "playlist_id"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1161
    invoke-virtual {p0, v8, v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->setResult(ILandroid/content/Intent;)V

    .line 1162
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->finish()V

    goto/16 :goto_0

    .line 1164
    .end local v0           #intent:Landroid/content/Intent;
    .end local v2           #playlistId:I
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.intent.action.PICK"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1165
    .restart local v0       #intent:Landroid/content/Intent;
    sget-object v6, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v7, "com.htc.media/track"

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1167
    const-string v6, "playlist"

    iget-object v7, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentPlaylistId:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1168
    const-string v6, "isrecentplayedplaylist"

    iget v7, p1, Landroid/os/Message;->arg1:I

    iget v8, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mRecentPlayedPos:I

    if-ne v7, v8, :cond_5

    :goto_1
    invoke-virtual {v0, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1169
    const-string v4, "InnerActivityType"

    const/4 v5, 0x7

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1170
    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_5
    move v4, v5

    .line 1168
    goto :goto_1
.end method

.method protected onGridViewItemDelete(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 1350
    return-void
.end method

.method protected onGridViewItemDeleteComplete()V
    .locals 0

    .prologue
    .line 1356
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

    .line 1179
    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->clickIndexInit(I)V

    .line 1180
    iget-boolean v5, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mCreateShortcut:Z

    if-nez v5, :cond_1

    invoke-direct {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getPickerMode()I

    move-result v5

    if-nez v5, :cond_1

    .line 1183
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 1184
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_0

    move-object v0, p0

    .line 1186
    :cond_0
    iget-object v5, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    invoke-virtual {v5, v6}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentMediaDataName(I)Ljava/lang/String;

    move-result-object v2

    .line 1187
    .local v2, headerTitle:Ljava/lang/String;
    const/4 v4, 0x0

    .line 1188
    .local v4, items:[Ljava/lang/CharSequence;
    const/4 v3, 0x0

    .line 1190
    .local v3, ids:[I
    iget v5, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mSelectedId:I

    if-gez v5, :cond_2

    .line 1191
    new-array v4, v8, [Ljava/lang/CharSequence;

    .end local v4           #items:[Ljava/lang/CharSequence;
    invoke-virtual {p0, v10}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    .line 1194
    .restart local v4       #items:[Ljava/lang/CharSequence;
    new-array v3, v8, [I

    .end local v3           #ids:[I
    const/4 v5, 0x5

    aput v5, v3, v7

    .line 1232
    .restart local v3       #ids:[I
    :goto_0
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->hideHtcContextMenu()V

    .line 1233
    invoke-virtual {p0, v2, v4, v3}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->showHtcContextMenu(Ljava/lang/String;[Ljava/lang/CharSequence;[I)V

    .line 1243
    .end local v0           #context:Landroid/content/Context;
    .end local v2           #headerTitle:Ljava/lang/String;
    .end local v3           #ids:[I
    .end local v4           #items:[Ljava/lang/CharSequence;
    :cond_1
    return-void

    .line 1196
    .restart local v0       #context:Landroid/content/Context;
    .restart local v2       #headerTitle:Ljava/lang/String;
    .restart local v3       #ids:[I
    .restart local v4       #items:[Ljava/lang/CharSequence;
    :cond_2
    invoke-static {v0}, Lcom/htc/music/util/MusicUtils;->CheckDLNAStatus(Landroid/content/Context;)I

    move-result v1

    .line 1197
    .local v1, dlnaMode:I
    if-nez v1, :cond_3

    .line 1199
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

    .line 1207
    .restart local v4       #items:[Ljava/lang/CharSequence;
    const/4 v5, 0x4

    new-array v3, v5, [I

    .end local v3           #ids:[I
    fill-array-data v3, :array_0

    .restart local v3       #ids:[I
    goto :goto_0

    .line 1216
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

    .line 1223
    .restart local v4       #items:[Ljava/lang/CharSequence;
    new-array v3, v9, [I

    .end local v3           #ids:[I
    fill-array-data v3, :array_1

    .restart local v3       #ids:[I
    goto :goto_0

    .line 1207
    :array_0
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
    .end array-data

    .line 1223
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
    .line 1330
    return-void
.end method

.method public onHtcContextItemSelected(I)Z
    .locals 13
    .parameter "id"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v12, 0x0

    .line 1247
    sparse-switch p1, :sswitch_data_0

    .line 1323
    :cond_0
    :goto_0
    return v12

    .line 1249
    :sswitch_0
    iget v8, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mSelectedId:I

    int-to-long v8, v8

    const-wide/16 v10, -0x4

    cmp-long v8, v8, v10

    if-eqz v8, :cond_0

    .line 1251
    iget v8, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mSelectedId:I

    const/4 v9, -0x5

    if-ne v8, v9, :cond_1

    .line 1253
    :try_start_0
    sget-object v8, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v8, :cond_0

    .line 1254
    sget-object v8, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v8}, Lcom/htc/music/IMediaPlaybackService;->getRecentPlayedPlaylist()[I

    move-result-object v6

    .line 1255
    .local v6, recentTrackId:[I
    invoke-static {p0, v6}, Lcom/htc/music/util/MusicUtils;->prepareAlbumListByTrackId(Landroid/content/Context;[I)V

    .line 1256
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {p0, v6, v8, v9}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;[IILcom/htc/music/NpCategory;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1258
    .end local v6           #recentTrackId:[I
    :catch_0
    move-exception v1

    .line 1259
    .local v1, e:Landroid/os/RemoteException;
    const-string v8, "[PlaylistBrowserActivityGrid]"

    const-string v9, "Exception when playing recent played list."

    invoke-static {v8, v9, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1262
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_1
    new-instance v8, Lcom/htc/music/NpCategory;

    const/16 v9, 0x14

    invoke-direct {v8, v9}, Lcom/htc/music/NpCategory;-><init>(S)V

    iget v9, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mSelectedId:I

    invoke-virtual {v8, v9}, Lcom/htc/music/NpCategory;->setPlaylistId(I)Lcom/htc/music/NpCategory;

    move-result-object v5

    .line 1264
    .local v5, npc:Lcom/htc/music/NpCategory;
    iget v8, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mSelectedId:I

    int-to-long v8, v8

    invoke-static {p0, v8, v9, v5}, Lcom/htc/music/util/MusicUtils;->playPlaylist(Landroid/content/Context;JLcom/htc/music/NpCategory;)Z

    goto :goto_0

    .line 1269
    .end local v5           #npc:Lcom/htc/music/NpCategory;
    :sswitch_1
    iget v8, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mSelectedId:I

    int-to-long v8, v8

    invoke-static {p0, v8, v9}, Lcom/htc/music/util/MusicUtils;->getSongListForPlaylist(Landroid/content/Context;J)[I

    move-result-object v0

    .line 1270
    .local v0, addToPlaylistData:[I
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1271
    .local v3, intent:Landroid/content/Intent;
    const-class v8, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;

    invoke-virtual {v3, p0, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1272
    const-string v8, "pickermode"

    invoke-virtual {v3, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1273
    const-string v8, "AddToPlaylistData"

    invoke-virtual {v3, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 1274
    invoke-virtual {p0, v3, v10}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1278
    .end local v0           #addToPlaylistData:[I
    .end local v3           #intent:Landroid/content/Intent;
    :sswitch_2
    :try_start_1
    sget-object v8, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v8, :cond_0

    .line 1279
    sget-object v8, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v9, 0x3

    iget v10, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mSelectedId:I

    invoke-interface {v8, v9, v10}, Lcom/htc/music/IMediaPlaybackService;->addToQueue(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1281
    :catch_1
    move-exception v1

    .line 1282
    .restart local v1       #e:Landroid/os/RemoteException;
    const-string v8, "[PlaylistBrowserActivityGrid]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ADD_TO_QUEUE, long click playlist item, RemoteException e: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1286
    .end local v1           #e:Landroid/os/RemoteException;
    :sswitch_3
    iput-boolean v10, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewRefreshDisable:Z

    .line 1287
    sget-object v8, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v9, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v10, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    invoke-virtual {v9, v10}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentMediaDataId(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {v8, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 1290
    .local v7, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v8, v7, v11, v11}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1291
    const v8, 0x7f070041

    invoke-static {p0, v8, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 1295
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 1296
    .local v2, handler:Landroid/os/Handler;
    new-instance v8, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$13;

    invoke-direct {v8, p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$13;-><init>(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)V

    const-wide/16 v9, 0x1f4

    invoke-virtual {v2, v8, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 1316
    .end local v2           #handler:Landroid/os/Handler;
    .end local v7           #uri:Landroid/net/Uri;
    :sswitch_4
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 1317
    .local v4, intent2:Landroid/content/Intent;
    const-class v8, Lcom/htc/music/browserlayer/EditPlaylistActivity;

    invoke-virtual {v4, p0, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1319
    const-string v8, "playlist"

    iget-object v9, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentPlaylistId:Ljava/lang/String;

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1320
    const/16 v8, 0x1c

    invoke-virtual {p0, v4, v8}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1247
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
    .line 869
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->menuOpened:Z

    .line 872
    invoke-direct {p0, p2}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->applyMenuStatus(Landroid/view/Menu;)V

    .line 874
    invoke-super {p0, p1, p2}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 12
    .parameter "item"

    .prologue
    const/4 v11, 0x0

    const/4 v5, 0x1

    .line 1440
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 1513
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v5

    :goto_0
    return v5

    .line 1456
    :sswitch_0
    invoke-direct {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->createNewPlaylist()V

    goto :goto_0

    .line 1459
    :sswitch_1
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->SetDLNASuffleMode(Landroid/content/Context;)V

    .line 1460
    new-instance v6, Lcom/htc/music/NpCategory;

    const/16 v7, 0x16

    invoke-direct {v6, v7}, Lcom/htc/music/NpCategory;-><init>(S)V

    invoke-static {p0, v5, v6}, Lcom/htc/music/util/MusicUtils;->playAllPlaylist(Landroid/content/Context;ZLcom/htc/music/NpCategory;)V

    goto :goto_0

    .line 1464
    :sswitch_2
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->categoryRightAction()Z

    goto :goto_0

    .line 1469
    :sswitch_3
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1470
    .local v2, intent:Landroid/content/Intent;
    const-class v6, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;

    invoke-virtual {v2, p0, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1471
    const-string v6, "pickermode"

    const/4 v7, 0x3

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1472
    const/16 v6, 0x22

    invoke-virtual {p0, v2, v6}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1477
    .end local v2           #intent:Landroid/content/Intent;
    :sswitch_4
    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v6}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->setAllParentItemSelected()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->updateButtonCounter(I)V

    .line 1478
    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v6}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->notifyMediaDataChange()V

    goto :goto_0

    .line 1482
    :sswitch_5
    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v6}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->setAllParentItemDeselected()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->updateButtonCounter(I)V

    .line 1483
    iget-object v6, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v6}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->notifyMediaDataChange()V

    goto :goto_0

    .line 1492
    :sswitch_6
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.htc.music.settings.Listen_Online_Setting"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1493
    .restart local v2       #intent:Landroid/content/Intent;
    const/4 v6, -0x2

    invoke-virtual {p0, v2, v6}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1497
    .end local v2           #intent:Landroid/content/Intent;
    :sswitch_7
    iput-boolean v5, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewRefreshDisable:Z

    .line 1500
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1501
    .local v0, deletCount:I
    const-string v6, "[PlaylistBrowserActivityGrid]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DELETE_ALL_PLAYLISTS : delete item = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1502
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d0005

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v0, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1504
    .local v3, message:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mUiHandler:Landroid/os/Handler;

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 1505
    .local v4, msg:Landroid/os/Message;
    iget-object v6, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mUiHandler:Landroid/os/Handler;

    const-wide/16 v7, 0x1f4

    invoke-virtual {v6, v4, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1506
    .end local v0           #deletCount:I
    .end local v3           #message:Ljava/lang/String;
    .end local v4           #msg:Landroid/os/Message;
    :catch_0
    move-exception v1

    .line 1507
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "[PlaylistBrowserActivityGrid]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DELETE_ALL_PLAYLISTS error : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1508
    iput-boolean v11, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewRefreshDisable:Z

    goto/16 :goto_0

    .line 1440
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0xc -> :sswitch_2
        0x16 -> :sswitch_6
        0x1f -> :sswitch_4
        0x20 -> :sswitch_5
        0x21 -> :sswitch_0
        0x22 -> :sswitch_3
        0x23 -> :sswitch_7
    .end sparse-switch
.end method

.method protected onPlaybackServiceConnection()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 229
    iget-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mBeginIntent:Landroid/content/Intent;

    if-nez v3, :cond_1

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    iget-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mBeginIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 233
    const/4 v2, 0x1

    .line 234
    .local v2, isPlaylistNotEmpty:Z
    iget-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mBeginIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "playlist"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 235
    .local v1, id:I
    const/4 v3, -0x2

    if-ne v1, v3, :cond_3

    .line 240
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->getAllSongsAndPrepare(Landroid/content/Context;)[I

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->list:[I

    .line 241
    iget-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->list:[I

    if-eqz v3, :cond_2

    .line 242
    iget-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->list:[I

    new-instance v4, Lcom/htc/music/NpCategory;

    invoke-direct {v4, v6}, Lcom/htc/music/NpCategory;-><init>(S)V

    invoke-static {p0, v3, v6, v4}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;[IILcom/htc/music/NpCategory;)V

    .line 250
    :goto_1
    if-nez v2, :cond_4

    .line 252
    const-string v3, "[PlaylistBrowserActivityGrid]"

    const-string v4, "Send delay finish message"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    iget-object v3, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mDelayFinishHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 244
    :cond_2
    const v3, 0x7f07005f

    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 248
    :cond_3
    int-to-long v3, v1

    const/4 v5, 0x0

    invoke-static {p0, v3, v4, v5}, Lcom/htc/music/util/MusicUtils;->playPlaylist(Landroid/content/Context;JLcom/htc/music/NpCategory;)Z

    move-result v2

    goto :goto_1

    .line 259
    :cond_4
    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->setVisible(Z)V

    .line 260
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->finish()V

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter "menu"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1392
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 1393
    const/4 v0, 0x0

    .line 1394
    .local v0, enabled:Z
    iget-object v5, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    if-eqz v5, :cond_1

    .line 1395
    iget-object v5, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 1396
    .local v2, playlistCount:I
    iget v5, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mRecentPlayedPos:I

    if-ltz v5, :cond_0

    .line 1397
    add-int/lit8 v2, v2, -0x1

    .line 1399
    :cond_0
    if-lez v2, :cond_b

    move v0, v3

    .line 1404
    .end local v2           #playlistCount:I
    :cond_1
    :goto_0
    const/16 v5, 0x1f

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1405
    .local v1, item:Landroid/view/MenuItem;
    if-eqz v1, :cond_2

    .line 1406
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1407
    :cond_2
    const/16 v5, 0x20

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1408
    if-eqz v1, :cond_3

    .line 1409
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1410
    :cond_3
    const/16 v5, 0x21

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1411
    if-eqz v1, :cond_5

    .line 1412
    iget-object v5, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    if-eqz v5, :cond_4

    move v4, v3

    :cond_4
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1413
    :cond_5
    const/16 v4, 0x22

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1414
    if-eqz v1, :cond_6

    .line 1415
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1419
    :cond_6
    const/16 v4, 0x23

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1420
    if-eqz v1, :cond_7

    .line 1421
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1422
    :cond_7
    const/16 v4, 0x9

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1423
    if-eqz v1, :cond_8

    .line 1424
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1425
    :cond_8
    const/16 v4, 0xc

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1426
    if-eqz v1, :cond_9

    .line 1427
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1428
    :cond_9
    const/16 v4, 0x16

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1429
    if-eqz v1, :cond_a

    .line 1430
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1432
    :cond_a
    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->applyMenuStatus(Landroid/view/Menu;)V

    .line 1434
    return v3

    .end local v1           #item:Landroid/view/MenuItem;
    .restart local v2       #playlistCount:I
    :cond_b
    move v0, v4

    .line 1399
    goto :goto_0
.end method

.method public onSaveClick()V
    .locals 3

    .prologue
    .line 459
    invoke-direct {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getPickerMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    invoke-direct {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getPickerMode()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 460
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 461
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "selectedlist"

    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v2}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentItemIdFieldSelectedList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 462
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->setResult(ILandroid/content/Intent;)V

    .line 464
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->finish()V

    .line 465
    return-void
.end method

.method protected playAllAction(Z)Z
    .locals 3
    .parameter "forceShuffle"

    .prologue
    const/4 v2, 0x1

    .line 1059
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->SetDLNASuffleMode(Landroid/content/Context;)V

    .line 1060
    new-instance v0, Lcom/htc/music/NpCategory;

    const/16 v1, 0x16

    invoke-direct {v0, v1}, Lcom/htc/music/NpCategory;-><init>(S)V

    invoke-static {p0, v2, v0}, Lcom/htc/music/util/MusicUtils;->playAllPlaylist(Landroid/content/Context;ZLcom/htc/music/NpCategory;)V

    .line 1061
    return v2
.end method

.method protected setCategoryRightBtn(Z)V
    .locals 10
    .parameter "setEnable"

    .prologue
    const v9, 0x7f07006a

    const/high16 v8, 0x208

    const/4 v7, 0x1

    .line 924
    const/4 v5, 0x0

    .line 925
    .local v5, setEnableInt:I
    if-eqz p1, :cond_0

    const/4 v5, 0x1

    .line 927
    :cond_0
    iput v5, p0, Lcom/htc/music/widget/MusicMaActivity;->mEnableRightBtn:I

    .line 929
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->isActivityResumed()Z

    move-result v6

    if-nez v6, :cond_2

    .line 930
    const-string v6, "[PlaylistBrowserActivityGrid]"

    const-string v7, "activity is paused, do not set category right button status"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 960
    :cond_1
    :goto_0
    return-void

    .line 934
    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->findRootParent()Landroid/app/Activity;

    move-result-object v4

    .line 935
    .local v4, parent:Landroid/app/Activity;
    instance-of v6, v4, Lcom/htc/music/widget/IMusicTabActivityInterface;

    if-eqz v6, :cond_1

    move-object v3, v4

    .line 936
    check-cast v3, Lcom/htc/music/widget/IMusicTabActivityInterface;

    .line 939
    .local v3, multiParent:Lcom/htc/music/widget/IMusicTabActivityInterface;
    if-eqz p1, :cond_3

    .line 940
    invoke-interface {v3, v7}, Lcom/htc/music/widget/IMusicTabActivityInterface;->setCategoryRightBtnEnable(Z)V

    .line 942
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 943
    .local v1, enableAddIcon:Landroid/graphics/drawable/Drawable;
    const/16 v6, 0xff

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 944
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 945
    .local v2, label:Ljava/lang/String;
    invoke-interface {v3, v1, v2}, Lcom/htc/music/widget/IMusicTabActivityInterface;->setCategoryRightBtnImage(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 946
    new-instance v6, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$11;

    invoke-direct {v6, p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$11;-><init>(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)V

    invoke-interface {v3, v6}, Lcom/htc/music/widget/IMusicTabActivityInterface;->setCategoryRightBtnOnClick(Landroid/view/View$OnClickListener;)V

    .line 958
    .end local v1           #enableAddIcon:Landroid/graphics/drawable/Drawable;
    :goto_1
    invoke-interface {v3, v7}, Lcom/htc/music/widget/IMusicTabActivityInterface;->setCategoryRightBtnVisible(Z)V

    goto :goto_0

    .line 952
    .end local v2           #label:Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 953
    .local v0, disableAddIcon:Landroid/graphics/drawable/Drawable;
    const/16 v6, 0x6e

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 954
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 955
    .restart local v2       #label:Ljava/lang/String;
    const/4 v6, 0x0

    invoke-interface {v3, v6}, Lcom/htc/music/widget/IMusicTabActivityInterface;->setCategoryRightBtnEnable(Z)V

    .line 956
    invoke-interface {v3, v0, v2}, Lcom/htc/music/widget/IMusicTabActivityInterface;->setCategoryRightBtnImage(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected setEmptyView()V
    .locals 1

    .prologue
    .line 1035
    const v0, 0x7f07003a

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->showEmptyView(I)V

    .line 1036
    return-void
.end method

.method protected setTitle()V
    .locals 2

    .prologue
    .line 1041
    invoke-direct {p0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getPickerMode()I

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->mCreateShortcut:Z

    if-nez v1, :cond_0

    .line 1042
    const v1, 0x7f07002b

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->setCatgoryMainTitle(Ljava/lang/String;)V

    .line 1043
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->setCategorySecondaryTitleVisible(Z)V

    .line 1055
    :goto_0
    return-void

    .line 1051
    :cond_0
    const v1, 0x7f070074

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1052
    .local v0, fancyName:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->setTitle(Ljava/lang/String;)V

    goto :goto_0
.end method
