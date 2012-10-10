.class public Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;
.super Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;
.source "AlbumBrowserActivityGrid.java"

# interfaces
.implements Lcom/htc/music/util/MusicUtils$Defs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid$AlbumViewItemLayoutParams;
    }
.end annotation


# static fields
.field protected static final ALBUM_DEFAULT_SORT_ORDER:Ljava/lang/String; = "album COLLATE NOCASE ASC"

.field protected static final ARTIST_DEFAULT_SORT_ORDER:Ljava/lang/String; = "artist COLLATE NOCASE ASC"

.field protected static final FOLDER_LAYER_NUMBER:I = 0x1

.field protected static final GENRE_DEFAULT_SORT_ORDER:Ljava/lang/String; = "name COLLATE NOCASE ASC"

.field private static final PLAY_ALL_SORT_ORDER:Ljava/lang/String; = "track"

.field private static final TAG:Ljava/lang/String; = "[AlbumBrowserActivityGrid]"

.field protected static final TITLE_DEFAULT_SORT_ORDER:Ljava/lang/String; = "title COLLATE NOCASE ASC"


# instance fields
.field mCols:[Ljava/lang/String;

.field private mComposer:Ljava/lang/String;

.field private mDbTable:I

.field private mDescription:Ljava/lang/String;

.field mItemLayoutParams:Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid$AlbumViewItemLayoutParams;

.field private mOrientation:I

.field private mQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

.field private mUnlockReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 63
    invoke-direct {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;-><init>()V

    .line 66
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "album"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "album_key"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "album_art"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mCols:[Ljava/lang/String;

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mUnlockReceiver:Landroid/content/BroadcastReceiver;

    .line 94
    iput v3, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mDbTable:I

    .line 96
    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    return v0
.end method

.method static synthetic access$1200(Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    return v0
.end method

.method static synthetic access$1300(Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;)Lcom/htc/music/widget/gridview/MusicGridViewPreparator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewPreparator:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewInitFinish:Z

    return v0
.end method

.method static synthetic access$400(Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;)Lcom/htc/sunny2/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;)Lcom/htc/sunny2/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;)Lcom/htc/sunny2/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;)Lcom/htc/sunny2/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;)Lcom/htc/sunny2/widget/gridview/ExpandableGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    return-object v0
.end method

.method private getAlbumCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 27
    .parameter "async"
    .parameter "filter"

    .prologue
    .line 960
    const-string v2, "[AlbumBrowserActivityGrid]"

    const-string v3, "getAlbumCursor+"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 962
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    .line 963
    .local v24, where:Ljava/lang/StringBuilder;
    const-string v2, "album != \'\'"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 964
    const-string v2, " AND album != \'<unknown>\'"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 966
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    .line 967
    .local v26, whereUnkown:Ljava/lang/StringBuilder;
    const-string v2, "album = \'<unknown>\'"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 970
    const/4 v8, 0x0

    .line 971
    .local v8, keywords:[Ljava/lang/String;
    if-nez p2, :cond_4

    const/16 v21, 0x1

    .line 972
    .local v21, searchContainsUnkown:Z
    :goto_0
    if-eqz p2, :cond_0

    .line 973
    const/4 v2, 0x1

    new-array v8, v2, [Ljava/lang/String;

    .line 974
    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "%"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "%"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v2

    .line 975
    const-string v2, " AND "

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 976
    const-string v2, "album LIKE ?"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 978
    const v2, 0x7f07004e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v23

    .line 979
    .local v23, unknownAlbum:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 980
    const/16 v21, 0x1

    .line 983
    .end local v23           #unknownAlbum:Ljava/lang/String;
    :cond_0
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    .line 985
    .local v25, where2:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentArtistId:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 988
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentArtistId:Ljava/lang/String;

    const-string v3, "\'"

    const-string v5, "\'\'"

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 989
    .local v15, artistId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mDbTable:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    .line 990
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AND _id IN (SELECT DISTINCT album_id FROM audio_meta2 WHERE audio_meta2.artist_id = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\')"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 996
    .end local v15           #artistId:Ljava/lang/String;
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentGenreId:Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 997
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentGenreId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    .line 998
    .local v19, genreId:J
    const-wide/16 v2, -0x1

    cmp-long v2, v19, v2

    if-nez v2, :cond_6

    .line 999
    const-string v2, " AND _id  in (select  distinct album_id from audio where _id NOT IN (select audio_id from audio_genres_map ) )"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1018
    .end local v19           #genreId:J
    :cond_2
    :goto_2
    const/16 v17, 0x0

    .line 1019
    .local v17, cursor:Landroid/database/Cursor;
    if-eqz p1, :cond_b

    .line 1020
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->setAsyncQueryStatus(Z)V

    .line 1021
    if-eqz v21, :cond_9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1022
    .local v4, asyncUnknownWhere:Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mDbTable:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_a

    .line 1023
    const/4 v3, 0x0

    sget-object v5, Lcom/htc/music/util/MusicUtils$Albums2;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mCols:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v9, "album COLLATE NOCASE ASC"

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Lcom/htc/music/util/DlArtAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    .end local v4           #asyncUnknownWhere:Ljava/lang/String;
    :goto_4
    if-eqz v17, :cond_3

    .line 1050
    const-string v2, "[AlbumBrowserActivityGrid]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAlbumCursor- : cursor = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1051
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->init(Landroid/database/Cursor;Z)V

    .line 1054
    :cond_3
    return-object v17

    .line 971
    .end local v17           #cursor:Landroid/database/Cursor;
    .end local v21           #searchContainsUnkown:Z
    .end local v25           #where2:Ljava/lang/StringBuilder;
    :cond_4
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 992
    .restart local v15       #artistId:Ljava/lang/String;
    .restart local v21       #searchContainsUnkown:Z
    .restart local v25       #where2:Ljava/lang/StringBuilder;
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AND _id IN (SELECT DISTINCT album_id FROM audio_meta WHERE audio_meta.artist_id = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\')"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 1001
    .end local v15           #artistId:Ljava/lang/String;
    .restart local v19       #genreId:J
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AND _id  in (select  distinct album_id from audio where _id IN (select audio_id from audio_genres_map WHERE genre_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentGenreId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 1003
    .end local v19           #genreId:J
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mComposer:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 1004
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mComposer:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 1005
    .local v16, composer:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/htc/music/util/MusicUtils;->isUnknownComposer(Ljava/lang/String;)Z

    move-result v22

    .line 1006
    .local v22, unknown:Z
    if-eqz v22, :cond_8

    .line 1007
    const-string v2, " AND _id IN (SELECT distinct album_id FROM audio_meta where (audio_meta.composer ISNULL OR audio_meta.composer = \'\' OR audio_meta.composer = \'<unknown>\'))"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 1012
    :cond_8
    const-string v2, "\'"

    const-string v3, "\'\'"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1013
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AND _id IN (SELECT distinct album_id FROM audio_meta where audio_meta.composer = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\')"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 1021
    .end local v16           #composer:Ljava/lang/String;
    .end local v22           #unknown:Z
    .restart local v17       #cursor:Landroid/database/Cursor;
    :cond_9
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 1027
    .restart local v4       #asyncUnknownWhere:Ljava/lang/String;
    :cond_a
    const/4 v3, 0x0

    sget-object v5, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mCols:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v9, "album COLLATE NOCASE ASC"

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Lcom/htc/music/util/DlArtAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1032
    .end local v4           #asyncUnknownWhere:Ljava/lang/String;
    :cond_b
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->setAsyncQueryStatus(Z)V

    .line 1033
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mDbTable:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_c

    .line 1034
    sget-object v10, Lcom/htc/music/util/MusicUtils$Albums2;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mCols:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v14, "album COLLATE NOCASE ASC"

    move-object/from16 v9, p0

    move-object v13, v8

    invoke-static/range {v9 .. v14}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    move-object/from16 v18, v17

    .line 1041
    .end local v17           #cursor:Landroid/database/Cursor;
    .local v18, cursor:Landroid/database/Cursor;
    :goto_5
    if-eqz v21, :cond_d

    .line 1042
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->getUnknownCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v22

    .line 1043
    .local v22, unknown:Landroid/database/Cursor;
    if-eqz v22, :cond_d

    .line 1044
    new-instance v17, Landroid/database/MergeCursor;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/database/Cursor;

    const/4 v3, 0x0

    aput-object v18, v2, v3

    const/4 v3, 0x1

    aput-object v22, v2, v3

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .end local v18           #cursor:Landroid/database/Cursor;
    .restart local v17       #cursor:Landroid/database/Cursor;
    goto/16 :goto_4

    .line 1037
    .end local v22           #unknown:Landroid/database/Cursor;
    :cond_c
    sget-object v10, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mCols:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v14, "album COLLATE NOCASE ASC"

    move-object/from16 v9, p0

    move-object v13, v8

    invoke-static/range {v9 .. v14}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    move-object/from16 v18, v17

    .end local v17           #cursor:Landroid/database/Cursor;
    .restart local v18       #cursor:Landroid/database/Cursor;
    goto :goto_5

    :cond_d
    move-object/from16 v17, v18

    .end local v18           #cursor:Landroid/database/Cursor;
    .restart local v17       #cursor:Landroid/database/Cursor;
    goto/16 :goto_4
.end method

.method private initGridView()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 311
    const v2, 0x7f080073

    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/sunny2/view/SSurfaceView;

    iput-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    .line 313
    new-instance v2, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid$AlbumViewItemLayoutParams;

    invoke-direct {v2, p0}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid$AlbumViewItemLayoutParams;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid$AlbumViewItemLayoutParams;

    .line 315
    new-instance v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;-><init>(Landroid/content/Context;)V

    .line 316
    .local v0, folderParam:Lcom/htc/music/widget/gridview/MusicGridViewItemParams;
    invoke-direct {p0, v0}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->initMusicGridViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V

    .line 318
    new-instance v1, Lcom/htc/music/widget/gridview/MusicGridViewItem;

    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v2}, Lcom/htc/sunny2/view/SSurfaceView;->getSunnyContext()Lcom/htc/sunny2/SunnyContext;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/htc/music/widget/gridview/MusicGridViewItem;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V

    .line 319
    .local v1, gridViewItem:Lcom/htc/music/widget/gridview/MusicGridViewItem;
    invoke-direct {p0, v1}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->initMusicGridViewItem(Lcom/htc/music/widget/gridview/MusicGridViewItem;)V

    .line 320
    invoke-direct {p0}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->initMusicGridViewUtil()V

    .line 321
    new-instance v2, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-direct {v2, p0, v3, v4}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;-><init>(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/music/widget/gridview/MusicGridViewUtil;)V

    iput-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewPreparator:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    .line 322
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewPreparator:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    invoke-direct {p0, v2, v0}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->initGridViewPreparator(Lcom/htc/music/widget/gridview/MusicGridViewPreparator;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V

    .line 324
    new-instance v2, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v3}, Lcom/htc/sunny2/view/SSurfaceView;->getSunnyContext()Lcom/htc/sunny2/SunnyContext;

    move-result-object v3

    invoke-direct {v2, p0, v3, v1}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Lcom/htc/sunny2/widget/gridview/GridViewItem;)V

    iput-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    .line 325
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid$AlbumViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->verticalSpacing:I

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setVerticalSpacing(I)V

    .line 326
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid$AlbumViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->horizontalSpacing:I

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setHorizontalSpacing(I)V

    .line 327
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewItemClickListener:Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setOnItemClickListener(Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;)V

    .line 328
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mViewItemLongClickListener:Lcom/htc/sunny2/widget/gridview/GridView$OnItemLongClickListener;

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setOnItemLongClickListener(Lcom/htc/sunny2/widget/gridview/GridView$OnItemLongClickListener;)V

    .line 329
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewPreparator:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setPreparation(Lcom/htc/sunny2/widget/gridview/GridViewPreparator;)V

    .line 330
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    const v3, 0x2080001

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setGlobalBackgroundResource(I)V

    .line 332
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid$AlbumViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->padding_top:I

    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid$AlbumViewItemLayoutParams;

    iget v4, v4, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->padding_bottom:I

    invoke-virtual {v2, v5, v3, v5, v4}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setPadding(IIII)V

    .line 333
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewScrollListener:Lcom/htc/sunny2/widget/gridview/interfaces/OnScrollListener;

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setOnScrollListener(Lcom/htc/sunny2/widget/gridview/interfaces/OnScrollListener;)V

    .line 334
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/view/SSurfaceView;->addView(Lcom/htc/sunny2/view/SView;)V

    .line 335
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v2, v5}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setVisibility(Z)V

    .line 336
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridViewPreparator:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v2, v3}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->updateMusicGridViewUtil(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)V

    .line 337
    return-void
.end method

.method private initGridViewPreparator(Lcom/htc/music/widget/gridview/MusicGridViewPreparator;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V
    .locals 2
    .parameter "preparator"
    .parameter "folderParam"

    .prologue
    .line 455
    new-instance v0, Lcom/htc/music/widget/gridview/MusicGridViewParamsPreparator;

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->getWidth(I)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewParamsPreparator;-><init>(I)V

    .line 456
    .local v0, paramsPreparator:Lcom/htc/music/widget/gridview/MusicGridViewParamsPreparator;
    invoke-virtual {p1, p0, v0}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->init(Landroid/content/Context;Lcom/htc/sunny2/IParamsPreparator;)V

    .line 457
    new-instance v1, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid$5;

    invoke-direct {v1, p0}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid$5;-><init>(Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;)V

    invoke-virtual {p1, v1}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->setUpdateListener(Lcom/htc/sunny2/Preparator$UpdateListener;)V

    .line 478
    return-void
.end method

.method private initMusicGridViewItem(Lcom/htc/music/widget/gridview/MusicGridViewItem;)V
    .locals 1
    .parameter "gridViewItem"

    .prologue
    .line 371
    new-instance v0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid$2;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid$2;-><init>(Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;)V

    invoke-virtual {p1, v0}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->setTextViewBindListener(Lcom/htc/music/widget/gridview/MusicGridViewItem$ITextViewBind;)V

    .line 394
    new-instance v0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid$3;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid$3;-><init>(Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;)V

    invoke-virtual {p1, v0}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->setViewItemImageGetter(Lcom/htc/music/widget/gridview/MusicGridViewItem$ViewItemImageGetter;)V

    .line 418
    return-void
.end method

.method private initMusicGridViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V
    .locals 4
    .parameter "folderParam"

    .prologue
    .line 341
    new-instance v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    invoke-direct {v0}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;-><init>()V

    .line 342
    .local v0, backgroundParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    const v3, 0x7f020041

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->defaultResourceId:I

    .line 343
    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid$AlbumViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_width:I

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->width:I

    .line 344
    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid$AlbumViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_height:I

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->height:I

    .line 345
    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid$AlbumViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_marginLeft:I

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginLeft:I

    .line 346
    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid$AlbumViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_marginTop:I

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginTop:I

    .line 347
    const/4 v3, 0x1

    invoke-virtual {p1, v0, v3}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;I)V

    .line 353
    new-instance v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    invoke-direct {v2}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;-><init>()V

    .line 354
    .local v2, thumbnail:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    const v3, 0x7f020042

    iput v3, v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->defaultResourceId:I

    .line 355
    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid$AlbumViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->thumb_marginLeft:I

    iput v3, v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginLeft:I

    .line 356
    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid$AlbumViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->thumb_marginTop:I

    iput v3, v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginTop:I

    .line 357
    const/4 v3, 0x3

    invoke-virtual {p1, v2, v3}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;I)V

    .line 358
    new-instance v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    invoke-direct {v1}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;-><init>()V

    .line 359
    .local v1, textLayout:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid$AlbumViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_height:I

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->height:I

    .line 360
    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid$AlbumViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_width:I

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->width:I

    .line 361
    const v3, 0x7f030029

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->defaultResourceId:I

    .line 362
    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid$AlbumViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_marginLeft:I

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginLeft:I

    .line 363
    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid$AlbumViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_marginTop:I

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginTop:I

    .line 364
    const/4 v3, 0x4

    invoke-virtual {p1, v1, v3}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;I)V

    .line 366
    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid$AlbumViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->width:I

    invoke-virtual {p1, v3}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setItemWidth(I)V

    .line 367
    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid$AlbumViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->height:I

    invoke-virtual {p1, v3}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setItemHeight(I)V

    .line 368
    return-void
.end method

.method private initMusicGridViewUtil()V
    .locals 4

    .prologue
    .line 421
    new-instance v1, Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    sget-object v2, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->ALBUM_TYPE:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, p0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;-><init>(Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    .line 423
    new-instance v0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid$4;

    invoke-direct {v0, p0}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid$4;-><init>(Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;)V

    .line 451
    .local v0, musicGridViewItemUpdater:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MusicGridViewItemUpdater;
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v1, v0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->setMusicGridViewItemUpdater(Lcom/htc/music/widget/gridview/MusicGridViewUtil$MusicGridViewItemUpdater;)V

    .line 452
    return-void
.end method


# virtual methods
.method public clickIndexInit(I)V
    .locals 2
    .parameter "globalIndex"

    .prologue
    .line 481
    iput p1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mParentClickedIndex:I

    iput p1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    .line 482
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentMediaDataId(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumId:Ljava/lang/String;

    .line 483
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentMediaDataName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumName:Ljava/lang/String;

    .line 484
    return-void
.end method

.method protected enablePlayAllMenuIcon()Z
    .locals 1

    .prologue
    .line 1090
    const/4 v0, 0x1

    return v0
.end method

.method protected enableShuffleAllMenuIcon()Z
    .locals 1

    .prologue
    .line 1095
    const/4 v0, 0x1

    return v0
.end method

.method protected getParentCursor()Landroid/database/Cursor;
    .locals 2

    .prologue
    .line 956
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->getAlbumCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected getUnknownCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "where"

    .prologue
    const/4 v4, 0x0

    .line 945
    iget v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mDbTable:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 946
    sget-object v1, Lcom/htc/music/util/MusicUtils$Albums2;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mCols:[Ljava/lang/String;

    move-object v0, p0

    move-object v3, p1

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 948
    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mCols:[Ljava/lang/String;

    move-object v0, p0

    move-object v3, p1

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    const/4 v3, -0x1

    .line 767
    sparse-switch p1, :sswitch_data_0

    .line 783
    :cond_0
    :goto_0
    return-void

    .line 769
    :sswitch_0
    if-ne p2, v3, :cond_0

    .line 770
    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumId:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentArtistId:Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentGenreId:Ljava/lang/String;

    iget-object v6, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mComposer:Ljava/lang/String;

    invoke-static {v3, v4, v5, v6}, Lcom/htc/music/util/MusicUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 772
    .local v2, where:Ljava/lang/String;
    iget v3, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mDbTable:I

    invoke-static {p0, v3, v2}, Lcom/htc/music/util/MusicUtils;->getSongListForAlbum(Landroid/content/Context;ILjava/lang/String;)[I

    move-result-object v0

    .line 773
    .local v0, list:[I
    const-string v3, "playlist"

    const/4 v4, 0x0

    invoke-virtual {p3, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 774
    .local v1, playlist:I
    int-to-long v3, v1

    invoke-static {p0, v0, v3, v4}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    goto :goto_0

    .line 778
    .end local v0           #list:[I
    .end local v1           #playlist:I
    .end local v2           #where:Ljava/lang/String;
    :sswitch_1
    if-ne p2, v3, :cond_0

    .line 779
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->finish()V

    goto :goto_0

    .line 767
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xf -> :sswitch_1
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 190
    const-string v0, "[AlbumBrowserActivityGrid]"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iget v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    .line 192
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 204
    :goto_0
    return-void

    .line 196
    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mOrientation:I

    .line 197
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 199
    iget v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 200
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid$AlbumViewItemLayoutParams;

    iget v1, v1, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->verticalSpacing_landscape:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setVerticalSpacing(I)V

    goto :goto_0

    .line 202
    :cond_1
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mItemLayoutParams:Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid$AlbumViewItemLayoutParams;

    iget v1, v1, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->verticalSpacing:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setVerticalSpacing(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 245
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->onCreate(Landroid/os/Bundle;)V

    .line 246
    if-eqz p1, :cond_5

    .line 247
    const-string v2, "selectedalbum"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumId:Ljava/lang/String;

    .line 248
    const-string v2, "artistid"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentArtistId:Ljava/lang/String;

    .line 249
    const-string v2, "genreid"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentGenreId:Ljava/lang/String;

    .line 250
    const-string v2, "composer"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mComposer:Ljava/lang/String;

    .line 251
    const-string v2, "playlisturi"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mPlaylistUri:Ljava/lang/String;

    .line 252
    const-string v2, "description"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mDescription:Ljava/lang/String;

    .line 253
    const-string v2, "dbTable"

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mDbTable:I

    .line 264
    :goto_0
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->setVolumeControlStream(I)V

    .line 266
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 267
    .local v0, f:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 268
    const-string v2, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 269
    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 270
    const-string v2, "file"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 271
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 272
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->getParent()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 273
    const v2, 0x7f03002a

    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->setContentView(I)V

    .line 286
    :cond_0
    :goto_1
    iget-boolean v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mIsOnlineInnerType:Z

    if-nez v2, :cond_2

    invoke-static {}, Lcom/htc/music/util/ProjectSettings;->isSupportBypassPincode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 287
    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mUnlockReceiver:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_1

    .line 288
    new-instance v2, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid$1;

    invoke-direct {v2, p0}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid$1;-><init>(Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;)V

    iput-object v2, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mUnlockReceiver:Landroid/content/BroadcastReceiver;

    .line 296
    :cond_1
    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mUnlockReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.htc.music.lockscreen_start"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 299
    :cond_2
    iput-object p0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mContext:Landroid/content/Context;

    .line 300
    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    if-nez v2, :cond_3

    new-instance v2, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$QueryHandler;

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$QueryHandler;-><init>(Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;Landroid/content/ContentResolver;)V

    iput-object v2, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    .line 301
    :cond_3
    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->getAlbumCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    .line 302
    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->setCategoryProgressVisible(Z)V

    .line 303
    invoke-direct {p0}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->initGridView()V

    .line 304
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mPlaylistUri:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 305
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->enableSearch()V

    .line 308
    :cond_4
    return-void

    .line 255
    .end local v0           #f:Landroid/content/IntentFilter;
    :cond_5
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 256
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "artistid"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentArtistId:Ljava/lang/String;

    .line 257
    const-string v2, "genreid"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentGenreId:Ljava/lang/String;

    .line 258
    const-string v2, "composer"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mComposer:Ljava/lang/String;

    .line 259
    const-string v2, "playlisturi"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mPlaylistUri:Ljava/lang/String;

    .line 260
    const-string v2, "description"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mDescription:Ljava/lang/String;

    .line 261
    const-string v2, "dbTable"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mDbTable:I

    goto/16 :goto_0

    .line 275
    .end local v1           #intent:Landroid/content/Intent;
    .restart local v0       #f:Landroid/content/IntentFilter;
    :cond_6
    const v2, 0x7f03002b

    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->setContentView(I)V

    .line 276
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHeaderText:Lcom/htc/widget/ActionBarText;

    if-nez v2, :cond_0

    .line 277
    new-instance v2, Lcom/htc/widget/ActionBarText;

    invoke-direct {v2, p0}, Lcom/htc/widget/ActionBarText;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHeaderText:Lcom/htc/widget/ActionBarText;

    .line 278
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHeaderText:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v2, v3}, Lcom/htc/widget/ActionBarContainer;->addCenterView(Landroid/view/View;)V

    .line 280
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    invoke-virtual {v2, v5}, Lcom/htc/widget/ActionBarContainer;->setBackUpEnabled(Z)V

    .line 281
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mCustomContainer:Lcom/htc/widget/ActionBarContainer;

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mHeaderBarBackClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Lcom/htc/widget/ActionBarContainer;->setBackUpOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1
.end method

.method protected onCreateFirstPlaylistDialogSaveClick(Ljava/lang/String;)V
    .locals 4
    .parameter "playlistName"

    .prologue
    .line 622
    invoke-static {p0, p1}, Lcom/htc/music/util/MusicUtils;->createPlaylist(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 623
    .local v0, id:I
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {p0, v1}, Lcom/htc/music/util/MusicUtils;->getSongListForAlbum(Landroid/content/Context;I)[I

    move-result-object v1

    int-to-long v2, v0

    invoke-static {p0, v1, v2, v3}, Lcom/htc/music/util/MusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    .line 625
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 230
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 232
    iget-boolean v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterActivity;->mIsOnlineInnerType:Z

    if-nez v1, :cond_0

    invoke-static {}, Lcom/htc/music/util/ProjectSettings;->isSupportBypassPincode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 234
    :try_start_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mUnlockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->onDestroy()V

    .line 241
    return-void

    .line 235
    :catch_0
    move-exception v0

    .line 236
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const-string v1, "[AlbumBrowserActivityGrid]"

    const-string v2, "onDestroy, fail to unregisterReceiver(mUnlockReceiver)"

    invoke-static {v1, v2, v0}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected onGridViewChildItemPrepare(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 611
    return-void
.end method

.method protected onGridViewItemClick(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 488
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->clickIndexInit(I)V

    .line 489
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mPlaylistUri:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 490
    const-string v1, "[AlbumBrowserActivityGrid]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Going to launch album detail view. currentAlbumId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 492
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v2, "com.htc.media/albumtrack"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 493
    const/high16 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 494
    const-string v1, "albumid"

    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 495
    const-string v1, "artistid"

    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentArtistId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 496
    const-string v1, "composer"

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mComposer:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 497
    const-string v1, "genreid"

    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentGenreId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 498
    const-string v1, "ShowActivityTitle"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 499
    const-string v1, "InnerActivityType"

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 500
    const-string v1, "dbTable"

    iget v2, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mDbTable:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 501
    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->startActivity(Landroid/content/Intent;)V

    .line 512
    :goto_0
    return-void

    .line 503
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 504
    .restart local v0       #intent:Landroid/content/Intent;
    const-class v1, Lcom/htc/music/browserlayer/TrackBrowserActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 505
    const-string v1, "playlisturi"

    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mPlaylistUri:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 506
    const-string v1, "albumid"

    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 507
    const-string v1, "pickermode"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 508
    const-string v1, "dbTable"

    iget v2, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mDbTable:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 509
    const/16 v1, 0xf

    invoke-virtual {p0, v0, v1}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method protected onGridViewItemDelete(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    const/4 v1, 0x0

    .line 615
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 616
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-static {p0, v0, v1, v1, v1}, Lcom/htc/music/util/MusicUtils;->deleteTracksForAlbum(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    :cond_0
    return-void
.end method

.method public onGridViewItemDeleteComplete()V
    .locals 4

    .prologue
    .line 677
    const-string v1, "[AlbumBrowserActivityGrid]"

    const-string v2, "call onDeletionCompleted()"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    if-nez v1, :cond_1

    .line 680
    :cond_0
    const-string v1, "[AlbumBrowserActivityGrid]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mMusicGridViewUtil = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mGridView = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    :goto_0
    return-void

    .line 683
    :cond_1
    const/4 v1, 0x1

    new-array v0, v1, [I

    const/4 v1, 0x0

    iget v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    aput v2, v0, v1

    .line 684
    .local v0, a:[I
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    invoke-virtual {v1, v2}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->deleteParentItem(I)V

    .line 685
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mDeleteAnimationListener:Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;

    invoke-virtual {v1, v0, v2, v3}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->startDataSetChangeAnimation([I[ILcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V

    goto :goto_0
.end method

.method protected onGridViewItemLongClick(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x4

    const/4 v7, 0x3

    .line 516
    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->clickIndexInit(I)V

    .line 517
    iget-object v5, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mPlaylistUri:Ljava/lang/String;

    if-nez v5, :cond_1

    .line 518
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 519
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/music/util/MusicUtils;->CheckDLNAStatus(Landroid/content/Context;)I

    move-result v1

    .line 523
    .local v1, dlnaMode:I
    const/4 v2, 0x0

    .line 524
    .local v2, headerTitle:Ljava/lang/String;
    const/4 v4, 0x0

    .line 525
    .local v4, items:[Ljava/lang/CharSequence;
    const/4 v3, 0x0

    .line 526
    .local v3, ids:[I
    iget-object v5, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumName:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumName:Ljava/lang/String;

    const v6, 0x7f07004e

    invoke-virtual {p0, v6}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumName:Ljava/lang/String;

    const-string v6, "<unknown>"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 527
    :cond_0
    const v5, 0x7f07004e

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 530
    if-nez v1, :cond_2

    .line 532
    new-array v4, v8, [Ljava/lang/CharSequence;

    .end local v4           #items:[Ljava/lang/CharSequence;
    const v5, 0x7f070058

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    const v5, 0x7f070059

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    const v5, 0x7f07005a

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v11

    const v5, 0x2040214

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    .line 539
    .restart local v4       #items:[Ljava/lang/CharSequence;
    new-array v3, v8, [I

    .end local v3           #ids:[I
    fill-array-data v3, :array_0

    .line 598
    .restart local v3       #ids:[I
    :goto_0
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->hideHtcContextMenu()V

    .line 599
    invoke-virtual {p0, v2, v4, v3}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->showHtcContextMenu(Ljava/lang/String;[Ljava/lang/CharSequence;[I)V

    .line 601
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #dlnaMode:I
    .end local v2           #headerTitle:Ljava/lang/String;
    .end local v3           #ids:[I
    .end local v4           #items:[Ljava/lang/CharSequence;
    :cond_1
    return-void

    .line 547
    .restart local v0       #context:Landroid/content/Context;
    .restart local v1       #dlnaMode:I
    .restart local v2       #headerTitle:Ljava/lang/String;
    .restart local v3       #ids:[I
    .restart local v4       #items:[Ljava/lang/CharSequence;
    :cond_2
    new-array v4, v7, [Ljava/lang/CharSequence;

    .end local v4           #items:[Ljava/lang/CharSequence;
    const v5, 0x7f070058

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    const v5, 0x7f070059

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    const v5, 0x2040214

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v11

    .line 553
    .restart local v4       #items:[Ljava/lang/CharSequence;
    new-array v3, v7, [I

    .end local v3           #ids:[I
    fill-array-data v3, :array_1

    .restart local v3       #ids:[I
    goto :goto_0

    .line 562
    :cond_3
    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumName:Ljava/lang/String;

    .line 564
    if-nez v1, :cond_4

    .line 566
    const/4 v5, 0x5

    new-array v4, v5, [Ljava/lang/CharSequence;

    .end local v4           #items:[Ljava/lang/CharSequence;
    const v5, 0x7f070058

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    const v5, 0x7f070059

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    const v5, 0x7f07005a

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v11

    const v5, 0x2040214

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const v5, 0x204014d

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    .line 574
    .restart local v4       #items:[Ljava/lang/CharSequence;
    const/4 v5, 0x5

    new-array v3, v5, [I

    .end local v3           #ids:[I
    fill-array-data v3, :array_2

    .restart local v3       #ids:[I
    goto :goto_0

    .line 583
    :cond_4
    new-array v4, v8, [Ljava/lang/CharSequence;

    .end local v4           #items:[Ljava/lang/CharSequence;
    const v5, 0x7f070058

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    const v5, 0x7f070059

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    const v5, 0x2040214

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v11

    const v5, 0x204014d

    invoke-virtual {p0, v5}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    .line 590
    .restart local v4       #items:[Ljava/lang/CharSequence;
    new-array v3, v8, [I

    .end local v3           #ids:[I
    fill-array-data v3, :array_3

    .restart local v3       #ids:[I
    goto/16 :goto_0

    .line 539
    :array_0
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
    .end array-data

    .line 553
    :array_1
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
    .end array-data

    .line 574
    :array_2
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
    .end array-data

    .line 590
    :array_3
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method protected onGridViewPrepareUpdateListReady(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 606
    return-void
.end method

.method public onHtcContextItemSelected(I)Z
    .locals 13
    .parameter "id"

    .prologue
    .line 690
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->CheckDLNAStatus(Landroid/content/Context;)I

    move-result v8

    .line 691
    .local v8, dlnaMode:I
    if-nez v8, :cond_2

    .line 692
    sparse-switch p1, :sswitch_data_0

    .line 761
    :cond_0
    :goto_0
    :sswitch_0
    const/4 v1, 0x1

    return v1

    .line 694
    :sswitch_1
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumId:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentArtistId:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentGenreId:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mComposer:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/htc/music/util/MusicUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 695
    .local v12, where:Ljava/lang/String;
    iget v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mDbTable:I

    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {p0, v1, v12, v2}, Lcom/htc/music/util/MusicUtils;->getSongListForAlbumAndPrepare(Landroid/content/Context;ILjava/lang/String;I)[I

    move-result-object v11

    .line 696
    .local v11, list:[I
    const/4 v0, 0x0

    .line 697
    .local v0, npc:Lcom/htc/music/NpCategory;
    new-instance v0, Lcom/htc/music/NpCategory;

    .end local v0           #npc:Lcom/htc/music/NpCategory;
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentArtistId:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumId:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentGenreId:Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mComposer:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/htc/music/NpCategory;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    .restart local v0       #npc:Lcom/htc/music/NpCategory;
    const/4 v1, 0x0

    invoke-static {p0, v11, v1, v0}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;[IILcom/htc/music/NpCategory;)V

    goto :goto_0

    .line 701
    .end local v0           #npc:Lcom/htc/music/NpCategory;
    .end local v11           #list:[I
    .end local v12           #where:Ljava/lang/String;
    :sswitch_2
    invoke-static {p0}, Lcom/htc/music/util/MusicUtils;->checkPlaylistCount(Landroid/content/Context;)I

    move-result v1

    if-gtz v1, :cond_1

    .line 702
    const/16 v1, 0x25a

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->showDialog(I)V

    goto :goto_0

    .line 705
    :cond_1
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {p0, v1}, Lcom/htc/music/util/MusicUtils;->getSongListForAlbum(Landroid/content/Context;I)[I

    move-result-object v7

    .line 707
    .local v7, addToPlayListData:[I
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 708
    .local v10, intent:Landroid/content/Intent;
    const-class v1, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;

    invoke-virtual {v10, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 709
    const-string v1, "pickermode"

    const/4 v2, 0x1

    invoke-virtual {v10, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 710
    const-string v1, "AddToPlaylistData"

    invoke-virtual {v10, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 711
    const/4 v1, 0x1

    invoke-virtual {p0, v10, v1}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 716
    .end local v7           #addToPlayListData:[I
    .end local v10           #intent:Landroid/content/Intent;
    :sswitch_3
    :try_start_0
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v1, :cond_0

    .line 717
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/htc/music/IMediaPlaybackService;->addToQueue(II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 719
    :catch_0
    move-exception v9

    .line 720
    .local v9, e:Ljava/lang/NumberFormatException;
    const-string v1, "[AlbumBrowserActivityGrid]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ADD_TO_QUEUE, NumberFormatException e: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 721
    .end local v9           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v9

    .line 722
    .local v9, e:Landroid/os/RemoteException;
    const-string v1, "[AlbumBrowserActivityGrid]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ADD_TO_QUEUE, RemoteException e: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 726
    .end local v9           #e:Landroid/os/RemoteException;
    :sswitch_4
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->showDeleteDialog()V

    goto/16 :goto_0

    .line 730
    :sswitch_5
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->findRootParent()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/htc/music/util/MusicUtils;->searchViaAlbumName(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 734
    :cond_2
    sparse-switch p1, :sswitch_data_1

    goto/16 :goto_0

    .line 743
    :sswitch_6
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {p0, v1}, Lcom/htc/music/util/MusicUtils;->getSongListForAlbum(Landroid/content/Context;I)[I

    move-result-object v7

    .line 745
    .restart local v7       #addToPlayListData:[I
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 746
    .restart local v10       #intent:Landroid/content/Intent;
    const-class v1, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;

    invoke-virtual {v10, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 747
    const-string v1, "pickermode"

    const/4 v2, 0x1

    invoke-virtual {v10, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 748
    const-string v1, "AddToPlaylistData"

    invoke-virtual {v10, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 749
    const/4 v1, 0x1

    invoke-virtual {p0, v10, v1}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 736
    .end local v7           #addToPlayListData:[I
    .end local v10           #intent:Landroid/content/Intent;
    :sswitch_7
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumId:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentArtistId:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentGenreId:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mComposer:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/htc/music/util/MusicUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 737
    .restart local v12       #where:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {p0, v12, v1}, Lcom/htc/music/util/MusicUtils;->getSongListForAlbumAndPrepare(Landroid/content/Context;Ljava/lang/String;I)[I

    move-result-object v11

    .line 738
    .restart local v11       #list:[I
    const/4 v0, 0x0

    .line 739
    .restart local v0       #npc:Lcom/htc/music/NpCategory;
    new-instance v0, Lcom/htc/music/NpCategory;

    .end local v0           #npc:Lcom/htc/music/NpCategory;
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentArtistId:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumId:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentGenreId:Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mComposer:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/htc/music/NpCategory;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    .restart local v0       #npc:Lcom/htc/music/NpCategory;
    const/4 v1, 0x0

    invoke-static {p0, v11, v1, v0}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;[IILcom/htc/music/NpCategory;)V

    goto/16 :goto_0

    .line 756
    .end local v0           #npc:Lcom/htc/music/NpCategory;
    .end local v11           #list:[I
    .end local v12           #where:Ljava/lang/String;
    :sswitch_8
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->findRootParent()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/htc/music/util/MusicUtils;->searchViaAlbumName(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 692
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x5 -> :sswitch_1
        0xa -> :sswitch_4
        0xd -> :sswitch_3
        0x11 -> :sswitch_5
    .end sparse-switch

    .line 734
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_6
        0x5 -> :sswitch_7
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0x11 -> :sswitch_8
    .end sparse-switch
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 139
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 140
    if-eqz p1, :cond_1

    .line 141
    const-string v0, "selectedalbum"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumId:Ljava/lang/String;

    .line 142
    const-string v0, "artistid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentArtistId:Ljava/lang/String;

    .line 143
    const-string v0, "genreid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentGenreId:Ljava/lang/String;

    .line 144
    const-string v0, "composer"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mComposer:Ljava/lang/String;

    .line 145
    const-string v0, "playlisturi"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mPlaylistUri:Ljava/lang/String;

    .line 146
    const-string v0, "description"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mDescription:Ljava/lang/String;

    .line 147
    const-string v0, "dbTable"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mDbTable:I

    .line 148
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    if-nez v0, :cond_0

    .line 149
    new-instance v0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$QueryHandler;

    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity$QueryHandler;-><init>(Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    if-eqz v0, :cond_1

    .line 152
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setVisibility(Z)V

    .line 153
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->requestLayout()V

    .line 154
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->getAlbumCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    .line 155
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->setCategoryProgressVisible(Z)V

    .line 156
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->setTitle()V

    .line 159
    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outcicle"

    .prologue
    .line 211
    const-string v0, "selectedalbum"

    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const-string v0, "artistid"

    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentArtistId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string v0, "genreid"

    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentGenreId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const-string v0, "composer"

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mComposer:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const-string v0, "playlisturi"

    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mPlaylistUri:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const-string v0, "description"

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 218
    return-void
.end method

.method protected playAllAction(Z)Z
    .locals 14
    .parameter "forceShuffle"

    .prologue
    .line 830
    const/4 v1, 0x0

    .line 831
    .local v1, uri:Landroid/net/Uri;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 832
    .local v13, where:Ljava/lang/StringBuilder;
    const-string v0, "is_music>=1"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 833
    const-string v0, " AND title"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " != \'\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 834
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentGenreId:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 835
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentArtistId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 836
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " AND artist_id = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentArtistId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 840
    :cond_0
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentGenreId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v9, v0

    .line 841
    .local v9, genreId:J
    const-wide/16 v2, -0x1

    cmp-long v0, v9, v2

    if-nez v0, :cond_4

    .line 842
    const-string v0, " AND _id NOT IN (SELECT audio_id FROM audio_genres_map)"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 867
    .end local v9           #genreId:J
    :cond_1
    :goto_0
    if-nez v1, :cond_2

    .line 868
    iget v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mDbTable:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_8

    .line 869
    sget-object v1, Lcom/htc/music/util/MusicUtils$Media2;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 875
    :cond_2
    :goto_1
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    .line 878
    .local v6, basicLength:I
    const-string v0, " AND album != \'\'"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 879
    const-string v0, " AND album != \'<unknown>\'"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 880
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "album_id"

    aput-object v3, v2, v0

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "album COLLATE NOCASE ASC, track"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 885
    .local v8, cursor:Landroid/database/Cursor;
    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 886
    const-string v0, " AND album = \'<unknown>\'"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 887
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "album_id"

    aput-object v3, v2, v0

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "track"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 891
    .local v12, unknown:Landroid/database/Cursor;
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/database/Cursor;

    invoke-static {v8, v12, v0}, Lcom/htc/music/util/MusicUtils;->mergeCursors(Landroid/database/Cursor;Landroid/database/Cursor;[Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v8

    .line 893
    if-eqz v8, :cond_3

    .line 894
    const/4 v11, 0x0

    .line 896
    .local v11, npc:Lcom/htc/music/NpCategory;
    new-instance v0, Lcom/htc/music/NpCategory;

    const/16 v2, 0xc

    invoke-direct {v0, v2}, Lcom/htc/music/NpCategory;-><init>(S)V

    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentArtistId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/htc/music/NpCategory;->setArtistId(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentGenreId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/htc/music/NpCategory;->setGenreId(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mComposer:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/htc/music/NpCategory;->setComposer(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    move-result-object v11

    .line 900
    if-eqz p1, :cond_9

    .line 901
    invoke-static {p0, v8, v11}, Lcom/htc/music/util/MusicUtils;->shuffleAll(Landroid/content/Context;Landroid/database/Cursor;Lcom/htc/music/NpCategory;)V

    .line 904
    :goto_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 905
    const/4 v8, 0x0

    .line 907
    .end local v11           #npc:Lcom/htc/music/NpCategory;
    :cond_3
    const/4 v0, 0x1

    return v0

    .line 845
    .end local v6           #basicLength:I
    .end local v8           #cursor:Landroid/database/Cursor;
    .end local v12           #unknown:Landroid/database/Cursor;
    .restart local v9       #genreId:J
    :cond_4
    const-string v0, "external"

    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentGenreId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v2, v3}, Landroid/provider/MediaStore$Audio$Genres$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    goto/16 :goto_0

    .line 848
    .end local v9           #genreId:J
    :cond_5
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentArtistId:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 849
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " AND artist_id = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentArtistId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 853
    :cond_6
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mComposer:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 854
    iget-object v7, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mComposer:Ljava/lang/String;

    .line 855
    .local v7, composer:Ljava/lang/String;
    invoke-static {v7}, Lcom/htc/music/util/MusicUtils;->isUnknownComposer(Ljava/lang/String;)Z

    move-result v12

    .line 856
    .local v12, unknown:Z
    if-eqz v12, :cond_7

    .line 857
    const-string v0, " AND "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 858
    invoke-static {v13}, Lcom/htc/music/util/MusicUtils;->appendUnknownComposerFilter(Ljava/lang/StringBuilder;)V

    goto/16 :goto_0

    .line 860
    :cond_7
    const-string v0, "\'"

    const-string v2, "\'\'"

    invoke-virtual {v7, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 861
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " AND composer = \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 871
    .end local v7           #composer:Ljava/lang/String;
    .end local v12           #unknown:Z
    :cond_8
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto/16 :goto_1

    .line 903
    .restart local v6       #basicLength:I
    .restart local v8       #cursor:Landroid/database/Cursor;
    .restart local v11       #npc:Lcom/htc/music/NpCategory;
    .local v12, unknown:Landroid/database/Cursor;
    :cond_9
    invoke-static {p0, v8, v11}, Lcom/htc/music/util/MusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;Lcom/htc/music/NpCategory;)V

    goto :goto_2
.end method

.method protected setEmptyView()V
    .locals 1

    .prologue
    .line 1059
    const v0, 0x7f070038

    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->showEmptyView(I)V

    .line 1060
    return-void
.end method

.method protected setTitle()V
    .locals 4

    .prologue
    const v3, 0x7f070024

    const/4 v2, 0x0

    .line 1066
    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mDescription:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1067
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->mDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1068
    .local v0, fancyName:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->setTitle(Ljava/lang/String;)V

    .line 1086
    .end local v0           #fancyName:Ljava/lang/String;
    :goto_0
    return-void

    .line 1070
    :cond_0
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mPlaylistUri:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1073
    const v1, 0x7f070072

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->setCatgoryMainTitle(Ljava/lang/String;)V

    .line 1074
    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->setCategorySecondaryTitleVisible(Z)V

    goto :goto_0

    .line 1082
    :cond_1
    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->setCatgoryMainTitle(Ljava/lang/String;)V

    .line 1083
    invoke-virtual {p0, v2}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->setCategorySecondaryTitleVisible(Z)V

    goto :goto_0
.end method

.method showDeleteDialog()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 629
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 630
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_0

    move-object v0, p0

    .line 633
    :cond_0
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->IsInternalStorage()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 634
    const v3, 0x7f070013

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 640
    .local v2, f:Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumName:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumName:Ljava/lang/String;

    const-string v4, "<unknown>"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 641
    :cond_1
    new-array v3, v6, [Ljava/lang/Object;

    const v4, 0x7f07004e

    invoke-virtual {p0, v4}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 645
    .local v1, desc:Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    if-nez v3, :cond_2

    .line 648
    new-instance v3, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v3, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x2040214

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x1040013

    new-instance v5, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid$7;

    invoke-direct {v5, p0}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid$7;-><init>(Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;)V

    invoke-virtual {v3, v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x1040009

    new-instance v5, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid$6;

    invoke-direct {v5, p0}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid$6;-><init>(Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;)V

    invoke-virtual {v3, v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 670
    :cond_2
    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 671
    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v3, v1}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 672
    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 673
    return-void

    .line 636
    .end local v1           #desc:Ljava/lang/String;
    .end local v2           #f:Ljava/lang/String;
    :cond_3
    const v3, 0x7f070012

    invoke-virtual {p0, v3}, Lcom/htc/music/browserlayer/AlbumBrowserActivityGrid;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #f:Ljava/lang/String;
    goto :goto_0

    .line 643
    :cond_4
    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumName:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #desc:Ljava/lang/String;
    goto :goto_1
.end method
