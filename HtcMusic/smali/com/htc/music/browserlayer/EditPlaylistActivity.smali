.class public Lcom/htc/music/browserlayer/EditPlaylistActivity;
.super Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;
.source "EditPlaylistActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Lcom/htc/music/util/MusicUtils$Defs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/browserlayer/EditPlaylistActivity$QueryHandler;,
        Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistItemInfo;,
        Lcom/htc/music/browserlayer/EditPlaylistActivity$EditTextWatcher;,
        Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;,
        Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;
    }
.end annotation


# static fields
.field public static final PLAY_LIST_ID:Ljava/lang/String; = "playlistid"

.field public static final PLAY_LIST_NAME:Ljava/lang/String; = "playlistname"

.field private static TAG:Ljava/lang/String; = null

.field private static final TITLE_DEFAULT_SORT_ORDER:Ljava/lang/String; = "title COLLATE NOCASE ASC"


# instance fields
.field private final ADD_SONGS:I

.field private final SELECT_ALL:I

.field private final UNSELECT_ALL:I

.field private mAdapter:Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;

.field private mAdapterSent:Z

.field private mAddSongsBtnListener:Landroid/view/View$OnClickListener;

.field mAsyncQuerying:Z

.field private mCursorCols:[Ljava/lang/String;

.field private mDropListener:Lcom/htc/widget/HtcReorderListView$DropListener;

.field mEdit:Lcom/htc/widget/ActionBarSearch;

.field private mIsAddSongs:Z

.field private mIsDrop:Z

.field public mNewPlaylist:Z

.field private mOriginalPlaylistName:Ljava/lang/String;

.field private mPlayListName:Landroid/widget/AutoCompleteTextView;

.field mPlaylistItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field mPlaylistMemberCols:[Ljava/lang/String;

.field private mQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

.field private mScanListener:Landroid/content/BroadcastReceiver;

.field private mSelectedPlaylistId:Ljava/lang/String;

.field private mSortOrder:Ljava/lang/String;

.field private mTrackCursor:Landroid/database/Cursor;

.field private mTrackList:Lcom/htc/widget/HtcListView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    const-string v0, "[EditPlaylistActivity]"

    sput-object v0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 121
    invoke-direct {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;-><init>()V

    .line 79
    const/16 v0, 0x21

    iput v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->ADD_SONGS:I

    .line 81
    const/16 v0, 0x25

    iput v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->SELECT_ALL:I

    .line 83
    const/16 v0, 0x26

    iput v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->UNSELECT_ALL:I

    .line 96
    iput-boolean v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mAdapterSent:Z

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlaylistItemList:Ljava/util/ArrayList;

    .line 108
    iput-boolean v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mAsyncQuerying:Z

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlaylistMemberCols:[Ljava/lang/String;

    .line 116
    iput-boolean v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mNewPlaylist:Z

    .line 118
    iput-boolean v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mIsDrop:Z

    .line 119
    iput-boolean v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mIsAddSongs:Z

    .line 417
    new-instance v0, Lcom/htc/music/browserlayer/EditPlaylistActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/EditPlaylistActivity$1;-><init>(Lcom/htc/music/browserlayer/EditPlaylistActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    .line 1415
    new-instance v0, Lcom/htc/music/browserlayer/EditPlaylistActivity$5;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/EditPlaylistActivity$5;-><init>(Lcom/htc/music/browserlayer/EditPlaylistActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mAddSongsBtnListener:Landroid/view/View$OnClickListener;

    .line 1421
    new-instance v0, Lcom/htc/music/browserlayer/EditPlaylistActivity$6;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/EditPlaylistActivity$6;-><init>(Lcom/htc/music/browserlayer/EditPlaylistActivity;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mDropListener:Lcom/htc/widget/HtcReorderListView$DropListener;

    .line 122
    return-void
.end method

.method static synthetic access$100(Lcom/htc/music/browserlayer/EditPlaylistActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->setLandscapeIMEbutton()V

    return-void
.end method

.method static synthetic access$1000(Lcom/htc/music/browserlayer/EditPlaylistActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mSelectedPlaylistId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/music/browserlayer/EditPlaylistActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->goToPicker()V

    return-void
.end method

.method static synthetic access$1202(Lcom/htc/music/browserlayer/EditPlaylistActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mIsDrop:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/htc/music/browserlayer/EditPlaylistActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/htc/music/widget/MusicMaActivity;->mIsEnhancerExist:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/htc/music/browserlayer/EditPlaylistActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->addSong(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/music/browserlayer/EditPlaylistActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->joinAlbumArt(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/music/browserlayer/EditPlaylistActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/htc/music/widget/MusicMaActivity;->mIsEnhancerExist:Z

    return v0
.end method

.method static synthetic access$400(Lcom/htc/music/browserlayer/EditPlaylistActivity;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mCursorCols:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/music/browserlayer/EditPlaylistActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mTrackCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$702(Lcom/htc/music/browserlayer/EditPlaylistActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mTrackCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$800(Lcom/htc/music/browserlayer/EditPlaylistActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->getTrackCursor()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/music/browserlayer/EditPlaylistActivity;Ljava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->getPlaylistId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private addSong(I)V
    .locals 2
    .parameter "audioId"

    .prologue
    .line 635
    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlaylistItemList:Ljava/util/ArrayList;

    new-instance v1, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistItemInfo;

    invoke-direct {v1, p0, p1}, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistItemInfo;-><init>(Lcom/htc/music/browserlayer/EditPlaylistActivity;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 636
    return-void
.end method

.method private createPlaylist(Ljava/lang/String;)I
    .locals 7
    .parameter "name"

    .prologue
    .line 327
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 328
    :cond_0
    const/4 v0, -0x1

    .line 348
    :cond_1
    :goto_0
    return v0

    .line 330
    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 331
    .local v1, resolver:Landroid/content/ContentResolver;
    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->getPlaylistId(Ljava/lang/String;)I

    move-result v0

    .line 332
    .local v0, id:I
    const/4 v2, 0x0

    .line 333
    .local v2, uri:Landroid/net/Uri;
    if-ltz v0, :cond_3

    .line 334
    sget-object v4, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    int-to-long v5, v0

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 335
    invoke-static {p0, v0}, Lcom/htc/music/util/MusicUtils;->clearPlaylist(Landroid/content/Context;I)V

    goto :goto_0

    .line 337
    :cond_3
    new-instance v3, Landroid/content/ContentValues;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 338
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "name"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    sget-object v4, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 340
    invoke-direct {p0, v2}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->getPlaylistId(Landroid/net/Uri;)I

    move-result v0

    .line 343
    if-lez v0, :cond_1

    .line 344
    invoke-static {p0}, Lcom/htc/music/util/ShowMeHelper;->notifyCreatePlaylist(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private getCheckedItemCount()I
    .locals 4

    .prologue
    .line 624
    const/4 v0, 0x0

    .line 626
    .local v0, count:I
    iget-object v3, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlaylistItemList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistItemInfo;

    .line 627
    .local v2, item:Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistItemInfo;
    iget-boolean v3, v2, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistItemInfo;->mChecked:Z

    if-eqz v3, :cond_0

    .line 628
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 631
    .end local v2           #item:Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistItemInfo;
    :cond_1
    return v0
.end method

.method private getListCursor()Landroid/database/Cursor;
    .locals 2

    .prologue
    .line 666
    new-instance v0, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;

    iget-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mCursorCols:[Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;-><init>(Lcom/htc/music/browserlayer/EditPlaylistActivity;[Ljava/lang/String;)V

    .line 667
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_0

    .line 668
    const/4 v0, 0x0

    .line 669
    .end local v0           #cursor:Landroid/database/Cursor;
    :cond_0
    return-object v0
.end method

.method private getPlaylistCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .parameter "async"
    .parameter "playlistId"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1480
    const/4 v9, 0x0

    .line 1481
    .local v9, ret:Landroid/database/Cursor;
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mAsyncQuerying:Z

    .line 1482
    const-string v0, "title COLLATE NOCASE ASC"

    iput-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mSortOrder:Ljava/lang/String;

    .line 1483
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 1484
    .local v10, where:Ljava/lang/StringBuilder;
    const-string v0, "title != \'\'"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1486
    const-string v0, "play_order"

    iput-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mSortOrder:Ljava/lang/String;

    .line 1487
    if-eqz p1, :cond_1

    .line 1488
    const-string v0, "external"

    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlaylistMemberCols:[Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mSortOrder:Ljava/lang/String;

    move-object v0, p1

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/htc/music/util/DlArtAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1496
    const/4 v9, 0x0

    .line 1507
    :goto_1
    return-object v9

    .end local v10           #where:Ljava/lang/StringBuilder;
    :cond_0
    move v0, v1

    .line 1481
    goto :goto_0

    .line 1498
    .restart local v10       #where:Ljava/lang/StringBuilder;
    :cond_1
    const-string v0, "external"

    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlaylistMemberCols:[Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v8, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mSortOrder:Ljava/lang/String;

    move-object v3, p0

    move-object v7, v2

    invoke-static/range {v3 .. v8}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto :goto_1
.end method

.method private getPlaylistId(Landroid/net/Uri;)I
    .locals 9
    .parameter "uri"

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 352
    if-nez p1, :cond_1

    .line 353
    const/4 v7, -0x1

    .line 366
    :cond_0
    :goto_0
    return v7

    .line 355
    :cond_1
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v8

    const-string v5, "name"

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 358
    .local v6, c:Landroid/database/Cursor;
    const/4 v7, -0x1

    .line 359
    .local v7, id:I
    if-eqz v6, :cond_0

    .line 360
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 361
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_2

    .line 362
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 364
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private getPlaylistId(Ljava/lang/String;)I
    .locals 9
    .parameter "name"

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 370
    sget-object v1, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v8

    const-string v3, "name=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v8

    const-string v5, "name"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 376
    .local v6, c:Landroid/database/Cursor;
    const/4 v7, -0x1

    .line 377
    .local v7, id:I
    if-eqz v6, :cond_1

    .line 378
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 379
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 380
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 382
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 383
    const/4 v6, 0x0

    .line 385
    :cond_1
    return v7
.end method

.method private getTrackCursor()Landroid/database/Cursor;
    .locals 2

    .prologue
    .line 649
    const/4 v0, 0x0

    .line 650
    .local v0, ret:Landroid/database/Cursor;
    const-string v1, "title COLLATE NOCASE ASC"

    iput-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mSortOrder:Ljava/lang/String;

    .line 652
    invoke-direct {p0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->getListCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 653
    if-eqz v0, :cond_0

    .line 654
    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->init(Landroid/database/Cursor;)V

    .line 662
    :goto_0
    return-object v0

    .line 656
    :cond_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlaylistItemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 657
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 658
    iget-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mAdapter:Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 660
    :cond_1
    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->init(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method private goToPicker()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 547
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 548
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "playlisturi"

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 549
    const-string v1, "pickermode"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 550
    const-string v1, "isshowextratabs"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 552
    const-class v1, Lcom/htc/music/browserlayer/AddPlaylistTabActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 553
    const/16 v1, 0x21

    invoke-virtual {p0, v0, v1}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 554
    return-void
.end method

.method private initTitle()V
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mActionBar:Lcom/htc/widget/ActionBarExt;

    if-nez v0, :cond_0

    .line 247
    new-instance v0, Lcom/htc/widget/ActionBarExt;

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/ActionBarExt;-><init>(Landroid/content/Context;Landroid/app/ActionBar;)V

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mActionBar:Lcom/htc/widget/ActionBarExt;

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mActionBar:Lcom/htc/widget/ActionBarExt;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarExt;->enableHTCLandscape(Z)V

    .line 253
    new-instance v0, Lcom/htc/widget/ActionBarSearch;

    invoke-direct {v0, p0}, Lcom/htc/widget/ActionBarSearch;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mEdit:Lcom/htc/widget/ActionBarSearch;

    .line 255
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    if-eqz v0, :cond_1

    .line 256
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    iget-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mEdit:Lcom/htc/widget/ActionBarSearch;

    invoke-virtual {v0, v1}, Lcom/htc/widget/ActionBarContainer;->addCenterView(Landroid/view/View;)V

    .line 259
    :cond_1
    return-void
.end method

.method private joinAlbumArt(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 14
    .parameter "c"

    .prologue
    .line 1370
    if-nez p1, :cond_0

    .line 1371
    const/4 v0, 0x0

    .line 1412
    :goto_0
    return-object v0

    .line 1373
    :cond_0
    instance-of v0, p1, Lcom/htc/music/widget/AlbumArtCursorWrapper;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/htc/music/util/AlbumArtMergeCursor;

    if-eqz v0, :cond_2

    :cond_1
    move-object v0, p1

    .line 1374
    goto :goto_0

    .line 1376
    :cond_2
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 1377
    .local v8, albumArtMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 1378
    .local v13, where:Ljava/lang/StringBuilder;
    const-string v0, "album != \'\'"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1379
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "album_art"

    aput-object v1, v2, v0

    .line 1383
    .local v2, cols:[Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "album_key"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1385
    .local v10, artCursor:Landroid/database/Cursor;
    if-eqz v10, :cond_3

    .line 1386
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1387
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1388
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1389
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 1394
    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1395
    const/4 p1, 0x0

    .line 1396
    const/4 v0, 0x0

    goto :goto_0

    .line 1399
    :cond_4
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1400
    .local v6, albumArt:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1401
    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1402
    new-instance v12, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1403
    .local v12, row:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const-string v0, "album_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 1404
    .local v9, albumIdx:I
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 1405
    .local v11, id:I
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1406
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1407
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1408
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2

    .line 1411
    .end local v9           #albumIdx:I
    .end local v11           #id:I
    .end local v12           #row:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_5
    new-instance v7, Lcom/htc/music/util/ArrayListCursor;

    invoke-direct {v7, v2, v6}, Lcom/htc/music/util/ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1412
    .local v7, albumArtCrsor:Lcom/htc/music/util/ArrayListCursor;
    new-instance v0, Lcom/htc/music/widget/AlbumArtCursorWrapper;

    invoke-direct {v0, p1, v7, v10}, Lcom/htc/music/widget/AlbumArtCursorWrapper;-><init>(Landroid/database/Cursor;Landroid/database/Cursor;Landroid/database/Cursor;)V

    goto/16 :goto_0
.end method

.method private nameForId(J)Ljava/lang/String;
    .locals 9
    .parameter "id"

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 1462
    sget-object v1, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "name"

    aput-object v0, v2, v8

    const-string v3, "_id=?"

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    const-string v5, "name"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1468
    .local v6, c:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 1469
    .local v7, name:Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 1470
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1471
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1472
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1474
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1476
    :cond_1
    return-object v7
.end method

.method private renamePlaylist(Ljava/lang/String;)Z
    .locals 16
    .parameter "name"

    .prologue
    .line 1557
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_1

    .line 1559
    :cond_0
    const/4 v4, 0x0

    .line 1602
    :goto_0
    return v4

    .line 1562
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1563
    .local v1, resolver:Landroid/content/ContentResolver;
    new-instance v13, Landroid/content/ContentValues;

    const/4 v4, 0x1

    invoke-direct {v13, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 1564
    .local v13, values:Landroid/content/ContentValues;
    const-string v4, "name"

    move-object/from16 v0, p1

    invoke-virtual {v13, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1565
    sget-object v4, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v7, "_id=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mSelectedPlaylistId:Ljava/lang/String;

    invoke-static {v15}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v9, v14

    invoke-virtual {v1, v4, v13, v7, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1571
    const-string v4, "content://com.htc.launcher.settings/favorites"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1572
    .local v2, launcherUri:Landroid/net/Uri;
    const/4 v4, 0x3

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v7, "_id"

    aput-object v7, v3, v4

    const/4 v4, 0x1

    const-string v7, "title"

    aput-object v7, v3, v4

    const/4 v4, 0x2

    const-string v7, "intent"

    aput-object v7, v3, v4

    .line 1575
    .local v3, cursorCols:[Ljava/lang/String;
    const-string v4, "title =?"

    const/4 v7, 0x1

    new-array v5, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mOriginalPlaylistName:Ljava/lang/String;

    aput-object v9, v5, v7

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1579
    .local v10, c:Landroid/database/Cursor;
    if-eqz v10, :cond_4

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_4

    .line 1580
    const-string v4, "intent"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 1581
    .local v12, intentIndex:I
    const-string v4, "_id"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 1583
    .local v11, idIndex:I
    :cond_2
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1585
    :try_start_0
    invoke-interface {v10, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/content/Intent;->getIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .line 1586
    .local v8, intent:Landroid/content/Intent;
    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v7, "android.intent.action.VIEW"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v8}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    const-string v7, "com.htc.media/playlist"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "playlist"

    invoke-virtual {v8, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1589
    invoke-interface {v10, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 1590
    .local v5, id:J
    const/4 v7, 0x0

    move-object/from16 v4, p0

    move-object/from16 v9, p1

    invoke-static/range {v4 .. v9}, Lcom/htc/home/RosieItemUtility;->updateIcon(Landroid/content/Context;JLandroid/graphics/Bitmap;Landroid/content/Intent;Ljava/lang/String;)V

    .line 1591
    sget-object v4, Lcom/htc/music/browserlayer/EditPlaylistActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "home playlist id = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " is changed"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1593
    .end local v5           #id:J
    .end local v8           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v4

    goto :goto_1

    .line 1597
    :cond_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1602
    .end local v11           #idIndex:I
    .end local v12           #intentIndex:I
    :goto_2
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1599
    :cond_4
    sget-object v4, Lcom/htc/music/browserlayer/EditPlaylistActivity;->TAG:Ljava/lang/String;

    const-string v7, "borranx cursor is null or zero"

    invoke-static {v4, v7}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private setLandscapeIMEbutton()V
    .locals 5

    .prologue
    .line 517
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v3, :cond_0

    .line 518
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 519
    .local v0, inputManager:Landroid/view/inputmethod/InputMethodManager;
    if-nez v0, :cond_1

    .line 528
    .end local v0           #inputManager:Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    :goto_0
    return-void

    .line 521
    .restart local v0       #inputManager:Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    iget-object v2, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlayListName:Landroid/widget/AutoCompleteTextView;

    if-eqz v2, :cond_0

    .line 522
    iget-object v2, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlayListName:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v2}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    .line 523
    iget-object v2, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlayListName:Landroid/widget/AutoCompleteTextView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    move-result v1

    .line 524
    .local v1, result:Z
    sget-object v2, Lcom/htc/music/browserlayer/EditPlaylistActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set SIP on result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public addSongList([I)V
    .locals 4
    .parameter "list"

    .prologue
    .line 639
    if-nez p1, :cond_1

    .line 645
    :cond_0
    return-void

    .line 642
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 643
    iget-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlaylistItemList:Ljava/util/ArrayList;

    new-instance v2, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistItemInfo;

    aget v3, p1, v0

    invoke-direct {v2, p0, v3}, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistItemInfo;-><init>(Lcom/htc/music/browserlayer/EditPlaylistActivity;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 642
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public init(Landroid/database/Cursor;)V
    .locals 3
    .parameter "newCursor"

    .prologue
    const/4 v2, 0x1

    .line 488
    iget-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mAdapter:Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;

    if-nez v1, :cond_1

    .line 513
    :cond_0
    :goto_0
    return-void

    .line 491
    :cond_1
    instance-of v1, p1, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistCursor;

    if-eqz v1, :cond_2

    .line 492
    iget-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mAdapter:Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;

    invoke-virtual {v1, p1}, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 501
    :goto_1
    const v1, 0x102000a

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 502
    const v1, 0x7f030036

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->setContentView(I)V

    .line 503
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    .line 504
    iget-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1, p0}, Lcom/htc/widget/HtcListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 507
    iget-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setTextFilterEnabled(Z)V

    .line 508
    iget-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    .line 510
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->initButtonsPanel()V

    goto :goto_0

    .line 494
    :cond_2
    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->joinAlbumArt(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    .line 495
    .local v0, c:Landroid/database/Cursor;
    iget-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mAdapter:Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;

    invoke-virtual {v1, v0}, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_1
.end method

.method initButtonsPanel()V
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1297
    const v9, 0x7f08001b

    invoke-virtual {p0, v9}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/htc/widget/HtcFooter;

    .line 1298
    .local v6, savePanel:Lcom/htc/widget/HtcFooter;
    const v9, 0x7f08001d

    invoke-virtual {p0, v9}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcFooterButton;

    .line 1299
    .local v1, Save:Lcom/htc/widget/HtcFooterButton;
    const v9, 0x7f070069

    invoke-virtual {v1, v9}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 1301
    const/4 v4, 0x0

    .line 1302
    .local v4, name:Ljava/lang/String;
    iget-object v9, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlayListName:Landroid/widget/AutoCompleteTextView;

    if-eqz v9, :cond_0

    .line 1303
    iget-object v9, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlayListName:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v9}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_5

    const/4 v4, 0x0

    .line 1306
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    const-string v9, ""

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    :cond_1
    move v2, v8

    .line 1307
    .local v2, empty:Z
    :goto_1
    invoke-direct {p0, v4}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->getPlaylistId(Ljava/lang/String;)I

    move-result v3

    .line 1309
    .local v3, id:I
    iget-object v9, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mSelectedPlaylistId:Ljava/lang/String;

    if-eqz v9, :cond_8

    .line 1310
    const/4 v5, 0x0

    .line 1311
    .local v5, sameName:Z
    iget-object v9, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mOriginalPlaylistName:Ljava/lang/String;

    if-eqz v9, :cond_2

    .line 1312
    iget-object v9, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mOriginalPlaylistName:Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 1314
    :cond_2
    if-nez v2, :cond_3

    if-ltz v3, :cond_4

    :cond_3
    if-eqz v5, :cond_7

    :cond_4
    :goto_2
    invoke-virtual {v1, v8}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 1319
    .end local v5           #sameName:Z
    :goto_3
    const v8, 0x20800c1

    invoke-virtual {v1, v8}, Lcom/htc/widget/HtcFooterButton;->setImageResource(I)V

    .line 1322
    new-instance v8, Lcom/htc/music/browserlayer/EditPlaylistActivity$3;

    invoke-direct {v8, p0}, Lcom/htc/music/browserlayer/EditPlaylistActivity$3;-><init>(Lcom/htc/music/browserlayer/EditPlaylistActivity;)V

    invoke-virtual {v1, v8}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1329
    const v8, 0x7f08001c

    invoke-virtual {p0, v8}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    .line 1330
    .local v0, Cancel:Lcom/htc/widget/HtcFooterButton;
    const v8, 0x2040152

    invoke-virtual {v0, v8}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 1331
    const v8, 0x20800a3

    invoke-virtual {v0, v8}, Lcom/htc/widget/HtcFooterButton;->setImageResource(I)V

    .line 1332
    new-instance v8, Lcom/htc/music/browserlayer/EditPlaylistActivity$4;

    invoke-direct {v8, p0}, Lcom/htc/music/browserlayer/EditPlaylistActivity$4;-><init>(Lcom/htc/music/browserlayer/EditPlaylistActivity;)V

    invoke-virtual {v0, v8}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1340
    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcFooter;->setVisibility(I)V

    .line 1342
    return-void

    .line 1303
    .end local v0           #Cancel:Lcom/htc/widget/HtcFooterButton;
    .end local v2           #empty:Z
    .end local v3           #id:I
    :cond_5
    iget-object v9, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlayListName:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v9}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_6
    move v2, v7

    .line 1306
    goto :goto_1

    .restart local v2       #empty:Z
    .restart local v3       #id:I
    .restart local v5       #sameName:Z
    :cond_7
    move v8, v7

    .line 1314
    goto :goto_2

    .line 1317
    .end local v5           #sameName:Z
    :cond_8
    if-nez v2, :cond_9

    if-gez v3, :cond_9

    :goto_4
    invoke-virtual {v1, v8}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    goto :goto_3

    :cond_9
    move v8, v7

    goto :goto_4
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 606
    packed-switch p1, :pswitch_data_0

    .line 621
    :cond_0
    :goto_0
    return-void

    .line 609
    :pswitch_0
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/htc/music/util/MusicUtils;->getTabActivityResult(Landroid/content/Context;I)I

    move-result p2

    .line 610
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->getTabActivitySelectedId(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    .line 611
    .local v1, selectedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 612
    invoke-static {v1}, Lcom/htc/music/util/MusicUtils;->toIntList(Ljava/util/ArrayList;)[I

    move-result-object v0

    .line 613
    .local v0, list:[I
    if-eqz v0, :cond_0

    .line 614
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mIsAddSongs:Z

    .line 615
    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->addSongList([I)V

    .line 616
    invoke-direct {p0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->getTrackCursor()Landroid/database/Cursor;

    goto :goto_0

    .line 606
    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 481
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 482
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 537
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "icicle"

    .prologue
    .line 127
    sget-object v0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->TAG:Ljava/lang/String;

    const-string v1, "onCreate +"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 130
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->requestWindowFeature(I)Z

    .line 131
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->requestWindowFeature(I)Z

    .line 132
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->setVolumeControlStream(I)V

    .line 134
    const/4 v9, 0x0

    .line 136
    .local v9, defaultPlaylistName:Ljava/lang/String;
    if-eqz p1, :cond_2

    .line 137
    const-string v0, "playlistname"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 138
    const-string v0, "playlist"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mSelectedPlaylistId:Ljava/lang/String;

    .line 144
    :goto_0
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "title_key"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "_data"

    aput-object v2, v0, v1

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

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "album_key"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mCursorCols:[Ljava/lang/String;

    .line 153
    const v0, 0x7f03004a

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->setContentView(I)V

    .line 154
    invoke-direct {p0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->initTitle()V

    .line 156
    invoke-virtual {p0, v9}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->setTitle(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    .line 160
    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    instance-of v0, v0, Lcom/htc/widget/HtcReorderListView;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    check-cast v0, Lcom/htc/widget/HtcReorderListView;

    iget-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mDropListener:Lcom/htc/widget/HtcReorderListView$DropListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcReorderListView;->setDropListener(Lcom/htc/widget/HtcReorderListView$DropListener;)V

    .line 163
    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    check-cast v0, Lcom/htc/widget/HtcReorderListView;

    const v1, 0x7f080025

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcReorderListView;->setDraggerId(I)V

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setChoiceMode(I)V

    .line 167
    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setTextFilterEnabled(Z)V

    .line 168
    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    .line 170
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;

    iput-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mAdapter:Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;

    .line 172
    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mAdapter:Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;

    if-eqz v0, :cond_3

    .line 173
    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mAdapter:Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;

    invoke-virtual {v0, p0}, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->setActivity(Lcom/htc/music/browserlayer/EditPlaylistActivity;)V

    .line 174
    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mAdapter:Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 225
    :goto_1
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->initButtonsPanel()V

    .line 227
    new-instance v10, Landroid/content/IntentFilter;

    invoke-direct {v10}, Landroid/content/IntentFilter;-><init>()V

    .line 228
    .local v10, f:Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 229
    const-string v0, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 230
    const-string v0, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 231
    const-string v0, "file"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v10}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 234
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    if-eqz v0, :cond_1

    .line 235
    sget-object v0, Lcom/htc/music/util/MusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    invoke-virtual {v0}, Lcom/htc/music/util/MemoryCacheMBitmapByTime;->onCreate()V

    .line 238
    :cond_1
    sget-object v0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->TAG:Ljava/lang/String;

    const-string v1, "onCreate -"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    return-void

    .line 140
    .end local v10           #f:Landroid/content/IntentFilter;
    :cond_2
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "playlistname"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 141
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "playlist"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mSelectedPlaylistId:Ljava/lang/String;

    goto/16 :goto_0

    .line 184
    :cond_3
    new-instance v0, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const v3, 0x7f030024

    const/4 v4, 0x0

    const/4 v2, 0x0

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    new-array v6, v2, [I

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v2, p0

    invoke-direct/range {v0 .. v8}, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;-><init>(Landroid/content/Context;Lcom/htc/music/browserlayer/EditPlaylistActivity;ILandroid/database/Cursor;[Ljava/lang/String;[IZZ)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mAdapter:Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;

    .line 190
    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mAdapter:Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 193
    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mSelectedPlaylistId:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 195
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "title_key"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "_data"

    aput-object v2, v0, v1

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

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "play_order"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "audio_id"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "album_key"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlaylistMemberCols:[Ljava/lang/String;

    .line 211
    new-instance v0, Lcom/htc/music/browserlayer/EditPlaylistActivity$QueryHandler;

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/music/browserlayer/EditPlaylistActivity$QueryHandler;-><init>(Lcom/htc/music/browserlayer/EditPlaylistActivity;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    .line 212
    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    iget-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mSelectedPlaylistId:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->getPlaylistCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    goto/16 :goto_1

    .line 216
    :cond_4
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "AddToPlaylistData"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v11

    .line 217
    .local v11, songList:[I
    if-eqz v11, :cond_5

    .line 218
    invoke-virtual {p0, v11}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->addSongList([I)V

    .line 219
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mNewPlaylist:Z

    .line 221
    :cond_5
    invoke-direct {p0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->getTrackCursor()Landroid/database/Cursor;

    goto/16 :goto_1
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0
    .parameter "menu"
    .parameter "view"
    .parameter "menuInfoIn"

    .prologue
    .line 533
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 562
    const/16 v0, 0x21

    const v1, 0x7f07009b

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 564
    const/16 v0, 0x25

    const v1, 0x204014f

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 565
    const/16 v0, 0x26

    const v1, 0x2040150

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 566
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 399
    iget-boolean v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mAdapterSent:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mAdapter:Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;

    if-eqz v1, :cond_0

    .line 400
    iget-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mAdapter:Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 401
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 402
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 406
    .end local v0           #c:Landroid/database/Cursor;
    :cond_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 407
    iget-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mAdapter:Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mAdapter:Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v1}, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->access$000(Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 408
    iget-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mAdapter:Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v1}, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->access$000(Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/music/util/AsyncImageDecoder;->quit()V

    .line 411
    :cond_1
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    if-eqz v1, :cond_2

    .line 412
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    invoke-virtual {v1}, Lcom/htc/music/util/MemoryCacheMBitmapByTime;->onDestroy()V

    .line 414
    :cond_2
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onDestroy()V

    .line 415
    return-void
.end method

.method protected onListItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 0
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 544
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    .line 586
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 601
    :pswitch_0
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    :goto_0
    return v3

    .line 588
    :pswitch_1
    invoke-direct {p0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->goToPicker()V

    goto :goto_0

    .line 592
    :pswitch_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    const/16 v5, 0x25

    if-ne v4, v5, :cond_0

    move v0, v3

    .line 593
    .local v0, check:Z
    :goto_1
    iget-object v4, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlaylistItemList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistItemInfo;

    .line 594
    .local v2, playlistItem:Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistItemInfo;
    iput-boolean v0, v2, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistItemInfo;->mChecked:Z

    goto :goto_2

    .line 592
    .end local v0           #check:Z
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #playlistItem:Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistItemInfo;
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 597
    .restart local v0       #check:Z
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1
    iget-object v4, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v4}, Lcom/htc/widget/HtcListView;->invalidateViews()V

    goto :goto_0

    .line 586
    nop

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    instance-of v0, v0, Lcom/htc/widget/HtcReorderListView;

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mTrackList:Lcom/htc/widget/HtcListView;

    check-cast v0, Lcom/htc/widget/HtcReorderListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcReorderListView;->OnMyPause()V

    .line 460
    :cond_0
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onPause()V

    .line 462
    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mAdapter:Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mAdapter:Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->access$000(Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 463
    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mAdapter:Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->access$000(Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->clear()V

    .line 464
    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mAdapter:Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->access$000(Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->pauseDecode()V

    .line 466
    :cond_1
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter "menu"

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 571
    invoke-direct {p0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->getCheckedItemCount()I

    move-result v0

    .line 572
    .local v0, checkedCount:I
    iget-object v4, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mTrackCursor:Landroid/database/Cursor;

    if-nez v4, :cond_3

    move v1, v3

    .line 573
    .local v1, count:I
    :goto_0
    const/16 v4, 0x25

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 574
    .local v2, item:Landroid/view/MenuItem;
    if-eqz v2, :cond_0

    .line 575
    if-eq v1, v0, :cond_4

    move v4, v5

    :goto_1
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 576
    :cond_0
    const/16 v4, 0x26

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 577
    if-eqz v2, :cond_2

    .line 578
    if-lez v0, :cond_1

    move v3, v5

    :cond_1
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 579
    :cond_2
    return v5

    .line 572
    .end local v1           #count:I
    .end local v2           #item:Landroid/view/MenuItem;
    :cond_3
    iget-object v4, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mTrackCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v1

    goto :goto_0

    .restart local v1       #count:I
    .restart local v2       #item:Landroid/view/MenuItem;
    :cond_4
    move v4, v3

    .line 575
    goto :goto_1
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 434
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onResume()V

    .line 436
    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mAdapter:Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mAdapter:Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->access$000(Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mAdapter:Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->access$000(Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->clear()V

    .line 438
    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mAdapter:Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;

    #getter for: Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;->access$000(Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/util/AsyncImageDecoder;->resumeDecode()V

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlayListName:Landroid/widget/AutoCompleteTextView;

    if-eqz v0, :cond_1

    .line 442
    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlayListName:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lcom/htc/music/browserlayer/EditPlaylistActivity$2;

    invoke-direct {v1, p0}, Lcom/htc/music/browserlayer/EditPlaylistActivity$2;-><init>(Lcom/htc/music/browserlayer/EditPlaylistActivity;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/AutoCompleteTextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 449
    :cond_1
    iget-boolean v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mAsyncQuerying:Z

    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 450
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->showSpinner(Z)V

    .line 452
    :cond_3
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 390
    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mAdapter:Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;

    .line 391
    .local v0, a:Lcom/htc/music/browserlayer/EditPlaylistActivity$TrackListAdapter;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mAdapterSent:Z

    .line 392
    return-object v0
.end method

.method public onSaveClick()V
    .locals 12

    .prologue
    const/4 v10, 0x0

    const/4 v11, -0x1

    .line 1226
    iget-object v8, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlayListName:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v8}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1227
    .local v4, name:Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_1

    .line 1228
    :cond_0
    const v8, 0x7f0700ba

    invoke-static {p0, v8, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 1284
    :goto_0
    return-void

    .line 1234
    :cond_1
    const/4 v3, 0x0

    .line 1235
    .local v3, isDeleted:Z
    const/4 v6, 0x0

    .line 1237
    .local v6, newPlaylistSize:I
    iget-object v8, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlaylistItemList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v7, v8, -0x1

    .line 1238
    .local v7, playlistItemListSize:I
    move v0, v7

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_3

    .line 1239
    iget-object v8, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlaylistItemList:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistItemInfo;

    iget-boolean v8, v8, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistItemInfo;->mChecked:Z

    if-eqz v8, :cond_2

    .line 1240
    iget-object v8, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlaylistItemList:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1241
    const/4 v3, 0x1

    .line 1238
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1245
    :cond_3
    const/4 v2, -0x1

    .line 1246
    .local v2, id:I
    iget-object v8, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mSelectedPlaylistId:Ljava/lang/String;

    if-eqz v8, :cond_5

    .line 1247
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->renamePlaylist(Ljava/lang/String;)Z

    .line 1249
    if-nez v3, :cond_4

    iget-boolean v8, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mIsDrop:Z

    if-nez v8, :cond_4

    iget-boolean v8, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mIsAddSongs:Z

    if-nez v8, :cond_4

    .line 1250
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v8, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {p0, v11, v8}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->setResult(ILandroid/content/Intent;)V

    .line 1251
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->finish()V

    goto :goto_0

    .line 1255
    :cond_4
    iget-object v8, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mSelectedPlaylistId:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {p0, v8, v9}, Lcom/htc/music/util/MusicUtils;->deletePlaylistTrack(Landroid/content/Context;J)V

    .line 1256
    iget-object v8, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mSelectedPlaylistId:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1262
    :goto_2
    if-ne v2, v11, :cond_6

    .line 1263
    const v8, 0x7f0700bb

    invoke-static {p0, v8, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1259
    :cond_5
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->createPlaylist(Ljava/lang/String;)I

    move-result v2

    goto :goto_2

    .line 1268
    :cond_6
    iget-object v8, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlaylistItemList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1270
    new-array v5, v6, [I

    .line 1272
    .local v5, newPlaylistItems:[I
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v6, :cond_7

    .line 1273
    iget-object v8, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlaylistItemList:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistItemInfo;

    iget v8, v8, Lcom/htc/music/browserlayer/EditPlaylistActivity$PlaylistItemInfo;->mTrackId:I

    aput v8, v5, v0

    .line 1272
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1276
    :cond_7
    int-to-long v8, v2

    iget-boolean v10, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mNewPlaylist:Z

    invoke-static {p0, v5, v8, v9, v10}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJZ)V

    .line 1277
    invoke-direct {p0, v4}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->getPlaylistId(Ljava/lang/String;)I

    move-result v2

    .line 1278
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1279
    .local v1, iSavePlaylist:Landroid/content/Intent;
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1280
    const-string v8, "playlistid"

    invoke-virtual {v1, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1281
    const-string v8, "playlistname"

    invoke-virtual {v1, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1282
    invoke-virtual {p0, v11, v1}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->setResult(ILandroid/content/Intent;)V

    .line 1283
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->finish()V

    goto/16 :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outcicle"

    .prologue
    .line 473
    const-string v0, "playlistname"

    iget-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlayListName:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    const-string v0, "playlist"

    iget-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mSelectedPlaylistId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 476
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 8
    .parameter "defaultTitle"

    .prologue
    const/4 v7, 0x1

    .line 264
    const/4 v0, 0x0

    .line 266
    .local v0, editTextTitle:Ljava/lang/String;
    if-eqz p1, :cond_2

    .line 267
    move-object v0, p1

    .line 268
    iput-object p1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mOriginalPlaylistName:Ljava/lang/String;

    .line 305
    :goto_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mEdit:Lcom/htc/widget/ActionBarSearch;

    .line 308
    .local v1, inputBox:Lcom/htc/widget/ActionBarSearch;
    invoke-virtual {v1}, Lcom/htc/widget/ActionBarSearch;->getAutoCompleteTextView()Landroid/widget/AutoCompleteTextView;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlayListName:Landroid/widget/AutoCompleteTextView;

    .line 309
    iget-object v3, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlayListName:Landroid/widget/AutoCompleteTextView;

    if-eqz v3, :cond_5

    .line 310
    iget-object v3, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlayListName:Landroid/widget/AutoCompleteTextView;

    const v4, 0x7f0700ad

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/AutoCompleteTextView;->setHint(Ljava/lang/CharSequence;)V

    .line 311
    if-eqz v0, :cond_0

    .line 312
    iget-object v3, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlayListName:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v3, v0}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    :cond_0
    iget-object v3, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mSelectedPlaylistId:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 315
    iget-object v3, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlayListName:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v3, v7}, Landroid/widget/AutoCompleteTextView;->setSelectAllOnFocus(Z)V

    .line 317
    :cond_1
    iget-object v3, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlayListName:Landroid/widget/AutoCompleteTextView;

    new-instance v4, Lcom/htc/music/browserlayer/EditPlaylistActivity$EditTextWatcher;

    invoke-direct {v4, p0}, Lcom/htc/music/browserlayer/EditPlaylistActivity$EditTextWatcher;-><init>(Lcom/htc/music/browserlayer/EditPlaylistActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 318
    iget-object v3, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mPlayListName:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v3}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    .line 324
    :goto_1
    return-void

    .line 271
    .end local v1           #inputBox:Lcom/htc/widget/ActionBarSearch;
    :cond_2
    iget-object v3, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mSelectedPlaylistId:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 272
    iget-object v3, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mSelectedPlaylistId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->nameForId(J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mOriginalPlaylistName:Ljava/lang/String;

    .line 273
    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity;->mOriginalPlaylistName:Ljava/lang/String;

    goto :goto_0

    .line 276
    :cond_3
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "playlistcount"

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 277
    .local v2, playlistcount:I
    if-ltz v2, :cond_4

    .line 278
    const v3, 0x7f07005d

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v5, 0x0

    add-int/lit8 v6, v2, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 281
    :cond_4
    sget-object v3, Lcom/htc/music/browserlayer/EditPlaylistActivity;->TAG:Ljava/lang/String;

    const-string v4, "setTitle, playlistcount should not be < 0"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 321
    .end local v2           #playlistcount:I
    .restart local v1       #inputBox:Lcom/htc/widget/ActionBarSearch;
    :cond_5
    sget-object v3, Lcom/htc/music/browserlayer/EditPlaylistActivity;->TAG:Ljava/lang/String;

    const-string v4, "setTitle, mPlayListName is null!"

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public showSpinner(Z)V
    .locals 4
    .parameter "show"

    .prologue
    .line 1606
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v1

    .line 1607
    .local v1, parent:Landroid/app/Activity;
    if-eqz v1, :cond_1

    instance-of v3, v1, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    if-eqz v3, :cond_1

    move-object v2, v1

    .line 1608
    check-cast v2, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    .line 1609
    .local v2, tabActivity:Lcom/htc/music/browserlayer/MusicBrowserTabActivity;
    invoke-virtual {v2, p1}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->setCategoryProgressVisible(Z)V

    .line 1616
    .end local v2           #tabActivity:Lcom/htc/music/browserlayer/MusicBrowserTabActivity;
    :cond_0
    :goto_0
    return-void

    .line 1611
    :cond_1
    const v3, 0x7f08001e

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBar;

    .line 1612
    .local v0, headerLayout:Lcom/htc/widget/HeaderBar;
    if-eqz v0, :cond_0

    .line 1613
    if-eqz p1, :cond_2

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v0, v3}, Lcom/htc/widget/HeaderBar;->setProgressVisibility(I)V

    goto :goto_0

    :cond_2
    const/16 v3, 0x8

    goto :goto_1
.end method
