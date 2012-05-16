.class Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;
.super Lcom/htc/music/widget/HtcSimpleCursorAdapter;
.source "TrackBrowserFragment.java"

# interfaces
.implements Landroid/widget/SectionIndexer;
.implements Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TrackListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$MyDataSetObserver;,
        Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$QueryHandler;,
        Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mActivity:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

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
.method constructor <init>(Landroid/content/Context;Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;ILandroid/database/Cursor;[Ljava/lang/String;[IZZ)V
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
    .line 3437
    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/htc/music/widget/HtcSimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 3366
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mBuilder:Ljava/lang/StringBuilder;

    .line 3374
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    .line 3380
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mConstraint:Ljava/lang/String;

    .line 3382
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mConstraintIsValid:Z

    .line 3386
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mcurContent:I

    .line 3390
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    .line 3898
    new-instance v1, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$MyDataSetObserver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$MyDataSetObserver;-><init>(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$1;)V

    iput-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 3438
    iput-object p2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    .line 3439
    invoke-direct {p0, p4}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 3440
    move/from16 v0, p7

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mIsNowPlaying:Z

    .line 3441
    move/from16 v0, p8

    iput-boolean v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mDisableNowPlayingIndicator:Z

    .line 3442
    const v1, 0x7f07004d

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mUnknownArtist:Ljava/lang/String;

    .line 3443
    const v1, 0x7f07004e

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mUnknownAlbum:Ljava/lang/String;

    .line 3445
    new-instance v1, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$QueryHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$QueryHandler;-><init>(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    .line 3448
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020050

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 3450
    .local v8, b:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 3451
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setFilterBitmap(Z)V

    .line 3452
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setDither(Z)V

    .line 3455
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v4

    .line 3457
    .local v4, height:I
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/music/util/MusicUtils;->CheckDLNAStatus(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mDlnaMode:I

    .line 3459
    if-eqz p4, :cond_0

    .line 3460
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p4, v1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 3461
    :cond_0
    new-instance v1, Lcom/htc/music/util/AsyncImageDecoder;

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p0

    move v5, v4

    invoke-direct/range {v1 .. v7}, Lcom/htc/music/util/AsyncImageDecoder;-><init>(Landroid/content/Context;Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;IIZZ)V

    iput-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    .line 3463
    const v1, 0x7f020053

    iput v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mDrmLockIconResId:I

    .line 3465
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mEditMode:Z
    invoke-static {v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$900(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mIsNowPlaying:Z

    if-eqz v1, :cond_1

    .line 3466
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    #setter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mMap:Ljava/util/HashMap;
    invoke-static {v1, v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$1402(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 3468
    :cond_1
    return-void
.end method

.method static synthetic access$002(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3349
    iput p1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mDlnaMode:I

    return p1
.end method

.method static synthetic access$2500(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;)Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3349
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 3349
    iget v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mcurContent:I

    return v0
.end method

.method static synthetic access$402(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3349
    iput p1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mcurContent:I

    return p1
.end method

.method static synthetic access$800(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3349
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    return-object v0
.end method

.method private getColumnIndices(Landroid/database/Cursor;)V
    .locals 3
    .parameter "cursor"

    .prologue
    .line 3481
    if-eqz p1, :cond_0

    .line 3482
    const-string v0, "title"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mTitleIdx:I

    .line 3483
    const-string v0, "artist"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mArtistIdx:I

    .line 3484
    const-string v0, "album"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mAlbumIdx:I

    .line 3485
    const-string v0, "album_art"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mAlbumArtIndex:I

    .line 3487
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSelectedPlaylistId:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$1600(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mRecentPlayedPlaylist:Z
    invoke-static {v0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$2700(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3488
    const-string v0, "audio_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mAudioIdIdx:I

    .line 3494
    :goto_0
    const-string v0, "album_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mAlbumIdIdx:I

    .line 3496
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mIndexer:Lcom/htc/music/widget/MusicAlphabetIndexer;

    if-eqz v0, :cond_2

    .line 3497
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mIndexer:Lcom/htc/music/widget/MusicAlphabetIndexer;

    invoke-virtual {v0, p1}, Lcom/htc/music/widget/MusicAlphabetIndexer;->setCursor(Landroid/database/Cursor;)V

    .line 3502
    :cond_0
    :goto_1
    return-void

    .line 3491
    :cond_1
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mAudioIdIdx:I

    goto :goto_0

    .line 3498
    :cond_2
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mEditMode:Z
    invoke-static {v0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$900(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    iget-boolean v0, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mIsNowPlayinglist:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSelectedPlaylistId:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$1600(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3499
    new-instance v0, Lcom/htc/music/widget/MusicAlphabetIndexer;

    iget v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mTitleIdx:I

    const-string v2, " ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-direct {v0, p1, v1, v2}, Lcom/htc/music/widget/MusicAlphabetIndexer;-><init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mIndexer:Lcom/htc/music/widget/MusicAlphabetIndexer;

    goto :goto_1
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 35
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 3594
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$ViewHolder;

    .line 3596
    .local v32, vh:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$ViewHolder;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mTitleIdx:I

    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    move-object/from16 v0, p3

    invoke-interface {v0, v1, v4}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 3597
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    iget-object v1, v1, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mLowerSearchFilter:Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 3598
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    new-instance v4, Ljava/lang/String;

    move-object/from16 v0, v32

    iget-object v5, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    iget-object v5, v5, Landroid/database/CharArrayBuffer;->data:[C

    const/4 v6, 0x0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/database/CharArrayBuffer;->sizeCopied:I

    move/from16 v33, v0

    move/from16 v0, v33

    invoke-direct {v4, v5, v6, v0}, Ljava/lang/String;-><init>([CII)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    iget-object v5, v5, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mLowerSearchFilter:Ljava/lang/String;

    #calls: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getMarkedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    invoke-static {v1, v4, v5}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$2900(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v22

    .line 3600
    .local v22, markedString:Ljava/lang/CharSequence;
    move-object/from16 v0, v32

    iget-object v1, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v0, v22

    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/CharSequence;)V

    .line 3606
    .end local v22           #markedString:Ljava/lang/CharSequence;
    :goto_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mBuilder:Ljava/lang/StringBuilder;

    .line 3607
    .local v10, builder:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v10, v1, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 3609
    move-object/from16 v0, v32

    iget-object v1, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v1}, Lcom/htc/widget/HtcListItem2LineText;->getSecondaryTextVisibility()I

    move-result v1

    if-nez v1, :cond_3

    .line 3610
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mAlbumIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 3611
    .local v24, name:Ljava/lang/String;
    if-eqz v24, :cond_0

    const-string v1, "<unknown>"

    move-object/from16 v0, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 3612
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mUnknownAlbum:Ljava/lang/String;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3617
    :goto_1
    const-string v1, " - "

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3619
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mArtistIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 3620
    if-eqz v24, :cond_1

    const-string v1, "<unknown>"

    move-object/from16 v0, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 3621
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mUnknownArtist:Ljava/lang/String;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3625
    :goto_2
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v19

    .line 3626
    .local v19, len:I
    move-object/from16 v0, v32

    iget-object v1, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$ViewHolder;->buffer2:[C

    array-length v1, v1

    move/from16 v0, v19

    if-ge v1, v0, :cond_2

    .line 3627
    move/from16 v0, v19

    new-array v1, v0, [C

    move-object/from16 v0, v32

    iput-object v1, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$ViewHolder;->buffer2:[C

    .line 3629
    :cond_2
    const/4 v1, 0x0

    move-object/from16 v0, v32

    iget-object v4, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$ViewHolder;->buffer2:[C

    const/4 v5, 0x0

    move/from16 v0, v19

    invoke-virtual {v10, v1, v0, v4, v5}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    .line 3630
    move-object/from16 v0, v32

    iget-object v1, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$ViewHolder;->buffer2:[C

    const/4 v4, 0x0

    move/from16 v0, v19

    invoke-static {v1, v4, v0}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v21

    .line 3631
    .local v21, line2:Ljava/lang/String;
    move-object/from16 v0, v32

    iget-object v1, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v0, v21

    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    .line 3634
    .end local v19           #len:I
    .end local v21           #line2:Ljava/lang/String;
    .end local v24           #name:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$ViewHolder;->listItemRearIcon:Lcom/htc/widget/HtcListItemImageButton;

    move-object/from16 v16, v0

    .line 3635
    .local v16, indicator:Lcom/htc/widget/HtcListItemImageButton;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->isEditMode()Z

    move-result v1

    if-nez v1, :cond_7

    if-eqz v16, :cond_7

    .line 3637
    const/4 v15, -0x1

    .line 3638
    .local v15, id:I
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v1, :cond_4

    .line 3641
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mIsNowPlaying:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_13

    .line 3643
    :try_start_1
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->getCurrentShuffleMode()I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_12

    .line 3644
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I

    move-result v29

    .line 3645
    .local v29, shufflePos:I
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    move/from16 v0, v29

    invoke-interface {v1, v0}, Lcom/htc/music/IMediaPlaybackService;->getPositionByShufflePosition(I)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v15

    .line 3679
    .end local v29           #shufflePos:I
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mDlnaMode:I

    if-nez v1, :cond_15

    .line 3680
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mIsNowPlaying:Z

    if-eqz v1, :cond_5

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    if-eq v1, v15, :cond_6

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mIsNowPlaying:Z

    if-nez v1, :cond_14

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mDisableNowPlayingIndicator:Z

    if-nez v1, :cond_14

    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mAudioIdIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v15, :cond_14

    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isPluginMode()Z

    move-result v1

    if-nez v1, :cond_14

    .line 3682
    :cond_6
    const v1, 0x2080089

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItemImageButton;->setImageResource(I)V

    .line 3683
    const/4 v1, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    .line 3702
    .end local v15           #id:I
    :cond_7
    :goto_4
    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$ViewHolder;->listItemRearIcon:Lcom/htc/widget/HtcListItemImageButton;

    move-object/from16 v28, v0

    .line 3703
    .local v28, rearIcon:Lcom/htc/widget/HtcListItemImageButton;
    if-eqz v28, :cond_8

    .line 3704
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->isEditMode()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 3705
    const/4 v1, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    .line 3721
    :cond_8
    :goto_5
    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$ViewHolder;->listItemRearCheckBox:Lcom/htc/widget/HtcCheckBox;

    move-object/from16 v27, v0

    .line 3722
    .local v27, rearCheckBox:Lcom/htc/widget/HtcCheckBox;
    if-eqz v27, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->isPickerMode()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 3723
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcListView;->isItemChecked(I)Z

    move-result v1

    move-object/from16 v0, v27

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    .line 3727
    :cond_9
    move-object/from16 v0, v32

    iget-object v11, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$ViewHolder;->listItemFrontCheckBox:Lcom/htc/widget/HtcDeleteButton;

    .line 3728
    .local v11, checkBox:Lcom/htc/widget/HtcDeleteButton;
    if-eqz v11, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->isEditMode()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 3729
    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Lcom/htc/widget/HtcDeleteButton;->setVisibility(I)V

    .line 3730
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/htc/widget/HtcDeleteButton;->setTag(Ljava/lang/Object;)V

    .line 3732
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mMap:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$1400(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Ljava/util/HashMap;

    move-result-object v1

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 3733
    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Lcom/htc/widget/HtcDeleteButton;->setChecked(Z)V

    .line 3740
    :cond_a
    :goto_6
    move-object/from16 v0, v32

    iget-object v7, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    .line 3741
    .local v7, albumArt:Lcom/htc/widget/HtcListItemTileImage;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mAlbumIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 3744
    .restart local v24       #name:Ljava/lang/String;
    const-string v1, "mime_type"

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 3747
    .local v23, minetype:Ljava/lang/String;
    if-eqz v24, :cond_b

    const-string v1, "<unknown>"

    move-object/from16 v0, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    :cond_b
    const/16 v31, 0x1

    .line 3748
    .local v31, unknown:Z
    :goto_7
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mAlbumArtIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 3749
    .local v3, art:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mAlbumIdIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 3750
    .local v2, artIndex:I
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v7, v1}, Lcom/htc/widget/HtcListItemTileImage;->setTag(Ljava/lang/Object;)V

    .line 3751
    if-nez v31, :cond_c

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1a

    .line 3753
    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v7, v1}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3769
    :goto_8
    const-string v1, "_data"

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 3770
    .local v25, path:Ljava/lang/String;
    if-eqz v25, :cond_1f

    const-string v1, "content://drm/"

    move-object/from16 v0, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 3771
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mDrmLockIconResId:I

    invoke-virtual {v7, v1}, Lcom/htc/widget/HtcListItemTileImage;->setIndicatorResource(I)V

    .line 3772
    invoke-virtual {v7}, Lcom/htc/widget/HtcListItemTileImage;->getChildCount()I

    move-result v1

    const/4 v4, 0x1

    if-le v1, v4, :cond_d

    .line 3773
    invoke-virtual {v7}, Lcom/htc/widget/HtcListItemTileImage;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v7, v1}, Lcom/htc/widget/HtcListItemTileImage;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    .line 3774
    .local v17, indicatorBubble:Landroid/view/View;
    move-object/from16 v0, v17

    instance-of v1, v0, Landroid/widget/ImageView;

    if-eqz v1, :cond_d

    .line 3775
    check-cast v17, Landroid/widget/ImageView;

    .end local v17           #indicatorBubble:Landroid/view/View;
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 3825
    :cond_d
    :goto_9
    move-object/from16 v0, v32

    iget-object v1, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

    if-eqz v1, :cond_e

    move-object/from16 v0, v32

    iget-object v1, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

    invoke-virtual {v1}, Lcom/htc/widget/HtcRimImageButton;->getVisibility()I

    move-result v1

    if-nez v1, :cond_e

    .line 3826
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mAudioIdIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 3827
    .local v8, audioId:I
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v26

    .line 3829
    .local v26, position:I
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 3830
    .local v12, data:Landroid/os/Bundle;
    const-string v1, "audioid"

    invoke-virtual {v12, v1, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3831
    const-string v1, "position"

    move/from16 v0, v26

    invoke-virtual {v12, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3832
    move-object/from16 v0, v32

    iget-object v1, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

    invoke-virtual {v1, v12}, Lcom/htc/widget/HtcRimImageButton;->setTag(Ljava/lang/Object;)V

    .line 3835
    .end local v8           #audioId:I
    .end local v12           #data:Landroid/os/Bundle;
    .end local v26           #position:I
    :cond_e
    return-void

    .line 3602
    .end local v2           #artIndex:I
    .end local v3           #art:Ljava/lang/String;
    .end local v7           #albumArt:Lcom/htc/widget/HtcListItemTileImage;
    .end local v10           #builder:Ljava/lang/StringBuilder;
    .end local v11           #checkBox:Lcom/htc/widget/HtcDeleteButton;
    .end local v16           #indicator:Lcom/htc/widget/HtcListItemImageButton;
    .end local v23           #minetype:Ljava/lang/String;
    .end local v24           #name:Ljava/lang/String;
    .end local v25           #path:Ljava/lang/String;
    .end local v27           #rearCheckBox:Lcom/htc/widget/HtcCheckBox;
    .end local v28           #rearIcon:Lcom/htc/widget/HtcListItemImageButton;
    .end local v31           #unknown:Z
    :cond_f
    move-object/from16 v0, v32

    iget-object v1, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    iget-object v1, v1, Landroid/database/CharArrayBuffer;->data:[C

    const/4 v4, 0x0

    move-object/from16 v0, v32

    iget-object v5, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    iget v5, v5, Landroid/database/CharArrayBuffer;->sizeCopied:I

    invoke-static {v1, v4, v5}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v20

    .line 3603
    .local v20, line1:Ljava/lang/String;
    move-object/from16 v0, v32

    iget-object v1, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v0, v20

    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3614
    .end local v20           #line1:Ljava/lang/String;
    .restart local v10       #builder:Ljava/lang/StringBuilder;
    .restart local v24       #name:Ljava/lang/String;
    :cond_10
    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 3623
    :cond_11
    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 3647
    .end local v24           #name:Ljava/lang/String;
    .restart local v15       #id:I
    .restart local v16       #indicator:Lcom/htc/widget/HtcListItemImageButton;
    :cond_12
    :try_start_2
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->getQueuePosition()I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v15

    goto/16 :goto_3

    .line 3649
    :catch_0
    move-exception v14

    .line 3650
    .local v14, e:Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v14}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_3

    .line 3655
    .end local v14           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    goto/16 :goto_3

    .line 3653
    :cond_13
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->getAudioId()I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    move-result v15

    goto/16 :goto_3

    .line 3686
    :cond_14
    const/16 v1, 0x8

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    goto/16 :goto_4

    .line 3689
    :cond_15
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mDlnaMode:I

    const/4 v4, 0x3

    if-ne v1, v4, :cond_7

    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mcurContent:I

    if-ltz v1, :cond_7

    .line 3690
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mAudioIdIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    .line 3691
    .local v30, test:I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mcurContent:I

    move/from16 v0, v30

    if-ne v1, v0, :cond_16

    .line 3692
    const v1, 0x2080089

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItemImageButton;->setImageResource(I)V

    .line 3693
    const/4 v1, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    goto/16 :goto_4

    .line 3696
    :cond_16
    const/16 v1, 0x8

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    goto/16 :goto_4

    .line 3710
    .end local v15           #id:I
    .end local v30           #test:I
    .restart local v28       #rearIcon:Lcom/htc/widget/HtcListItemImageButton;
    :cond_17
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getPickerMode()J

    move-result-wide v4

    const-wide/16 v33, 0x0

    cmp-long v1, v4, v33

    if-eqz v1, :cond_8

    .line 3712
    const/16 v1, 0x8

    move-object/from16 v0, v28

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    goto/16 :goto_5

    .line 3736
    .restart local v11       #checkBox:Lcom/htc/widget/HtcDeleteButton;
    .restart local v27       #rearCheckBox:Lcom/htc/widget/HtcCheckBox;
    :cond_18
    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Lcom/htc/widget/HtcDeleteButton;->setChecked(Z)V

    goto/16 :goto_6

    .line 3747
    .restart local v7       #albumArt:Lcom/htc/widget/HtcListItemTileImage;
    .restart local v23       #minetype:Ljava/lang/String;
    .restart local v24       #name:Ljava/lang/String;
    :cond_19
    const/16 v31, 0x0

    goto/16 :goto_7

    .line 3755
    .restart local v2       #artIndex:I
    .restart local v3       #art:Ljava/lang/String;
    .restart local v31       #unknown:Z
    :cond_1a
    sget-object v1, Lcom/htc/music/util/MusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    invoke-virtual {v1, v2}, Lcom/htc/music/util/MemoryCacheMBitmapByTime;->pull(I)Lcom/htc/music/util/MBitmap;

    move-result-object v18

    .line 3756
    .local v18, item:Lcom/htc/music/util/MBitmap;
    if-nez v18, :cond_1c

    const/4 v9, 0x0

    .line 3757
    .local v9, bitmap:Landroid/graphics/Bitmap;
    :goto_a
    if-nez v18, :cond_1d

    const/4 v13, 0x0

    .line 3758
    .local v13, decodePath:Ljava/lang/String;
    :goto_b
    if-eqz v9, :cond_1b

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1b

    if-eqz v9, :cond_1e

    invoke-static {v13, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 3759
    :cond_1b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v6, v4

    move v4, v2

    invoke-virtual/range {v1 .. v6}, Lcom/htc/music/util/AsyncImageDecoder;->add(ILjava/lang/String;II[Ljava/lang/Object;)V

    .line 3761
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v7, v1}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_8

    .line 3756
    .end local v9           #bitmap:Landroid/graphics/Bitmap;
    .end local v13           #decodePath:Ljava/lang/String;
    :cond_1c
    invoke-virtual/range {v18 .. v18}, Lcom/htc/music/util/MBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    goto :goto_a

    .line 3757
    .restart local v9       #bitmap:Landroid/graphics/Bitmap;
    :cond_1d
    invoke-virtual/range {v18 .. v18}, Lcom/htc/music/util/MBitmap;->getPath()Ljava/lang/String;

    move-result-object v13

    goto :goto_b

    .line 3763
    .restart local v13       #decodePath:Ljava/lang/String;
    :cond_1e
    invoke-virtual {v7, v9}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_8

    .line 3780
    .end local v9           #bitmap:Landroid/graphics/Bitmap;
    .end local v13           #decodePath:Ljava/lang/String;
    .end local v18           #item:Lcom/htc/music/util/MBitmap;
    .restart local v25       #path:Ljava/lang/String;
    :cond_1f
    invoke-static {}, Lcom/htc/music/util/MusicUtils;->isWMDRMSupported()Z

    move-result v1

    if-eqz v1, :cond_20

    if-eqz v23, :cond_20

    const-string v1, "audio/x-wma-drm"

    move-object/from16 v0, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 3781
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mDrmLockIconResId:I

    invoke-virtual {v7, v1}, Lcom/htc/widget/HtcListItemTileImage;->setIndicatorResource(I)V

    .line 3782
    invoke-virtual {v7}, Lcom/htc/widget/HtcListItemTileImage;->getChildCount()I

    move-result v1

    const/4 v4, 0x1

    if-le v1, v4, :cond_d

    .line 3783
    invoke-virtual {v7}, Lcom/htc/widget/HtcListItemTileImage;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v7, v1}, Lcom/htc/widget/HtcListItemTileImage;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    .line 3784
    .restart local v17       #indicatorBubble:Landroid/view/View;
    move-object/from16 v0, v17

    instance-of v1, v0, Landroid/widget/ImageView;

    if-eqz v1, :cond_d

    .line 3785
    check-cast v17, Landroid/widget/ImageView;

    .end local v17           #indicatorBubble:Landroid/view/View;
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto/16 :goto_9

    .line 3791
    :cond_20
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Lcom/htc/widget/HtcListItemTileImage;->setIndicatorBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_9
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 3839
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$1300(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Landroid/database/Cursor;

    move-result-object v0

    if-eq p1, v0, :cond_3

    .line 3840
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$1300(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3841
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$1300(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Landroid/database/Cursor;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 3843
    :cond_0
    if-eqz p1, :cond_1

    .line 3844
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 3847
    :cond_1
    if-eqz p1, :cond_2

    .line 3850
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    iget-object v1, v1, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mActivityTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->setTitle(Ljava/lang/String;)V

    .line 3852
    :cond_2
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    #setter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v0, p1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$1302(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 3855
    invoke-super {p0, p1}, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 3856
    invoke-direct {p0, p1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 3858
    :cond_3
    return-void
.end method

.method public getPositionForSection(I)I
    .locals 4
    .parameter "section"

    .prologue
    const/4 v1, 0x0

    .line 3885
    iget-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mIndexer:Lcom/htc/music/widget/MusicAlphabetIndexer;

    if-nez v2, :cond_1

    move v0, v1

    .line 3891
    :cond_0
    :goto_0
    return v0

    .line 3886
    :cond_1
    iget-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mIndexer:Lcom/htc/music/widget/MusicAlphabetIndexer;

    invoke-virtual {v2, p1}, Lcom/htc/music/widget/MusicAlphabetIndexer;->getPositionForSection(I)I

    move-result v0

    .line 3888
    .local v0, pos:I
    iget-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSortOrder:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$3000(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "track"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 3891
    goto :goto_0
.end method

.method public getQueryHandler()Lcom/htc/music/util/DlArtAsyncQueryHandler;
    .locals 1

    .prologue
    .line 3477
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    return-object v0
.end method

.method public getSectionForPosition(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 3895
    const/4 v0, 0x0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 3876
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mIndexer:Lcom/htc/music/widget/MusicAlphabetIndexer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mSortOrder:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$3000(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "track"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3878
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mIndexer:Lcom/htc/music/widget/MusicAlphabetIndexer;

    invoke-virtual {v0}, Lcom/htc/music/widget/MusicAlphabetIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    .line 3880
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

    .line 3506
    invoke-super {p0, p1, p2, p3}, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 3507
    .local v1, v:Landroid/view/View;
    const v3, 0x7f080062

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 3514
    .local v0, iv:Landroid/widget/ImageView;
    new-instance v2, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$ViewHolder;

    invoke-direct {v2, p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$ViewHolder;-><init>(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;)V

    .line 3515
    .local v2, vh:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$ViewHolder;
    const v3, 0x7f080024

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v3, v2, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    .line 3516
    const v3, 0x7f080064

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcDeleteButton;

    iput-object v3, v2, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$ViewHolder;->listItemFrontCheckBox:Lcom/htc/widget/HtcDeleteButton;

    .line 3517
    iget-object v3, v2, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$ViewHolder;->listItemFrontCheckBox:Lcom/htc/widget/HtcDeleteButton;

    if-eqz v3, :cond_0

    .line 3518
    iget-object v3, v2, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$ViewHolder;->listItemFrontCheckBox:Lcom/htc/widget/HtcDeleteButton;

    new-instance v4, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$1;

    invoke-direct {v4, p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$1;-><init>(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;)V

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcDeleteButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3535
    :cond_0
    const v3, 0x7f080027

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcCheckBox;

    iput-object v3, v2, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$ViewHolder;->listItemRearCheckBox:Lcom/htc/widget/HtcCheckBox;

    .line 3536
    iget-object v3, v2, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$ViewHolder;->listItemRearCheckBox:Lcom/htc/widget/HtcCheckBox;

    if-eqz v3, :cond_1

    .line 3537
    iget-object v3, v2, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$ViewHolder;->listItemRearCheckBox:Lcom/htc/widget/HtcCheckBox;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    invoke-virtual {v3}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->isPickerMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3538
    iget-object v3, v2, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$ViewHolder;->listItemRearCheckBox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v3, v8}, Lcom/htc/widget/HtcCheckBox;->setFocusable(Z)V

    .line 3539
    iget-object v3, v2, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$ViewHolder;->listItemRearCheckBox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v3, v8}, Lcom/htc/widget/HtcCheckBox;->setClickable(Z)V

    .line 3540
    iget-object v3, v2, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$ViewHolder;->listItemRearCheckBox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v3, v8}, Lcom/htc/widget/HtcCheckBox;->setVisibility(I)V

    .line 3543
    :cond_1
    iget-object v3, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mEditMode:Z
    invoke-static {v3}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$900(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    invoke-virtual {v3}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->isPickerMode()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3544
    :cond_2
    iget-object v3, v2, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 3550
    :goto_0
    const v3, 0x7f080023

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListItemTileImage;

    iput-object v3, v2, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    .line 3552
    iget-object v3, v2, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    if-eqz v3, :cond_3

    .line 3553
    iget-object v3, v2, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    iget-object v4, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3556
    :cond_3
    const v3, 0x7f080025

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListItemImageButton;

    iput-object v3, v2, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$ViewHolder;->listItemRearIcon:Lcom/htc/widget/HtcListItemImageButton;

    .line 3557
    const v3, 0x7f080026

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcRimImageButton;

    iput-object v3, v2, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

    .line 3558
    iget-object v3, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mEditMode:Z
    invoke-static {v3}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$900(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    invoke-virtual {v3}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->isPickerMode()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 3559
    :cond_4
    iget-object v3, v2, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

    if-eqz v3, :cond_5

    .line 3560
    iget-object v3, v2, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcRimImageButton;->setVisibility(I)V

    .line 3584
    :cond_5
    :goto_1
    new-instance v3, Landroid/database/CharArrayBuffer;

    const/16 v4, 0x64

    invoke-direct {v3, v4}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v3, v2, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    .line 3585
    const/16 v3, 0xc8

    new-array v3, v3, [C

    iput-object v3, v2, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$ViewHolder;->buffer2:[C

    .line 3587
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 3588
    return-object v1

    .line 3547
    :cond_6
    iget-object v3, v2, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v3, v8}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    goto :goto_0

    .line 3563
    :cond_7
    iget-object v3, v2, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

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

    .line 3567
    iget-object v3, v2, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

    invoke-virtual {v3, v8}, Lcom/htc/widget/HtcRimImageButton;->setFocusable(Z)V

    .line 3568
    iget-object v3, v2, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

    const v4, 0x7f020028

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcRimImageButton;->setIconResource(I)V

    .line 3569
    iget-object v3, v2, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

    invoke-virtual {v3, v8}, Lcom/htc/widget/HtcRimImageButton;->setVisibility(I)V

    .line 3570
    iget-object v3, v2, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

    new-instance v4, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$2;

    invoke-direct {v4, p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter$2;-><init>(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;)V

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
    .line 3929
    if-nez p2, :cond_1

    .line 3960
    :cond_0
    :goto_0
    return-void

    .line 3930
    :cond_1
    iget-object v9, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mTrackList:Lcom/htc/widget/HtcListView;
    invoke-static {v9}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$3300(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Lcom/htc/widget/HtcListView;

    move-result-object v6

    .line 3931
    .local v6, listView:Lcom/htc/widget/HtcListView;
    invoke-virtual {v6}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v3

    .line 3932
    .local v3, childCount:I
    if-gtz v3, :cond_2

    .line 3933
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 3937
    :cond_2
    const/4 v8, 0x0

    .line 3938
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

    .line 3939
    const/4 v9, 0x0

    aget-object v8, p5, v9

    .end local v8           #path:Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .line 3941
    .restart local v8       #path:Ljava/lang/String;
    :cond_3
    new-instance v2, Lcom/htc/music/util/MBitmap;

    invoke-direct {v2, p2, v8}, Lcom/htc/music/util/MBitmap;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 3942
    .local v2, b:Lcom/htc/music/util/MBitmap;
    sget-object v9, Lcom/htc/music/util/MusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    invoke-virtual {v9, p1, v2, p3, p4}, Lcom/htc/music/util/MemoryCacheMBitmapByTime;->push(ILcom/htc/music/util/MBitmap;J)Z

    move-result v0

    .line 3943
    .local v0, addToCache:Z
    if-eqz v0, :cond_0

    .line 3944
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v3, :cond_0

    .line 3945
    invoke-virtual {v6, v4}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 3947
    .local v7, ll:Landroid/view/View;
    if-eqz v7, :cond_4

    .line 3948
    const v9, 0x7f080023

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItemTileImage;

    .line 3950
    .local v1, albumArt:Lcom/htc/widget/HtcListItemTileImage;
    if-eqz v1, :cond_4

    .line 3951
    invoke-virtual {v1}, Lcom/htc/widget/HtcListItemTileImage;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 3953
    .local v5, integer:Ljava/lang/Integer;
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v9, p1, :cond_4

    .line 3954
    invoke-virtual {v1, p2}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    .line 3944
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
    .line 3862
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3863
    .local v1, s:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mConstraintIsValid:Z

    if-eqz v2, :cond_2

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mConstraint:Ljava/lang/String;

    if-eqz v2, :cond_1

    :cond_0
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mConstraint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3865
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 3870
    :goto_0
    return-object v0

    .line 3867
    :cond_2
    iget-object v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    const/4 v3, 0x0

    #calls: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getTrackCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    invoke-static {v2, v3, v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$1100(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 3868
    .local v0, c:Landroid/database/Cursor;
    iput-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mConstraint:Ljava/lang/String;

    .line 3869
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mConstraintIsValid:Z

    goto :goto_0
.end method

.method public setActivity(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)V
    .locals 0
    .parameter "newactivity"

    .prologue
    .line 3471
    iput-object p1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->mActivity:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    .line 3472
    return-void
.end method
