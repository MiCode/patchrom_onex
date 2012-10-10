.class Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;
.super Lcom/htc/music/widget/HtcSimpleCursorAdapter;
.source "TrackBrowserActivity.java"

# interfaces
.implements Landroid/widget/SectionIndexer;
.implements Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/TrackBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TrackListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$MyDataSetObserver;,
        Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$QueryHandler;,
        Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

.field private mAlbumArtIndex:I

.field mAlbumIdIdx:I

.field mAlbumIdx:I

.field mArtistIdx:I

.field mAudioIdIdx:I

.field private final mBuilder:Ljava/lang/StringBuilder;

.field private mConstraint:Ljava/lang/String;

.field private mConstraintIsValid:Z

.field protected mDataSetObserver:Landroid/database/DataSetObserver;

.field private mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

.field private final mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

.field mDisableNowPlayingIndicator:Z

.field private mDlnaMode:I

.field private mDrmLockIconResId:I

.field private mIndexer:Lcom/htc/music/widget/MusicAlphabetIndexer;

.field mIsNowPlaying:Z

.field private mQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

.field mTitleIdx:I

.field private final mUnknownAlbum:Ljava/lang/String;

.field private final mUnknownArtist:Ljava/lang/String;

.field private mcurContent:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/htc/music/browserlayer/TrackBrowserActivity;ILandroid/database/Cursor;[Ljava/lang/String;[IZZ)V
    .locals 9
    .parameter "context"
    .parameter "currentactivity"
    .parameter "layout"
    .parameter "cursor"
    .parameter "from"
    .parameter "to"
    .parameter "isnowplaying"
    .parameter "disablenowplayingindicator"

    .prologue
    .line 4305
    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/htc/music/widget/HtcSimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 4234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mBuilder:Ljava/lang/StringBuilder;

    .line 4242
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    .line 4248
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mConstraint:Ljava/lang/String;

    .line 4250
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mConstraintIsValid:Z

    .line 4254
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mcurContent:I

    .line 4258
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    .line 4776
    new-instance v1, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$MyDataSetObserver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$MyDataSetObserver;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;Lcom/htc/music/browserlayer/TrackBrowserActivity$1;)V

    iput-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 4306
    iput-object p2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    .line 4307
    invoke-direct {p0, p4}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 4308
    move/from16 v0, p7

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mIsNowPlaying:Z

    .line 4309
    move/from16 v0, p8

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDisableNowPlayingIndicator:Z

    .line 4310
    const v1, 0x7f07004d

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mUnknownArtist:Ljava/lang/String;

    .line 4311
    const v1, 0x7f07004e

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mUnknownAlbum:Ljava/lang/String;

    .line 4313
    new-instance v1, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$QueryHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$QueryHandler;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    .line 4316
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020052

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 4318
    .local v8, b:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 4319
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setFilterBitmap(Z)V

    .line 4320
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setDither(Z)V

    .line 4323
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v4

    .line 4325
    .local v4, height:I
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    invoke-static {v1}, Lcom/htc/music/util/MusicUtils;->CheckDLNAStatus(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDlnaMode:I

    .line 4327
    if-eqz p4, :cond_0

    .line 4328
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p4, v1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 4329
    :cond_0
    new-instance v1, Lcom/htc/music/util/AsyncImageDecoder;

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p0

    move v5, v4

    invoke-direct/range {v1 .. v7}, Lcom/htc/music/util/AsyncImageDecoder;-><init>(Landroid/content/Context;Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;IIZZ)V

    iput-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    .line 4331
    const v1, 0x7f020055

    iput v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDrmLockIconResId:I

    .line 4333
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z
    invoke-static {v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$1000(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mIsNowPlaying:Z

    if-eqz v1, :cond_1

    .line 4334
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    #setter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMap:Ljava/util/HashMap;
    invoke-static {v1, v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$1502(Lcom/htc/music/browserlayer/TrackBrowserActivity;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 4336
    :cond_1
    return-void
.end method

.method static synthetic access$002(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4217
    iput p1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDlnaMode:I

    return p1
.end method

.method static synthetic access$3800(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;)Lcom/htc/music/browserlayer/TrackBrowserActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4217
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 4217
    iget v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mcurContent:I

    return v0
.end method

.method static synthetic access$402(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4217
    iput p1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mcurContent:I

    return p1
.end method

.method static synthetic access$800(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4217
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    return-object v0
.end method

.method private getColumnIndices(Landroid/database/Cursor;)V
    .locals 3
    .parameter "cursor"

    .prologue
    .line 4349
    if-eqz p1, :cond_0

    .line 4350
    const-string v0, "title"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mTitleIdx:I

    .line 4351
    const-string v0, "artist"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mArtistIdx:I

    .line 4352
    const-string v0, "album"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mAlbumIdx:I

    .line 4353
    const-string v0, "album_art"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mAlbumArtIndex:I

    .line 4355
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$1700(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mRecentPlayedPlaylist:Z
    invoke-static {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$4000(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4356
    const-string v0, "audio_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mAudioIdIdx:I

    .line 4362
    :goto_0
    const-string v0, "album_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mAlbumIdIdx:I

    .line 4364
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mIndexer:Lcom/htc/music/widget/MusicAlphabetIndexer;

    if-eqz v0, :cond_2

    .line 4365
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mIndexer:Lcom/htc/music/widget/MusicAlphabetIndexer;

    invoke-virtual {v0, p1}, Lcom/htc/music/widget/MusicAlphabetIndexer;->setCursor(Landroid/database/Cursor;)V

    .line 4370
    :cond_0
    :goto_1
    return-void

    .line 4359
    :cond_1
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mAudioIdIdx:I

    goto :goto_0

    .line 4366
    :cond_2
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z
    invoke-static {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$1000(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    iget-boolean v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsNowPlayinglist:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSelectedPlaylistId:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$1700(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4367
    new-instance v0, Lcom/htc/music/widget/MusicAlphabetIndexer;

    iget v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mTitleIdx:I

    const-string v2, " ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-direct {v0, p1, v1, v2}, Lcom/htc/music/widget/MusicAlphabetIndexer;-><init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mIndexer:Lcom/htc/music/widget/MusicAlphabetIndexer;

    goto :goto_1
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 36
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 4463
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;

    .line 4465
    .local v33, vh:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mTitleIdx:I

    move-object/from16 v0, v33

    iget-object v5, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    move-object/from16 v0, p3

    invoke-interface {v0, v2, v5}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 4466
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    iget-object v2, v2, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mLowerSearchFilter:Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 4467
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    new-instance v5, Ljava/lang/String;

    move-object/from16 v0, v33

    iget-object v6, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    iget-object v6, v6, Landroid/database/CharArrayBuffer;->data:[C

    const/4 v7, 0x0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/database/CharArrayBuffer;->sizeCopied:I

    move/from16 v34, v0

    move/from16 v0, v34

    invoke-direct {v5, v6, v7, v0}, Ljava/lang/String;-><init>([CII)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    iget-object v6, v6, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mLowerSearchFilter:Ljava/lang/String;

    #calls: Lcom/htc/music/browserlayer/TrackBrowserActivity;->getMarkedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    invoke-static {v2, v5, v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$4200(Lcom/htc/music/browserlayer/TrackBrowserActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v23

    .line 4469
    .local v23, markedString:Ljava/lang/CharSequence;
    move-object/from16 v0, v33

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/CharSequence;)V

    .line 4475
    .end local v23           #markedString:Ljava/lang/CharSequence;
    :goto_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mBuilder:Ljava/lang/StringBuilder;

    .line 4476
    .local v11, builder:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v11, v2, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 4478
    move-object/from16 v0, v33

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v2}, Lcom/htc/widget/HtcListItem2LineText;->getSecondaryTextVisibility()I

    move-result v2

    if-nez v2, :cond_3

    .line 4479
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mAlbumIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 4480
    .local v25, name:Ljava/lang/String;
    if-eqz v25, :cond_0

    const-string v2, "<unknown>"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 4481
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mUnknownAlbum:Ljava/lang/String;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4486
    :goto_1
    const-string v2, " - "

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4488
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mArtistIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 4489
    if-eqz v25, :cond_1

    const-string v2, "<unknown>"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 4490
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mUnknownArtist:Ljava/lang/String;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4494
    :goto_2
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v20

    .line 4495
    .local v20, len:I
    move-object/from16 v0, v33

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->buffer2:[C

    array-length v2, v2

    move/from16 v0, v20

    if-ge v2, v0, :cond_2

    .line 4496
    move/from16 v0, v20

    new-array v2, v0, [C

    move-object/from16 v0, v33

    iput-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->buffer2:[C

    .line 4498
    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, v33

    iget-object v5, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->buffer2:[C

    const/4 v6, 0x0

    move/from16 v0, v20

    invoke-virtual {v11, v2, v0, v5, v6}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    .line 4499
    move-object/from16 v0, v33

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->buffer2:[C

    const/4 v5, 0x0

    move/from16 v0, v20

    invoke-static {v2, v5, v0}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v22

    .line 4500
    .local v22, line2:Ljava/lang/String;
    move-object/from16 v0, v33

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    .line 4503
    .end local v20           #len:I
    .end local v22           #line2:Ljava/lang/String;
    .end local v25           #name:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemRearIcon:Lcom/htc/widget/HtcListItemImageButton;

    move-object/from16 v17, v0

    .line 4504
    .local v17, indicator:Lcom/htc/widget/HtcListItemImageButton;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->isEditMode()Z

    move-result v2

    if-nez v2, :cond_7

    if-eqz v17, :cond_7

    .line 4506
    const/16 v16, -0x1

    .line 4507
    .local v16, id:I
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v2, :cond_4

    .line 4510
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mIsNowPlaying:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_13

    .line 4512
    :try_start_1
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->getCurrentShuffleMode()I

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_12

    .line 4513
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v30

    .line 4514
    .local v30, shufflePos:I
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    move/from16 v0, v30

    invoke-interface {v2, v0}, Lcom/htc/music/IMediaPlaybackService;->getPositionByShufflePosition(I)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v16

    .line 4548
    .end local v30           #shufflePos:I
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDlnaMode:I

    if-nez v2, :cond_15

    .line 4549
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mIsNowPlaying:Z

    if-eqz v2, :cond_5

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    move/from16 v0, v16

    if-eq v2, v0, :cond_6

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mIsNowPlaying:Z

    if-nez v2, :cond_14

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDisableNowPlayingIndicator:Z

    if-nez v2, :cond_14

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mAudioIdIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move/from16 v0, v16

    if-ne v2, v0, :cond_14

    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isPluginMode()Z

    move-result v2

    if-nez v2, :cond_14

    .line 4551
    :cond_6
    const v2, 0x2080089

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListItemImageButton;->setImageResource(I)V

    .line 4552
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    .line 4571
    .end local v16           #id:I
    :cond_7
    :goto_4
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemRearIcon:Lcom/htc/widget/HtcListItemImageButton;

    move-object/from16 v29, v0

    .line 4572
    .local v29, rearIcon:Lcom/htc/widget/HtcListItemImageButton;
    if-eqz v29, :cond_8

    .line 4573
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->isEditMode()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 4574
    const/4 v2, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    .line 4592
    :cond_8
    :goto_5
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemRearCheckBox:Lcom/htc/widget/HtcCheckBox;

    move-object/from16 v28, v0

    .line 4593
    .local v28, rearCheckBox:Lcom/htc/widget/HtcCheckBox;
    if-eqz v28, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->isPickerMode()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 4594
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v2

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/htc/widget/HtcListView;->isItemChecked(I)Z

    move-result v2

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    .line 4598
    :cond_9
    move-object/from16 v0, v33

    iget-object v12, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemFrontCheckBox:Lcom/htc/widget/HtcDeleteButton;

    .line 4599
    .local v12, checkBox:Lcom/htc/widget/HtcDeleteButton;
    if-eqz v12, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->isEditMode()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 4600
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Lcom/htc/widget/HtcDeleteButton;->setVisibility(I)V

    .line 4601
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/htc/widget/HtcDeleteButton;->setTag(Ljava/lang/Object;)V

    .line 4603
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMap:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$1500(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/util/HashMap;

    move-result-object v2

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 4604
    const/4 v2, 0x1

    invoke-virtual {v12, v2}, Lcom/htc/widget/HtcDeleteButton;->setChecked(Z)V

    .line 4611
    :cond_a
    :goto_6
    move-object/from16 v0, v33

    iget-object v8, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    .line 4612
    .local v8, albumArt:Lcom/htc/widget/HtcListItemTileImage;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mAlbumIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 4615
    .restart local v25       #name:Ljava/lang/String;
    const-string v2, "mime_type"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 4618
    .local v24, minetype:Ljava/lang/String;
    if-eqz v25, :cond_b

    const-string v2, "<unknown>"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    :cond_b
    const/16 v32, 0x1

    .line 4619
    .local v32, unknown:Z
    :goto_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mAlbumArtIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 4620
    .local v4, art:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mAlbumIdIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 4621
    .local v3, artIndex:I
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v8, v2}, Lcom/htc/widget/HtcListItemTileImage;->setTag(Ljava/lang/Object;)V

    .line 4622
    if-nez v32, :cond_c

    if-eqz v4, :cond_c

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1a

    .line 4624
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v8, v2}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4641
    :goto_8
    const-string v2, "_data"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 4642
    .local v26, path:Ljava/lang/String;
    if-eqz v26, :cond_1f

    const-string v2, "content://drm/"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 4643
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDrmLockIconResId:I

    invoke-virtual {v8, v2}, Lcom/htc/widget/HtcListItemTileImage;->setIndicatorResource(I)V

    .line 4644
    invoke-virtual {v8}, Lcom/htc/widget/HtcListItemTileImage;->getChildCount()I

    move-result v2

    const/4 v5, 0x1

    if-le v2, v5, :cond_d

    .line 4645
    invoke-virtual {v8}, Lcom/htc/widget/HtcListItemTileImage;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v8, v2}, Lcom/htc/widget/HtcListItemTileImage;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    .line 4646
    .local v18, indicatorBubble:Landroid/view/View;
    move-object/from16 v0, v18

    instance-of v2, v0, Landroid/widget/ImageView;

    if-eqz v2, :cond_d

    .line 4647
    check-cast v18, Landroid/widget/ImageView;

    .end local v18           #indicatorBubble:Landroid/view/View;
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 4697
    :cond_d
    :goto_9
    move-object/from16 v0, v33

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

    if-eqz v2, :cond_e

    move-object/from16 v0, v33

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

    invoke-virtual {v2}, Lcom/htc/widget/HtcRimImageButton;->getVisibility()I

    move-result v2

    if-nez v2, :cond_e

    .line 4698
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mAudioIdIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 4699
    .local v9, audioId:I
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v27

    .line 4701
    .local v27, position:I
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 4702
    .local v13, data:Landroid/os/Bundle;
    const-string v2, "audioid"

    invoke-virtual {v13, v2, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4703
    const-string v2, "position"

    move/from16 v0, v27

    invoke-virtual {v13, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4704
    move-object/from16 v0, v33

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

    invoke-virtual {v2, v13}, Lcom/htc/widget/HtcRimImageButton;->setTag(Ljava/lang/Object;)V

    .line 4705
    new-instance v2, Landroid/view/TouchDelegate;

    new-instance v5, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mScreenWidth:I
    invoke-static {v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$4300(Lcom/htc/music/browserlayer/TrackBrowserActivity;)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    const v34, 0x7f0b009c

    move/from16 v0, v34

    invoke-static {v7, v0}, Lcom/htc/music/util/ProjectSettings;->getIntValue(Landroid/content/Context;I)I

    move-result v7

    sub-int/2addr v6, v7

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    move-object/from16 v34, v0

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mScreenWidth:I
    invoke-static/range {v34 .. v34}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$4300(Lcom/htc/music/browserlayer/TrackBrowserActivity;)I

    move-result v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    move-object/from16 v35, v0

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mScreenHeight:I
    invoke-static/range {v35 .. v35}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$4400(Lcom/htc/music/browserlayer/TrackBrowserActivity;)I

    move-result v35

    move/from16 v0, v34

    move/from16 v1, v35

    invoke-direct {v5, v6, v7, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v33

    iget-object v6, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

    invoke-direct {v2, v5, v6}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 4714
    .end local v9           #audioId:I
    .end local v13           #data:Landroid/os/Bundle;
    .end local v27           #position:I
    :cond_e
    return-void

    .line 4471
    .end local v3           #artIndex:I
    .end local v4           #art:Ljava/lang/String;
    .end local v8           #albumArt:Lcom/htc/widget/HtcListItemTileImage;
    .end local v11           #builder:Ljava/lang/StringBuilder;
    .end local v12           #checkBox:Lcom/htc/widget/HtcDeleteButton;
    .end local v17           #indicator:Lcom/htc/widget/HtcListItemImageButton;
    .end local v24           #minetype:Ljava/lang/String;
    .end local v25           #name:Ljava/lang/String;
    .end local v26           #path:Ljava/lang/String;
    .end local v28           #rearCheckBox:Lcom/htc/widget/HtcCheckBox;
    .end local v29           #rearIcon:Lcom/htc/widget/HtcListItemImageButton;
    .end local v32           #unknown:Z
    :cond_f
    move-object/from16 v0, v33

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    iget-object v2, v2, Landroid/database/CharArrayBuffer;->data:[C

    const/4 v5, 0x0

    move-object/from16 v0, v33

    iget-object v6, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    iget v6, v6, Landroid/database/CharArrayBuffer;->sizeCopied:I

    invoke-static {v2, v5, v6}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v21

    .line 4472
    .local v21, line1:Ljava/lang/String;
    move-object/from16 v0, v33

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4483
    .end local v21           #line1:Ljava/lang/String;
    .restart local v11       #builder:Ljava/lang/StringBuilder;
    .restart local v25       #name:Ljava/lang/String;
    :cond_10
    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 4492
    :cond_11
    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 4516
    .end local v25           #name:Ljava/lang/String;
    .restart local v16       #id:I
    .restart local v17       #indicator:Lcom/htc/widget/HtcListItemImageButton;
    :cond_12
    :try_start_2
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v16

    goto/16 :goto_3

    .line 4518
    :catch_0
    move-exception v15

    .line 4519
    .local v15, e:Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v15}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_3

    .line 4524
    .end local v15           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    goto/16 :goto_3

    .line 4522
    :cond_13
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v2}, Lcom/htc/music/IMediaPlaybackService;->getAudioId()I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    move-result v16

    goto/16 :goto_3

    .line 4555
    :cond_14
    const/16 v2, 0x8

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    goto/16 :goto_4

    .line 4558
    :cond_15
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDlnaMode:I

    const/4 v5, 0x3

    if-ne v2, v5, :cond_7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mcurContent:I

    if-ltz v2, :cond_7

    .line 4559
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mAudioIdIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v31

    .line 4560
    .local v31, test:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mcurContent:I

    move/from16 v0, v31

    if-ne v2, v0, :cond_16

    .line 4561
    const v2, 0x2080089

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListItemImageButton;->setImageResource(I)V

    .line 4562
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    goto/16 :goto_4

    .line 4565
    :cond_16
    const/16 v2, 0x8

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    goto/16 :goto_4

    .line 4580
    .end local v16           #id:I
    .end local v31           #test:I
    .restart local v29       #rearIcon:Lcom/htc/widget/HtcListItemImageButton;
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getPickerMode()J

    move-result-wide v5

    const-wide/16 v34, 0x0

    cmp-long v2, v5, v34

    if-eqz v2, :cond_8

    .line 4582
    const/16 v2, 0x8

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    goto/16 :goto_5

    .line 4607
    .restart local v12       #checkBox:Lcom/htc/widget/HtcDeleteButton;
    .restart local v28       #rearCheckBox:Lcom/htc/widget/HtcCheckBox;
    :cond_18
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Lcom/htc/widget/HtcDeleteButton;->setChecked(Z)V

    goto/16 :goto_6

    .line 4618
    .restart local v8       #albumArt:Lcom/htc/widget/HtcListItemTileImage;
    .restart local v24       #minetype:Ljava/lang/String;
    .restart local v25       #name:Ljava/lang/String;
    :cond_19
    const/16 v32, 0x0

    goto/16 :goto_7

    .line 4626
    .restart local v3       #artIndex:I
    .restart local v4       #art:Ljava/lang/String;
    .restart local v32       #unknown:Z
    :cond_1a
    sget-object v2, Lcom/htc/music/util/MusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    invoke-virtual {v2, v3}, Lcom/htc/music/util/MemoryCacheMBitmapByTime;->pull(I)Lcom/htc/music/util/MBitmap;

    move-result-object v19

    .line 4627
    .local v19, item:Lcom/htc/music/util/MBitmap;
    if-nez v19, :cond_1c

    const/4 v10, 0x0

    .line 4628
    .local v10, bitmap:Landroid/graphics/Bitmap;
    :goto_a
    if-nez v19, :cond_1d

    const/4 v14, 0x0

    .line 4629
    .local v14, decodePath:Ljava/lang/String;
    :goto_b
    if-eqz v10, :cond_1b

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_1b

    if-eqz v10, :cond_1e

    invoke-static {v14, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 4630
    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v6

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v7, v5

    move v5, v3

    invoke-virtual/range {v2 .. v7}, Lcom/htc/music/util/AsyncImageDecoder;->add(ILjava/lang/String;II[Ljava/lang/Object;)V

    .line 4632
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v8, v2}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_8

    .line 4627
    .end local v10           #bitmap:Landroid/graphics/Bitmap;
    .end local v14           #decodePath:Ljava/lang/String;
    :cond_1c
    invoke-virtual/range {v19 .. v19}, Lcom/htc/music/util/MBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v10

    goto :goto_a

    .line 4628
    .restart local v10       #bitmap:Landroid/graphics/Bitmap;
    :cond_1d
    invoke-virtual/range {v19 .. v19}, Lcom/htc/music/util/MBitmap;->getPath()Ljava/lang/String;

    move-result-object v14

    goto :goto_b

    .line 4634
    .restart local v14       #decodePath:Ljava/lang/String;
    :cond_1e
    invoke-virtual {v8, v10}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_8

    .line 4652
    .end local v10           #bitmap:Landroid/graphics/Bitmap;
    .end local v14           #decodePath:Ljava/lang/String;
    .end local v19           #item:Lcom/htc/music/util/MBitmap;
    .restart local v26       #path:Ljava/lang/String;
    :cond_1f
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isWMDRMSupported()Z

    move-result v2

    if-eqz v2, :cond_20

    if-eqz v24, :cond_20

    const-string v2, "audio/x-wma-drm"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 4653
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDrmLockIconResId:I

    invoke-virtual {v8, v2}, Lcom/htc/widget/HtcListItemTileImage;->setIndicatorResource(I)V

    .line 4654
    invoke-virtual {v8}, Lcom/htc/widget/HtcListItemTileImage;->getChildCount()I

    move-result v2

    const/4 v5, 0x1

    if-le v2, v5, :cond_d

    .line 4655
    invoke-virtual {v8}, Lcom/htc/widget/HtcListItemTileImage;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v8, v2}, Lcom/htc/widget/HtcListItemTileImage;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    .line 4656
    .restart local v18       #indicatorBubble:Landroid/view/View;
    move-object/from16 v0, v18

    instance-of v2, v0, Landroid/widget/ImageView;

    if-eqz v2, :cond_d

    .line 4657
    check-cast v18, Landroid/widget/ImageView;

    .end local v18           #indicatorBubble:Landroid/view/View;
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto/16 :goto_9

    .line 4663
    :cond_20
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Lcom/htc/widget/HtcListItemTileImage;->setIndicatorBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_9
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 4718
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$1400(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Landroid/database/Cursor;

    move-result-object v0

    if-eq p1, v0, :cond_3

    .line 4719
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$1400(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4720
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$1400(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Landroid/database/Cursor;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 4722
    :cond_0
    if-eqz p1, :cond_1

    .line 4723
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 4726
    :cond_1
    if-eqz p1, :cond_2

    .line 4729
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #calls: Lcom/htc/music/browserlayer/TrackBrowserActivity;->setTitle()V
    invoke-static {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$4500(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V

    .line 4731
    :cond_2
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #setter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v0, p1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$1402(Lcom/htc/music/browserlayer/TrackBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 4732
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->updateOptionsMenu()V

    .line 4733
    invoke-super {p0, p1}, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 4734
    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 4736
    :cond_3
    return-void
.end method

.method public getPositionForSection(I)I
    .locals 4
    .parameter "section"

    .prologue
    const/4 v1, 0x0

    .line 4763
    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mIndexer:Lcom/htc/music/widget/MusicAlphabetIndexer;

    if-nez v2, :cond_1

    move v0, v1

    .line 4769
    :cond_0
    :goto_0
    return v0

    .line 4764
    :cond_1
    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mIndexer:Lcom/htc/music/widget/MusicAlphabetIndexer;

    invoke-virtual {v2, p1}, Lcom/htc/music/widget/MusicAlphabetIndexer;->getPositionForSection(I)I

    move-result v0

    .line 4766
    .local v0, pos:I
    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSortOrder:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$4600(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "track"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 4769
    goto :goto_0
.end method

.method public getQueryHandler()Lcom/htc/music/util/DlArtAsyncQueryHandler;
    .locals 1

    .prologue
    .line 4345
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    return-object v0
.end method

.method public getSectionForPosition(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 4773
    const/4 v0, 0x0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 4754
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mIndexer:Lcom/htc/music/widget/MusicAlphabetIndexer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mSortOrder:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$4600(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "track"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4756
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mIndexer:Lcom/htc/music/widget/MusicAlphabetIndexer;

    invoke-virtual {v0}, Lcom/htc/music/widget/MusicAlphabetIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    .line 4758
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    const/16 v5, 0x8

    const/4 v8, 0x0

    .line 4374
    invoke-super {p0, p1, p2, p3}, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 4375
    .local v1, v:Landroid/view/View;
    const v3, 0x7f080062

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 4382
    .local v0, iv:Landroid/widget/ImageView;
    new-instance v2, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;

    invoke-direct {v2, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;)V

    .line 4383
    .local v2, vh:Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;
    const v3, 0x7f080024

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v3, v2, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    .line 4384
    const v3, 0x7f080064

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcDeleteButton;

    iput-object v3, v2, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemFrontCheckBox:Lcom/htc/widget/HtcDeleteButton;

    .line 4385
    iget-object v3, v2, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemFrontCheckBox:Lcom/htc/widget/HtcDeleteButton;

    if-eqz v3, :cond_0

    .line 4386
    iget-object v3, v2, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemFrontCheckBox:Lcom/htc/widget/HtcDeleteButton;

    new-instance v4, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$1;

    invoke-direct {v4, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$1;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;)V

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcDeleteButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4403
    :cond_0
    const v3, 0x7f080027

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcCheckBox;

    iput-object v3, v2, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemRearCheckBox:Lcom/htc/widget/HtcCheckBox;

    .line 4404
    iget-object v3, v2, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemRearCheckBox:Lcom/htc/widget/HtcCheckBox;

    if-eqz v3, :cond_1

    .line 4405
    iget-object v3, v2, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemRearCheckBox:Lcom/htc/widget/HtcCheckBox;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    invoke-virtual {v3}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->isPickerMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4406
    iget-object v3, v2, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemRearCheckBox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v3, v8}, Lcom/htc/widget/HtcCheckBox;->setFocusable(Z)V

    .line 4407
    iget-object v3, v2, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemRearCheckBox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v3, v8}, Lcom/htc/widget/HtcCheckBox;->setClickable(Z)V

    .line 4408
    iget-object v3, v2, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemRearCheckBox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v3, v8}, Lcom/htc/widget/HtcCheckBox;->setVisibility(I)V

    .line 4411
    :cond_1
    iget-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z
    invoke-static {v3}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$1000(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    invoke-virtual {v3}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->isPickerMode()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 4412
    :cond_2
    iget-object v3, v2, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 4418
    :goto_0
    const v3, 0x7f080023

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListItemTileImage;

    iput-object v3, v2, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    .line 4420
    iget-object v3, v2, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    if-eqz v3, :cond_3

    .line 4421
    iget-object v3, v2, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    iget-object v4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4424
    :cond_3
    const v3, 0x7f080025

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListItemImageButton;

    iput-object v3, v2, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemRearIcon:Lcom/htc/widget/HtcListItemImageButton;

    .line 4425
    const v3, 0x7f080026

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcRimImageButton;

    iput-object v3, v2, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

    .line 4426
    iget-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mEditMode:Z
    invoke-static {v3}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$1000(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    invoke-virtual {v3}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->isPickerMode()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 4427
    :cond_4
    iget-object v3, v2, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

    if-eqz v3, :cond_5

    .line 4428
    iget-object v3, v2, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcRimImageButton;->setVisibility(I)V

    .line 4453
    :cond_5
    :goto_1
    new-instance v3, Landroid/database/CharArrayBuffer;

    const/16 v4, 0x64

    invoke-direct {v3, v4}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v3, v2, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    .line 4454
    const/16 v3, 0xc8

    new-array v3, v3, [C

    iput-object v3, v2, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->buffer2:[C

    .line 4456
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 4457
    return-object v1

    .line 4415
    :cond_6
    iget-object v3, v2, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v3, v8}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    goto :goto_0

    .line 4431
    :cond_7
    iget-object v3, v2, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

    const-string v4, "common_circle_outer"

    const v5, 0x208001f

    invoke-static {p1, v4, v5}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    const-string v5, "common_circle_pressed"

    const v6, 0x2080020

    invoke-static {p1, v5, v6}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    const-string v6, "common_circle_rest"

    const v7, 0x2080021

    invoke-static {p1, v6, v7}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/htc/widget/HtcRimImageButton;->setButtonBackgroundResource(III)V

    .line 4435
    iget-object v3, v2, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

    invoke-virtual {v3, v8}, Lcom/htc/widget/HtcRimImageButton;->setFocusable(Z)V

    .line 4436
    iget-object v3, v2, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

    const v4, 0x7f020028

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcRimImageButton;->setIconResource(I)V

    .line 4437
    iget-object v3, v2, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

    invoke-virtual {v3, v8}, Lcom/htc/widget/HtcRimImageButton;->setVisibility(I)V

    .line 4438
    iget-object v3, v2, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

    new-instance v4, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$2;

    invoke-direct {v4, p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter$2;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;)V

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcRimImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method public varargs onImageDecoded(ILandroid/graphics/Bitmap;J[Ljava/lang/Object;)V
    .locals 10
    .parameter "position"
    .parameter "bitmap"
    .parameter "timeStamp"
    .parameter "varargs"

    .prologue
    .line 4801
    if-nez p2, :cond_1

    .line 4832
    :cond_0
    :goto_0
    return-void

    .line 4802
    :cond_1
    iget-object v9, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;
    invoke-static {v9}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$2300(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Lcom/htc/widget/HtcListView;

    move-result-object v6

    .line 4803
    .local v6, listView:Lcom/htc/widget/HtcListView;
    invoke-virtual {v6}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v3

    .line 4804
    .local v3, childCount:I
    if-gtz v3, :cond_2

    .line 4805
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 4809
    :cond_2
    const/4 v8, 0x0

    .line 4810
    .local v8, path:Ljava/lang/String;
    if-eqz p5, :cond_3

    array-length v9, p5

    if-lez v9, :cond_3

    const/4 v9, 0x0

    aget-object v9, p5, v9

    if-eqz v9, :cond_3

    const/4 v9, 0x0

    aget-object v9, p5, v9

    instance-of v9, v9, Ljava/lang/String;

    if-eqz v9, :cond_3

    .line 4811
    const/4 v9, 0x0

    aget-object v8, p5, v9

    .end local v8           #path:Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .line 4813
    .restart local v8       #path:Ljava/lang/String;
    :cond_3
    new-instance v2, Lcom/htc/music/util/MBitmap;

    invoke-direct {v2, p2, v8}, Lcom/htc/music/util/MBitmap;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 4814
    .local v2, b:Lcom/htc/music/util/MBitmap;
    sget-object v9, Lcom/htc/music/util/MusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    invoke-virtual {v9, p1, v2, p3, p4}, Lcom/htc/music/util/MemoryCacheMBitmapByTime;->push(ILcom/htc/music/util/MBitmap;J)Z

    move-result v0

    .line 4815
    .local v0, addToCache:Z
    if-eqz v0, :cond_0

    .line 4816
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v3, :cond_0

    .line 4817
    invoke-virtual {v6, v4}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 4819
    .local v7, ll:Landroid/view/View;
    if-eqz v7, :cond_4

    .line 4820
    const v9, 0x7f080023

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItemTileImage;

    .line 4822
    .local v1, albumArt:Lcom/htc/widget/HtcListItemTileImage;
    if-eqz v1, :cond_4

    .line 4823
    invoke-virtual {v1}, Lcom/htc/widget/HtcListItemTileImage;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 4825
    .local v5, integer:Ljava/lang/Integer;
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v9, p1, :cond_4

    .line 4826
    invoke-virtual {v1, p2}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    .line 4816
    .end local v1           #albumArt:Lcom/htc/widget/HtcListItemTileImage;
    .end local v5           #integer:Ljava/lang/Integer;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 4
    .parameter "constraint"

    .prologue
    .line 4740
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4741
    .local v1, s:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mConstraintIsValid:Z

    if-eqz v2, :cond_2

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mConstraint:Ljava/lang/String;

    if-eqz v2, :cond_1

    :cond_0
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mConstraint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4743
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 4748
    :goto_0
    return-object v0

    .line 4745
    :cond_2
    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    const/4 v3, 0x0

    #calls: Lcom/htc/music/browserlayer/TrackBrowserActivity;->getTrackCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    invoke-static {v2, v3, v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$1200(Lcom/htc/music/browserlayer/TrackBrowserActivity;Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 4746
    .local v0, c:Landroid/database/Cursor;
    iput-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mConstraint:Ljava/lang/String;

    .line 4747
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mConstraintIsValid:Z

    goto :goto_0
.end method

.method public setActivity(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V
    .locals 0
    .parameter "newactivity"

    .prologue
    .line 4339
    iput-object p1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    .line 4340
    return-void
.end method
