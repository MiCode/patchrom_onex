.class Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;
.super Lcom/htc/music/widget/HtcSimpleCursorAdapter;
.source "AlbumBrowserActivity.java"

# interfaces
.implements Landroid/widget/SectionIndexer;
.implements Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/AlbumBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AlbumListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter$MyDataSetObserver;,
        Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter$QueryHandler;,
        Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mActivity:Lcom/htc/music/browserlayer/AlbumBrowserActivity;

.field private mAlbumArtIndex:I

.field private mAlbumIdx:I

.field private final mAlbumSongSeparator:Ljava/lang/String;

.field private mArtistIdx:I

.field private mConstraint:Ljava/lang/String;

.field private mConstraintIsValid:Z

.field protected mDataSetObserver:Landroid/database/DataSetObserver;

.field private mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

.field private final mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

.field private final mFormatArgs:[Ljava/lang/Object;

.field private mIndexer:Lcom/htc/music/widget/MusicAlphabetIndexer;

.field private final mNowPlayingOverlay:Landroid/graphics/drawable/Drawable;

.field private mNumSongsIdx:I

.field private mQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

.field private final mStringBuilder:Ljava/lang/StringBuilder;

.field private final mUnknownAlbum:Ljava/lang/String;

.field private final mUnknownArtist:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/htc/music/browserlayer/AlbumBrowserActivity;ILandroid/database/Cursor;[Ljava/lang/String;[I)V
    .locals 8
    .parameter "context"
    .parameter "currentactivity"
    .parameter "layout"
    .parameter "cursor"
    .parameter "from"
    .parameter "to"

    .prologue
    .line 1128
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/htc/music/widget/HtcSimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 1072
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 1080
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->mFormatArgs:[Ljava/lang/Object;

    .line 1088
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->mConstraint:Ljava/lang/String;

    .line 1090
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->mConstraintIsValid:Z

    .line 1092
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    .line 1282
    new-instance v0, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter$MyDataSetObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter$MyDataSetObserver;-><init>(Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;Lcom/htc/music/browserlayer/AlbumBrowserActivity$1;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 1130
    iput-object p2, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->mActivity:Lcom/htc/music/browserlayer/AlbumBrowserActivity;

    .line 1131
    new-instance v0, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter$QueryHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter$QueryHandler;-><init>(Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->mQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    .line 1133
    const v0, 0x7f07004e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->mUnknownAlbum:Ljava/lang/String;

    .line 1134
    const v0, 0x7f07004d

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->mUnknownArtist:Ljava/lang/String;

    .line 1135
    const v0, 0x7f07023c

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->mAlbumSongSeparator:Ljava/lang/String;

    .line 1137
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 1138
    .local v7, r:Landroid/content/res/Resources;
    const v0, 0x2080089

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->mNowPlayingOverlay:Landroid/graphics/drawable/Drawable;

    .line 1140
    const v0, 0x7f020050

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 1146
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setFilterBitmap(Z)V

    .line 1147
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setDither(Z)V

    .line 1148
    invoke-direct {p0, p4}, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 1150
    if-eqz p4, :cond_0

    .line 1151
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p4, v0}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 1152
    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v3

    .line 1153
    .local v3, height:I
    new-instance v0, Lcom/htc/music/util/AsyncImageDecoder;

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p0

    move v4, v3

    invoke-direct/range {v0 .. v6}, Lcom/htc/music/util/AsyncImageDecoder;-><init>(Landroid/content/Context;Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;IIZZ)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    .line 1154
    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1058
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;)Lcom/htc/music/browserlayer/AlbumBrowserActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1058
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->mActivity:Lcom/htc/music/browserlayer/AlbumBrowserActivity;

    return-object v0
.end method

.method private getColumnIndices(Landroid/database/Cursor;)V
    .locals 3
    .parameter "cursor"

    .prologue
    .line 1157
    if-eqz p1, :cond_0

    .line 1158
    const-string v0, "album"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->mAlbumIdx:I

    .line 1159
    const-string v0, "artist"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->mArtistIdx:I

    .line 1160
    const-string v0, "numsongs"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->mNumSongsIdx:I

    .line 1162
    const-string v0, "album_art"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->mAlbumArtIndex:I

    .line 1164
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->mIndexer:Lcom/htc/music/widget/MusicAlphabetIndexer;

    if-eqz v0, :cond_1

    .line 1165
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->mIndexer:Lcom/htc/music/widget/MusicAlphabetIndexer;

    invoke-virtual {v0, p1}, Lcom/htc/music/widget/MusicAlphabetIndexer;->setCursor(Landroid/database/Cursor;)V

    .line 1170
    :cond_0
    :goto_0
    return-void

    .line 1167
    :cond_1
    new-instance v0, Lcom/htc/music/widget/MusicAlphabetIndexer;

    iget v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->mAlbumIdx:I

    const-string v2, " ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-direct {v0, p1, v1, v2}, Lcom/htc/music/widget/MusicAlphabetIndexer;-><init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->mIndexer:Lcom/htc/music/widget/MusicAlphabetIndexer;

    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 16
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 1195
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;

    .line 1197
    .local v15, vh:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->mAlbumIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1198
    .local v13, name:Ljava/lang/String;
    move-object v9, v13

    .line 1199
    .local v9, displayname:Ljava/lang/String;
    if-eqz v13, :cond_0

    const-string v1, "<unknown>"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    const/4 v14, 0x1

    .line 1200
    .local v14, unknown:Z
    :goto_0
    if-eqz v14, :cond_1

    .line 1201
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->mUnknownAlbum:Ljava/lang/String;

    .line 1203
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->mActivity:Lcom/htc/music/browserlayer/AlbumBrowserActivity;

    iget-object v1, v1, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mLowerSearchFilter:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 1204
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->mActivity:Lcom/htc/music/browserlayer/AlbumBrowserActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->mActivity:Lcom/htc/music/browserlayer/AlbumBrowserActivity;

    iget-object v4, v4, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mLowerSearchFilter:Ljava/lang/String;

    #calls: Lcom/htc/music/browserlayer/AlbumBrowserActivity;->getMarkedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    invoke-static {v1, v9, v4}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->access$1500(Lcom/htc/music/browserlayer/AlbumBrowserActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v12

    .line 1206
    .local v12, markedString:Ljava/lang/CharSequence;
    iget-object v1, v15, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->line1:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v1, v12}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/CharSequence;)V

    .line 1217
    .end local v12           #markedString:Ljava/lang/CharSequence;
    :goto_1
    iget-object v11, v15, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->icon:Lcom/htc/widget/HtcListItemTileImage;

    .line 1220
    .local v11, iv:Lcom/htc/widget/HtcListItemTileImage;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->mAlbumArtIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1221
    .local v3, art:Ljava/lang/String;
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1222
    .local v2, artIndex:I
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v11, v1}, Lcom/htc/widget/HtcListItemTileImage;->setTag(Ljava/lang/Object;)V

    .line 1223
    if-nez v14, :cond_2

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_5

    .line 1225
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v11, v1}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1238
    :goto_2
    return-void

    .line 1199
    .end local v2           #artIndex:I
    .end local v3           #art:Ljava/lang/String;
    .end local v11           #iv:Lcom/htc/widget/HtcListItemTileImage;
    .end local v14           #unknown:Z
    :cond_3
    const/4 v14, 0x0

    goto :goto_0

    .line 1208
    .restart local v14       #unknown:Z
    :cond_4
    iget-object v1, v15, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->line1:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v1, v9}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    goto :goto_1

    .line 1227
    .restart local v2       #artIndex:I
    .restart local v3       #art:Ljava/lang/String;
    .restart local v11       #iv:Lcom/htc/widget/HtcListItemTileImage;
    :cond_5
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    invoke-virtual {v1, v2}, Lcom/htc/music/util/MemoryCacheMBitmapByTime;->pull(I)Lcom/htc/music/util/MBitmap;

    move-result-object v10

    .line 1228
    .local v10, item:Lcom/htc/music/util/MBitmap;
    if-nez v10, :cond_7

    const/4 v7, 0x0

    .line 1229
    .local v7, bitmap:Landroid/graphics/Bitmap;
    :goto_3
    if-nez v10, :cond_8

    const/4 v8, 0x0

    .line 1230
    .local v8, decodePath:Ljava/lang/String;
    :goto_4
    if-eqz v7, :cond_6

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {v8, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 1231
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v6, v4

    move v4, v2

    invoke-virtual/range {v1 .. v6}, Lcom/htc/music/util/AsyncImageDecoder;->add(ILjava/lang/String;II[Ljava/lang/Object;)V

    .line 1233
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v11, v1}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 1228
    .end local v7           #bitmap:Landroid/graphics/Bitmap;
    .end local v8           #decodePath:Ljava/lang/String;
    :cond_7
    invoke-virtual {v10}, Lcom/htc/music/util/MBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    goto :goto_3

    .line 1229
    .restart local v7       #bitmap:Landroid/graphics/Bitmap;
    :cond_8
    invoke-virtual {v10}, Lcom/htc/music/util/MBitmap;->getPath()Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    .line 1235
    .restart local v8       #decodePath:Ljava/lang/String;
    :cond_9
    invoke-virtual {v11, v7}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 1242
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->mActivity:Lcom/htc/music/browserlayer/AlbumBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->access$1600(Lcom/htc/music/browserlayer/AlbumBrowserActivity;)Landroid/database/Cursor;

    move-result-object v0

    if-eq p1, v0, :cond_2

    .line 1243
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->mActivity:Lcom/htc/music/browserlayer/AlbumBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->access$1600(Lcom/htc/music/browserlayer/AlbumBrowserActivity;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1244
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->mActivity:Lcom/htc/music/browserlayer/AlbumBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->access$1600(Lcom/htc/music/browserlayer/AlbumBrowserActivity;)Landroid/database/Cursor;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 1245
    :cond_0
    if-eqz p1, :cond_1

    .line 1246
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 1248
    :cond_1
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->mActivity:Lcom/htc/music/browserlayer/AlbumBrowserActivity;

    #setter for: Lcom/htc/music/browserlayer/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;
    invoke-static {v0, p1}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->access$1602(Lcom/htc/music/browserlayer/AlbumBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 1249
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->mActivity:Lcom/htc/music/browserlayer/AlbumBrowserActivity;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->updateOptionsMenu()V

    .line 1250
    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 1251
    invoke-super {p0, p1}, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1253
    :cond_2
    return-void
.end method

.method public getPositionForSection(I)I
    .locals 1
    .parameter "section"

    .prologue
    .line 1274
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->mIndexer:Lcom/htc/music/widget/MusicAlphabetIndexer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1275
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->mIndexer:Lcom/htc/music/widget/MusicAlphabetIndexer;

    invoke-virtual {v0, p1}, Lcom/htc/music/widget/MusicAlphabetIndexer;->getPositionForSection(I)I

    move-result v0

    goto :goto_0
.end method

.method public getQueryHandler()Lcom/htc/music/util/DlArtAsyncQueryHandler;
    .locals 1

    .prologue
    .line 1177
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->mQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    return-object v0
.end method

.method public getSectionForPosition(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 1279
    const/4 v0, 0x0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1269
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->mIndexer:Lcom/htc/music/widget/MusicAlphabetIndexer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1270
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->mIndexer:Lcom/htc/music/widget/MusicAlphabetIndexer;

    invoke-virtual {v0}, Lcom/htc/music/widget/MusicAlphabetIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 1182
    invoke-super {p0, p1, p2, p3}, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1183
    .local v0, v:Landroid/view/View;
    new-instance v1, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;-><init>(Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;)V

    .line 1184
    .local v1, vh:Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;
    const v2, 0x7f080024

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v2, v1, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->line1:Lcom/htc/widget/HtcListItem2LineText;

    .line 1185
    iget-object v2, v1, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->line1:Lcom/htc/widget/HtcListItem2LineText;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 1186
    const v2, 0x7f080023

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItemTileImage;

    iput-object v2, v1, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->icon:Lcom/htc/widget/HtcListItemTileImage;

    .line 1187
    iget-object v2, v1, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->icon:Lcom/htc/widget/HtcListItemTileImage;

    iget-object v3, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1188
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1189
    return-object v0
.end method

.method public varargs onImageDecoded(ILandroid/graphics/Bitmap;J[Ljava/lang/Object;)V
    .locals 14
    .parameter "position"
    .parameter "bitmap"
    .parameter "timeStamp"
    .parameter "varargs"

    .prologue
    .line 1307
    if-nez p2, :cond_1

    .line 1308
    const-string v11, "[AlbumBrowserActivity]"

    const-string v12, "onImageDecoded: bitmap is null"

    invoke-static {v11, v12}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1338
    :cond_0
    :goto_0
    return-void

    .line 1311
    :cond_1
    const-string v11, "[AlbumBrowserActivity]"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onImageDecoded: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1312
    iget-object v11, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->mActivity:Lcom/htc/music/browserlayer/AlbumBrowserActivity;

    invoke-virtual {v11}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v8

    .line 1313
    .local v8, listView:Lcom/htc/widget/HtcListView;
    invoke-virtual {v8}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v5

    .line 1314
    .local v5, childCount:I
    if-gtz v5, :cond_2

    .line 1315
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 1318
    :cond_2
    const/4 v9, 0x0

    .line 1319
    .local v9, path:Ljava/lang/String;
    if-eqz p5, :cond_3

    move-object/from16 v0, p5

    array-length v11, v0

    if-lez v11, :cond_3

    const/4 v11, 0x0

    aget-object v11, p5, v11

    if-eqz v11, :cond_3

    const/4 v11, 0x0

    aget-object v11, p5, v11

    instance-of v11, v11, Ljava/lang/String;

    if-eqz v11, :cond_3

    .line 1320
    const/4 v11, 0x0

    aget-object v9, p5, v11

    .end local v9           #path:Ljava/lang/String;
    check-cast v9, Ljava/lang/String;

    .line 1322
    .restart local v9       #path:Ljava/lang/String;
    :cond_3
    new-instance v4, Lcom/htc/music/util/MBitmap;

    move-object/from16 v0, p2

    invoke-direct {v4, v0, v9}, Lcom/htc/music/util/MBitmap;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 1323
    .local v4, b:Lcom/htc/music/util/MBitmap;
    sget-object v11, Lcom/htc/music/util/MusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    move-wide/from16 v0, p3

    invoke-virtual {v11, p1, v4, v0, v1}, Lcom/htc/music/util/MemoryCacheMBitmapByTime;->push(ILcom/htc/music/util/MBitmap;J)Z

    move-result v2

    .line 1324
    .local v2, addToCache:Z
    if-eqz v2, :cond_0

    .line 1325
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    if-ge v6, v5, :cond_0

    .line 1326
    invoke-virtual {v8, v6}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    .line 1327
    .local v10, viewGroup:Landroid/view/ViewGroup;
    if-eqz v10, :cond_4

    .line 1328
    const v11, 0x7f080023

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListItemTileImage;

    .line 1329
    .local v3, albumArt:Lcom/htc/widget/HtcListItemTileImage;
    if-eqz v3, :cond_4

    .line 1330
    invoke-virtual {v3}, Lcom/htc/widget/HtcListItemTileImage;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 1331
    .local v7, integer:Ljava/lang/Integer;
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ne v11, p1, :cond_4

    .line 1332
    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1325
    .end local v3           #albumArt:Lcom/htc/widget/HtcListItemTileImage;
    .end local v7           #integer:Ljava/lang/Integer;
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 4
    .parameter "constraint"

    .prologue
    .line 1257
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1258
    .local v1, s:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->mConstraintIsValid:Z

    if-eqz v2, :cond_2

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->mConstraint:Ljava/lang/String;

    if-eqz v2, :cond_1

    :cond_0
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->mConstraint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1260
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1265
    :goto_0
    return-object v0

    .line 1262
    :cond_2
    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->mActivity:Lcom/htc/music/browserlayer/AlbumBrowserActivity;

    const/4 v3, 0x0

    #calls: Lcom/htc/music/browserlayer/AlbumBrowserActivity;->getAlbumCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    invoke-static {v2, v3, v1}, Lcom/htc/music/browserlayer/AlbumBrowserActivity;->access$600(Lcom/htc/music/browserlayer/AlbumBrowserActivity;Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1263
    .local v0, c:Landroid/database/Cursor;
    iput-object v1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->mConstraint:Ljava/lang/String;

    .line 1264
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->mConstraintIsValid:Z

    goto :goto_0
.end method

.method public setActivity(Lcom/htc/music/browserlayer/AlbumBrowserActivity;)V
    .locals 0
    .parameter "newactivity"

    .prologue
    .line 1173
    iput-object p1, p0, Lcom/htc/music/browserlayer/AlbumBrowserActivity$AlbumListAdapter;->mActivity:Lcom/htc/music/browserlayer/AlbumBrowserActivity;

    .line 1174
    return-void
.end method
