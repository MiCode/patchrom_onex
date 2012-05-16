.class Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;
.super Lcom/htc/music/widget/HtcSimpleCursorAdapter;
.source "CarTrackBrowseActivity.java"

# interfaces
.implements Landroid/widget/SectionIndexer;
.implements Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/carmode/CarTrackBrowseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TrackListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter$MyDataSetObserver;,
        Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter$QueryHandler;,
        Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mActivity:Lcom/htc/music/carmode/CarTrackBrowseActivity;

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

.field private mDrmLockIconResId:I

.field private mIndexer:Lcom/htc/music/widget/MusicAlphabetIndexer;

.field private mQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

.field mTitleIdx:I

.field private final mUnknownAlbum:Ljava/lang/String;

.field private final mUnknownArtist:Ljava/lang/String;

.field private mcurContent:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/htc/music/carmode/CarTrackBrowseActivity;ILandroid/database/Cursor;[Ljava/lang/String;[I)V
    .locals 9
    .parameter "context"
    .parameter "currentactivity"
    .parameter "layout"
    .parameter "cursor"
    .parameter "from"
    .parameter "to"

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x0

    .line 751
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/htc/music/widget/HtcSimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 689
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mBuilder:Ljava/lang/StringBuilder;

    .line 697
    iput-object v8, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mActivity:Lcom/htc/music/carmode/CarTrackBrowseActivity;

    .line 703
    iput-object v8, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mConstraint:Ljava/lang/String;

    .line 705
    iput-boolean v6, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mConstraintIsValid:Z

    .line 709
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mcurContent:I

    .line 711
    iput-object v8, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    .line 1049
    new-instance v0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter$MyDataSetObserver;

    invoke-direct {v0, p0, v8}, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter$MyDataSetObserver;-><init>(Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;Lcom/htc/music/carmode/CarTrackBrowseActivity$1;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 752
    iput-object p2, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mActivity:Lcom/htc/music/carmode/CarTrackBrowseActivity;

    .line 753
    invoke-direct {p0, p4}, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 754
    const v0, 0x7f07004d

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mUnknownArtist:Ljava/lang/String;

    .line 755
    const v0, 0x7f07004e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mUnknownAlbum:Ljava/lang/String;

    .line 757
    new-instance v0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter$QueryHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter$QueryHandler;-><init>(Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    .line 760
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020050

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 762
    .local v7, b:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 763
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/BitmapDrawable;->setFilterBitmap(Z)V

    .line 764
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/BitmapDrawable;->setDither(Z)V

    .line 767
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v3

    .line 769
    .local v3, height:I
    if-eqz p4, :cond_0

    .line 770
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p4, v0}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 771
    :cond_0
    new-instance v0, Lcom/htc/music/util/AsyncImageDecoder;

    const/4 v5, 0x1

    move-object v1, p1

    move-object v2, p0

    move v4, v3

    invoke-direct/range {v0 .. v6}, Lcom/htc/music/util/AsyncImageDecoder;-><init>(Landroid/content/Context;Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;IIZZ)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    .line 773
    const v0, 0x7f020053

    iput v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mDrmLockIconResId:I

    .line 774
    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;)Lcom/htc/music/util/AsyncImageDecoder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 675
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;)Lcom/htc/music/carmode/CarTrackBrowseActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 675
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mActivity:Lcom/htc/music/carmode/CarTrackBrowseActivity;

    return-object v0
.end method

.method private getColumnIndices(Landroid/database/Cursor;)V
    .locals 3
    .parameter "cursor"

    .prologue
    .line 783
    if-eqz p1, :cond_0

    .line 784
    const-string v0, "title"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mTitleIdx:I

    .line 785
    const-string v0, "artist"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mArtistIdx:I

    .line 786
    const-string v0, "album"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mAlbumIdx:I

    .line 787
    const-string v0, "album_art"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mAlbumArtIndex:I

    .line 789
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mAudioIdIdx:I

    .line 791
    const-string v0, "album_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mAlbumIdIdx:I

    .line 793
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mIndexer:Lcom/htc/music/widget/MusicAlphabetIndexer;

    if-eqz v0, :cond_1

    .line 794
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mIndexer:Lcom/htc/music/widget/MusicAlphabetIndexer;

    invoke-virtual {v0, p1}, Lcom/htc/music/widget/MusicAlphabetIndexer;->setCursor(Landroid/database/Cursor;)V

    .line 799
    :cond_0
    :goto_0
    return-void

    .line 796
    :cond_1
    new-instance v0, Lcom/htc/music/widget/MusicAlphabetIndexer;

    iget v1, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mTitleIdx:I

    const-string v2, " ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-direct {v0, p1, v1, v2}, Lcom/htc/music/widget/MusicAlphabetIndexer;-><init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mIndexer:Lcom/htc/music/widget/MusicAlphabetIndexer;

    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 25
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 847
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter$ViewHolder;

    .line 849
    .local v23, vh:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter$ViewHolder;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mTitleIdx:I

    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    move-object/from16 v0, p3

    invoke-interface {v0, v1, v4}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 850
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mActivity:Lcom/htc/music/carmode/CarTrackBrowseActivity;

    iget-object v1, v1, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mLowerSearchFilter:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 851
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mActivity:Lcom/htc/music/carmode/CarTrackBrowseActivity;

    new-instance v4, Ljava/lang/String;

    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    iget-object v5, v5, Landroid/database/CharArrayBuffer;->data:[C

    const/4 v6, 0x0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/database/CharArrayBuffer;->sizeCopied:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-direct {v4, v5, v6, v0}, Ljava/lang/String;-><init>([CII)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mActivity:Lcom/htc/music/carmode/CarTrackBrowseActivity;

    iget-object v5, v5, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mLowerSearchFilter:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->getMarkedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v18

    .line 853
    .local v18, markedString:Ljava/lang/CharSequence;
    move-object/from16 v0, v23

    iget-object v1, v0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/CharSequence;)V

    .line 859
    .end local v18           #markedString:Ljava/lang/CharSequence;
    :goto_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mBuilder:Ljava/lang/StringBuilder;

    .line 860
    .local v9, builder:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v9, v1, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 862
    move-object/from16 v0, v23

    iget-object v1, v0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v1}, Lcom/htc/widget/HtcListItem2LineText;->getSecondaryTextVisibility()I

    move-result v1

    if-nez v1, :cond_3

    .line 863
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mAlbumIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 864
    .local v20, name:Ljava/lang/String;
    if-eqz v20, :cond_0

    const-string v1, "<unknown>"

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 865
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mUnknownAlbum:Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 870
    :goto_1
    const-string v1, " - "

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 872
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mArtistIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 873
    if-eqz v20, :cond_1

    const-string v1, "<unknown>"

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 874
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mUnknownArtist:Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 878
    :goto_2
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    .line 879
    .local v15, len:I
    move-object/from16 v0, v23

    iget-object v1, v0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter$ViewHolder;->buffer2:[C

    array-length v1, v1

    if-ge v1, v15, :cond_2

    .line 880
    new-array v1, v15, [C

    move-object/from16 v0, v23

    iput-object v1, v0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter$ViewHolder;->buffer2:[C

    .line 882
    :cond_2
    const/4 v1, 0x0

    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter$ViewHolder;->buffer2:[C

    const/4 v5, 0x0

    invoke-virtual {v9, v1, v15, v4, v5}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    .line 883
    move-object/from16 v0, v23

    iget-object v1, v0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter$ViewHolder;->buffer2:[C

    const/4 v4, 0x0

    invoke-static {v1, v4, v15}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v17

    .line 884
    .local v17, line2:Ljava/lang/String;
    move-object/from16 v0, v23

    iget-object v1, v0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    .line 887
    .end local v15           #len:I
    .end local v17           #line2:Ljava/lang/String;
    .end local v20           #name:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, v23

    iget-object v12, v0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter$ViewHolder;->listItemRearIcon:Lcom/htc/widget/HtcListItemImageButton;

    .line 889
    .local v12, indicator:Lcom/htc/widget/HtcListItemImageButton;
    sget-object v1, Lcom/htc/music/carmode/util/CarMusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v1, :cond_4

    .line 891
    :try_start_0
    sget-object v1, Lcom/htc/music/carmode/util/CarMusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface {v1}, Lcom/htc/music/IMediaPlaybackService;->getAudioId()I

    move-result v11

    .line 893
    .local v11, id:I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mAudioIdIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v11, :cond_b

    .line 894
    const v1, 0x7f020017

    invoke-virtual {v12, v1}, Lcom/htc/widget/HtcListItemImageButton;->setImageResource(I)V

    .line 895
    const/4 v1, 0x0

    invoke-virtual {v12, v1}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 904
    .end local v11           #id:I
    :cond_4
    :goto_3
    move-object/from16 v0, v23

    iget-object v7, v0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    .line 905
    .local v7, albumArt:Lcom/htc/widget/HtcListItemTileImage;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mAlbumIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 908
    .restart local v20       #name:Ljava/lang/String;
    const-string v1, "mime_type"

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 911
    .local v19, minetype:Ljava/lang/String;
    if-eqz v20, :cond_5

    const-string v1, "<unknown>"

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_5
    const/16 v22, 0x1

    .line 912
    .local v22, unknown:Z
    :goto_4
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mAlbumArtIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 913
    .local v3, art:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mAlbumIdIdx:I

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 914
    .local v2, artIndex:I
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v7, v1}, Lcom/htc/widget/HtcListItemTileImage;->setTag(Ljava/lang/Object;)V

    .line 915
    if-nez v22, :cond_6

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_d

    .line 917
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v7, v1}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 933
    :goto_5
    const-string v1, "_data"

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 934
    .local v21, path:Ljava/lang/String;
    if-eqz v21, :cond_12

    const-string v1, "content://drm/"

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 935
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mDrmLockIconResId:I

    invoke-virtual {v7, v1}, Lcom/htc/widget/HtcListItemTileImage;->setIndicatorResource(I)V

    .line 936
    invoke-virtual {v7}, Lcom/htc/widget/HtcListItemTileImage;->getChildCount()I

    move-result v1

    const/4 v4, 0x1

    if-le v1, v4, :cond_7

    .line 937
    invoke-virtual {v7}, Lcom/htc/widget/HtcListItemTileImage;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v7, v1}, Lcom/htc/widget/HtcListItemTileImage;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 938
    .local v13, indicatorBubble:Landroid/view/View;
    instance-of v1, v13, Landroid/widget/ImageView;

    if-eqz v1, :cond_7

    .line 939
    check-cast v13, Landroid/widget/ImageView;

    .end local v13           #indicatorBubble:Landroid/view/View;
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v13, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 987
    :cond_7
    :goto_6
    return-void

    .line 855
    .end local v2           #artIndex:I
    .end local v3           #art:Ljava/lang/String;
    .end local v7           #albumArt:Lcom/htc/widget/HtcListItemTileImage;
    .end local v9           #builder:Ljava/lang/StringBuilder;
    .end local v12           #indicator:Lcom/htc/widget/HtcListItemImageButton;
    .end local v19           #minetype:Ljava/lang/String;
    .end local v20           #name:Ljava/lang/String;
    .end local v21           #path:Ljava/lang/String;
    .end local v22           #unknown:Z
    :cond_8
    move-object/from16 v0, v23

    iget-object v1, v0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    iget-object v1, v1, Landroid/database/CharArrayBuffer;->data:[C

    const/4 v4, 0x0

    move-object/from16 v0, v23

    iget-object v5, v0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    iget v5, v5, Landroid/database/CharArrayBuffer;->sizeCopied:I

    invoke-static {v1, v4, v5}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v16

    .line 856
    .local v16, line1:Ljava/lang/String;
    move-object/from16 v0, v23

    iget-object v1, v0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 867
    .end local v16           #line1:Ljava/lang/String;
    .restart local v9       #builder:Ljava/lang/StringBuilder;
    .restart local v20       #name:Ljava/lang/String;
    :cond_9
    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 876
    :cond_a
    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 897
    .end local v20           #name:Ljava/lang/String;
    .restart local v11       #id:I
    .restart local v12       #indicator:Lcom/htc/widget/HtcListItemImageButton;
    :cond_b
    const/16 v1, 0x8

    :try_start_1
    invoke-virtual {v12, v1}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    .line 899
    .end local v11           #id:I
    :catch_0
    move-exception v1

    goto/16 :goto_3

    .line 911
    .restart local v7       #albumArt:Lcom/htc/widget/HtcListItemTileImage;
    .restart local v19       #minetype:Ljava/lang/String;
    .restart local v20       #name:Ljava/lang/String;
    :cond_c
    const/16 v22, 0x0

    goto/16 :goto_4

    .line 919
    .restart local v2       #artIndex:I
    .restart local v3       #art:Ljava/lang/String;
    .restart local v22       #unknown:Z
    :cond_d
    sget-object v1, Lcom/htc/music/carmode/util/CarMusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    invoke-virtual {v1, v2}, Lcom/htc/music/util/MemoryCacheMBitmapByTime;->pull(I)Lcom/htc/music/util/MBitmap;

    move-result-object v14

    .line 920
    .local v14, item:Lcom/htc/music/util/MBitmap;
    if-nez v14, :cond_f

    const/4 v8, 0x0

    .line 921
    .local v8, bitmap:Landroid/graphics/Bitmap;
    :goto_7
    if-nez v14, :cond_10

    const/4 v10, 0x0

    .line 922
    .local v10, decodePath:Ljava/lang/String;
    :goto_8
    if-eqz v8, :cond_e

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_e

    if-eqz v8, :cond_11

    invoke-static {v10, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 923
    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v6, v4

    move v4, v2

    invoke-virtual/range {v1 .. v6}, Lcom/htc/music/util/AsyncImageDecoder;->add(ILjava/lang/String;II[Ljava/lang/Object;)V

    .line 925
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v7, v1}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_5

    .line 920
    .end local v8           #bitmap:Landroid/graphics/Bitmap;
    .end local v10           #decodePath:Ljava/lang/String;
    :cond_f
    invoke-virtual {v14}, Lcom/htc/music/util/MBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    goto :goto_7

    .line 921
    .restart local v8       #bitmap:Landroid/graphics/Bitmap;
    :cond_10
    invoke-virtual {v14}, Lcom/htc/music/util/MBitmap;->getPath()Ljava/lang/String;

    move-result-object v10

    goto :goto_8

    .line 927
    .restart local v10       #decodePath:Ljava/lang/String;
    :cond_11
    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_5

    .line 944
    .end local v8           #bitmap:Landroid/graphics/Bitmap;
    .end local v10           #decodePath:Ljava/lang/String;
    .end local v14           #item:Lcom/htc/music/util/MBitmap;
    .restart local v21       #path:Ljava/lang/String;
    :cond_12
    invoke-static {}, Lcom/htc/music/carmode/util/CarMusicUtils;->isWMDRMSupported()Z

    move-result v1

    if-eqz v1, :cond_13

    if-eqz v19, :cond_13

    const-string v1, "audio/x-wma-drm"

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 945
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mDrmLockIconResId:I

    invoke-virtual {v7, v1}, Lcom/htc/widget/HtcListItemTileImage;->setIndicatorResource(I)V

    .line 946
    invoke-virtual {v7}, Lcom/htc/widget/HtcListItemTileImage;->getChildCount()I

    move-result v1

    const/4 v4, 0x1

    if-le v1, v4, :cond_7

    .line 947
    invoke-virtual {v7}, Lcom/htc/widget/HtcListItemTileImage;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v7, v1}, Lcom/htc/widget/HtcListItemTileImage;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 948
    .restart local v13       #indicatorBubble:Landroid/view/View;
    instance-of v1, v13, Landroid/widget/ImageView;

    if-eqz v1, :cond_7

    .line 949
    check-cast v13, Landroid/widget/ImageView;

    .end local v13           #indicatorBubble:Landroid/view/View;
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v13, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto/16 :goto_6

    .line 955
    :cond_13
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Lcom/htc/widget/HtcListItemTileImage;->setIndicatorBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_6
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 991
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mActivity:Lcom/htc/music/carmode/CarTrackBrowseActivity;

    #getter for: Lcom/htc/music/carmode/CarTrackBrowseActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->access$800(Lcom/htc/music/carmode/CarTrackBrowseActivity;)Landroid/database/Cursor;

    move-result-object v0

    if-eq p1, v0, :cond_3

    .line 992
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mActivity:Lcom/htc/music/carmode/CarTrackBrowseActivity;

    #getter for: Lcom/htc/music/carmode/CarTrackBrowseActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->access$800(Lcom/htc/music/carmode/CarTrackBrowseActivity;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 993
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mActivity:Lcom/htc/music/carmode/CarTrackBrowseActivity;

    #getter for: Lcom/htc/music/carmode/CarTrackBrowseActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->access$800(Lcom/htc/music/carmode/CarTrackBrowseActivity;)Landroid/database/Cursor;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 995
    :cond_0
    if-eqz p1, :cond_1

    .line 996
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 999
    :cond_1
    if-eqz p1, :cond_2

    .line 1002
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mActivity:Lcom/htc/music/carmode/CarTrackBrowseActivity;

    iget-object v1, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mActivity:Lcom/htc/music/carmode/CarTrackBrowseActivity;

    iget-object v1, v1, Lcom/htc/music/carmode/CarTrackBrowseActivity;->mActivityTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1004
    :cond_2
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mActivity:Lcom/htc/music/carmode/CarTrackBrowseActivity;

    #setter for: Lcom/htc/music/carmode/CarTrackBrowseActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v0, p1}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->access$802(Lcom/htc/music/carmode/CarTrackBrowseActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 1005
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mActivity:Lcom/htc/music/carmode/CarTrackBrowseActivity;

    invoke-virtual {v0}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->updateOptionsMenu()V

    .line 1006
    invoke-super {p0, p1}, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1007
    invoke-direct {p0, p1}, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 1009
    :cond_3
    return-void
.end method

.method public getPositionForSection(I)I
    .locals 4
    .parameter "section"

    .prologue
    const/4 v1, 0x0

    .line 1036
    iget-object v2, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mIndexer:Lcom/htc/music/widget/MusicAlphabetIndexer;

    if-nez v2, :cond_1

    move v0, v1

    .line 1042
    :cond_0
    :goto_0
    return v0

    .line 1037
    :cond_1
    iget-object v2, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mIndexer:Lcom/htc/music/widget/MusicAlphabetIndexer;

    invoke-virtual {v2, p1}, Lcom/htc/music/widget/MusicAlphabetIndexer;->getPositionForSection(I)I

    move-result v0

    .line 1039
    .local v0, pos:I
    const-string v2, "title COLLATE NOCASE ASC"

    const-string v3, "track"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 1042
    goto :goto_0
.end method

.method public getQueryHandler()Lcom/htc/music/util/DlArtAsyncQueryHandler;
    .locals 1

    .prologue
    .line 779
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mQueryHandler:Lcom/htc/music/util/DlArtAsyncQueryHandler;

    return-object v0
.end method

.method public getSectionForPosition(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 1046
    const/4 v0, 0x0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1027
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mIndexer:Lcom/htc/music/widget/MusicAlphabetIndexer;

    if-eqz v0, :cond_0

    const-string v0, "title COLLATE NOCASE ASC"

    const-string v1, "track"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1029
    iget-object v0, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mIndexer:Lcom/htc/music/widget/MusicAlphabetIndexer;

    invoke-virtual {v0}, Lcom/htc/music/widget/MusicAlphabetIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    .line 1031
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    const/4 v9, 0x1

    .line 803
    invoke-super {p0, p1, p2, p3}, Lcom/htc/music/widget/HtcSimpleCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 804
    .local v5, v:Landroid/view/View;
    instance-of v7, v5, Lcom/htc/widget/HtcListItem;

    if-eqz v7, :cond_1

    move-object v3, v5

    .line 805
    check-cast v3, Lcom/htc/widget/HtcListItem;

    .line 806
    .local v3, item:Lcom/htc/widget/HtcListItem;
    invoke-virtual {v3, v9}, Lcom/htc/widget/HtcListItem;->setAutoMotiveMode(Z)V

    .line 807
    invoke-virtual {v3}, Lcom/htc/widget/HtcListItem;->getChildCount()I

    move-result v1

    .line 808
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 809
    invoke-virtual {v3, v2}, Lcom/htc/widget/HtcListItem;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 810
    .local v0, child:Landroid/view/View;
    instance-of v7, v0, Lcom/htc/widget/IHtcListItemAutoMotiveControl;

    if-eqz v7, :cond_0

    .line 811
    check-cast v0, Lcom/htc/widget/IHtcListItemAutoMotiveControl;

    .end local v0           #child:Landroid/view/View;
    invoke-interface {v0, v9}, Lcom/htc/widget/IHtcListItemAutoMotiveControl;->setAutoMotiveMode(Z)V

    .line 808
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 816
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v3           #item:Lcom/htc/widget/HtcListItem;
    :cond_1
    const v7, 0x7f080062

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 823
    .local v4, iv:Landroid/widget/ImageView;
    new-instance v6, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter$ViewHolder;

    invoke-direct {v6, p0}, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter$ViewHolder;-><init>(Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;)V

    .line 824
    .local v6, vh:Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter$ViewHolder;
    const v7, 0x7f080024

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v7, v6, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    .line 826
    iget-object v7, v6, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 828
    const v7, 0x7f080023

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/htc/widget/HtcListItemTileImage;

    iput-object v7, v6, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    .line 830
    iget-object v7, v6, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    if-eqz v7, :cond_2

    .line 831
    iget-object v7, v6, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    iget-object v8, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 832
    iget-object v7, v6, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    invoke-virtual {v7, v9}, Lcom/htc/widget/HtcListItemTileImage;->setDarkMode(Z)V

    .line 835
    :cond_2
    const v7, 0x7f080025

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/htc/widget/HtcListItemImageButton;

    iput-object v7, v6, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter$ViewHolder;->listItemRearIcon:Lcom/htc/widget/HtcListItemImageButton;

    .line 837
    new-instance v7, Landroid/database/CharArrayBuffer;

    const/16 v8, 0x64

    invoke-direct {v7, v8}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v7, v6, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter$ViewHolder;->buffer1:Landroid/database/CharArrayBuffer;

    .line 838
    const/16 v7, 0xc8

    new-array v7, v7, [C

    iput-object v7, v6, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter$ViewHolder;->buffer2:[C

    .line 840
    invoke-virtual {v5, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 841
    return-object v5
.end method

.method public varargs onImageDecoded(ILandroid/graphics/Bitmap;J[Ljava/lang/Object;)V
    .locals 10
    .parameter "position"
    .parameter "bitmap"
    .parameter "timeStamp"
    .parameter "varargs"

    .prologue
    .line 1080
    if-nez p2, :cond_1

    .line 1111
    :cond_0
    :goto_0
    return-void

    .line 1081
    :cond_1
    iget-object v9, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mActivity:Lcom/htc/music/carmode/CarTrackBrowseActivity;

    #getter for: Lcom/htc/music/carmode/CarTrackBrowseActivity;->mTrackList:Lcom/htc/widget/HtcListView;
    invoke-static {v9}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->access$1300(Lcom/htc/music/carmode/CarTrackBrowseActivity;)Lcom/htc/widget/HtcListView;

    move-result-object v6

    .line 1082
    .local v6, listView:Lcom/htc/widget/HtcListView;
    invoke-virtual {v6}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v3

    .line 1083
    .local v3, childCount:I
    if-gtz v3, :cond_2

    .line 1084
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 1088
    :cond_2
    const/4 v8, 0x0

    .line 1089
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

    .line 1090
    const/4 v9, 0x0

    aget-object v8, p5, v9

    .end local v8           #path:Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .line 1092
    .restart local v8       #path:Ljava/lang/String;
    :cond_3
    new-instance v2, Lcom/htc/music/util/MBitmap;

    invoke-direct {v2, p2, v8}, Lcom/htc/music/util/MBitmap;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 1093
    .local v2, b:Lcom/htc/music/util/MBitmap;
    sget-object v9, Lcom/htc/music/carmode/util/CarMusicUtils;->sLibraryMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    invoke-virtual {v9, p1, v2, p3, p4}, Lcom/htc/music/util/MemoryCacheMBitmapByTime;->push(ILcom/htc/music/util/MBitmap;J)Z

    move-result v0

    .line 1094
    .local v0, addToCache:Z
    if-eqz v0, :cond_0

    .line 1095
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v3, :cond_0

    .line 1096
    invoke-virtual {v6, v4}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1098
    .local v7, ll:Landroid/view/View;
    if-eqz v7, :cond_4

    .line 1099
    const v9, 0x7f080023

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItemTileImage;

    .line 1101
    .local v1, albumArt:Lcom/htc/widget/HtcListItemTileImage;
    if-eqz v1, :cond_4

    .line 1102
    invoke-virtual {v1}, Lcom/htc/widget/HtcListItemTileImage;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 1104
    .local v5, integer:Ljava/lang/Integer;
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v9, p1, :cond_4

    .line 1105
    invoke-virtual {v1, p2}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1095
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
    .line 1013
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1014
    .local v1, s:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mConstraintIsValid:Z

    if-eqz v2, :cond_2

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mConstraint:Ljava/lang/String;

    if-eqz v2, :cond_1

    :cond_0
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mConstraint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1016
    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1021
    :goto_0
    return-object v0

    .line 1018
    :cond_2
    iget-object v2, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mActivity:Lcom/htc/music/carmode/CarTrackBrowseActivity;

    const/4 v3, 0x0

    #calls: Lcom/htc/music/carmode/CarTrackBrowseActivity;->getTrackCursor(Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    invoke-static {v2, v3, v1}, Lcom/htc/music/carmode/CarTrackBrowseActivity;->access$400(Lcom/htc/music/carmode/CarTrackBrowseActivity;Lcom/htc/music/util/DlArtAsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1019
    .local v0, c:Landroid/database/Cursor;
    iput-object v1, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mConstraint:Ljava/lang/String;

    .line 1020
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/music/carmode/CarTrackBrowseActivity$TrackListAdapter;->mConstraintIsValid:Z

    goto :goto_0
.end method
