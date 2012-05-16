.class public Lcom/htc/music/carmode/CarArtistBrowseActivity;
.super Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;
.source "CarArtistBrowseActivity.java"

# interfaces
.implements Lcom/htc/sunny2/widget/gridview/ExpandableGridView$OnPrepareUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;
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

.field private mItemLayoutParams:Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;

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

    .line 49
    invoke-direct {p0}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;-><init>()V

    .line 66
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "artist"

    aput-object v1, v0, v3

    const-string v1, "number_of_albums"

    aput-object v1, v0, v4

    const-string v1, "number_of_tracks"

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mArtistCols:[Ljava/lang/String;

    .line 71
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "album"

    aput-object v1, v0, v3

    const-string v1, "album_art"

    aput-object v1, v0, v4

    const-string v1, "album_key"

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mAlbumCols:[Ljava/lang/String;

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/carmode/CarArtistBrowseActivity;Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/htc/music/carmode/CarArtistBrowseActivity;->getArtistAlbumsCursor(Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getArtistAlbumChildCusror(I)Landroid/database/Cursor;
    .locals 5
    .parameter "parentIndex"

    .prologue
    const/4 v3, 0x0

    .line 1035
    if-gez p1, :cond_0

    iget-object v4, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v4}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentItemCount()I

    move-result v4

    if-lt p1, v4, :cond_0

    .line 1055
    :goto_0
    return-object v3

    .line 1037
    :cond_0
    iget-object v4, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v4, p1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentMediaDataId(I)Ljava/lang/String;

    move-result-object v1

    .line 1038
    .local v1, artistId:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v4, p1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentMediaDataName(I)Ljava/lang/String;

    move-result-object v0

    .line 1040
    .local v0, artist:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mAlbumCols:[Ljava/lang/String;

    invoke-direct {p0, p0, v4, v1}, Lcom/htc/music/carmode/CarArtistBrowseActivity;->getArtistAlbumsCursor(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1041
    .local v2, cursor:Landroid/database/Cursor;
    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_2

    .line 1042
    :cond_1
    const/4 v2, 0x0

    .line 1043
    goto :goto_0

    .line 1048
    :cond_2
    const/4 v4, 0x0

    invoke-direct {p0, v2, v1, v0, v4}, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mergeAllSongsItem2AlbumCursor(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v3

    .line 1054
    .local v3, ret:Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 1055
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

    .line 973
    invoke-direct {p0, p3, v4}, Lcom/htc/music/carmode/CarArtistBrowseActivity;->getArtistAlbumsCursor(Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v0

    .line 975
    .local v0, ret:Landroid/database/Cursor;
    invoke-direct {p0, p3, v5}, Lcom/htc/music/carmode/CarArtistBrowseActivity;->getArtistAlbumsCursor(Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v2

    .line 976
    .local v2, unknown:Landroid/database/Cursor;
    if-eqz v2, :cond_0

    .line 977
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_1

    .line 978
    new-instance v1, Landroid/database/MergeCursor;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/database/Cursor;

    aput-object v0, v3, v4

    aput-object v2, v3, v5

    invoke-direct {v1, v3}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .end local v0           #ret:Landroid/database/Cursor;
    .local v1, ret:Landroid/database/Cursor;
    move-object v0, v1

    .line 987
    .end local v1           #ret:Landroid/database/Cursor;
    .restart local v0       #ret:Landroid/database/Cursor;
    :cond_0
    :goto_0
    return-object v0

    .line 982
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 983
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getArtistAlbumsCursor(Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 8
    .parameter "artistId"
    .parameter "unknown"

    .prologue
    .line 991
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 992
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

    .line 993
    const-string v0, " AND album != \'\'"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 994
    if-nez p2, :cond_1

    .line 995
    const-string v0, " AND album != \'<unknown>\'"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 998
    :goto_0
    const-string v0, "external"

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/provider/MediaStore$Audio$Artists$Albums;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mAlbumCols:[Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "album COLLATE NOCASE ASC"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/music/carmode/util/CarMusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1002
    .local v6, ret:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    if-nez p2, :cond_0

    iget-boolean v0, p0, Lcom/htc/music/carmode/MusicMaActivity;->mIsEnhancerExist:Z

    if-eqz v0, :cond_0

    .line 1003
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarArtistBrowseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/htc/music/carmode/util/CarMusicUtils;->mergeDlAlbumArt(Landroid/content/Context;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v6

    .line 1006
    :cond_0
    return-object v6

    .line 997
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
    .line 1095
    const-string v1, "[ArtistBrowserActivityExpGrid]"

    const-string v2, "@@@@ getArtistCursor() - start"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1097
    if-eqz p2, :cond_0

    const-string v1, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1098
    const/16 p2, 0x0

    .line 1100
    :cond_0
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 1101
    .local v17, where:Ljava/lang/StringBuilder;
    const-string v1, "artist != \'\' "

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1102
    const-string v1, " AND artist != \'<unknown>\'"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1104
    const/4 v7, 0x0

    .line 1105
    .local v7, keywords:[Ljava/lang/String;
    if-nez p2, :cond_2

    const/4 v13, 0x1

    .line 1106
    .local v13, searchContainsUnkown:Z
    :goto_0
    if-eqz p2, :cond_4

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 1108
    const v1, 0x7f07004d

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/music/carmode/CarArtistBrowseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v16

    .line 1109
    .local v16, unknownArtist:Ljava/lang/String;
    const-string v1, " "

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 1110
    .local v14, searchWords:[Ljava/lang/String;
    array-length v1, v14

    new-array v7, v1, [Ljava/lang/String;

    .line 1111
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v9

    .line 1112
    .local v9, col:Ljava/text/Collator;
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Ljava/text/Collator;->setStrength(I)V

    .line 1113
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    array-length v1, v14

    if-ge v10, v1, :cond_3

    .line 1114
    aget-object v1, v14, v10

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1115
    const/4 v13, 0x1

    .line 1116
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

    .line 1113
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1105
    .end local v9           #col:Ljava/text/Collator;
    .end local v10           #i:I
    .end local v13           #searchContainsUnkown:Z
    .end local v14           #searchWords:[Ljava/lang/String;
    .end local v16           #unknownArtist:Ljava/lang/String;
    :cond_2
    const/4 v13, 0x0

    goto :goto_0

    .line 1118
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

    .line 1119
    const-string v1, " AND "

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1124
    const-string v1, "artist LIKE ?"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1118
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 1128
    .end local v9           #col:Ljava/text/Collator;
    .end local v10           #i:I
    .end local v14           #searchWords:[Ljava/lang/String;
    .end local v16           #unknownArtist:Ljava/lang/String;
    :cond_4
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1130
    .local v6, whereclause:Ljava/lang/String;
    const-string v1, "[ArtistBrowserActivityExpGrid]"

    const-string v2, "getArtistCursor() - 1"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1131
    const/4 v11, 0x0

    .line 1132
    .local v11, ret:Landroid/database/Cursor;
    if-eqz p1, :cond_7

    .line 1133
    const-string v1, "[ArtistBrowserActivityExpGrid]"

    const-string v2, "getArtistCursor() - 2"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1134
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/music/carmode/CarArtistBrowseActivity;->setAsyncQueryStatus(Z)V

    .line 1135
    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-object v4, Landroid/provider/MediaStore$Audio$Artists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mArtistCols:[Ljava/lang/String;

    const-string v8, "artist COLLATE NOCASE ASC"

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Lcom/htc/music/util/DlArtAsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1151
    :cond_5
    :goto_3
    if-eqz v11, :cond_6

    if-eqz p1, :cond_6

    .line 1152
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v1}, Lcom/htc/music/carmode/CarArtistBrowseActivity;->init(Landroid/database/Cursor;Z)V

    .line 1156
    :cond_6
    return-object v11

    .line 1138
    :cond_7
    const-string v1, "[ArtistBrowserActivityExpGrid]"

    const-string v2, "getArtistCursor() - 3"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1139
    sget-object v4, Landroid/provider/MediaStore$Audio$Artists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mArtistCols:[Ljava/lang/String;

    const-string v8, "artist COLLATE NOCASE ASC"

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v8}, Lcom/htc/music/carmode/util/CarMusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1141
    if-eqz v13, :cond_5

    .line 1142
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/htc/music/carmode/CarArtistBrowseActivity;->getUnknownCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 1143
    .local v15, unknown:Landroid/database/Cursor;
    if-eqz v15, :cond_5

    .line 1144
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
    .locals 3
    .parameter "needPrepare"
    .parameter "npc"

    .prologue
    .line 708
    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mCurrentArtistId:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 709
    const-string v1, "[ArtistBrowserActivityExpGrid]"

    const-string v2, "mCurrentGenreId = null"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    const/4 v0, 0x0

    .line 734
    :cond_0
    :goto_0
    return-object v0

    .line 712
    :cond_1
    const/4 v0, 0x0

    .line 714
    .local v0, list:[I
    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridItemClickedType:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    sget-object v2, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$GridItemClickType;->GRID_PARENT_TYPE:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    invoke-virtual {v1, v2}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$GridItemClickType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mChildClickedIndex:I

    if-nez v1, :cond_4

    .line 716
    :cond_2
    if-eqz p1, :cond_3

    .line 717
    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mCurrentArtistId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {p0, v1}, Lcom/htc/music/carmode/util/CarMusicUtils;->getSongListForArtistAndPrepare(Landroid/content/Context;I)[I

    move-result-object v0

    .line 718
    if-eqz p2, :cond_0

    .line 719
    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mCurrentArtistId:Ljava/lang/String;

    invoke-virtual {p2, v1}, Lcom/htc/music/NpCategory;->setArtistId(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    goto :goto_0

    .line 722
    :cond_3
    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mCurrentArtistId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {p0, v1}, Lcom/htc/music/carmode/util/CarMusicUtils;->getSongListForArtist(Landroid/content/Context;I)[I

    move-result-object v0

    goto :goto_0

    .line 725
    :cond_4
    if-eqz p1, :cond_5

    .line 726
    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {p0, v1}, Lcom/htc/music/carmode/util/CarMusicUtils;->getSongListForAlbumAndPrepare(Landroid/content/Context;I)[I

    move-result-object v0

    .line 727
    if-eqz p2, :cond_0

    .line 728
    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-virtual {p2, v1}, Lcom/htc/music/NpCategory;->setAlbumId(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    goto :goto_0

    .line 731
    :cond_5
    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {p0, v1}, Lcom/htc/music/carmode/util/CarMusicUtils;->getSongListForAlbum(Landroid/content/Context;I)[I

    move-result-object v0

    goto :goto_0
.end method

.method private initExpGridView()V
    .locals 13

    .prologue
    const v12, 0x2050004

    const/4 v11, 0x0

    .line 275
    const v6, 0x7f080073

    invoke-virtual {p0, v6}, Lcom/htc/music/carmode/CarArtistBrowseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/htc/sunny2/view/SSurfaceView;

    iput-object v6, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    .line 277
    new-instance v6, Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;

    invoke-direct {v6, p0}, Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;-><init>(Landroid/app/Activity;)V

    iput-object v6, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;

    .line 279
    new-instance v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;

    invoke-direct {v2, p0}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;-><init>(Landroid/content/Context;)V

    .line 280
    .local v2, parentFolderParam:Lcom/htc/music/widget/gridview/MusicGridViewItemParams;
    new-instance v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;-><init>(Landroid/content/Context;)V

    .line 281
    .local v0, childFolderParam:Lcom/htc/music/widget/gridview/MusicGridViewItemParams;
    invoke-direct {p0, v2, v0}, Lcom/htc/music/carmode/CarArtistBrowseActivity;->initMusicGridViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V

    .line 283
    new-instance v1, Lcom/htc/music/widget/gridview/MusicGridViewItem;

    iget-object v6, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v6}, Lcom/htc/sunny2/view/SSurfaceView;->getSunnyContext()Lcom/htc/sunny2/SunnyContext;

    move-result-object v6

    invoke-direct {v1, p0, v6, v2, v0}, Lcom/htc/music/widget/gridview/MusicGridViewItem;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V

    .line 284
    .local v1, gridViewItem:Lcom/htc/music/widget/gridview/MusicGridViewItem;
    invoke-direct {p0, v1}, Lcom/htc/music/carmode/CarArtistBrowseActivity;->initMusicGridViewItem(Lcom/htc/music/widget/gridview/MusicGridViewItem;)V

    .line 286
    new-instance v6, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-direct {v6, p0, v7, v8}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;-><init>(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/music/widget/gridview/MusicGridViewUtil;)V

    iput-object v6, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridViewPreparator:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    .line 287
    iget-object v6, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridViewPreparator:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    invoke-direct {p0, v6, v2}, Lcom/htc/music/carmode/CarArtistBrowseActivity;->initGridViewPreparator(Lcom/htc/music/widget/gridview/MusicGridViewPreparator;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V

    .line 288
    invoke-direct {p0}, Lcom/htc/music/carmode/CarArtistBrowseActivity;->initMusicGridViewUtil()V

    .line 289
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarArtistBrowseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 290
    .local v5, res:Landroid/content/res/Resources;
    new-instance v6, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v7, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v7}, Lcom/htc/sunny2/view/SSurfaceView;->getSunnyContext()Lcom/htc/sunny2/SunnyContext;

    move-result-object v7

    invoke-direct {v6, p0, v7, v1}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;-><init>(Landroid/content/Context;Lcom/htc/sunny2/SunnyContext;Lcom/htc/sunny2/widget/gridview/GridViewItem;)V

    iput-object v6, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    .line 291
    iget-object v6, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v7, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;

    iget v7, v7, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->verticalSpacing:I

    invoke-virtual {v6, v7}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setVerticalSpacing(I)V

    .line 292
    iget-object v6, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v7, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;

    iget v7, v7, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->horizontalSpacing:I

    invoke-virtual {v6, v7}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setHorizontalSpacing(I)V

    .line 293
    iget-object v6, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v7, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridViewItemClickListener:Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;

    invoke-virtual {v6, v7}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setOnItemClickListener(Lcom/htc/sunny2/widget/gridview/GridView$OnItemClickListener;)V

    .line 294
    iget-object v6, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v7, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mViewItemLongClickListener:Lcom/htc/sunny2/widget/gridview/GridView$OnItemLongClickListener;

    invoke-virtual {v6, v7}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setOnItemLongClickListener(Lcom/htc/sunny2/widget/gridview/GridView$OnItemLongClickListener;)V

    .line 295
    iget-object v6, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v6, p0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setPrepareUpdateListener(Lcom/htc/sunny2/widget/gridview/ExpandableGridView$OnPrepareUpdateListener;)V

    .line 296
    iget-object v6, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v7, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridViewPreparator:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    invoke-virtual {v6, v7}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setPreparation(Lcom/htc/sunny2/widget/gridview/GridViewPreparator;)V

    .line 297
    const-string v6, "com.htc.R.drawable.common_popupmenu"

    invoke-static {v6}, Lcom/htc/util/res/HtcResUtil;->getPrivateResID(Ljava/lang/String;)I

    move-result v3

    .line 298
    .local v3, popupmenu:I
    const-string v6, "com.htc.R.drawable.common_popupmenu_arrow_land"

    invoke-static {v6}, Lcom/htc/util/res/HtcResUtil;->getPrivateResID(Ljava/lang/String;)I

    move-result v4

    .line 299
    .local v4, popupmenu_arrow:I
    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    .line 300
    iget-object v6, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v6, v4, v3}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setChildViewBackground(II)V

    .line 302
    :cond_0
    iget-object v6, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    const v7, 0x7f030026

    const v8, 0x7f080067

    invoke-virtual {v6, v7, v8}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setChildViewTitleLayot(II)V

    .line 303
    iget-object v6, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v7, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;

    iget v7, v7, Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;->verticalSpacing_child:I

    invoke-virtual {v6, v7}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setChildVerticalSpacing(I)V

    .line 304
    iget-object v6, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v7, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;

    iget v7, v7, Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;->horizontalSpacing_child:I

    invoke-virtual {v6, v7}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setChildHorizontalSpacing(I)V

    .line 305
    iget-object v6, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v7, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;

    iget v7, v7, Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;->child_view_offset_X:I

    invoke-virtual {v6, v7, v11}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setChildViewOffset(II)V

    .line 306
    iget-object v6, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v7, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;

    iget v7, v7, Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;->indicator_offset:I

    invoke-virtual {v6, v7, v11}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setChildIndicatorOffset(II)V

    .line 307
    iget-object v6, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {p0}, Lcom/htc/music/carmode/CarArtistBrowseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x2050002

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    iget-object v8, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;

    iget v8, v8, Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;->child_background_bottom_margin:I

    invoke-virtual {v6, v7, v8, v11, v11}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setChildMargin(IIII)V

    .line 308
    iget-object v6, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v7, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;

    iget v7, v7, Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;->child_padding_top:I

    iget-object v8, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;

    iget v8, v8, Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;->child_padding_bottom:I

    iget-object v9, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;

    iget v9, v9, Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;->child_padding_left:I

    iget-object v10, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;

    iget v10, v10, Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;->child_padding_right:I

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setChildPadding(IIII)V

    .line 310
    iget-object v6, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    const v7, 0x2080001

    invoke-virtual {v6, v7}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setGlobalBackgroundResource(I)V

    .line 312
    iget-object v6, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v7, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;

    iget v7, v7, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->gridview_marginLeft:I

    invoke-virtual {p0}, Lcom/htc/music/carmode/CarArtistBrowseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    iget-object v9, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;

    iget v9, v9, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->gridview_marginRight:I

    invoke-virtual {p0}, Lcom/htc/music/carmode/CarArtistBrowseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setPadding(IIII)V

    .line 313
    iget-object v6, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v7, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridViewScrollListener:Lcom/htc/sunny2/widget/gridview/interfaces/OnScrollListener;

    invoke-virtual {v6, v7}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setOnScrollListener(Lcom/htc/sunny2/widget/gridview/interfaces/OnScrollListener;)V

    .line 315
    iget-object v6, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mSurfaceView:Lcom/htc/sunny2/view/SSurfaceView;

    iget-object v7, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v6, v7}, Lcom/htc/sunny2/view/SSurfaceView;->addView(Lcom/htc/sunny2/view/SView;)V

    .line 316
    iget-object v6, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v6, v11}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setVisibility(Z)V

    .line 317
    iget-object v6, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setOrientation(I)V

    .line 318
    iget-object v6, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridViewPreparator:Lcom/htc/music/widget/gridview/MusicGridViewPreparator;

    iget-object v7, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v6, v7}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->updateMusicGridViewUtil(Lcom/htc/music/widget/gridview/MusicGridViewUtil;)V

    .line 319
    return-void
.end method

.method private initGridViewPreparator(Lcom/htc/music/widget/gridview/MusicGridViewPreparator;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V
    .locals 2
    .parameter "preparator"
    .parameter "folderParam"

    .prologue
    .line 503
    new-instance v0, Lcom/htc/music/widget/gridview/MusicGridViewParamsPreparator;

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->getWidth(I)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewParamsPreparator;-><init>(I)V

    .line 504
    .local v0, paramsPreparator:Lcom/htc/music/widget/gridview/MusicGridViewParamsPreparator;
    invoke-virtual {p1, p0, v0}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->init(Landroid/content/Context;Lcom/htc/sunny2/IParamsPreparator;)V

    .line 505
    new-instance v1, Lcom/htc/music/carmode/CarArtistBrowseActivity$4;

    invoke-direct {v1, p0}, Lcom/htc/music/carmode/CarArtistBrowseActivity$4;-><init>(Lcom/htc/music/carmode/CarArtistBrowseActivity;)V

    invoke-virtual {p1, v1}, Lcom/htc/music/widget/gridview/MusicGridViewPreparator;->setUpdateListener(Lcom/htc/sunny2/Preparator$UpdateListener;)V

    .line 529
    return-void
.end method

.method private initMusicGridViewItem(Lcom/htc/music/widget/gridview/MusicGridViewItem;)V
    .locals 1
    .parameter "gridViewItem"

    .prologue
    .line 381
    new-instance v0, Lcom/htc/music/carmode/CarArtistBrowseActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarArtistBrowseActivity$1;-><init>(Lcom/htc/music/carmode/CarArtistBrowseActivity;)V

    invoke-virtual {p1, v0}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->setTextViewBindListener(Lcom/htc/music/widget/gridview/MusicGridViewItem$ITextViewBind;)V

    .line 422
    new-instance v0, Lcom/htc/music/carmode/CarArtistBrowseActivity$2;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarArtistBrowseActivity$2;-><init>(Lcom/htc/music/carmode/CarArtistBrowseActivity;)V

    invoke-virtual {p1, v0}, Lcom/htc/music/widget/gridview/MusicGridViewItem;->setViewItemImageGetter(Lcom/htc/music/widget/gridview/MusicGridViewItem$ViewItemImageGetter;)V

    .line 450
    return-void
.end method

.method private initMusicGridViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V
    .locals 9
    .parameter "parentFolderParam"
    .parameter "childFolderParam"

    .prologue
    const v8, 0x7f030011

    const v7, 0x7f02001a

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 322
    new-instance v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    invoke-direct {v0}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;-><init>()V

    .line 323
    .local v0, backgroundParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    const v3, 0x7f020018

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->defaultResourceId:I

    .line 324
    iget-object v3, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_width:I

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->width:I

    .line 325
    iget-object v3, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_height:I

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->height:I

    .line 326
    iget-object v3, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_marginLeft:I

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginLeft:I

    .line 327
    iget-object v3, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->cover_marginTop:I

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginTop:I

    .line 328
    invoke-virtual {p1, v0, v4}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;I)V

    .line 334
    new-instance v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    invoke-direct {v2}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;-><init>()V

    .line 335
    .local v2, thumbnail:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    iput v7, v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->defaultResourceId:I

    .line 336
    iget-object v3, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->thumb_marginLeft:I

    iput v3, v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginLeft:I

    .line 337
    iget-object v3, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->thumb_marginTop:I

    iput v3, v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginTop:I

    .line 338
    invoke-virtual {p1, v2, v5}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;I)V

    .line 339
    new-instance v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    invoke-direct {v1}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;-><init>()V

    .line 340
    .local v1, textLayout:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    iget-object v3, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_height:I

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->height:I

    .line 341
    iget-object v3, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_width:I

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->width:I

    .line 342
    iput v8, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->defaultResourceId:I

    .line 343
    iget-object v3, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_marginLeft:I

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginLeft:I

    .line 344
    iget-object v3, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->textView_marginTop:I

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginTop:I

    .line 345
    invoke-virtual {p1, v1, v6}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;I)V

    .line 346
    iget-object v3, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->height:I

    invoke-virtual {p1, v3}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setItemHeight(I)V

    .line 347
    iget-object v3, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$MusicViewItemLayoutParams;->width:I

    invoke-virtual {p1, v3}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setItemWidth(I)V

    .line 349
    new-instance v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    .end local v0           #backgroundParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    invoke-direct {v0}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;-><init>()V

    .line 350
    .restart local v0       #backgroundParams:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    const v3, 0x7f02001b

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->defaultResourceId:I

    .line 351
    const v3, 0x7f020019

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->extraResourceId:I

    .line 352
    iget-object v3, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;->cover_width_child:I

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->width:I

    .line 353
    iget-object v3, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;->cover_height_child:I

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->height:I

    .line 354
    iget-object v3, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;->cover_marginLeft_child:I

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginLeft:I

    .line 355
    iget-object v3, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;->cover_marginTop_child:I

    iput v3, v0, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginTop:I

    .line 356
    invoke-virtual {p2, v0, v4}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;I)V

    .line 362
    new-instance v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    .end local v2           #thumbnail:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    invoke-direct {v2}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;-><init>()V

    .line 363
    .restart local v2       #thumbnail:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    iput v7, v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->defaultResourceId:I

    .line 365
    iget-object v3, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;->thumb_marginLeft_child:I

    iput v3, v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginLeft:I

    .line 366
    iget-object v3, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;->thumb_marginTop_child:I

    iput v3, v2, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginTop:I

    .line 367
    invoke-virtual {p2, v2, v5}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;I)V

    .line 368
    new-instance v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;

    .end local v1           #textLayout:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    invoke-direct {v1}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;-><init>()V

    .line 369
    .restart local v1       #textLayout:Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;
    iget-object v3, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;->textView_height_child:I

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->height:I

    .line 370
    iget-object v3, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;->textView_width_child:I

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->width:I

    .line 371
    iput v8, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->defaultResourceId:I

    .line 372
    iget-object v3, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;->textView_marginLeft_child:I

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginLeft:I

    .line 373
    iget-object v3, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;->textView_marginTop_child:I

    iput v3, v1, Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;->marginTop:I

    .line 374
    invoke-virtual {p2, v1, v6}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setViewItemParams(Lcom/htc/music/widget/gridview/MusicGridViewItemParams$ViewItemParams;I)V

    .line 376
    iget-object v3, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;->height_child:I

    invoke-virtual {p2, v3}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setItemHeight(I)V

    .line 377
    iget-object v3, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mItemLayoutParams:Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;

    iget v3, v3, Lcom/htc/music/carmode/CarArtistBrowseActivity$ArtistViewItemLayoutParams;->width_child:I

    invoke-virtual {p2, v3}, Lcom/htc/music/widget/gridview/MusicGridViewItemParams;->setItemWidth(I)V

    .line 378
    return-void
.end method

.method private initMusicGridViewUtil()V
    .locals 4

    .prologue
    .line 453
    new-instance v1, Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    sget-object v2, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->ARTIST_TYPE:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    sget-object v3, Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;->ALBUM_TYPE:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;

    invoke-direct {v1, v2, v3, p0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;-><init>(Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;Lcom/htc/music/widget/gridview/MusicGridViewUtil$MediaType;Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    .line 454
    new-instance v0, Lcom/htc/music/carmode/CarArtistBrowseActivity$3;

    invoke-direct {v0, p0}, Lcom/htc/music/carmode/CarArtistBrowseActivity$3;-><init>(Lcom/htc/music/carmode/CarArtistBrowseActivity;)V

    .line 499
    .local v0, musicGridViewItemUpdater:Lcom/htc/music/widget/gridview/MusicGridViewUtil$MusicGridViewItemUpdater;
    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v1, v0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->setMusicGridViewItemUpdater(Lcom/htc/music/widget/gridview/MusicGridViewUtil$MusicGridViewItemUpdater;)V

    .line 500
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

    .line 1015
    if-nez p1, :cond_0

    .line 1029
    .end local p1
    :goto_0
    return-object p1

    .line 1017
    .restart local p1
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1018
    .local v0, albumList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1019
    .local v2, row:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v2, Ljava/util/ArrayList;

    .end local v2           #row:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iget-object v3, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mAlbumCols:[Ljava/lang/String;

    array-length v3, v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1020
    .restart local v2       #row:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1021
    iget-object v3, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mAllSongsLabel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1022
    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1023
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1024
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1025
    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1026
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1027
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1028
    new-instance v1, Lcom/htc/music/util/ArrayListCursor;

    iget-object v3, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mAlbumCols:[Ljava/lang/String;

    invoke-direct {v1, v3, v0}, Lcom/htc/music/util/ArrayListCursor;-><init>([Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1029
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
    .line 561
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 562
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 563
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v2, "com.htc.media/albumtrack"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 564
    const/high16 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 565
    const-string v1, "albumid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 566
    const-string v1, "InnerActivityType"

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 567
    const-string v1, "artistid"

    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mCurrentArtistId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 568
    invoke-virtual {p0, v0}, Lcom/htc/music/carmode/CarArtistBrowseActivity;->startActivity(Landroid/content/Intent;)V

    .line 569
    return-void
.end method


# virtual methods
.method public clickIndexInit(I)V
    .locals 3
    .parameter "globalIndex"

    .prologue
    const/4 v2, 0x0

    .line 543
    iput p1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    .line 544
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentIndex(I)I

    move-result v0

    iput v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mParentClickedIndex:I

    .line 545
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getChildIndex(I)I

    move-result v0

    iput v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mChildClickedIndex:I

    .line 547
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mParentClickedIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentMediaDataId(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mCurrentArtistId:Ljava/lang/String;

    .line 548
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mParentClickedIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentMediaDataName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mCurrentArtistName:Ljava/lang/String;

    .line 549
    iget v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mChildClickedIndex:I

    if-ltz v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mChildClickedIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getChildMediaDataId(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumId:Ljava/lang/String;

    .line 551
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mChildClickedIndex:I

    invoke-virtual {v0, v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getChildMediaDataName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumName:Ljava/lang/String;

    .line 552
    sget-object v0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$GridItemClickType;->GRID_CHILD_TYPE:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    iput-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridItemClickedType:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    .line 558
    :goto_0
    return-void

    .line 554
    :cond_0
    iput-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumId:Ljava/lang/String;

    .line 555
    iput-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumName:Ljava/lang/String;

    .line 556
    sget-object v0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$GridItemClickType;->GRID_PARENT_TYPE:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    iput-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridItemClickedType:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    goto :goto_0
.end method

.method protected enablePlayAllMenuIcon()Z
    .locals 1

    .prologue
    .line 1204
    const/4 v0, 0x1

    return v0
.end method

.method protected enableShuffleAllMenuIcon()Z
    .locals 1

    .prologue
    .line 1209
    const/4 v0, 0x1

    return v0
.end method

.method protected getParentCursor()Landroid/database/Cursor;
    .locals 2

    .prologue
    .line 1090
    iget-object v0, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/htc/music/carmode/CarArtistBrowseActivity;->getArtistCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected getUnknownCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .parameter "where"

    .prologue
    const/4 v4, 0x0

    .line 1161
    sget-object v1, Landroid/provider/MediaStore$Audio$Artists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mArtistCols:[Ljava/lang/String;

    const-string v3, "artist = \'<unknown>\'"

    move-object v0, p0

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/htc/music/carmode/util/CarMusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1164
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

    .line 946
    sparse-switch p1, :sswitch_data_0

    .line 962
    :cond_0
    :goto_0
    return-void

    .line 948
    :sswitch_0
    if-ne p2, v2, :cond_0

    .line 949
    const/4 v2, 0x0

    invoke-direct {p0, v3, v2}, Lcom/htc/music/carmode/CarArtistBrowseActivity;->getSelectList(ZLcom/htc/music/NpCategory;)[I

    move-result-object v0

    .line 950
    .local v0, list:[I
    if-eqz v0, :cond_0

    .line 951
    const-string v2, "playlist"

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 952
    .local v1, playlist:I
    int-to-long v2, v1

    invoke-static {p0, v0, v2, v3}, Lcom/htc/music/carmode/util/CarMusicUtils;->addToPlaylist(Landroid/content/Context;[IJ)V

    goto :goto_0

    .line 957
    .end local v0           #list:[I
    .end local v1           #playlist:I
    :sswitch_1
    if-ne p2, v2, :cond_0

    .line 958
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarArtistBrowseActivity;->finish()V

    goto :goto_0

    .line 946
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
    .line 242
    invoke-super {p0, p1}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->onCreate(Landroid/os/Bundle;)V

    .line 245
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/htc/music/carmode/CarArtistBrowseActivity;->setVolumeControlStream(I)V

    .line 247
    if-eqz p1, :cond_1

    .line 248
    const-string v2, "playlisturi"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mPlaylistUri:Ljava/lang/String;

    .line 256
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 257
    .local v0, f:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 258
    const-string v2, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 259
    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 260
    const-string v2, "file"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 261
    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/htc/music/carmode/CarArtistBrowseActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 263
    const v2, 0x7f03002a

    invoke-virtual {p0, v2}, Lcom/htc/music/carmode/CarArtistBrowseActivity;->setContentView(I)V

    .line 264
    iput-object p0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mContext:Landroid/content/Context;

    .line 265
    invoke-direct {p0}, Lcom/htc/music/carmode/CarArtistBrowseActivity;->initExpGridView()V

    .line 266
    iget-object v2, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    if-nez v2, :cond_0

    new-instance v2, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$QueryHandler;

    invoke-virtual {p0}, Lcom/htc/music/carmode/CarArtistBrowseActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$QueryHandler;-><init>(Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;Landroid/content/ContentResolver;)V

    iput-object v2, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    .line 267
    :cond_0
    iget-object v2, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/htc/music/carmode/CarArtistBrowseActivity;->getArtistCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    .line 268
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/htc/music/carmode/CarArtistBrowseActivity;->setCategoryProgressVisible(Z)V

    .line 271
    const v2, 0x7f070028

    invoke-virtual {p0, v2}, Lcom/htc/music/carmode/CarArtistBrowseActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity;->mAllSongsLabel:Ljava/lang/String;

    .line 272
    return-void

    .line 250
    .end local v0           #f:Landroid/content/IntentFilter;
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarArtistBrowseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 251
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "playlisturi"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mPlaylistUri:Ljava/lang/String;

    goto :goto_0
.end method

.method public onDeleteAllChildsReadyIRT(II)V
    .locals 2
    .parameter "originalIndex"
    .parameter "adjustedIndex"

    .prologue
    .line 1195
    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridViewHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1196
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1197
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1198
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 1199
    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridViewHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1200
    return-void
.end method

.method protected onGridViewChildItemPrepare(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 676
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarArtistBrowseActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 677
    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->resumePreparator(Z)V

    .line 678
    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mParentClickedIndex:I

    invoke-virtual {v1, v2}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->isSameParentClicked(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 679
    iget v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mParentClickedIndex:I

    invoke-direct {p0, v1}, Lcom/htc/music/carmode/CarArtistBrowseActivity;->getArtistAlbumChildCusror(I)Landroid/database/Cursor;

    move-result-object v0

    .line 680
    .local v0, cursor:Landroid/database/Cursor;
    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v1, v0}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->updateChildMediaList(Landroid/database/Cursor;)V

    .line 681
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 682
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 686
    .end local v0           #cursor:Landroid/database/Cursor;
    :cond_0
    return-void
.end method

.method protected onGridViewItemClick(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const/16 v9, 0xb

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 573
    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v3}, Lcom/htc/music/carmode/CarArtistBrowseActivity;->clickIndexInit(I)V

    .line 575
    iget-object v3, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mPlaylistUri:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 576
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.PICK"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 577
    .local v0, intent:Landroid/content/Intent;
    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v4, "com.htc.media/albumtrack"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 578
    const-string v3, "playlisturi"

    iget-object v4, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mPlaylistUri:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 579
    const-string v3, "artistid"

    iget-object v4, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mCurrentArtistId:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 580
    const-string v3, "pickermode"

    invoke-virtual {v0, v3, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 581
    const/16 v3, 0xf

    invoke-virtual {p0, v0, v3}, Lcom/htc/music/carmode/CarArtistBrowseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 624
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 584
    :cond_1
    iget-object v3, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridItemClickedType:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    sget-object v4, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$GridItemClickType;->GRID_CHILD_TYPE:Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$GridItemClickType;

    invoke-virtual {v3, v4}, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity$GridItemClickType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 586
    const-string v3, "[ArtistBrowserActivityExpGrid]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Going to launch album detail view. albumId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    iget v3, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mChildClickedIndex:I

    if-nez v3, :cond_2

    .line 597
    iget-object v3, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mCurrentArtistId:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, v4}, Lcom/htc/music/carmode/util/CarMusicUtils;->getSongListForArtist(Landroid/content/Context;I)[I

    move-result-object v1

    .line 598
    .local v1, list:[I
    iget-object v3, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/htc/music/NpCategory;

    invoke-direct {v4, v8}, Lcom/htc/music/NpCategory;-><init>(S)V

    iget-object v5, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mCurrentArtistId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/htc/music/NpCategory;->setArtistId(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    move-result-object v4

    invoke-static {v3, v1, v6, v4}, Lcom/htc/music/carmode/util/CarMusicUtils;->playAllAndPrepare(Landroid/content/Context;[IILcom/htc/music/NpCategory;)V

    goto :goto_0

    .line 603
    .end local v1           #list:[I
    :cond_2
    iget-object v3, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumId:Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mCurrentArtistId:Ljava/lang/String;

    invoke-static {v4, v5, v7, v7}, Lcom/htc/music/carmode/util/CarMusicUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/carmode/util/CarMusicUtils;->getSongListForAlbum(Landroid/content/Context;Ljava/lang/String;)[I

    move-result-object v1

    .line 604
    .restart local v1       #list:[I
    iget-object v3, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/htc/music/NpCategory;

    invoke-direct {v4, v9}, Lcom/htc/music/NpCategory;-><init>(S)V

    iget-object v5, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/htc/music/NpCategory;->setAlbumId(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mCurrentArtistId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/htc/music/NpCategory;->setArtistId(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    move-result-object v4

    invoke-static {v3, v1, v6, v4}, Lcom/htc/music/carmode/util/CarMusicUtils;->playAllAndPrepare(Landroid/content/Context;[IILcom/htc/music/NpCategory;)V

    goto :goto_0

    .line 608
    .end local v1           #list:[I
    :cond_3
    iget-object v3, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v4, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    invoke-virtual {v3, v4}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getChildItemCount(I)I

    move-result v3

    if-lez v3, :cond_0

    .line 609
    iget-object v3, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v4, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mParentClickedIndex:I

    invoke-virtual {v3, v4}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->isContainOnlyOneChild(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 613
    iget-object v3, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumId:Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mCurrentArtistId:Ljava/lang/String;

    invoke-static {v4, v5, v7, v7}, Lcom/htc/music/carmode/util/CarMusicUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/music/carmode/util/CarMusicUtils;->getSongListForAlbum(Landroid/content/Context;Ljava/lang/String;)[I

    move-result-object v1

    .line 614
    .restart local v1       #list:[I
    iget-object v3, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/htc/music/NpCategory;

    invoke-direct {v4, v9}, Lcom/htc/music/NpCategory;-><init>(S)V

    iget-object v5, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mCurrentAlbumId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/htc/music/NpCategory;->setAlbumId(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mCurrentArtistId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/htc/music/NpCategory;->setArtistId(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    move-result-object v4

    invoke-static {v3, v1, v6, v4}, Lcom/htc/music/carmode/util/CarMusicUtils;->playAllAndPrepare(Landroid/content/Context;[IILcom/htc/music/NpCategory;)V

    goto/16 :goto_0

    .line 617
    .end local v1           #list:[I
    :cond_4
    iget-object v3, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v3, v6}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->resumePreparator(Z)V

    .line 618
    iget-object v3, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget v4, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->prepareUpdateChildView(I)V

    .line 619
    iget-object v3, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridViewHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 620
    .local v2, msgs:Landroid/os/Message;
    const/4 v3, 0x3

    iput v3, v2, Landroid/os/Message;->what:I

    .line 621
    iget-object v3, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridViewHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method

.method protected onGridViewItemDelete(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 703
    return-void
.end method

.method protected onGridViewItemDeleteComplete()V
    .locals 0

    .prologue
    .line 852
    return-void
.end method

.method protected onGridViewItemLongClick(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 667
    return-void
.end method

.method protected onGridViewPrepareUpdateListReady(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 671
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    iget v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGlobalClickedIndex:I

    iget-object v2, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->updateExpandableGridView(ILcom/htc/sunny2/widget/gridview/ExpandableGridView;I)V

    .line 672
    return-void
.end method

.method public onPrepareReadyIRT(I)V
    .locals 2
    .parameter "clickIndex"

    .prologue
    .line 966
    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridViewHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 967
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 968
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 969
    iget-object v1, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridViewHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 970
    return-void
.end method

.method protected playAllAction(Z)Z
    .locals 12
    .parameter "forceShuffle"

    .prologue
    .line 905
    const/4 v7, 0x0

    .line 906
    .local v7, cursor:Landroid/database/Cursor;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 907
    .local v10, where:Ljava/lang/StringBuilder;
    const-string v0, "is_music>=1"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 908
    const-string v0, " AND artist != \'\' "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 909
    const-string v0, " AND artist != \'<unknown>\'"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 910
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

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

    invoke-static/range {v0 .. v5}, Lcom/htc/music/carmode/util/CarMusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 914
    const/4 v9, 0x0

    .line 915
    .local v9, unknown:Landroid/database/Cursor;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 916
    .local v11, whereUnknown:Ljava/lang/StringBuilder;
    const-string v0, "is_music>=1"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 917
    const-string v0, " AND artist= \'<unknown>\'"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 918
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

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

    invoke-static/range {v0 .. v5}, Lcom/htc/music/carmode/util/CarMusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 923
    if-eqz v7, :cond_2

    if-eqz v9, :cond_2

    .line 924
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

    .line 928
    .end local v8           #cursor:Landroid/database/Cursor;
    .restart local v7       #cursor:Landroid/database/Cursor;
    :cond_0
    :goto_0
    if-eqz v7, :cond_1

    .line 929
    const/4 v6, 0x0

    .line 931
    .local v6, category:Lcom/htc/music/NpCategory;
    new-instance v6, Lcom/htc/music/NpCategory;

    .end local v6           #category:Lcom/htc/music/NpCategory;
    const/4 v0, 0x5

    invoke-direct {v6, v0}, Lcom/htc/music/NpCategory;-><init>(S)V

    .line 933
    .restart local v6       #category:Lcom/htc/music/NpCategory;
    if-eqz p1, :cond_3

    .line 934
    invoke-static {p0, v7, v6}, Lcom/htc/music/carmode/util/CarMusicUtils;->shuffleAll(Landroid/content/Context;Landroid/database/Cursor;Lcom/htc/music/NpCategory;)V

    .line 937
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 938
    const/4 v7, 0x0

    .line 940
    .end local v6           #category:Lcom/htc/music/NpCategory;
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 925
    :cond_2
    if-eqz v9, :cond_0

    .line 926
    move-object v7, v9

    goto :goto_0

    .line 936
    .restart local v6       #category:Lcom/htc/music/NpCategory;
    :cond_3
    invoke-static {p0, v7, v6}, Lcom/htc/music/carmode/util/CarMusicUtils;->playAll(Landroid/content/Context;Landroid/database/Cursor;Lcom/htc/music/NpCategory;)V

    goto :goto_1
.end method

.method protected setEmptyView()V
    .locals 1

    .prologue
    .line 1190
    const v0, 0x7f070039

    invoke-virtual {p0, v0}, Lcom/htc/music/carmode/CarArtistBrowseActivity;->showEmptyView(I)V

    .line 1191
    return-void
.end method

.method protected setTitle()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1171
    iget-object v0, p0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mPlaylistUri:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1174
    const v0, 0x7f070073

    invoke-virtual {p0, v0}, Lcom/htc/music/carmode/CarArtistBrowseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/music/carmode/CarArtistBrowseActivity;->setCatgoryMainTitle(Ljava/lang/String;)V

    .line 1175
    invoke-virtual {p0, v1}, Lcom/htc/music/carmode/CarArtistBrowseActivity;->setCategorySecondaryTitleVisible(Z)V

    .line 1186
    :goto_0
    return-void

    .line 1183
    :cond_0
    const v0, 0x7f070021

    invoke-virtual {p0, v0}, Lcom/htc/music/carmode/CarArtistBrowseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/music/carmode/CarArtistBrowseActivity;->setCatgoryMainTitle(Ljava/lang/String;)V

    .line 1184
    invoke-virtual {p0, v1}, Lcom/htc/music/carmode/CarArtistBrowseActivity;->setCategorySecondaryTitleVisible(Z)V

    goto :goto_0
.end method
