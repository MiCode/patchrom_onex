.class public Lcom/htc/music/carmode/CarPlaylistBrowseActivity;
.super Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;
.source "CarPlaylistBrowseActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/carmode/CarPlaylistBrowseActivity$PlaylistViewItemLayoutParams;
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

.field private static RECENT_PLAYLIST_POSITION:I = 0x0

.field private static final RENAME_PLAYLIST:I = 0x1d

.field private static final SELECT_ALL:I = 0x1f

.field private static final TAG:Ljava/lang/String; = "[PlaylistBrowserActivityGrid]"

.field private static final UNSELECT_ALL:I = 0x20


# instance fields
.field private list:[I

.field private mAddPlaylistBtnListener:Landroid/view/View$OnClickListener;

.field private mAddToPlaylistData:[I

.field mCols:[Ljava/lang/String;

.field private mCreateShortcut:Z

.field mCursorCols:[Ljava/lang/String;

.field private mDelayFinishHandler:Landroid/os/Handler;

.field private mExitByErrorIntent:Z

.field mItemLayoutParams:Lcom/htc/music/carmode/CarPlaylistBrowseActivity$PlaylistViewItemLayoutParams;

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
    .line 103
    const/4 v0, 0x0

    sput v0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->RECENT_PLAYLIST_POSITION:I

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 71
    invoke-direct {p0}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;-><init>()V

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mAddToPlaylistData:[I

    .line 108
    iput-boolean v2, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mCreateShortcut:Z

    .line 109
    iput v2, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mPickerMode:I

    .line 110
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mRecentPlayedPos:I

    .line 111
    iput-boolean v2, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mExitByErrorIntent:Z

    .line 158
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "name"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mCols:[Ljava/lang/String;

    .line 206
    new-instance v0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity$1;-><init>(Lcom/htc/music/carmode/CarPlaylistBrowseActivity;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mPlaybackStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 734
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "album_id"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mPlaylistMemberCols:[Ljava/lang/String;

    .line 738
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "album_id"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mCursorCols:[Ljava/lang/String;

    .line 743
    iput-boolean v2, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->menuOpened:Z

    .line 744
    new-instance v0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity$8;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity$8;-><init>(Lcom/htc/music/carmode/CarPlaylistBrowseActivity;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mDelayFinishHandler:Landroid/os/Handler;

    .line 796
    new-instance v0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity$9;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity$9;-><init>(Lcom/htc/music/carmode/CarPlaylistBrowseActivity;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mAddPlaylistBtnListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 71
    sget v0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->RECENT_PLAYLIST_POSITION:I

    return v0
.end method

.method static synthetic access$100(Lcom/htc/music/carmode/CarPlaylistBrowseActivity;Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->getPlaylistFirstTrackCursor(Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/music/carmode/CarPlaylistBrowseActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->createNewPlaylist()V

    return-void
.end method

.method private applyMenuStatus(Landroid/view/Menu;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 770
    return-void
.end method

.method private createNewPlaylist()V
    .locals 4

    .prologue
    .line 774
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 775
    .local v0, intent:Landroid/content/Intent;
    const-class v2, Lcom/htc/music/browserlayer/EditPlaylistActivity;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 776
    iget v2, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mPickerMode:I

    if-nez v2, :cond_0

    .line 777
    const-string v2, "addtrack"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 779
    :cond_0
    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_3

    .line 780
    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mParentCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 781
    .local v1, playlistCount:I
    iget-boolean v2, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mCreateShortcut:Z

    if-eqz v2, :cond_1

    if-lez v1, :cond_1

    .line 782
    add-int/lit8 v1, v1, -0x1

    .line 784
    :cond_1
    iget v2, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mRecentPlayedPos:I

    if-ltz v2, :cond_2

    .line 785
    add-int/lit8 v1, v1, -0x1

    .line 786
    :cond_2
    const-string v2, "playlistcount"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 789
    .end local v1           #playlistCount:I
    :cond_3
    iget-object v2, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mAddToPlaylistData:[I

    if-eqz v2, :cond_4

    .line 790
    const-string v2, "AddToPlaylistData"

    iget-object v3, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mAddToPlaylistData:[I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 793
    :cond_4
    const/16 v2, 0x21

    invoke-virtual {p0, v0, v2}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 794
    return-void
.end method

.method private finishactivity()V
    .locals 4

    .prologue
    .line 960
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 961
    .local v0, handler:Landroid/os/Handler;
    new-instance v1, Lcom/htc/music/carmode/CarPlaylistBrowseActivity$11;

    invoke-direct {v1, p0}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity$11;-><init>(Lcom/htc/music/carmode/CarPlaylistBrowseActivity;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 966
    return-void
.end method

.method private getPickerMode()I
    .locals 1

    .prologue
    .line 937
    iget v0, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mPickerMode:I

    return v0
.end method

.method private getPlaylistCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 13
    .parameter "async"
    .parameter "filterstring"

    .prologue
    .line 533
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 534
    .local v12, where:Ljava/lang/StringBuilder;
    const-string v0, "name != \'\'"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    const/4 v6, 0x0

    .line 538
    .local v6, keywords:[Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 539
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 540
    .local v11, searchWords:[Ljava/lang/String;
    array-length v0, v11

    new-array v6, v0, [Ljava/lang/String;

    .line 541
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v8

    .line 542
    .local v8, col:Ljava/text/Collator;
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/text/Collator;->setStrength(I)V

    .line 543
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    array-length v0, v11

    if-ge v10, v0, :cond_0

    .line 544
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

    .line 543
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 546
    :cond_0
    const/4 v10, 0x0

    :goto_1
    array-length v0, v11

    if-ge v10, v0, :cond_1

    .line 547
    const-string v0, " AND "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    const-string v0, "name LIKE ?"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 553
    .end local v8           #col:Ljava/text/Collator;
    .end local v10           #i:I
    .end local v11           #searchWords:[Ljava/lang/String;
    :cond_1
    const/4 v9, 0x0

    .line 554
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz p1, :cond_2

    .line 555
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->setAsyncQueryStatus(Z)V

    .line 556
    const/4 v1, 0x0

    const/4 v2, 0x0

    sget-object v3, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mCols:[Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "name COLLATE NOCASE ASC"

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Lcom/htc/music/util/DlArtAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    :goto_2
    return-object v9

    .line 558
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->setAsyncQueryStatus(Z)V

    .line 559
    sget-object v3, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mCols:[Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "name COLLATE NOCASE ASC"

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lcom/htc/music/carmode/util/CarMusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 560
    const/4 v0, 0x0

    invoke-virtual {p0, v9, v0}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mergeExtraCursor(Landroid/database/Cursor;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto :goto_2
.end method

.method private getPlaylistFirstTrackCursor(Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 11
    .parameter "playlistId"
    .parameter "unknow"

    .prologue
    const/4 v10, 0x0

    .line 618
    const/4 v8, 0x0

    .line 619
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

    .line 620
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 621
    .local v9, where:Ljava/lang/StringBuilder;
    const-string v0, "title != \'\'"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    const-string v0, "-5"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 623
    const-string v0, "[PlaylistBrowserActivityGrid]"

    const-string v1, "prepare recent playlist+"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    sget-object v0, Lcom/htc/music/carmode/util/CarMusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v0, :cond_1

    .line 625
    const/4 v7, 0x0

    .line 627
    .local v7, recentPlayed:[I
    :try_start_0
    sget-object v0, Lcom/htc/music/carmode/util/CarMusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/htc/music/IMediaPlaybackService;->getRecentPlayedPlaylist()[I

    move-result-object v7

    .line 628
    if-eqz v7, :cond_0

    array-length v0, v7

    if-lez v0, :cond_0

    .line 631
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

    .line 641
    const-string v0, " AND is_music>=1"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mCursorCols:[Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/carmode/util/CarMusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 662
    .end local v7           #recentPlayed:[I
    :cond_0
    :goto_0
    const-string v0, "[PlaylistBrowserActivityGrid]"

    const-string v1, "prepare recent playlist-"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    :goto_1
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 676
    invoke-direct {p0, v8}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->joinFirstTrackAlbumArt(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    .line 682
    :goto_2
    return-object v0

    .line 656
    .restart local v7       #recentPlayed:[I
    :catch_0
    move-exception v6

    .line 657
    .local v6, ex:Landroid/os/RemoteException;
    const-string v0, "[PlaylistBrowserActivityGrid]"

    const-string v1, "getTrackCursor - (null != mSelectedPlaylistId && !mRecentPlayedPlaylist)."

    invoke-static {v0, v1, v6}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 660
    .end local v6           #ex:Landroid/os/RemoteException;
    .end local v7           #recentPlayed:[I
    :cond_1
    const-string v0, "[PlaylistBrowserActivityGrid]"

    const-string v1, "service is null"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 666
    :cond_2
    const-string v0, "external"

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mPlaylistMemberCols:[Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "play_order LIMIT 0,1"

    move-object v0, p0

    move-object v4, v10

    invoke-static/range {v0 .. v5}, Lcom/htc/music/carmode/util/CarMusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto :goto_1

    .line 678
    :cond_3
    const-string v0, "[PlaylistBrowserActivityGrid]"

    const-string v1, "ret cursor is null"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v10

    .line 682
    goto :goto_2
.end method

.method private initGridView()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 321
    const v2, 0x7f080073

    invoke-virtual {p0, v2}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/sunny2/view/SSurfaceView;

    iput-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    .line 322
    new-instance v2, Lcom/htc/music/carmode/CarPlaylistBrowseActivity$PlaylistViewItemLayoutParams;

    invoke-direct {v2, p0}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity$PlaylistViewItemLayoutParams;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarPlaylistBrowseActivity$PlaylistViewItemLayoutParams;

    .line 323
    new-instance v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;-><init>(Landroid/content/Context;)V

    .line 324
    .local v0, folderParam:Lcom/htc/music/widget/gridview/MusicGridViewItemParams;
    invoke-direct {p0, v0}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->initMusicGridViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V

    .line 326
    new-instance v1, Lcom/htc/music/widget/gridview/MusicGridViewItem;

    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v2}, Lcom/htc/sunny2/view/SSurfaceView;->getSunnyContext()Lcom/htc/sunny2/SunnyContext;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/htc/music/widget/gridview/MusicGridViewItem;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V

    .line 327
    .local v1, gridViewItem:Lcom/htc/music/widget/gridview/MusicGridViewItem;
    invoke-direct {p0, v1}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->initMusicGridViewItem(Lcom/htc/music/widget/gridview/MusicGridViewItem;)V

    .line 329
    new-instance v2, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-direct {v2, p0, v3, v4}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;-><init>(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/music/widget/gridview/MusicGridViewUtil;)V

    iput-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridViewPreparator:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    .line 330
    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridViewPreparator:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    invoke-direct {p0, v2, v0}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->initGridViewPreparator(Lcom/htc/music/widget/gridview/MusicGridViewPreparator;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V

    .line 331
    invoke-direct {p0}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->initMusicGridViewUtil()V

    .line 332
    new-instance v2, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v3, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v3}, Lcom/htc/sunny2/view/SSurfaceView;->getSunnyContext()Lcom/htc/sunny2/SunnyContext;

    move-result-object v3

    invoke-direct {v2, p0, v3, v1}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Lcom/htc/sunny2/widget/gridview/GridViewItem;)V

    iput-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    .line 333
    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v3, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarPlaylistBrowseActivity$PlaylistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->verticalSpacing:I

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setVerticalSpacing(I)V

    .line 334
    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v3, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarPlaylistBrowseActivity$PlaylistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->horizontalSpacing:I

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setHorizontalSpacing(I)V

    .line 335
    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v3, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridViewItemClickListener:Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setOnItemClickListener(Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;)V

    .line 336
    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v3, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mViewItemLongClickListener:Lcom/htc/sunny2/widget/gridview/GridView$OnItemLongClickListener;

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setOnItemLongClickListener(Lcom/htc/sunny2/widget/gridview/GridView$OnItemLongClickListener;)V

    .line 337
    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v3, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridViewPreparator:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setPreparation(Lcom/htc/sunny2/widget/gridview/GridViewPreparator;)V

    .line 338
    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    const v3, 0x2080001

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setGlobalBackgroundResource(I)V

    .line 340
    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v3, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarPlaylistBrowseActivity$PlaylistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->gridview_marginLeft:I

    iget-object v4, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarPlaylistBrowseActivity$PlaylistViewItemLayoutParams;

    iget v4, v4, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->gridview_marginRight:I

    invoke-virtual {v2, v3, v5, v4, v5}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setPadding(IIII)V

    .line 341
    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v3, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridViewScrollListener:Lcom/htc/sunny2/widget/gridview/interfaces/OnScrollListener;

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setOnScrollListener(Lcom/htc/sunny2/widget/gridview/interfaces/OnScrollListener;)V

    .line 342
    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    iget-object v3, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/view/SSurfaceView;->addView(Lcom/htc/sunny2/view/SView;)V

    .line 343
    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v2, v5}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setVisibility(Z)V

    .line 344
    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setOrientation(I)V

    .line 345
    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridViewPreparator:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    iget-object v3, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v2, v3}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->updateMusicGridViewUtil(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)V

    .line 346
    return-void
.end method

.method private initGridViewPreparator(Lcom/htc/music/widget/gridview/MusicGridViewPreparator;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V
    .locals 2
    .parameter "preparator"
    .parameter "folderParam"

    .prologue
    .line 505
    new-instance v0, Lcom/htc/music/widget/gridview/MusicGridViewParamsPreparator;

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->getWidth(I)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewParamsPreparator;-><init>(I)V

    .line 506
    .local v0, paramsPreparator:Lcom/htc/music/widget/gridview/MusicGridViewParamsPreparator;
    invoke-virtual {p1, p0, v0}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->init(Landroid/content/Context;Lcom/htc/sunny2/IParamsPreparator;)V

    .line 507
    new-instance v1, Lcom/htc/music/carmode/CarPlaylistBrowseActivity$7;

    invoke-direct {v1, p0}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity$7;-><init>(Lcom/htc/music/carmode/CarPlaylistBrowseActivity;)V

    invoke-virtual {p1, v1}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->setUpdateListener(Lcom/htc/sunny2/Preparator$UpdateListener;)V

    .line 528
    return-void
.end method

.method private initMusicGridViewItem(Lcom/htc/music/widget/gridview/MusicGridViewItem;)V
    .locals 1
    .parameter "gridViewItem"

    .prologue
    .line 422
    new-instance v0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity$4;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity$4;-><init>(Lcom/htc/music/carmode/CarPlaylistBrowseActivity;)V

    invoke-virtual {p1, v0}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->setTextViewBindListener(Lcom/htc/music/widget/gridview/MusicGridViewItem$ITextViewBind;)V

    .line 445
    new-instance v0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity$5;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity$5;-><init>(Lcom/htc/music/carmode/CarPlaylistBrowseActivity;)V

    invoke-virtual {p1, v0}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->setViewItemImageGetter(Lcom/htc/music/widget/gridview/MusicGridViewItem$ViewItemImageGetter;)V

    .line 470
    return-void
.end method

.method private initMusicGridViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V
    .locals 4
    .parameter "folderParam"

    .prologue
    .line 392
    new-instance v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    invoke-direct {v0}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;-><init>()V

    .line 393
    .local v0, backgroundParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    const v3, 0x7f020018

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->defaultResourceId:I

    .line 394
    iget-object v3, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarPlaylistBrowseActivity$PlaylistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_width:I

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->width:I

    .line 395
    iget-object v3, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarPlaylistBrowseActivity$PlaylistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_height:I

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->height:I

    .line 396
    iget-object v3, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarPlaylistBrowseActivity$PlaylistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_marginLeft:I

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginLeft:I

    .line 397
    iget-object v3, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarPlaylistBrowseActivity$PlaylistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_marginTop:I

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginTop:I

    .line 398
    const/4 v3, 0x1

    invoke-virtual {p1, v0, v3}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;I)V

    .line 404
    new-instance v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    invoke-direct {v2}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;-><init>()V

    .line 405
    .local v2, thumbnail:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    const v3, 0x7f02001a

    iput v3, v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->defaultResourceId:I

    .line 406
    iget-object v3, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarPlaylistBrowseActivity$PlaylistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->thumb_marginLeft:I

    iput v3, v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginLeft:I

    .line 407
    iget-object v3, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarPlaylistBrowseActivity$PlaylistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->thumb_marginTop:I

    iput v3, v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginTop:I

    .line 408
    const/4 v3, 0x3

    invoke-virtual {p1, v2, v3}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;I)V

    .line 409
    new-instance v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    invoke-direct {v1}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;-><init>()V

    .line 410
    .local v1, textLayout:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    iget-object v3, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarPlaylistBrowseActivity$PlaylistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_height:I

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->height:I

    .line 411
    iget-object v3, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarPlaylistBrowseActivity$PlaylistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_width:I

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->width:I

    .line 412
    const v3, 0x7f030012

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->defaultResourceId:I

    .line 413
    iget-object v3, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarPlaylistBrowseActivity$PlaylistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_marginLeft:I

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginLeft:I

    .line 414
    iget-object v3, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarPlaylistBrowseActivity$PlaylistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_marginTop:I

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginTop:I

    .line 415
    const/4 v3, 0x4

    invoke-virtual {p1, v1, v3}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;I)V

    .line 417
    iget-object v3, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarPlaylistBrowseActivity$PlaylistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->width:I

    invoke-virtual {p1, v3}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setItemWidth(I)V

    .line 418
    iget-object v3, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarPlaylistBrowseActivity$PlaylistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->height:I

    invoke-virtual {p1, v3}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setItemHeight(I)V

    .line 419
    return-void
.end method

.method private initMusicGridViewUtil()V
    .locals 4

    .prologue
    .line 473
    new-instance v1, Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    sget-object v2, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->PLAYLIST_TYPE:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, p0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;-><init>(Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    .line 475
    new-instance v0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity$6;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity$6;-><init>(Lcom/htc/music/carmode/CarPlaylistBrowseActivity;)V

    .line 501
    .local v0, musicGridViewItemUpdater:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MusicGridViewItemUpdater;
    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v1, v0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->setMusicGridViewItemUpdater(Lcom/htc/music/widget/gridview/MusicGridViewUtil$MusicGridViewItemUpdater;)V

    .line 502
    return-void
.end method

.method private joinFirstTrackAlbumArt(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 14
    .parameter "c"

    .prologue
    .line 686
    if-nez p1, :cond_0

    .line 687
    const/4 v0, 0x0

    .line 731
    :goto_0
    return-object v0

    .line 689
    :cond_0
    instance-of v0, p1, Lcom/htc/music/widget/AlbumArtCursorWrapper;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/htc/music/util/AlbumArtMergeCursor;

    if-eqz v0, :cond_2

    :cond_1
    move-object v0, p1

    .line 690
    goto :goto_0

    .line 693
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 694
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 695
    .local v8, albumArtMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 696
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

    .line 697
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

    .line 701
    .local v2, cols:[Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "album_key"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/carmode/util/CarMusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 703
    .local v10, artCursor:Landroid/database/Cursor;
    if-eqz v10, :cond_3

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 704
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v10}, Lcom/htc/music/carmode/util/CarMusicUtils;->mergeDlAlbumArt(Landroid/content/Context;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v10

    .line 705
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 706
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_4

    .line 707
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 708
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 713
    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 714
    const/4 p1, 0x0

    .line 715
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 718
    :cond_4
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 719
    .local v6, albumArt:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 720
    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_5

    .line 721
    new-instance v12, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 722
    .local v12, row:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const-string v0, "album_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 723
    .local v9, albumIdx:I
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 724
    .local v11, id:I
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 725
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 726
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 727
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2

    .line 730
    .end local v9           #albumIdx:I
    .end local v11           #id:I
    .end local v12           #row:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_5
    new-instance v7, Lcom/htc/music/util/ArrayListCursor;

    invoke-direct {v7, v2, v6}, Lcom/htc/music/util/ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 731
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

    .line 941
    iget v4, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mPickerMode:I

    if-eq v4, v7, :cond_0

    iget v4, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mPickerMode:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    .line 950
    :goto_0
    return-void

    .line 944
    :cond_0
    const v4, 0x7f07005e

    invoke-virtual {p0, v4}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 945
    .local v1, text:Ljava/lang/String;
    iget v4, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mPickerMode:I

    if-ne v4, v7, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f07006a

    invoke-virtual {p0, v5}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 947
    :goto_1
    const v4, 0x7f08001d

    invoke-virtual {p0, v4}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    .line 948
    .local v0, Save:Lcom/htc/widget/HtcFooterButton;
    if-lez p1, :cond_2

    :goto_2
    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 949
    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 945
    .end local v0           #Save:Lcom/htc/widget/HtcFooterButton;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x2040214

    invoke-virtual {p0, v5}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->getString(I)Ljava/lang/String;

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

    .line 948
    goto :goto_2
.end method


# virtual methods
.method public categoryRightAction()Z
    .locals 2

    .prologue
    .line 890
    new-instance v0, Lcom/htc/music/NpCategory;

    const/16 v1, 0x16

    invoke-direct {v0, v1}, Lcom/htc/music/NpCategory;-><init>(S)V

    .line 891
    .local v0, npc:Lcom/htc/music/NpCategory;
    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/htc/music/carmode/util/CarMusicUtils;->playAllPlaylist(Landroid/content/Context;ZLcom/htc/music/NpCategory;)V

    .line 892
    const/4 v1, 0x1

    return v1
.end method

.method public clickIndexInit(I)V
    .locals 2
    .parameter "globalIndex"

    .prologue
    .line 969
    iput p1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mParentClickedIndex:I

    iput p1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    .line 970
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentMediaDataId(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mCurrentPlaylistId:Ljava/lang/String;

    .line 971
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentMediaDataName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mCurrentPlaylistName:Ljava/lang/String;

    .line 972
    return-void
.end method

.method protected getParentCursor()Landroid/database/Cursor;
    .locals 2

    .prologue
    .line 897
    iget-object v0, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->getPlaylistCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected getUnknownCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "where"

    .prologue
    .line 902
    const/4 v0, 0x0

    return-object v0
.end method

.method initButtonsPanel()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    .line 358
    iget v4, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mPickerMode:I

    if-eq v4, v7, :cond_0

    iget v4, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mPickerMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 359
    :cond_0
    const v4, 0x7f08004d

    invoke-virtual {p0, v4}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    .line 360
    .local v3, savePanelStub:Landroid/view/ViewStub;
    invoke-virtual {v3, v6}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 361
    const v4, 0x7f08004e

    invoke-virtual {p0, v4}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcFooter;

    .line 362
    .local v2, savePanel:Lcom/htc/widget/HtcFooter;
    const v4, 0x7f08001d

    invoke-virtual {p0, v4}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcFooterButton;

    .line 363
    .local v1, Save:Lcom/htc/widget/HtcFooterButton;
    const v4, 0x2040145

    invoke-virtual {p0, v4}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcFooterButton;->setText(Ljava/lang/CharSequence;)V

    .line 364
    iget v4, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mPickerMode:I

    if-ne v4, v7, :cond_2

    .line 365
    const v4, 0x20800a6

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcFooterButton;->setImageResource(I)V

    .line 369
    :goto_0
    new-instance v4, Lcom/htc/music/carmode/CarPlaylistBrowseActivity$2;

    invoke-direct {v4, p0}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity$2;-><init>(Lcom/htc/music/carmode/CarPlaylistBrowseActivity;)V

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 375
    const v4, 0x7f08001c

    invoke-virtual {p0, v4}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    .line 376
    .local v0, Cancel:Lcom/htc/widget/HtcFooterButton;
    const v4, 0x2040152

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 377
    const v4, 0x20800a3

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcFooterButton;->setImageResource(I)V

    .line 378
    new-instance v4, Lcom/htc/music/carmode/CarPlaylistBrowseActivity$3;

    invoke-direct {v4, p0}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity$3;-><init>(Lcom/htc/music/carmode/CarPlaylistBrowseActivity;)V

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 385
    invoke-virtual {v2, v6}, Lcom/htc/widget/HtcFooter;->setVisibility(I)V

    .line 388
    .end local v0           #Cancel:Lcom/htc/widget/HtcFooterButton;
    .end local v1           #Save:Lcom/htc/widget/HtcFooterButton;
    .end local v2           #savePanel:Lcom/htc/widget/HtcFooter;
    .end local v3           #savePanelStub:Landroid/view/ViewStub;
    :cond_1
    invoke-direct {p0, v6}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->updateButtonCounter(I)V

    .line 389
    return-void

    .line 367
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

    .line 568
    if-nez p1, :cond_0

    .line 569
    const/4 p1, 0x0

    .line 614
    .end local p1
    :goto_0
    return-object p1

    .line 571
    .restart local p1
    :cond_0
    instance-of v5, p1, Landroid/database/MergeCursor;

    if-eqz v5, :cond_1

    .line 573
    const-string v5, "[PlaylistBrowserActivityGrid]"

    const-string v6, "Already wrapped"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 576
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 577
    .local v2, extraPlaylists:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    iget-boolean v5, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mCreateShortcut:Z

    if-eqz v5, :cond_2

    .line 578
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 579
    .local v0, all:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v5, -0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 580
    const v5, 0x7f07000a

    invoke-virtual {p0, v5}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 581
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 601
    .end local v0           #all:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_2
    iget v5, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mPickerMode:I

    if-nez v5, :cond_3

    iget-boolean v5, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mCreateShortcut:Z

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mAddToPlaylistData:[I

    if-nez v5, :cond_3

    .line 602
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 603
    .local v4, recent:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const-string v5, "-5"

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 604
    const v5, 0x7f070119

    invoke-virtual {p0, v5}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 605
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 606
    iput v7, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mRecentPlayedPos:I

    .line 609
    .end local v4           #recent:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_3
    new-instance v3, Lcom/htc/music/util/ArrayListCursor;

    iget-object v5, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mCols:[Ljava/lang/String;

    invoke-direct {v3, v5, v2}, Lcom/htc/music/util/ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 611
    .local v3, extraPlaylistsCursor:Lcom/htc/music/util/ArrayListCursor;
    new-instance v1, Landroid/database/MergeCursor;

    new-array v5, v6, [Landroid/database/Cursor;

    aput-object v3, v5, v7

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-direct {v1, v5}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .local v1, cc:Landroid/database/Cursor;
    move-object p1, v1

    .line 614
    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    const/4 v3, -0x1

    .line 843
    sparse-switch p1, :sswitch_data_0

    .line 885
    :cond_0
    :goto_0
    return-void

    .line 845
    :sswitch_0
    if-nez p2, :cond_1

    .line 846
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->finish()V

    goto :goto_0

    .line 848
    :cond_1
    iget-object v3, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    if-eqz v3, :cond_0

    .line 849
    iget-object v3, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->getPlaylistCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto :goto_0

    .line 854
    :sswitch_1
    if-ne p2, v3, :cond_2

    .line 855
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->setTitle()V

    .line 857
    :cond_2
    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->getPickerMode()I

    move-result v4

    if-ne v3, v4, :cond_0

    invoke-virtual {p0}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->getParent()Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_0

    .line 858
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->finish()V

    goto :goto_0

    .line 863
    :sswitch_2
    if-ne p2, v3, :cond_0

    .line 864
    const-string v3, "playlist"

    const/4 v4, 0x0

    invoke-virtual {p3, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 865
    .local v1, playlist:I
    iget-object v3, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v4, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    invoke-virtual {v3, v4}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentMediaDataId(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {p0, v3, v4}, Lcom/htc/music/carmode/util/CarMusicUtils;->getSongListForPlaylist(Landroid/content/Context;J)[I

    move-result-object v0

    .line 866
    .local v0, list:[I
    int-to-long v3, v1

    invoke-static {p0, v0, v3, v4}, Lcom/htc/music/carmode/util/CarMusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    goto :goto_0

    .line 870
    .end local v0           #list:[I
    .end local v1           #playlist:I
    :sswitch_3
    if-ne p2, v3, :cond_0

    .line 871
    const-string v3, "selectedlist"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 872
    .local v2, selectedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {v2}, Lcom/htc/music/carmode/util/CarMusicUtils;->toIntList(Ljava/util/ArrayList;)[I

    move-result-object v0

    .line 873
    .restart local v0       #list:[I
    invoke-static {p0, v0}, Lcom/htc/music/carmode/util/CarMusicUtils;->deletePlaylists(Landroid/content/Context;[I)V

    .line 874
    iget-object v3, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v3}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentItemSelectedList()Ljava/util/ArrayList;

    move-result-object v2

    .line 875
    invoke-static {v2}, Lcom/htc/music/carmode/util/CarMusicUtils;->toIntList(Ljava/util/ArrayList;)[I

    move-result-object v0

    .line 876
    iget-object v3, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget-object v4, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v3, v0, v4}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->deleteParentItems([ILcom/htc/sunny2/widget/gridview/ExpandableGridView;)V

    .line 882
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->setTitle()V

    goto :goto_0

    .line 843
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0xb -> :sswitch_0
        0x21 -> :sswitch_1
        0x22 -> :sswitch_3
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 223
    invoke-super {p0, p1}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->onCreate(Landroid/os/Bundle;)V

    .line 225
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 226
    .local v5, intent:Landroid/content/Intent;
    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, action:Ljava/lang/String;
    const-string v6, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 228
    iput-boolean v9, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mCreateShortcut:Z

    .line 230
    :cond_0
    if-eqz p1, :cond_4

    .line 231
    const-string v6, "pickermode"

    invoke-virtual {p1, v6, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mPickerMode:I

    .line 232
    const-string v6, "AddToPlaylistData"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v6

    iput-object v6, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mAddToPlaylistData:[I

    .line 239
    :goto_0
    const/4 v6, 0x3

    invoke-virtual {p0, v6}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->setVolumeControlStream(I)V

    .line 241
    iput-boolean v8, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mExitByErrorIntent:Z

    .line 243
    const-string v6, "android.intent.action.VIEW"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 246
    const/4 v4, -0x1

    .line 248
    .local v4, id:I
    :try_start_0
    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "playlist"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    .line 261
    const/4 v6, -0x2

    if-ne v4, v6, :cond_1

    .line 262
    invoke-static {p0}, Lcom/htc/music/carmode/util/CarMusicUtils;->getAllSongsAndPrepare(Landroid/content/Context;)[I

    move-result-object v6

    iput-object v6, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->list:[I

    .line 263
    iget-object v6, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->list:[I

    if-nez v6, :cond_1

    .line 264
    const v6, 0x7f07005f

    invoke-static {p0, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 265
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->finish()V

    .line 272
    .end local v4           #id:I
    :cond_1
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 273
    .local v2, f:Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 274
    const-string v6, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 275
    const-string v6, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 276
    const-string v6, "file"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 277
    iget-object v6, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v6, v2}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 280
    iput-object p0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mContext:Landroid/content/Context;

    .line 281
    iget-object v6, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    if-nez v6, :cond_2

    new-instance v6, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$QueryHandler;

    invoke-virtual {p0}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-direct {v6, p0, v7}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$QueryHandler;-><init>(Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;Landroid/content/ContentResolver;)V

    iput-object v6, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    .line 282
    :cond_2
    iget-object v6, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    invoke-direct {p0, v6, v10}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->getPlaylistCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    .line 283
    invoke-virtual {p0, v9}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->setCategoryProgressVisible(Z)V

    .line 291
    invoke-direct {p0}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->getPickerMode()I

    move-result v6

    if-nez v6, :cond_5

    iget-boolean v6, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mCreateShortcut:Z

    if-nez v6, :cond_5

    .line 292
    const v6, 0x7f03002a

    invoke-virtual {p0, v6}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->setContentView(I)V

    .line 293
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 294
    .local v3, filter:Landroid/content/IntentFilter;
    const-string v6, "com.htc.music.recentplayedchanged"

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 295
    iget-object v6, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mPlaybackStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v6, v3}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 307
    .end local v3           #filter:Landroid/content/IntentFilter;
    :goto_1
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->initButtonsPanel()V

    .line 308
    invoke-direct {p0}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->initGridView()V

    .line 309
    iget v6, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mPickerMode:I

    if-ne v6, v9, :cond_3

    invoke-static {p0}, Lcom/htc/music/carmode/util/CarMusicUtils;->checkPlaylistCount(Landroid/content/Context;)I

    move-result v6

    if-gtz v6, :cond_3

    .line 310
    invoke-direct {p0}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->createNewPlaylist()V

    .line 311
    invoke-virtual {p0, v8, v10}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->setResult(ILandroid/content/Intent;)V

    .line 312
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->finish()V

    .line 318
    .end local v2           #f:Landroid/content/IntentFilter;
    :cond_3
    :goto_2
    return-void

    .line 234
    :cond_4
    const-string v6, "pickermode"

    invoke-virtual {v5, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mPickerMode:I

    .line 235
    const-string v6, "AddToPlaylistData"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v6

    iput-object v6, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mAddToPlaylistData:[I

    goto/16 :goto_0

    .line 249
    .restart local v4       #id:I
    :catch_0
    move-exception v1

    .line 250
    .local v1, e:Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 251
    iput-boolean v9, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mExitByErrorIntent:Z

    .line 252
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->finish()V

    goto :goto_2

    .line 254
    .end local v1           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 255
    .local v1, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 256
    iput-boolean v9, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mExitByErrorIntent:Z

    .line 257
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->finish()V

    goto :goto_2

    .line 297
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .end local v4           #id:I
    .restart local v2       #f:Landroid/content/IntentFilter;
    :cond_5
    const v6, 0x7f03002b

    invoke-virtual {p0, v6}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->setContentView(I)V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 177
    invoke-direct {p0}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->getPickerMode()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mCreateShortcut:Z

    if-nez v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mPlaybackStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 180
    :cond_0
    invoke-super {p0}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->onDestroy()V

    .line 181
    return-void
.end method

.method protected onGridViewChildItemPrepare(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 1212
    return-void
.end method

.method protected onGridViewItemClick(Landroid/os/Message;)V
    .locals 13
    .parameter "msg"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, -0x1

    .line 976
    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v8}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->clickIndexInit(I)V

    .line 977
    invoke-direct {p0}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->getPickerMode()I

    move-result v8

    const/4 v9, 0x2

    if-eq v8, v9, :cond_0

    invoke-direct {p0}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->getPickerMode()I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_1

    .line 978
    :cond_0
    iget-object v8, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v9, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    invoke-virtual {v8, v9}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->switchParentItemSelectedStatus(I)I

    move-result v8

    invoke-direct {p0, v8}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->updateButtonCounter(I)V

    .line 979
    iget-object v8, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget v9, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    invoke-virtual {v8, v9}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->notifyMediaDataChange(I)V

    .line 1055
    :goto_0
    return-void

    .line 987
    :cond_1
    invoke-direct {p0}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->getPickerMode()I

    move-result v8

    if-ne v8, v12, :cond_2

    .line 988
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 989
    .local v1, intent:Landroid/content/Intent;
    iget-object v8, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mCurrentPlaylistId:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 990
    .local v4, playlist:J
    const-string v8, "playlist"

    long-to-int v9, v4

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 991
    invoke-virtual {p0, v10, v1}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->setResult(ILandroid/content/Intent;)V

    .line 999
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->finish()V

    goto :goto_0

    .line 1003
    .end local v1           #intent:Landroid/content/Intent;
    .end local v4           #playlist:J
    :cond_2
    iget-boolean v8, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mCreateShortcut:Z

    if-eqz v8, :cond_3

    .line 1004
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 1005
    .local v7, shortcut:Landroid/content/Intent;
    const-string v8, "android.intent.action.VIEW"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1006
    sget-object v8, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v9, "com.htc.media/playlist"

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1007
    const-string v8, "playlist"

    iget-object v9, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mCurrentPlaylistId:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1009
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1010
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v8, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v1, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1011
    const-string v8, "android.intent.extra.shortcut.NAME"

    iget-object v9, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mCurrentPlaylistName:Ljava/lang/String;

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1012
    const-string v8, "android.intent.extra.shortcut.ICON_RESOURCE"

    const v9, 0x7f02003a

    invoke-static {p0, v9}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1015
    invoke-virtual {p0, v10, v1}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->setResult(ILandroid/content/Intent;)V

    .line 1018
    new-instance v2, Landroid/content/Intent;

    const-string v8, "com.htc.launcher.ThemeChooser.action.silder_change"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1019
    .local v2, intent2:Landroid/content/Intent;
    const-string v8, "silder_state"

    invoke-virtual {v2, v8, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1020
    invoke-virtual {p0, v2}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1021
    invoke-direct {p0}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->finishactivity()V

    goto :goto_0

    .line 1027
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #intent2:Landroid/content/Intent;
    .end local v7           #shortcut:Landroid/content/Intent;
    :cond_3
    iget v8, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mPickerMode:I

    if-ne v8, v12, :cond_4

    .line 1028
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1029
    .restart local v1       #intent:Landroid/content/Intent;
    iget v6, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    .line 1030
    .local v6, playlistId:I
    const-string v8, "playlist_id"

    invoke-virtual {v1, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1031
    invoke-virtual {p0, v10, v1}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->setResult(ILandroid/content/Intent;)V

    .line 1032
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->finish()V

    goto/16 :goto_0

    .line 1041
    .end local v1           #intent:Landroid/content/Intent;
    .end local v6           #playlistId:I
    :cond_4
    iget v8, p1, Landroid/os/Message;->arg1:I

    iget v9, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mRecentPlayedPos:I

    if-ne v8, v9, :cond_5

    .line 1043
    :try_start_0
    sget-object v8, Lcom/htc/music/carmode/util/CarMusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v8}, Lcom/htc/music/IMediaPlaybackService;->getRecentPlayedPlaylist()[I

    move-result-object v3

    .line 1044
    .local v3, list:[I
    iget-object v8, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v8, v3, v9, v10}, Lcom/htc/music/carmode/util/CarMusicUtils;->playAllAndPrepare(Landroid/content/Context;[IILcom/htc/music/NpCategory;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1045
    .end local v3           #list:[I
    :catch_0
    move-exception v0

    .line 1047
    .local v0, e:Landroid/os/RemoteException;
    const-string v8, "[PlaylistBrowserActivityGrid]"

    const-string v9, "Unable to get recent played playlist."

    invoke-static {v8, v9, v0}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1050
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_5
    iget-object v8, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mCurrentPlaylistId:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {v8, v9, v10}, Lcom/htc/music/carmode/util/CarMusicUtils;->getSongListForPlaylist(Landroid/content/Context;J)[I

    move-result-object v3

    .line 1051
    .restart local v3       #list:[I
    iget-object v8, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mContext:Landroid/content/Context;

    new-instance v9, Lcom/htc/music/NpCategory;

    const/16 v10, 0x14

    invoke-direct {v9, v10}, Lcom/htc/music/NpCategory;-><init>(S)V

    iget-object v10, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mCurrentPlaylistId:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/music/NpCategory;->setPlaylistId(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    move-result-object v9

    invoke-static {v8, v3, v11, v9}, Lcom/htc/music/carmode/util/CarMusicUtils;->playAllAndPrepare(Landroid/content/Context;[IILcom/htc/music/NpCategory;)V

    goto/16 :goto_0
.end method

.method protected onGridViewItemDelete(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 1226
    return-void
.end method

.method protected onGridViewItemDeleteComplete()V
    .locals 0

    .prologue
    .line 1232
    return-void
.end method

.method protected onGridViewItemLongClick(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 1126
    return-void
.end method

.method protected onGridViewPrepareUpdateListReady(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 1206
    return-void
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1
    .parameter "featureId"
    .parameter "menu"

    .prologue
    .line 760
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->menuOpened:Z

    .line 763
    invoke-direct {p0, p2}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->applyMenuStatus(Landroid/view/Menu;)V

    .line 765
    invoke-super {p0, p1, p2}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onSaveClick()V
    .locals 3

    .prologue
    .line 349
    invoke-direct {p0}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->getPickerMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    invoke-direct {p0}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->getPickerMode()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 350
    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 351
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "selectedlist"

    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v2}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentItemIdFieldSelectedList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 352
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->setResult(ILandroid/content/Intent;)V

    .line 354
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->finish()V

    .line 355
    return-void
.end method

.method protected playAllAction(Z)Z
    .locals 3
    .parameter "forceShuffle"

    .prologue
    const/4 v2, 0x1

    .line 931
    invoke-static {p0}, Lcom/htc/music/carmode/util/CarMusicUtils;->SetDLNASuffleMode(Landroid/content/Context;)V

    .line 932
    new-instance v0, Lcom/htc/music/NpCategory;

    const/16 v1, 0x16

    invoke-direct {v0, v1}, Lcom/htc/music/NpCategory;-><init>(S)V

    invoke-static {p0, v2, v0}, Lcom/htc/music/carmode/util/CarMusicUtils;->playAllPlaylist(Landroid/content/Context;ZLcom/htc/music/NpCategory;)V

    .line 933
    return v2
.end method

.method protected setCategoryRightBtn(Z)V
    .locals 10
    .parameter "setEnable"

    .prologue
    const v9, 0x7f07006a

    const/high16 v8, 0x208

    const/4 v7, 0x1

    .line 803
    const/4 v5, 0x0

    .line 808
    .local v5, setEnableInt:I
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->isActivityResumed()Z

    move-result v6

    if-nez v6, :cond_1

    .line 809
    const-string v6, "[PlaylistBrowserActivityGrid]"

    const-string v7, "activity is paused, do not set category right button status"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    :cond_0
    :goto_0
    return-void

    .line 813
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v4

    .line 814
    .local v4, parent:Landroid/app/Activity;
    instance-of v6, v4, Lcom/htc/music/carmode/IMusicTabActivityInterface;

    if-eqz v6, :cond_0

    move-object v3, v4

    .line 815
    check-cast v3, Lcom/htc/music/carmode/IMusicTabActivityInterface;

    .line 818
    .local v3, multiParent:Lcom/htc/music/carmode/IMusicTabActivityInterface;
    if-eqz p1, :cond_2

    .line 819
    invoke-interface {v3, v7}, Lcom/htc/music/carmode/IMusicTabActivityInterface;->setCategoryRightBtnEnable(Z)V

    .line 821
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 822
    .local v1, enableAddIcon:Landroid/graphics/drawable/Drawable;
    const/16 v6, 0xff

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 823
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 824
    .local v2, label:Ljava/lang/String;
    invoke-interface {v3, v1, v2}, Lcom/htc/music/carmode/IMusicTabActivityInterface;->setCategoryRightBtnImage(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 825
    new-instance v6, Lcom/htc/music/carmode/CarPlaylistBrowseActivity$10;

    invoke-direct {v6, p0}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity$10;-><init>(Lcom/htc/music/carmode/CarPlaylistBrowseActivity;)V

    invoke-interface {v3, v6}, Lcom/htc/music/carmode/IMusicTabActivityInterface;->setCategoryRightBtnOnClick(Landroid/view/View$OnClickListener;)V

    .line 837
    .end local v1           #enableAddIcon:Landroid/graphics/drawable/Drawable;
    :goto_1
    invoke-interface {v3, v7}, Lcom/htc/music/carmode/IMusicTabActivityInterface;->setCategoryRightBtnVisible(Z)V

    goto :goto_0

    .line 831
    .end local v2           #label:Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 832
    .local v0, disableAddIcon:Landroid/graphics/drawable/Drawable;
    const/16 v6, 0x6e

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 833
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 834
    .restart local v2       #label:Ljava/lang/String;
    const/4 v6, 0x0

    invoke-interface {v3, v6}, Lcom/htc/music/carmode/IMusicTabActivityInterface;->setCategoryRightBtnEnable(Z)V

    .line 835
    invoke-interface {v3, v0, v2}, Lcom/htc/music/carmode/IMusicTabActivityInterface;->setCategoryRightBtnImage(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected setEmptyView()V
    .locals 1

    .prologue
    .line 907
    const v0, 0x7f07003a

    invoke-virtual {p0, v0}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->showEmptyView(I)V

    .line 908
    return-void
.end method

.method protected setTitle()V
    .locals 2

    .prologue
    .line 913
    invoke-direct {p0}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->getPickerMode()I

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->mCreateShortcut:Z

    if-nez v1, :cond_0

    .line 914
    const v1, 0x7f07002b

    invoke-virtual {p0, v1}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->setCatgoryMainTitle(Ljava/lang/String;)V

    .line 915
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->setCategorySecondaryTitleVisible(Z)V

    .line 927
    :goto_0
    return-void

    .line 923
    :cond_0
    const v1, 0x7f070074

    invoke-virtual {p0, v1}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 924
    .local v0, fancyName:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
