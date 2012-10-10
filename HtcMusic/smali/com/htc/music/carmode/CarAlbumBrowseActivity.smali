.class public Lcom/htc/music/carmode/CarAlbumBrowseActivity;
.super Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;
.source "CarAlbumBrowseActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/carmode/CarAlbumBrowseActivity$AlbumViewItemLayoutParams;
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

.field mItemLayoutParams:Lcom/htc/music/carmode/CarAlbumBrowseActivity$AlbumViewItemLayoutParams;

.field private mOrientation:I

.field private mQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 42
    invoke-direct {p0}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;-><init>()V

    .line 45
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

    iput-object v0, p0, Lcom/htc/music/carmode/CarAlbumBrowseActivity;->mCols:[Ljava/lang/String;

    .line 201
    iput v3, p0, Lcom/htc/music/carmode/CarAlbumBrowseActivity;->mDbTable:I

    return-void
.end method

.method private getAlbumCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 27
    .parameter "async"
    .parameter "filter"

    .prologue
    .line 920
    const-string v2, "[AlbumBrowserActivityGrid]"

    const-string v3, "getAlbumCursor+"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    .line 923
    .local v24, where:Ljava/lang/StringBuilder;
    const-string v2, "album != \'\'"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 924
    const-string v2, " AND album != \'<unknown>\'"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 926
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    .line 927
    .local v26, whereUnkown:Ljava/lang/StringBuilder;
    const-string v2, "album = \'<unknown>\'"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 930
    const/4 v8, 0x0

    .line 931
    .local v8, keywords:[Ljava/lang/String;
    if-nez p2, :cond_4

    const/16 v21, 0x1

    .line 932
    .local v21, searchContainsUnkown:Z
    :goto_0
    if-eqz p2, :cond_0

    .line 933
    const/4 v2, 0x1

    new-array v8, v2, [Ljava/lang/String;

    .line 934
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

    .line 935
    const-string v2, " AND "

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 936
    const-string v2, "album LIKE ?"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 938
    const v2, 0x7f07004e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/carmode/CarAlbumBrowseActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v23

    .line 939
    .local v23, unknownAlbum:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 940
    const/16 v21, 0x1

    .line 943
    .end local v23           #unknownAlbum:Ljava/lang/String;
    :cond_0
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    .line 945
    .local v25, where2:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mCurrentArtistId:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 948
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mCurrentArtistId:Ljava/lang/String;

    const-string v3, "\'"

    const-string v5, "\'\'"

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 949
    .local v15, artistId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/carmode/CarAlbumBrowseActivity;->mDbTable:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    .line 950
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

    .line 956
    .end local v15           #artistId:Ljava/lang/String;
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mCurrentGenreId:Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 957
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mCurrentGenreId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    .line 958
    .local v19, genreId:J
    const-wide/16 v2, -0x1

    cmp-long v2, v19, v2

    if-nez v2, :cond_6

    .line 959
    const-string v2, " AND _id  in (select  distinct album_id from audio where _id NOT IN (select audio_id from audio_genres_map ) )"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 978
    .end local v19           #genreId:J
    :cond_2
    :goto_2
    const/16 v17, 0x0

    .line 979
    .local v17, cursor:Landroid/database/Cursor;
    if-eqz p1, :cond_b

    .line 980
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/carmode/CarAlbumBrowseActivity;->setAsyncQueryStatus(Z)V

    .line 981
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

    .line 982
    .local v4, asyncUnknownWhere:Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/carmode/CarAlbumBrowseActivity;->mDbTable:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_a

    .line 983
    const/4 v3, 0x0

    sget-object v5, Lcom/htc/music/carmode/util/CarMusicUtils$Albums2;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/music/carmode/CarAlbumBrowseActivity;->mCols:[Ljava/lang/String;

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

    .line 1009
    .end local v4           #asyncUnknownWhere:Ljava/lang/String;
    :goto_4
    if-eqz v17, :cond_3

    .line 1010
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

    .line 1011
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lcom/htc/music/carmode/CarAlbumBrowseActivity;->init(Landroid/database/Cursor;Z)V

    .line 1014
    :cond_3
    return-object v17

    .line 931
    .end local v17           #cursor:Landroid/database/Cursor;
    .end local v21           #searchContainsUnkown:Z
    .end local v25           #where2:Ljava/lang/StringBuilder;
    :cond_4
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 952
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

    .line 961
    .end local v15           #artistId:Ljava/lang/String;
    .restart local v19       #genreId:J
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AND _id  in (select  distinct album_id from audio where _id IN (select audio_id from audio_genres_map WHERE genre_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mCurrentGenreId:Ljava/lang/String;

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

    .line 963
    .end local v19           #genreId:J
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/carmode/CarAlbumBrowseActivity;->mComposer:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 964
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarAlbumBrowseActivity;->mComposer:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 965
    .local v16, composer:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/htc/music/carmode/util/CarMusicUtils;->isUnknownComposer(Ljava/lang/String;)Z

    move-result v22

    .line 966
    .local v22, unknown:Z
    if-eqz v22, :cond_8

    .line 967
    const-string v2, " AND _id IN (SELECT distinct album_id FROM audio_meta where (audio_meta.composer ISNULL OR audio_meta.composer = \'\' OR audio_meta.composer = \'<unknown>\'))"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 972
    :cond_8
    const-string v2, "\'"

    const-string v3, "\'\'"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 973
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

    .line 981
    .end local v16           #composer:Ljava/lang/String;
    .end local v22           #unknown:Z
    .restart local v17       #cursor:Landroid/database/Cursor;
    :cond_9
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 987
    .restart local v4       #asyncUnknownWhere:Ljava/lang/String;
    :cond_a
    const/4 v3, 0x0

    sget-object v5, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/music/carmode/CarAlbumBrowseActivity;->mCols:[Ljava/lang/String;

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

    .line 992
    .end local v4           #asyncUnknownWhere:Ljava/lang/String;
    :cond_b
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/music/carmode/CarAlbumBrowseActivity;->setAsyncQueryStatus(Z)V

    .line 993
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/carmode/CarAlbumBrowseActivity;->mDbTable:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_c

    .line 994
    sget-object v10, Lcom/htc/music/carmode/util/CarMusicUtils$Albums2;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/music/carmode/CarAlbumBrowseActivity;->mCols:[Ljava/lang/String;

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

    invoke-static/range {v9 .. v14}, Lcom/htc/music/carmode/util/CarMusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    move-object/from16 v18, v17

    .line 1001
    .end local v17           #cursor:Landroid/database/Cursor;
    .local v18, cursor:Landroid/database/Cursor;
    :goto_5
    if-eqz v21, :cond_d

    .line 1002
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

    invoke-virtual {v0, v2}, Lcom/htc/music/carmode/CarAlbumBrowseActivity;->getUnknownCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v22

    .line 1003
    .local v22, unknown:Landroid/database/Cursor;
    if-eqz v22, :cond_d

    .line 1004
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

    .line 997
    .end local v22           #unknown:Landroid/database/Cursor;
    :cond_c
    sget-object v10, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/music/carmode/CarAlbumBrowseActivity;->mCols:[Ljava/lang/String;

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

    invoke-static/range {v9 .. v14}, Lcom/htc/music/carmode/util/CarMusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

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
    .locals 8

    .prologue
    const v7, 0x2050004

    .line 249
    const v2, 0x7f080073

    invoke-virtual {p0, v2}, Lcom/htc/music/carmode/CarAlbumBrowseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/sunny2/view/SSurfaceView;

    iput-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    .line 251
    new-instance v2, Lcom/htc/music/carmode/CarAlbumBrowseActivity$AlbumViewItemLayoutParams;

    invoke-direct {v2, p0}, Lcom/htc/music/carmode/CarAlbumBrowseActivity$AlbumViewItemLayoutParams;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/htc/music/carmode/CarAlbumBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarAlbumBrowseActivity$AlbumViewItemLayoutParams;

    .line 253
    new-instance v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;-><init>(Landroid/content/Context;)V

    .line 254
    .local v0, folderParam:Lcom/htc/music/widget/gridview/MusicGridViewItemParams;
    invoke-direct {p0, v0}, Lcom/htc/music/carmode/CarAlbumBrowseActivity;->initMusicGridViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V

    .line 256
    new-instance v1, Lcom/htc/music/widget/gridview/MusicGridViewItem;

    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v2}, Lcom/htc/sunny2/view/SSurfaceView;->getSunnyContext()Lcom/htc/sunny2/SunnyContext;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/htc/music/widget/gridview/MusicGridViewItem;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V

    .line 257
    .local v1, gridViewItem:Lcom/htc/music/widget/gridview/MusicGridViewItem;
    invoke-direct {p0, v1}, Lcom/htc/music/carmode/CarAlbumBrowseActivity;->initMusicGridViewItem(Lcom/htc/music/widget/gridview/MusicGridViewItem;)V

    .line 258
    invoke-direct {p0}, Lcom/htc/music/carmode/CarAlbumBrowseActivity;->initMusicGridViewUtil()V

    .line 259
    new-instance v2, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-direct {v2, p0, v3, v4}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;-><init>(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/music/widget/gridview/MusicGridViewUtil;)V

    iput-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridViewPreparator:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    .line 260
    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridViewPreparator:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    invoke-direct {p0, v2, v0}, Lcom/htc/music/carmode/CarAlbumBrowseActivity;->initGridViewPreparator(Lcom/htc/music/widget/gridview/MusicGridViewPreparator;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V

    .line 262
    new-instance v2, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v3, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v3}, Lcom/htc/sunny2/view/SSurfaceView;->getSunnyContext()Lcom/htc/sunny2/SunnyContext;

    move-result-object v3

    invoke-direct {v2, p0, v3, v1}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Lcom/htc/sunny2/widget/gridview/GridViewItem;)V

    iput-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    .line 263
    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v3, p0, Lcom/htc/music/carmode/CarAlbumBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarAlbumBrowseActivity$AlbumViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->verticalSpacing:I

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setVerticalSpacing(I)V

    .line 264
    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v3, p0, Lcom/htc/music/carmode/CarAlbumBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarAlbumBrowseActivity$AlbumViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->horizontalSpacing:I

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setHorizontalSpacing(I)V

    .line 265
    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v3, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridViewItemClickListener:Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setOnItemClickListener(Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;)V

    .line 266
    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v3, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mViewItemLongClickListener:Lcom/htc/sunny2/widget/gridview/GridView$OnItemLongClickListener;

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setOnItemLongClickListener(Lcom/htc/sunny2/widget/gridview/GridView$OnItemLongClickListener;)V

    .line 267
    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v3, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridViewPreparator:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setPreparation(Lcom/htc/sunny2/widget/gridview/GridViewPreparator;)V

    .line 268
    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    const v3, 0x2080001

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setGlobalBackgroundResource(I)V

    .line 270
    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setOrientation(I)V

    .line 271
    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v3, p0, Lcom/htc/music/carmode/CarAlbumBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarAlbumBrowseActivity$AlbumViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->gridview_marginLeft:I

    invoke-virtual {p0}, Lcom/htc/music/carmode/CarAlbumBrowseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/htc/music/carmode/CarAlbumBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarAlbumBrowseActivity$AlbumViewItemLayoutParams;

    iget v5, v5, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->gridview_marginRight:I

    invoke-virtual {p0}, Lcom/htc/music/carmode/CarAlbumBrowseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setPadding(IIII)V

    .line 272
    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v3, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridViewScrollListener:Lcom/htc/sunny2/widget/gridview/interfaces/OnScrollListener;

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setOnScrollListener(Lcom/htc/sunny2/widget/gridview/interfaces/OnScrollListener;)V

    .line 273
    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    iget-object v3, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/view/SSurfaceView;->addView(Lcom/htc/sunny2/view/SView;)V

    .line 274
    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setVisibility(Z)V

    .line 275
    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridViewPreparator:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    iget-object v3, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v2, v3}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->updateMusicGridViewUtil(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)V

    .line 276
    return-void
.end method

.method private initGridViewPreparator(Lcom/htc/music/widget/gridview/MusicGridViewPreparator;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V
    .locals 2
    .parameter "preparator"
    .parameter "folderParam"

    .prologue
    .line 396
    new-instance v0, Lcom/htc/music/widget/gridview/MusicGridViewParamsPreparator;

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->getWidth(I)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewParamsPreparator;-><init>(I)V

    .line 397
    .local v0, paramsPreparator:Lcom/htc/music/widget/gridview/MusicGridViewParamsPreparator;
    invoke-virtual {p1, p0, v0}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->init(Landroid/content/Context;Lcom/htc/sunny2/IParamsPreparator;)V

    .line 398
    new-instance v1, Lcom/htc/music/carmode/CarAlbumBrowseActivity$4;

    invoke-direct {v1, p0}, Lcom/htc/music/carmode/CarAlbumBrowseActivity$4;-><init>(Lcom/htc/music/carmode/CarAlbumBrowseActivity;)V

    invoke-virtual {p1, v1}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->setUpdateListener(Lcom/htc/sunny2/Preparator$UpdateListener;)V

    .line 419
    return-void
.end method

.method private initMusicGridViewItem(Lcom/htc/music/widget/gridview/MusicGridViewItem;)V
    .locals 1
    .parameter "gridViewItem"

    .prologue
    .line 310
    new-instance v0, Lcom/htc/music/carmode/CarAlbumBrowseActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarAlbumBrowseActivity$1;-><init>(Lcom/htc/music/carmode/CarAlbumBrowseActivity;)V

    invoke-virtual {p1, v0}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->setTextViewBindListener(Lcom/htc/music/widget/gridview/MusicGridViewItem$ITextViewBind;)V

    .line 333
    new-instance v0, Lcom/htc/music/carmode/CarAlbumBrowseActivity$2;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarAlbumBrowseActivity$2;-><init>(Lcom/htc/music/carmode/CarAlbumBrowseActivity;)V

    invoke-virtual {p1, v0}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->setViewItemImageGetter(Lcom/htc/music/widget/gridview/MusicGridViewItem$ViewItemImageGetter;)V

    .line 359
    return-void
.end method

.method private initMusicGridViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V
    .locals 4
    .parameter "folderParam"

    .prologue
    .line 280
    new-instance v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    invoke-direct {v0}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;-><init>()V

    .line 281
    .local v0, backgroundParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    const v3, 0x7f02001b

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->defaultResourceId:I

    .line 282
    iget-object v3, p0, Lcom/htc/music/carmode/CarAlbumBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarAlbumBrowseActivity$AlbumViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_width:I

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->width:I

    .line 283
    iget-object v3, p0, Lcom/htc/music/carmode/CarAlbumBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarAlbumBrowseActivity$AlbumViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_height:I

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->height:I

    .line 284
    iget-object v3, p0, Lcom/htc/music/carmode/CarAlbumBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarAlbumBrowseActivity$AlbumViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_marginLeft:I

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginLeft:I

    .line 285
    iget-object v3, p0, Lcom/htc/music/carmode/CarAlbumBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarAlbumBrowseActivity$AlbumViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_marginTop:I

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginTop:I

    .line 286
    const/4 v3, 0x1

    invoke-virtual {p1, v0, v3}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;I)V

    .line 292
    new-instance v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    invoke-direct {v2}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;-><init>()V

    .line 293
    .local v2, thumbnail:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    const v3, 0x7f02001a

    iput v3, v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->defaultResourceId:I

    .line 294
    iget-object v3, p0, Lcom/htc/music/carmode/CarAlbumBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarAlbumBrowseActivity$AlbumViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->thumb_marginLeft:I

    iput v3, v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginLeft:I

    .line 295
    iget-object v3, p0, Lcom/htc/music/carmode/CarAlbumBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarAlbumBrowseActivity$AlbumViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->thumb_marginTop:I

    iput v3, v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginTop:I

    .line 296
    const/4 v3, 0x3

    invoke-virtual {p1, v2, v3}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;I)V

    .line 297
    new-instance v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    invoke-direct {v1}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;-><init>()V

    .line 298
    .local v1, textLayout:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    iget-object v3, p0, Lcom/htc/music/carmode/CarAlbumBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarAlbumBrowseActivity$AlbumViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_height:I

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->height:I

    .line 299
    iget-object v3, p0, Lcom/htc/music/carmode/CarAlbumBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarAlbumBrowseActivity$AlbumViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_width:I

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->width:I

    .line 300
    const v3, 0x7f030011

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->defaultResourceId:I

    .line 301
    iget-object v3, p0, Lcom/htc/music/carmode/CarAlbumBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarAlbumBrowseActivity$AlbumViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_marginLeft:I

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginLeft:I

    .line 302
    iget-object v3, p0, Lcom/htc/music/carmode/CarAlbumBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarAlbumBrowseActivity$AlbumViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_marginTop:I

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginTop:I

    .line 303
    const/4 v3, 0x4

    invoke-virtual {p1, v1, v3}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;I)V

    .line 305
    iget-object v3, p0, Lcom/htc/music/carmode/CarAlbumBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarAlbumBrowseActivity$AlbumViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->width:I

    invoke-virtual {p1, v3}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setItemWidth(I)V

    .line 306
    iget-object v3, p0, Lcom/htc/music/carmode/CarAlbumBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarAlbumBrowseActivity$AlbumViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->height:I

    invoke-virtual {p1, v3}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setItemHeight(I)V

    .line 307
    return-void
.end method

.method private initMusicGridViewUtil()V
    .locals 4

    .prologue
    .line 362
    new-instance v1, Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    sget-object v2, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->ALBUM_TYPE:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, p0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;-><init>(Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    .line 364
    new-instance v0, Lcom/htc/music/carmode/CarAlbumBrowseActivity$3;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarAlbumBrowseActivity$3;-><init>(Lcom/htc/music/carmode/CarAlbumBrowseActivity;)V

    .line 392
    .local v0, musicGridViewItemUpdater:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MusicGridViewItemUpdater;
    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v1, v0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->setMusicGridViewItemUpdater(Lcom/htc/music/widget/gridview/MusicGridViewUtil$MusicGridViewItemUpdater;)V

    .line 393
    return-void
.end method


# virtual methods
.method public clickIndexInit(I)V
    .locals 2
    .parameter "globalIndex"

    .prologue
    .line 422
    iput p1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mParentClickedIndex:I

    iput p1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    .line 423
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentMediaDataId(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumId:Ljava/lang/String;

    .line 424
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentMediaDataName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumName:Ljava/lang/String;

    .line 425
    return-void
.end method

.method protected enablePlayAllMenuIcon()Z
    .locals 1

    .prologue
    .line 1050
    const/4 v0, 0x1

    return v0
.end method

.method protected enableShuffleAllMenuIcon()Z
    .locals 1

    .prologue
    .line 1055
    const/4 v0, 0x1

    return v0
.end method

.method protected getParentCursor()Landroid/database/Cursor;
    .locals 2

    .prologue
    .line 916
    iget-object v0, p0, Lcom/htc/music/carmode/CarAlbumBrowseActivity;->mQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/htc/music/carmode/CarAlbumBrowseActivity;->getAlbumCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected getUnknownCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "where"

    .prologue
    const/4 v4, 0x0

    .line 907
    iget v0, p0, Lcom/htc/music/carmode/CarAlbumBrowseActivity;->mDbTable:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 908
    sget-object v1, Lcom/htc/music/carmode/util/CarMusicUtils$Albums2;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/htc/music/carmode/CarAlbumBrowseActivity;->mCols:[Ljava/lang/String;

    move-object v0, p0

    move-object v3, p1

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/htc/music/carmode/util/CarMusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 910
    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/htc/music/carmode/CarAlbumBrowseActivity;->mCols:[Ljava/lang/String;

    move-object v0, p0

    move-object v3, p1

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/htc/music/carmode/util/CarMusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

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

    .line 729
    sparse-switch p1, :sswitch_data_0

    .line 745
    :cond_0
    :goto_0
    return-void

    .line 731
    :sswitch_0
    if-ne p2, v3, :cond_0

    .line 732
    iget-object v3, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumId:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mCurrentArtistId:Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mCurrentGenreId:Ljava/lang/String;

    iget-object v6, p0, Lcom/htc/music/carmode/CarAlbumBrowseActivity;->mComposer:Ljava/lang/String;

    invoke-static {v3, v4, v5, v6}, Lcom/htc/music/carmode/util/CarMusicUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 734
    .local v2, where:Ljava/lang/String;
    iget v3, p0, Lcom/htc/music/carmode/CarAlbumBrowseActivity;->mDbTable:I

    invoke-static {p0, v3, v2}, Lcom/htc/music/carmode/util/CarMusicUtils;->getSongListForAlbum(Landroid/content/Context;ILjava/lang/String;)[I

    move-result-object v0

    .line 735
    .local v0, list:[I
    const-string v3, "playlist"

    const/4 v4, 0x0

    invoke-virtual {p3, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 736
    .local v1, playlist:I
    int-to-long v3, v1

    invoke-static {p0, v0, v3, v4}, Lcom/htc/music/carmode/util/CarMusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    goto :goto_0

    .line 740
    .end local v0           #list:[I
    .end local v1           #playlist:I
    .end local v2           #where:Ljava/lang/String;
    :sswitch_1
    if-ne p2, v3, :cond_0

    .line 741
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarAlbumBrowseActivity;->finish()V

    goto :goto_0

    .line 729
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xf -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 204
    invoke-super {p0, p1}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->onCreate(Landroid/os/Bundle;)V

    .line 205
    if-eqz p1, :cond_1

    .line 206
    const-string v2, "selectedalbum"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumId:Ljava/lang/String;

    .line 207
    const-string v2, "artistid"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mCurrentArtistId:Ljava/lang/String;

    .line 208
    const-string v2, "genreid"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mCurrentGenreId:Ljava/lang/String;

    .line 209
    const-string v2, "composer"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/carmode/CarAlbumBrowseActivity;->mComposer:Ljava/lang/String;

    .line 210
    const-string v2, "playlisturi"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mPlaylistUri:Ljava/lang/String;

    .line 211
    const-string v2, "description"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/carmode/CarAlbumBrowseActivity;->mDescription:Ljava/lang/String;

    .line 212
    const-string v2, "dbTable"

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/htc/music/carmode/CarAlbumBrowseActivity;->mDbTable:I

    .line 224
    :goto_0
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/htc/music/carmode/CarAlbumBrowseActivity;->setVolumeControlStream(I)V

    .line 226
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 227
    .local v0, f:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 228
    const-string v2, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 229
    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 230
    const-string v2, "file"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 231
    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/htc/music/carmode/CarAlbumBrowseActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 232
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarAlbumBrowseActivity;->getParent()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 233
    const v2, 0x7f03002a

    invoke-virtual {p0, v2}, Lcom/htc/music/carmode/CarAlbumBrowseActivity;->setContentView(I)V

    .line 241
    :goto_1
    iput-object p0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mContext:Landroid/content/Context;

    .line 242
    iget-object v2, p0, Lcom/htc/music/carmode/CarAlbumBrowseActivity;->mQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    if-nez v2, :cond_0

    new-instance v2, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$QueryHandler;

    invoke-virtual {p0}, Lcom/htc/music/carmode/CarAlbumBrowseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$QueryHandler;-><init>(Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;Landroid/content/ContentResolver;)V

    iput-object v2, p0, Lcom/htc/music/carmode/CarAlbumBrowseActivity;->mQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    .line 243
    :cond_0
    iget-object v2, p0, Lcom/htc/music/carmode/CarAlbumBrowseActivity;->mQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/htc/music/carmode/CarAlbumBrowseActivity;->getAlbumCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    .line 244
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/htc/music/carmode/CarAlbumBrowseActivity;->setCategoryProgressVisible(Z)V

    .line 245
    invoke-direct {p0}, Lcom/htc/music/carmode/CarAlbumBrowseActivity;->initGridView()V

    .line 246
    return-void

    .line 214
    .end local v0           #f:Landroid/content/IntentFilter;
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarAlbumBrowseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 215
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "artistid"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mCurrentArtistId:Ljava/lang/String;

    .line 216
    const-string v2, "genreid"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mCurrentGenreId:Ljava/lang/String;

    .line 217
    const-string v2, "composer"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/carmode/CarAlbumBrowseActivity;->mComposer:Ljava/lang/String;

    .line 218
    const-string v2, "playlisturi"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mPlaylistUri:Ljava/lang/String;

    .line 219
    const-string v2, "description"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/carmode/CarAlbumBrowseActivity;->mDescription:Ljava/lang/String;

    .line 220
    const-string v2, "dbTable"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/htc/music/carmode/CarAlbumBrowseActivity;->mDbTable:I

    goto/16 :goto_0

    .line 235
    .end local v1           #intent:Landroid/content/Intent;
    .restart local v0       #f:Landroid/content/IntentFilter;
    :cond_2
    const v2, 0x7f03002b

    invoke-virtual {p0, v2}, Lcom/htc/music/carmode/CarAlbumBrowseActivity;->setContentView(I)V

    goto :goto_1
.end method

.method protected onGridViewChildItemPrepare(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 554
    return-void
.end method

.method protected onGridViewItemClick(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    .line 429
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v1}, Lcom/htc/music/carmode/CarAlbumBrowseActivity;->clickIndexInit(I)V

    .line 430
    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mPlaylistUri:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 431
    const-string v1, "[AlbumBrowserActivityGrid]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Going to launch album detail view. currentAlbumId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/htc/music/carmode/CarAlbumBrowseActivity;->mDbTable:I

    iget-object v3, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumId:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mCurrentArtistId:Ljava/lang/String;

    invoke-static {v3, v4, v5, v5}, Lcom/htc/music/carmode/util/CarMusicUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/htc/music/carmode/util/CarMusicUtils;->getSongListForAlbum(Landroid/content/Context;ILjava/lang/String;)[I

    move-result-object v0

    .line 444
    .local v0, list:[I
    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    new-instance v3, Lcom/htc/music/NpCategory;

    const/16 v4, 0x8

    invoke-direct {v3, v4}, Lcom/htc/music/NpCategory;-><init>(S)V

    iget-object v4, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/htc/music/NpCategory;->setAlbumId(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    move-result-object v3

    invoke-static {v1, v0, v2, v3}, Lcom/htc/music/carmode/util/CarMusicUtils;->playAllAndPrepare(Landroid/content/Context;[IILcom/htc/music/NpCategory;)V

    .line 455
    .end local v0           #list:[I
    :cond_0
    return-void
.end method

.method protected onGridViewItemDelete(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 559
    return-void
.end method

.method public onGridViewItemDeleteComplete()V
    .locals 0

    .prologue
    .line 650
    return-void
.end method

.method protected onGridViewItemLongClick(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 544
    return-void
.end method

.method protected onGridViewPrepareUpdateListReady(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 549
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 116
    invoke-super {p0, p1}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 137
    if-eqz p1, :cond_1

    .line 138
    const-string v0, "artistid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mCurrentArtistId:Ljava/lang/String;

    .line 139
    const-string v0, "dbTable"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/htc/music/carmode/CarAlbumBrowseActivity;->mDbTable:I

    .line 140
    const-string v0, "genreid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mCurrentGenreId:Ljava/lang/String;

    .line 141
    iget-object v0, p0, Lcom/htc/music/carmode/CarAlbumBrowseActivity;->mQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    if-nez v0, :cond_0

    .line 142
    new-instance v0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$QueryHandler;

    invoke-virtual {p0}, Lcom/htc/music/carmode/CarAlbumBrowseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$QueryHandler;-><init>(Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarAlbumBrowseActivity;->mQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setVisibility(Z)V

    .line 146
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->requestLayout()V

    .line 147
    iget-object v0, p0, Lcom/htc/music/carmode/CarAlbumBrowseActivity;->mQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/htc/music/carmode/CarAlbumBrowseActivity;->getAlbumCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    .line 148
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/music/carmode/CarAlbumBrowseActivity;->setCategoryProgressVisible(Z)V

    .line 149
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarAlbumBrowseActivity;->setTitle()V

    .line 153
    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outcicle"

    .prologue
    .line 185
    const-string v0, "selectedalbum"

    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const-string v0, "artistid"

    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mCurrentArtistId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string v0, "genreid"

    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mCurrentGenreId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string v0, "composer"

    iget-object v1, p0, Lcom/htc/music/carmode/CarAlbumBrowseActivity;->mComposer:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string v0, "playlisturi"

    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mPlaylistUri:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const-string v0, "description"

    iget-object v1, p0, Lcom/htc/music/carmode/CarAlbumBrowseActivity;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-super {p0, p1}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 192
    return-void
.end method

.method protected playAllAction(Z)Z
    .locals 14
    .parameter "forceShuffle"

    .prologue
    .line 792
    const/4 v1, 0x0

    .line 793
    .local v1, uri:Landroid/net/Uri;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 794
    .local v13, where:Ljava/lang/StringBuilder;
    const-string v0, "is_music>=1"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 795
    const-string v0, " AND title"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " != \'\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 796
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mCurrentGenreId:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 797
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mCurrentArtistId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 798
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " AND artist_id = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mCurrentArtistId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 802
    :cond_0
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mCurrentGenreId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v9, v0

    .line 803
    .local v9, genreId:J
    const-wide/16 v2, -0x1

    cmp-long v0, v9, v2

    if-nez v0, :cond_4

    .line 804
    const-string v0, " AND _id NOT IN (SELECT audio_id FROM audio_genres_map)"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 829
    .end local v9           #genreId:J
    :cond_1
    :goto_0
    if-nez v1, :cond_2

    .line 830
    iget v0, p0, Lcom/htc/music/carmode/CarAlbumBrowseActivity;->mDbTable:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_8

    .line 831
    sget-object v1, Lcom/htc/music/carmode/util/CarMusicUtils$Media2;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 837
    :cond_2
    :goto_1
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    .line 840
    .local v6, basicLength:I
    const-string v0, " AND album != \'\'"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 841
    const-string v0, " AND album != \'<unknown>\'"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 842
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

    invoke-static/range {v0 .. v5}, Lcom/htc/music/carmode/util/CarMusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 847
    .local v8, cursor:Landroid/database/Cursor;
    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 848
    const-string v0, " AND album = \'<unknown>\'"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 849
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

    invoke-static/range {v0 .. v5}, Lcom/htc/music/carmode/util/CarMusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 853
    .local v12, unknown:Landroid/database/Cursor;
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/database/Cursor;

    invoke-static {v8, v12, v0}, Lcom/htc/music/carmode/util/CarMusicUtils;->mergeCursors(Landroid/database/Cursor;Landroid/database/Cursor;[Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v8

    .line 855
    if-eqz v8, :cond_3

    .line 856
    const/4 v11, 0x0

    .line 858
    .local v11, npc:Lcom/htc/music/NpCategory;
    new-instance v0, Lcom/htc/music/NpCategory;

    const/16 v2, 0xc

    invoke-direct {v0, v2}, Lcom/htc/music/NpCategory;-><init>(S)V

    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mCurrentArtistId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/htc/music/NpCategory;->setArtistId(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mCurrentGenreId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/htc/music/NpCategory;->setGenreId(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/music/carmode/CarAlbumBrowseActivity;->mComposer:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/htc/music/NpCategory;->setComposer(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    move-result-object v11

    .line 862
    if-eqz p1, :cond_9

    .line 863
    invoke-static {p0, v8, v11}, Lcom/htc/music/carmode/util/CarMusicUtils;->shuffleAll(Landroid/content/Context;Landroid/database/Cursor;Lcom/htc/music/NpCategory;)V

    .line 866
    :goto_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 867
    const/4 v8, 0x0

    .line 869
    .end local v11           #npc:Lcom/htc/music/NpCategory;
    :cond_3
    const/4 v0, 0x1

    return v0

    .line 807
    .end local v6           #basicLength:I
    .end local v8           #cursor:Landroid/database/Cursor;
    .end local v12           #unknown:Landroid/database/Cursor;
    .restart local v9       #genreId:J
    :cond_4
    const-string v0, "external"

    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mCurrentGenreId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v2, v3}, Landroid/provider/MediaStore$Audio$Genres$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    goto/16 :goto_0

    .line 810
    .end local v9           #genreId:J
    :cond_5
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mCurrentArtistId:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 811
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " AND artist_id = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mCurrentArtistId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 815
    :cond_6
    iget-object v0, p0, Lcom/htc/music/carmode/CarAlbumBrowseActivity;->mComposer:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 816
    iget-object v7, p0, Lcom/htc/music/carmode/CarAlbumBrowseActivity;->mComposer:Ljava/lang/String;

    .line 817
    .local v7, composer:Ljava/lang/String;
    invoke-static {v7}, Lcom/htc/music/carmode/util/CarMusicUtils;->isUnknownComposer(Ljava/lang/String;)Z

    move-result v12

    .line 818
    .local v12, unknown:Z
    if-eqz v12, :cond_7

    .line 819
    const-string v0, " AND "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 820
    invoke-static {v13}, Lcom/htc/music/carmode/util/CarMusicUtils;->appendUnknownComposerFilter(Ljava/lang/StringBuilder;)V

    goto/16 :goto_0

    .line 822
    :cond_7
    const-string v0, "\'"

    const-string v2, "\'\'"

    invoke-virtual {v7, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 823
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

    .line 833
    .end local v7           #composer:Ljava/lang/String;
    .end local v12           #unknown:Z
    :cond_8
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto/16 :goto_1

    .line 865
    .restart local v6       #basicLength:I
    .restart local v8       #cursor:Landroid/database/Cursor;
    .restart local v11       #npc:Lcom/htc/music/NpCategory;
    .local v12, unknown:Landroid/database/Cursor;
    :cond_9
    invoke-static {p0, v8, v11}, Lcom/htc/music/carmode/util/CarMusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;Lcom/htc/music/NpCategory;)V

    goto :goto_2
.end method

.method protected setEmptyView()V
    .locals 1

    .prologue
    .line 1019
    const v0, 0x7f070038

    invoke-virtual {p0, v0}, Lcom/htc/music/carmode/CarAlbumBrowseActivity;->showEmptyView(I)V

    .line 1020
    return-void
.end method

.method protected setTitle()V
    .locals 4

    .prologue
    const v3, 0x7f070024

    const/4 v2, 0x0

    .line 1026
    iget-object v1, p0, Lcom/htc/music/carmode/CarAlbumBrowseActivity;->mDescription:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1027
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/music/carmode/CarAlbumBrowseActivity;->mDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v3}, Lcom/htc/music/carmode/CarAlbumBrowseActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1028
    .local v0, fancyName:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/htc/music/carmode/CarAlbumBrowseActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1046
    .end local v0           #fancyName:Ljava/lang/String;
    :goto_0
    return-void

    .line 1030
    :cond_0
    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mPlaylistUri:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1033
    const v1, 0x7f070072

    invoke-virtual {p0, v1}, Lcom/htc/music/carmode/CarAlbumBrowseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/music/carmode/CarAlbumBrowseActivity;->setCatgoryMainTitle(Ljava/lang/String;)V

    .line 1034
    invoke-virtual {p0, v2}, Lcom/htc/music/carmode/CarAlbumBrowseActivity;->setCategorySecondaryTitleVisible(Z)V

    goto :goto_0

    .line 1042
    :cond_1
    invoke-virtual {p0, v3}, Lcom/htc/music/carmode/CarAlbumBrowseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/music/carmode/CarAlbumBrowseActivity;->setCatgoryMainTitle(Ljava/lang/String;)V

    .line 1043
    invoke-virtual {p0, v2}, Lcom/htc/music/carmode/CarAlbumBrowseActivity;->setCategorySecondaryTitleVisible(Z)V

    goto :goto_0
.end method
