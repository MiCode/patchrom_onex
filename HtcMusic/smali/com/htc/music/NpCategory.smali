.class public Lcom/htc/music/NpCategory;
.super Ljava/lang/Object;
.source "NpCategory.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CATEGORY_ALBUM:S = 0x8s

.field public static final CATEGORY_ALLALBUM:S = 0xcs

.field public static final CATEGORY_ALLARTIST:S = 0x5s

.field public static final CATEGORY_ALLCOMPOSER:S = 0x13s

.field public static final CATEGORY_ALLGENRE:S = 0x11s

.field public static final CATEGORY_ALLPLAYLIST:S = 0x16s

.field public static final CATEGORY_ALLSONG:S = 0x0s

.field public static final CATEGORY_ARTIST:S = 0x2s

.field public static final CATEGORY_ARTIST_ALBUM:S = 0xbs

.field public static final CATEGORY_ARTIST_ALLALBUM:S = 0xfs

.field public static final CATEGORY_COMPOSER:S = 0x12s

.field public static final CATEGORY_COMPOSER_ALBUM:S = 0xas

.field public static final CATEGORY_COMPOSER_ALLALBUM:S = 0xes

.field public static final CATEGORY_COMPOSER_ALLARTIST:S = 0x7s

.field public static final CATEGORY_COMPOSER_ARTIST:S = 0x4s

.field public static final CATEGORY_DONT_REFRESH:S = 0x15s

.field public static final CATEGORY_GENRE:S = 0x10s

.field public static final CATEGORY_GENRE_ALBUM:S = 0x9s

.field public static final CATEGORY_GENRE_ALLALBUM:S = 0xds

.field public static final CATEGORY_GENRE_ALLARTIST:S = 0x6s

.field public static final CATEGORY_GENRE_ARTIST:S = 0x3s

.field public static final CATEGORY_PLAYLIST:S = 0x14s

.field public static final CATEGORY_PURCHASED:S = 0x1s

.field public static final CATEGORY_UNDEFINED:S = -0x1s

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/music/NpCategory;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "[NpCategory]"


# instance fields
.field private mAlbumId:I

.field private mArtistId:I

.field private mCategory:S

.field private mComposer:Ljava/lang/StringBuilder;

.field private mGenreId:I

.field private mPlaylistId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 491
    new-instance v0, Lcom/htc/music/NpCategory$1;

    invoke-direct {v0}, Lcom/htc/music/NpCategory$1;-><init>()V

    sput-object v0, Lcom/htc/music/NpCategory;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    .line 505
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 507
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    int-to-short v1, v1

    iput-short v1, p0, Lcom/htc/music/NpCategory;->mCategory:S

    .line 508
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/htc/music/NpCategory;->mArtistId:I

    .line 509
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/htc/music/NpCategory;->mAlbumId:I

    .line 510
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/htc/music/NpCategory;->mGenreId:I

    .line 511
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    .line 512
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/htc/music/NpCategory;->mPlaylistId:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 517
    :goto_0
    return-void

    .line 513
    :catch_0
    move-exception v0

    .line 514
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v1, "[NpCategory]"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/htc/music/NpCategory$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/htc/music/NpCategory;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(S)V
    .locals 3
    .parameter "category"

    .prologue
    const/4 v2, -0x1

    .line 128
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 129
    if-lt p1, v2, :cond_0

    const/16 v0, 0x16

    if-le p1, v0, :cond_1

    .line 130
    :cond_0
    const-string v0, "[NpCategory]"

    const-string v1, "category error in constructor."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iput-short v2, p0, Lcom/htc/music/NpCategory;->mCategory:S

    .line 135
    :goto_0
    iput v2, p0, Lcom/htc/music/NpCategory;->mArtistId:I

    .line 136
    iput v2, p0, Lcom/htc/music/NpCategory;->mAlbumId:I

    .line 137
    const/4 v0, -0x2

    iput v0, p0, Lcom/htc/music/NpCategory;->mGenreId:I

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    .line 139
    iput v2, p0, Lcom/htc/music/NpCategory;->mPlaylistId:I

    .line 140
    return-void

    .line 133
    :cond_1
    iput-short p1, p0, Lcom/htc/music/NpCategory;->mCategory:S

    goto :goto_0
.end method

.method public constructor <init>(SIIILjava/lang/String;I)V
    .locals 3
    .parameter "category"
    .parameter "artistId"
    .parameter "albumId"
    .parameter "genreId"
    .parameter "composer"
    .parameter "playlistId"

    .prologue
    const/4 v2, -0x1

    .line 142
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 143
    if-lt p1, v2, :cond_0

    const/16 v0, 0x16

    if-le p1, v0, :cond_1

    .line 144
    :cond_0
    const-string v0, "[NpCategory]"

    const-string v1, "category error in constructor."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iput-short v2, p0, Lcom/htc/music/NpCategory;->mCategory:S

    .line 149
    :goto_0
    iput v2, p0, Lcom/htc/music/NpCategory;->mArtistId:I

    .line 150
    iput v2, p0, Lcom/htc/music/NpCategory;->mAlbumId:I

    .line 151
    const/4 v0, -0x2

    iput v0, p0, Lcom/htc/music/NpCategory;->mGenreId:I

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    .line 153
    iput v2, p0, Lcom/htc/music/NpCategory;->mPlaylistId:I

    .line 155
    invoke-virtual {p0, p2}, Lcom/htc/music/NpCategory;->setArtistId(I)Lcom/htc/music/NpCategory;

    .line 156
    invoke-virtual {p0, p3}, Lcom/htc/music/NpCategory;->setAlbumId(I)Lcom/htc/music/NpCategory;

    .line 157
    invoke-virtual {p0, p4}, Lcom/htc/music/NpCategory;->setGenreId(I)Lcom/htc/music/NpCategory;

    .line 158
    invoke-virtual {p0, p5}, Lcom/htc/music/NpCategory;->setComposer(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    .line 159
    invoke-virtual {p0, p6}, Lcom/htc/music/NpCategory;->setPlaylistId(I)Lcom/htc/music/NpCategory;

    .line 160
    return-void

    .line 147
    :cond_1
    iput-short p1, p0, Lcom/htc/music/NpCategory;->mCategory:S

    goto :goto_0
.end method

.method public constructor <init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "category"
    .parameter "artistId"
    .parameter "albumId"
    .parameter "genreId"
    .parameter "composer"
    .parameter "playlistId"

    .prologue
    const/4 v2, -0x1

    .line 162
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 163
    if-lt p1, v2, :cond_0

    const/16 v0, 0x16

    if-le p1, v0, :cond_1

    .line 164
    :cond_0
    const-string v0, "[NpCategory]"

    const-string v1, "category error in constructor."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iput-short v2, p0, Lcom/htc/music/NpCategory;->mCategory:S

    .line 169
    :goto_0
    iput v2, p0, Lcom/htc/music/NpCategory;->mArtistId:I

    .line 170
    iput v2, p0, Lcom/htc/music/NpCategory;->mAlbumId:I

    .line 171
    const/4 v0, -0x2

    iput v0, p0, Lcom/htc/music/NpCategory;->mGenreId:I

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    .line 173
    iput v2, p0, Lcom/htc/music/NpCategory;->mPlaylistId:I

    .line 175
    invoke-virtual {p0, p2}, Lcom/htc/music/NpCategory;->setArtistId(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    .line 176
    invoke-virtual {p0, p3}, Lcom/htc/music/NpCategory;->setAlbumId(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    .line 177
    invoke-virtual {p0, p4}, Lcom/htc/music/NpCategory;->setGenreId(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    .line 178
    invoke-virtual {p0, p5}, Lcom/htc/music/NpCategory;->setComposer(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    .line 179
    invoke-virtual {p0, p6}, Lcom/htc/music/NpCategory;->setPlaylistId(Ljava/lang/String;)Lcom/htc/music/NpCategory;

    .line 180
    return-void

    .line 167
    :cond_1
    iput-short p1, p0, Lcom/htc/music/NpCategory;->mCategory:S

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 520
    const/4 v0, 0x0

    return v0
.end method

.method public getAlbumId()I
    .locals 1

    .prologue
    .line 449
    iget v0, p0, Lcom/htc/music/NpCategory;->mAlbumId:I

    return v0
.end method

.method public getArtistId()I
    .locals 1

    .prologue
    .line 445
    iget v0, p0, Lcom/htc/music/NpCategory;->mArtistId:I

    return v0
.end method

.method public getCategory()S
    .locals 1

    .prologue
    .line 441
    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    return v0
.end method

.method public getComposer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGenreId()I
    .locals 1

    .prologue
    .line 453
    iget v0, p0, Lcom/htc/music/NpCategory;->mGenreId:I

    return v0
.end method

.method public getPlaylistId()I
    .locals 1

    .prologue
    .line 461
    iget v0, p0, Lcom/htc/music/NpCategory;->mPlaylistId:I

    return v0
.end method

.method public query(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 26
    .parameter "context"

    .prologue
    .line 524
    move-object/from16 v0, p0

    iget-short v2, v0, Lcom/htc/music/NpCategory;->mCategory:S

    const/4 v3, -0x1

    if-le v2, v3, :cond_0

    move-object/from16 v0, p0

    iget-short v2, v0, Lcom/htc/music/NpCategory;->mCategory:S

    const/16 v3, 0x16

    if-gt v2, v3, :cond_0

    move-object/from16 v0, p0

    iget-short v2, v0, Lcom/htc/music/NpCategory;->mCategory:S

    const/16 v3, 0x15

    if-ne v2, v3, :cond_2

    .line 525
    :cond_0
    const/4 v11, 0x0

    .line 841
    :cond_1
    :goto_0
    return-object v11

    .line 528
    :cond_2
    const/4 v11, 0x0

    .line 529
    .local v11, c:Landroid/database/Cursor;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    .line 530
    .local v24, where:Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    .line 531
    .local v7, cols:[Ljava/lang/String;
    const/4 v10, 0x0

    .line 532
    .local v10, sortOrder:Ljava/lang/String;
    const/4 v6, 0x0

    .line 534
    .local v6, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-short v2, v0, Lcom/htc/music/NpCategory;->mCategory:S

    packed-switch v2, :pswitch_data_0

    .line 825
    :pswitch_0
    const-string v2, "[NpCategory]"

    const-string v3, "There is something wrong in NpCategory.query()."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    :goto_1
    if-nez v10, :cond_3

    .line 828
    const-string v10, "title COLLATE NOCASE ASC"

    .line 830
    :cond_3
    if-nez v6, :cond_4

    .line 831
    sget-object v6, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 833
    :cond_4
    if-nez v7, :cond_5

    .line 834
    const/4 v2, 0x2

    new-array v7, v2, [Ljava/lang/String;

    .end local v7           #cols:[Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v7, v2

    const/4 v2, 0x1

    const-string v3, "album_id"

    aput-object v3, v7, v2

    .line 836
    .restart local v7       #cols:[Ljava/lang/String;
    :cond_5
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    move-object/from16 v5, p1

    invoke-static/range {v5 .. v10}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 837
    const/16 v24, 0x0

    .line 838
    const/4 v10, 0x0

    .line 839
    const/4 v6, 0x0

    .line 840
    const/4 v7, 0x0

    .line 841
    goto :goto_0

    .line 536
    :pswitch_1
    const-string v2, "title != \'\' AND is_music>=1"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 540
    :pswitch_2
    const-string v2, "title != \'\' AND is_music>1"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 544
    :pswitch_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/NpCategory;->mArtistId:I

    const/4 v3, -0x1

    if-gt v2, v3, :cond_6

    .line 545
    const/4 v11, 0x0

    goto :goto_0

    .line 547
    :cond_6
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/music/NpCategory;->mArtistId:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-static {v2, v3, v5, v8}, Lcom/htc/music/util/MusicUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 551
    :pswitch_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/NpCategory;->mArtistId:I

    const/4 v3, -0x1

    if-le v2, v3, :cond_7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/NpCategory;->mGenreId:I

    const/4 v3, -0x2

    if-gt v2, v3, :cond_8

    .line 552
    :cond_7
    const/4 v11, 0x0

    goto :goto_0

    .line 554
    :cond_8
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/music/NpCategory;->mArtistId:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/music/NpCategory;->mGenreId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    invoke-static {v2, v3, v5, v8}, Lcom/htc/music/util/MusicUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 558
    :pswitch_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/NpCategory;->mArtistId:I

    const/4 v3, -0x1

    if-le v2, v3, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_a

    .line 559
    :cond_9
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 561
    :cond_a
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/music/NpCategory;->mArtistId:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v3, v5, v8}, Lcom/htc/music/util/MusicUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 565
    :pswitch_6
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-static {v2, v3, v5, v8}, Lcom/htc/music/util/MusicUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    const-string v10, "artist COLLATE NOCASE ASC , title COLLATE NOCASE ASC"

    .line 569
    goto/16 :goto_1

    .line 572
    :pswitch_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/NpCategory;->mGenreId:I

    const/4 v3, -0x2

    if-gt v2, v3, :cond_b

    .line 573
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 575
    :cond_b
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/music/NpCategory;->mGenreId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    invoke-static {v2, v3, v5, v8}, Lcom/htc/music/util/MusicUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    const-string v10, "title_key"

    .line 577
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/NpCategory;->mGenreId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_c

    .line 578
    const-string v2, "external"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/music/NpCategory;->mGenreId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v8, v3

    invoke-static {v2, v8, v9}, Landroid/provider/MediaStore$Audio$Genres$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v6

    goto/16 :goto_1

    .line 580
    :cond_c
    const-string v2, " AND _id NOT IN (SELECT audio_id FROM audio_genres_map)"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 585
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_e

    .line 586
    :cond_d
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 588
    :cond_e
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v3, v5, v8}, Lcom/htc/music/util/MusicUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    const-string v10, "artist COLLATE NOCASE ASC , title COLLATE NOCASE ASC"

    .line 593
    goto/16 :goto_1

    .line 596
    :pswitch_9
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/NpCategory;->mAlbumId:I

    const/4 v3, -0x1

    if-gt v2, v3, :cond_f

    .line 597
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 599
    :cond_f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/NpCategory;->mAlbumId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-static {v2, v3, v5, v8}, Lcom/htc/music/util/MusicUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    const-string v10, "track, title COLLATE NOCASE ASC"

    .line 601
    goto/16 :goto_1

    .line 604
    :pswitch_a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/NpCategory;->mAlbumId:I

    const/4 v3, -0x1

    if-le v2, v3, :cond_10

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/NpCategory;->mGenreId:I

    const/4 v3, -0x2

    if-gt v2, v3, :cond_11

    .line 605
    :cond_10
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 607
    :cond_11
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/NpCategory;->mAlbumId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/music/NpCategory;->mGenreId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    invoke-static {v2, v3, v5, v8}, Lcom/htc/music/util/MusicUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/NpCategory;->mGenreId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_12

    .line 609
    const-string v2, "external"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/music/NpCategory;->mGenreId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v8, v3

    invoke-static {v2, v8, v9}, Landroid/provider/MediaStore$Audio$Genres$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v6

    .line 613
    :goto_2
    const-string v10, "track, title COLLATE NOCASE ASC"

    .line 614
    goto/16 :goto_1

    .line 611
    :cond_12
    const-string v2, " AND _id NOT IN (SELECT audio_id FROM audio_genres_map)"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 617
    :pswitch_b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/NpCategory;->mAlbumId:I

    const/4 v3, -0x1

    if-le v2, v3, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_14

    .line 618
    :cond_13
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 620
    :cond_14
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/NpCategory;->mAlbumId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v3, v5, v8}, Lcom/htc/music/util/MusicUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    const-string v10, "track, title COLLATE NOCASE ASC"

    .line 623
    goto/16 :goto_1

    .line 626
    :pswitch_c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/NpCategory;->mArtistId:I

    const/4 v3, -0x1

    if-le v2, v3, :cond_15

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/NpCategory;->mAlbumId:I

    const/4 v3, -0x1

    if-gt v2, v3, :cond_16

    .line 627
    :cond_15
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 629
    :cond_16
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/NpCategory;->mAlbumId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/music/NpCategory;->mArtistId:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-static {v2, v3, v5, v8}, Lcom/htc/music/util/MusicUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    const-string v10, "track, title COLLATE NOCASE ASC"

    .line 632
    goto/16 :goto_1

    .line 635
    :pswitch_d
    const-string v2, "title != \'\' AND is_music>=1"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    const-string v10, "album COLLATE NOCASE ASC , track, title COLLATE NOCASE ASC"

    .line 639
    goto/16 :goto_1

    .line 642
    :pswitch_e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/NpCategory;->mGenreId:I

    const/4 v3, -0x2

    if-gt v2, v3, :cond_17

    .line 643
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 645
    :cond_17
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/music/NpCategory;->mGenreId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    invoke-static {v2, v3, v5, v8}, Lcom/htc/music/util/MusicUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 646
    const-string v10, "title_key"

    .line 647
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/NpCategory;->mGenreId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_18

    .line 648
    const-string v2, "external"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/music/NpCategory;->mGenreId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v8, v3

    invoke-static {v2, v8, v9}, Landroid/provider/MediaStore$Audio$Genres$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v6

    goto/16 :goto_1

    .line 650
    :cond_18
    const-string v2, " AND _id NOT IN (SELECT audio_id FROM audio_genres_map)"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 655
    :pswitch_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1a

    .line 656
    :cond_19
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 658
    :cond_1a
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v3, v5, v8}, Lcom/htc/music/util/MusicUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 659
    const-string v10, "album COLLATE NOCASE ASC , track, title COLLATE NOCASE ASC"

    .line 663
    goto/16 :goto_1

    .line 666
    :pswitch_10
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/NpCategory;->mArtistId:I

    const/4 v3, -0x1

    if-gt v2, v3, :cond_1b

    .line 667
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 669
    :cond_1b
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/music/NpCategory;->mArtistId:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-static {v2, v3, v5, v8}, Lcom/htc/music/util/MusicUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 670
    const-string v10, "album COLLATE NOCASE ASC , track, title COLLATE NOCASE ASC"

    .line 673
    goto/16 :goto_1

    .line 676
    :pswitch_11
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/NpCategory;->mGenreId:I

    const/4 v3, -0x2

    if-gt v2, v3, :cond_1c

    .line 677
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 679
    :cond_1c
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/music/NpCategory;->mGenreId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    invoke-static {v2, v3, v5, v8}, Lcom/htc/music/util/MusicUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/NpCategory;->mGenreId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1d

    .line 681
    const-string v2, "external"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/music/NpCategory;->mGenreId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v8, v3

    invoke-static {v2, v8, v9}, Landroid/provider/MediaStore$Audio$Genres$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v6

    .line 685
    :goto_3
    const-string v10, "title_key"

    .line 686
    goto/16 :goto_1

    .line 683
    :cond_1d
    const-string v2, " AND _id NOT IN (SELECT audio_id FROM audio_genres_map)"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 689
    :pswitch_12
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    .line 690
    .local v25, whereClause:Ljava/lang/StringBuilder;
    const-string v2, "title != \'\'"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 691
    const-string v2, " AND is_music>=1"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 692
    const-string v2, " AND _id NOT IN (SELECT audio_id FROM audio_genres_map)"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 694
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "_id"

    aput-object v5, v4, v2

    const/4 v2, 0x1

    const-string v5, "album_id"

    aput-object v5, v4, v2

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "title"

    .end local v6           #uri:Landroid/net/Uri;
    .end local v7           #cols:[Ljava/lang/String;
    move-object/from16 v2, p1

    invoke-static/range {v2 .. v7}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v22

    .line 698
    .local v22, results:Landroid/database/Cursor;
    const-string v2, "external"

    invoke-static {v2}, Landroid/provider/MediaStore$Audio$Genres;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "_id"

    aput-object v5, v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "name"

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v7}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 703
    .local v16, genres:Landroid/database/Cursor;
    if-eqz v22, :cond_1e

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_22

    :cond_1e
    if-eqz v16, :cond_1f

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_22

    .line 705
    :cond_1f
    if-eqz v22, :cond_20

    .line 706
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 707
    const/16 v22, 0x0

    .line 709
    :cond_20
    if-eqz v16, :cond_21

    .line 710
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 711
    const/16 v16, 0x0

    .line 713
    :cond_21
    const/16 v25, 0x0

    .line 714
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 717
    :cond_22
    if-nez v16, :cond_25

    const/16 v19, 0x0

    .line 718
    .local v19, len:I
    :goto_4
    if-eqz v22, :cond_23

    .line 719
    add-int/lit8 v19, v19, 0x1

    .line 720
    move-object/from16 v11, v22

    .line 723
    :cond_23
    move/from16 v0, v19

    new-array v15, v0, [Landroid/database/Cursor;

    .line 724
    .local v15, cursors:[Landroid/database/Cursor;
    const/16 v23, 0x0

    .line 725
    .local v23, start:I
    if-eqz v22, :cond_24

    .line 726
    const/4 v2, 0x0

    aput-object v22, v15, v2

    .line 727
    add-int/lit8 v23, v23, 0x1

    .line 729
    :cond_24
    if-eqz v16, :cond_27

    .line 730
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    .line 731
    const-string v2, "_id"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 732
    .local v12, colidx:I
    move/from16 v18, v23

    .local v18, i:I
    :goto_5
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_26

    .line 733
    move-object/from16 v0, v16

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 734
    .local v17, gid:I
    const-string v2, "external"

    move/from16 v0, v17

    int-to-long v8, v0

    invoke-static {v2, v8, v9}, Landroid/provider/MediaStore$Audio$Genres$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v3

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "_id"

    aput-object v5, v4, v2

    const/4 v2, 0x1

    const-string v5, "album_id"

    aput-object v5, v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "title"

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v7}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 738
    .local v14, cursor:Landroid/database/Cursor;
    aput-object v14, v15, v18

    .line 739
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    .line 732
    add-int/lit8 v18, v18, 0x1

    goto :goto_5

    .line 717
    .end local v12           #colidx:I
    .end local v14           #cursor:Landroid/database/Cursor;
    .end local v15           #cursors:[Landroid/database/Cursor;
    .end local v17           #gid:I
    .end local v18           #i:I
    .end local v19           #len:I
    .end local v23           #start:I
    :cond_25
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v19

    goto :goto_4

    .line 741
    .restart local v12       #colidx:I
    .restart local v15       #cursors:[Landroid/database/Cursor;
    .restart local v18       #i:I
    .restart local v19       #len:I
    .restart local v23       #start:I
    :cond_26
    new-instance v11, Landroid/database/MergeCursor;

    .end local v11           #c:Landroid/database/Cursor;
    invoke-direct {v11, v15}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .line 743
    .restart local v11       #c:Landroid/database/Cursor;
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 744
    const/16 v16, 0x0

    .line 745
    const/16 v25, 0x0

    .line 746
    goto/16 :goto_0

    .line 748
    .end local v12           #colidx:I
    .end local v18           #i:I
    :cond_27
    const/16 v25, 0x0

    .line 749
    if-eqz v22, :cond_28

    .line 750
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 751
    const/16 v22, 0x0

    .line 753
    :cond_28
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 758
    .end local v15           #cursors:[Landroid/database/Cursor;
    .end local v16           #genres:Landroid/database/Cursor;
    .end local v19           #len:I
    .end local v22           #results:Landroid/database/Cursor;
    .end local v23           #start:I
    .end local v25           #whereClause:Ljava/lang/StringBuilder;
    .restart local v6       #uri:Landroid/net/Uri;
    .restart local v7       #cols:[Ljava/lang/String;
    :pswitch_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_29

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_2a

    .line 759
    :cond_29
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 761
    :cond_2a
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v3, v5, v8}, Lcom/htc/music/util/MusicUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 765
    :pswitch_14
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-static {v2, v3, v5, v8}, Lcom/htc/music/util/MusicUtils;->getQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 766
    const-string v10, "composer COLLATE NOCASE ASC , title COLLATE NOCASE ASC"

    .line 768
    goto/16 :goto_1

    .line 771
    :pswitch_15
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/NpCategory;->mPlaylistId:I

    const/4 v3, -0x1

    if-gt v2, v3, :cond_2b

    .line 772
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 774
    :cond_2b
    const/4 v2, 0x2

    new-array v7, v2, [Ljava/lang/String;

    .end local v7           #cols:[Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, "audio_id"

    aput-object v3, v7, v2

    const/4 v2, 0x1

    const-string v3, "album_id"

    aput-object v3, v7, v2

    .line 778
    .restart local v7       #cols:[Ljava/lang/String;
    const-string v2, "external"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/music/NpCategory;->mPlaylistId:I

    int-to-long v8, v3

    invoke-static {v2, v8, v9}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v6

    .line 779
    const-string v2, "title != \'\'"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 780
    const-string v10, "play_order"

    .line 781
    goto/16 :goto_1

    .line 784
    :pswitch_16
    const/4 v2, 0x2

    new-array v13, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "audio_id"

    aput-object v3, v13, v2

    const/4 v2, 0x1

    const-string v3, "album_id"

    aput-object v3, v13, v2

    .line 788
    .end local v7           #cols:[Ljava/lang/String;
    .local v13, cols:[Ljava/lang/String;
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    .line 791
    .local v4, colsPlaylist:[Ljava/lang/String;
    const/16 v20, 0x0

    .line 792
    .local v20, playlistCursor:Landroid/database/Cursor;
    const/4 v15, 0x0

    .line 793
    .restart local v15       #cursors:[Landroid/database/Cursor;
    const/16 v19, 0x0

    .line 795
    .restart local v19       #len:I
    :try_start_0
    const-string v2, "external"

    invoke-static {v2}, Landroid/provider/MediaStore$Audio$Playlists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "name"

    .end local v6           #uri:Landroid/net/Uri;
    move-object/from16 v2, p1

    invoke-static/range {v2 .. v7}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 798
    if-eqz v20, :cond_2d

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2d

    .line 799
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v19

    .line 800
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    .line 801
    const-string v2, "_id"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 802
    .restart local v12       #colidx:I
    move/from16 v0, v19

    new-array v15, v0, [Landroid/database/Cursor;

    .line 803
    const/16 v18, 0x0

    .end local v10           #sortOrder:Ljava/lang/String;
    .restart local v18       #i:I
    :goto_6
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_2c

    .line 804
    move-object/from16 v0, v20

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 805
    .local v21, plid:I
    const-string v2, "external"

    move/from16 v0, v21

    int-to-long v8, v0

    invoke-static {v2, v8, v9}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "title_key"

    move-object/from16 v5, p1

    move-object v7, v13

    invoke-static/range {v5 .. v10}, Lcom/htc/music/util/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    aput-object v2, v15, v18

    .line 809
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    .line 803
    add-int/lit8 v18, v18, 0x1

    goto :goto_6

    .line 811
    .end local v21           #plid:I
    :cond_2c
    new-instance v11, Landroid/database/MergeCursor;

    .end local v11           #c:Landroid/database/Cursor;
    invoke-direct {v11, v15}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 817
    .restart local v11       #c:Landroid/database/Cursor;
    if-eqz v20, :cond_1

    .line 818
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 819
    .end local v11           #c:Landroid/database/Cursor;
    .end local v12           #colidx:I
    .end local v18           #i:I
    :goto_7
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 814
    .restart local v10       #sortOrder:Ljava/lang/String;
    .restart local v11       #c:Landroid/database/Cursor;
    :cond_2d
    const/4 v11, 0x0

    .line 817
    .end local v11           #c:Landroid/database/Cursor;
    if-eqz v20, :cond_1

    .line 818
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    goto :goto_7

    .line 817
    .end local v10           #sortOrder:Ljava/lang/String;
    :catchall_0
    move-exception v2

    if-eqz v20, :cond_2e

    .line 818
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 819
    const/16 v20, 0x0

    .line 817
    :cond_2e
    throw v2

    .line 534
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_0
        :pswitch_16
    .end packed-switch
.end method

.method public reset(S)Lcom/htc/music/NpCategory;
    .locals 4
    .parameter "category"

    .prologue
    const/4 v3, -0x1

    .line 190
    if-lt p1, v3, :cond_0

    const/16 v0, 0x16

    if-le p1, v0, :cond_2

    .line 191
    :cond_0
    const-string v0, "[NpCategory]"

    const-string v1, "category error in constructor."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iput-short v3, p0, Lcom/htc/music/NpCategory;->mCategory:S

    .line 196
    :goto_0
    iput v3, p0, Lcom/htc/music/NpCategory;->mArtistId:I

    .line 197
    iput v3, p0, Lcom/htc/music/NpCategory;->mAlbumId:I

    .line 198
    const/4 v0, -0x2

    iput v0, p0, Lcom/htc/music/NpCategory;->mGenreId:I

    .line 199
    iget-object v0, p0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 202
    :cond_1
    iput v3, p0, Lcom/htc/music/NpCategory;->mPlaylistId:I

    .line 203
    return-object p0

    .line 194
    :cond_2
    iput-short p1, p0, Lcom/htc/music/NpCategory;->mCategory:S

    goto :goto_0
.end method

.method public setAlbumId(I)Lcom/htc/music/NpCategory;
    .locals 6
    .parameter "albumId"

    .prologue
    const/16 v5, 0xb

    const/16 v4, 0xa

    const/16 v3, 0x9

    const/16 v2, 0x8

    .line 266
    const/4 v0, -0x1

    if-gt p1, v0, :cond_1

    .line 284
    :cond_0
    :goto_0
    return-object p0

    .line 269
    :cond_1
    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    if-nez v0, :cond_3

    .line 270
    iput-short v2, p0, Lcom/htc/music/NpCategory;->mCategory:S

    .line 283
    :cond_2
    :goto_1
    iput p1, p0, Lcom/htc/music/NpCategory;->mAlbumId:I

    goto :goto_0

    .line 271
    :cond_3
    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 272
    iput-short v3, p0, Lcom/htc/music/NpCategory;->mCategory:S

    goto :goto_1

    .line 273
    :cond_4
    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    const/16 v1, 0x12

    if-ne v0, v1, :cond_5

    .line 274
    iput-short v4, p0, Lcom/htc/music/NpCategory;->mCategory:S

    goto :goto_1

    .line 275
    :cond_5
    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 276
    iput-short v5, p0, Lcom/htc/music/NpCategory;->mCategory:S

    goto :goto_1

    .line 277
    :cond_6
    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    if-eq v0, v2, :cond_2

    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    if-eq v0, v5, :cond_2

    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    if-eq v0, v3, :cond_2

    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    if-ne v0, v4, :cond_0

    goto :goto_1
.end method

.method public setAlbumId(Ljava/lang/String;)Lcom/htc/music/NpCategory;
    .locals 5
    .parameter "albumId"

    .prologue
    .line 294
    if-nez p1, :cond_1

    .line 306
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 297
    .restart local p0
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 299
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 300
    .local v1, localAlbumId:I
    invoke-virtual {p0, v1}, Lcom/htc/music/NpCategory;->setAlbumId(I)Lcom/htc/music/NpCategory;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 301
    .end local v1           #localAlbumId:I
    :catch_0
    move-exception v0

    .line 302
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v2, "[NpCategory]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The string cannot be parsed as an integer value"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setArtistId(I)Lcom/htc/music/NpCategory;
    .locals 7
    .parameter "artistId"

    .prologue
    const/16 v6, 0xf

    const/16 v5, 0xb

    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    .line 212
    const/4 v0, -0x1

    if-gt p1, v0, :cond_1

    .line 233
    :cond_0
    :goto_0
    return-object p0

    .line 215
    :cond_1
    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    if-nez v0, :cond_3

    .line 216
    iput-short v2, p0, Lcom/htc/music/NpCategory;->mCategory:S

    .line 232
    :cond_2
    :goto_1
    iput p1, p0, Lcom/htc/music/NpCategory;->mArtistId:I

    goto :goto_0

    .line 217
    :cond_3
    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 218
    iput-short v3, p0, Lcom/htc/music/NpCategory;->mCategory:S

    goto :goto_1

    .line 219
    :cond_4
    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    const/16 v1, 0x12

    if-ne v0, v1, :cond_5

    .line 220
    iput-short v4, p0, Lcom/htc/music/NpCategory;->mCategory:S

    goto :goto_1

    .line 221
    :cond_5
    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    const/16 v1, 0x8

    if-ne v0, v1, :cond_6

    .line 222
    iput-short v5, p0, Lcom/htc/music/NpCategory;->mCategory:S

    goto :goto_1

    .line 223
    :cond_6
    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    const/16 v1, 0xc

    if-ne v0, v1, :cond_7

    .line 224
    iput-short v6, p0, Lcom/htc/music/NpCategory;->mCategory:S

    goto :goto_1

    .line 225
    :cond_7
    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    if-eq v0, v2, :cond_2

    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    if-eq v0, v5, :cond_2

    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    if-eq v0, v3, :cond_2

    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    if-eq v0, v4, :cond_2

    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    if-ne v0, v6, :cond_0

    goto :goto_1
.end method

.method public setArtistId(Ljava/lang/String;)Lcom/htc/music/NpCategory;
    .locals 5
    .parameter "artistId"

    .prologue
    .line 243
    if-nez p1, :cond_1

    .line 255
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 246
    .restart local p0
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 248
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 249
    .local v1, localArtistId:I
    invoke-virtual {p0, v1}, Lcom/htc/music/NpCategory;->setArtistId(I)Lcom/htc/music/NpCategory;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 250
    .end local v1           #localArtistId:I
    :catch_0
    move-exception v0

    .line 251
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v2, "[NpCategory]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The string cannot be parsed as an integer value"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setComposer(Ljava/lang/String;)Lcom/htc/music/NpCategory;
    .locals 7
    .parameter "composer"

    .prologue
    const/16 v6, 0x12

    const/16 v5, 0xe

    const/16 v4, 0xa

    const/4 v3, 0x7

    const/4 v2, 0x4

    .line 366
    if-nez p1, :cond_1

    .line 393
    :cond_0
    :goto_0
    return-object p0

    .line 369
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 372
    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    if-nez v0, :cond_4

    .line 373
    iput-short v6, p0, Lcom/htc/music/NpCategory;->mCategory:S

    .line 389
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 390
    iget-object v0, p0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 392
    :cond_3
    iget-object v0, p0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 374
    :cond_4
    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 375
    iput-short v2, p0, Lcom/htc/music/NpCategory;->mCategory:S

    goto :goto_1

    .line 376
    :cond_5
    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    const/16 v1, 0x8

    if-ne v0, v1, :cond_6

    .line 377
    iput-short v4, p0, Lcom/htc/music/NpCategory;->mCategory:S

    goto :goto_1

    .line 378
    :cond_6
    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    const/4 v1, 0x5

    if-ne v0, v1, :cond_7

    .line 379
    iput-short v3, p0, Lcom/htc/music/NpCategory;->mCategory:S

    goto :goto_1

    .line 380
    :cond_7
    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    const/16 v1, 0xc

    if-ne v0, v1, :cond_8

    .line 381
    iput-short v5, p0, Lcom/htc/music/NpCategory;->mCategory:S

    goto :goto_1

    .line 382
    :cond_8
    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    if-eq v0, v6, :cond_2

    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    if-eq v0, v2, :cond_2

    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    if-eq v0, v4, :cond_2

    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    if-eq v0, v5, :cond_2

    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    if-ne v0, v3, :cond_0

    goto :goto_1
.end method

.method public setGenreId(I)Lcom/htc/music/NpCategory;
    .locals 7
    .parameter "genreId"

    .prologue
    const/16 v6, 0x10

    const/16 v5, 0xd

    const/16 v4, 0x9

    const/4 v3, 0x6

    const/4 v2, 0x3

    .line 318
    const/4 v0, -0x2

    if-gt p1, v0, :cond_1

    .line 339
    :cond_0
    :goto_0
    return-object p0

    .line 321
    :cond_1
    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    if-nez v0, :cond_3

    .line 322
    iput-short v6, p0, Lcom/htc/music/NpCategory;->mCategory:S

    .line 338
    :cond_2
    :goto_1
    iput p1, p0, Lcom/htc/music/NpCategory;->mGenreId:I

    goto :goto_0

    .line 323
    :cond_3
    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 324
    iput-short v2, p0, Lcom/htc/music/NpCategory;->mCategory:S

    goto :goto_1

    .line 325
    :cond_4
    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    const/16 v1, 0x8

    if-ne v0, v1, :cond_5

    .line 326
    iput-short v4, p0, Lcom/htc/music/NpCategory;->mCategory:S

    goto :goto_1

    .line 327
    :cond_5
    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    const/4 v1, 0x5

    if-ne v0, v1, :cond_6

    .line 328
    iput-short v3, p0, Lcom/htc/music/NpCategory;->mCategory:S

    goto :goto_1

    .line 329
    :cond_6
    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    const/16 v1, 0xc

    if-ne v0, v1, :cond_7

    .line 330
    iput-short v5, p0, Lcom/htc/music/NpCategory;->mCategory:S

    goto :goto_1

    .line 331
    :cond_7
    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    if-eq v0, v6, :cond_2

    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    if-eq v0, v2, :cond_2

    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    if-eq v0, v4, :cond_2

    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    if-eq v0, v3, :cond_2

    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    if-ne v0, v5, :cond_0

    goto :goto_1
.end method

.method public setGenreId(Ljava/lang/String;)Lcom/htc/music/NpCategory;
    .locals 5
    .parameter "genreId"

    .prologue
    .line 343
    if-nez p1, :cond_1

    .line 355
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 346
    .restart local p0
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 348
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 349
    .local v1, localGenreId:I
    invoke-virtual {p0, v1}, Lcom/htc/music/NpCategory;->setGenreId(I)Lcom/htc/music/NpCategory;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 350
    .end local v1           #localGenreId:I
    :catch_0
    move-exception v0

    .line 351
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v2, "[NpCategory]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The string cannot be parsed as an integer value"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setPlaylistId(I)Lcom/htc/music/NpCategory;
    .locals 2
    .parameter "playlistId"

    .prologue
    const/16 v1, 0x14

    .line 403
    const/4 v0, -0x1

    if-gt p1, v0, :cond_1

    .line 414
    :cond_0
    :goto_0
    return-object p0

    .line 406
    :cond_1
    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    if-nez v0, :cond_2

    .line 407
    iput-short v1, p0, Lcom/htc/music/NpCategory;->mCategory:S

    .line 413
    :goto_1
    iput p1, p0, Lcom/htc/music/NpCategory;->mPlaylistId:I

    goto :goto_0

    .line 408
    :cond_2
    iget-short v0, p0, Lcom/htc/music/NpCategory;->mCategory:S

    if-ne v0, v1, :cond_0

    goto :goto_1
.end method

.method public setPlaylistId(Ljava/lang/String;)Lcom/htc/music/NpCategory;
    .locals 5
    .parameter "playlistId"

    .prologue
    .line 424
    if-nez p1, :cond_1

    .line 436
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 427
    .restart local p0
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 429
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 430
    .local v1, localPlaylistId:I
    invoke-virtual {p0, v1}, Lcom/htc/music/NpCategory;->setPlaylistId(I)Lcom/htc/music/NpCategory;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 431
    .end local v1           #localPlaylistId:I
    :catch_0
    move-exception v0

    .line 432
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v2, "[NpCategory]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The string cannot be parsed as an integer value"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 465
    iget-object v0, p0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 466
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Category = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/htc/music/NpCategory;->mCategory:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ArtistId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/music/NpCategory;->mArtistId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "AlbumId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/music/NpCategory;->mAlbumId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "GenreId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/music/NpCategory;->mGenreId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Composer = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "PlaylistId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/music/NpCategory;->mPlaylistId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 471
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Category = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/htc/music/NpCategory;->mCategory:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ArtistId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/music/NpCategory;->mArtistId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "AlbumId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/music/NpCategory;->mAlbumId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "GenreId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/music/NpCategory;->mGenreId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "PlaylistId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/music/NpCategory;->mPlaylistId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 479
    :try_start_0
    iget-short v1, p0, Lcom/htc/music/NpCategory;->mCategory:S

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 480
    iget v1, p0, Lcom/htc/music/NpCategory;->mArtistId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 481
    iget v1, p0, Lcom/htc/music/NpCategory;->mAlbumId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 482
    iget v1, p0, Lcom/htc/music/NpCategory;->mGenreId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 483
    iget-object v1, p0, Lcom/htc/music/NpCategory;->mComposer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 484
    iget v1, p0, Lcom/htc/music/NpCategory;->mPlaylistId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 489
    :goto_0
    return-void

    .line 485
    :catch_0
    move-exception v0

    .line 486
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v1, "[NpCategory]"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method
