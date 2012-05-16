.class Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;
.super Landroid/widget/BaseAdapter;
.source "TrackBrowserActivity.java"

# interfaces
.implements Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/TrackBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NowPlayingListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

.field private final mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mResID:I

.field private final mUnknownArtist:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;


# direct methods
.method public constructor <init>(Lcom/htc/music/browserlayer/TrackBrowserActivity;Landroid/content/Context;Lcom/htc/music/browserlayer/TrackBrowserActivity;I)V
    .locals 9
    .parameter
    .parameter "context"
    .parameter "currentactivity"
    .parameter "resId"

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 5350
    iput-object p1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 5345
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    .line 5352
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 5353
    iput p4, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;->mResID:I

    .line 5354
    iput-object p3, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    .line 5356
    const v0, 0x7f07004d

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;->mUnknownArtist:Ljava/lang/String;

    .line 5359
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020050

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 5361
    .local v7, b:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 5362
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;->setFilterBitmap(Z)V

    .line 5363
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;->setDither(Z)V

    .line 5365
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$5600(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5367
    iget-object v8, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    new-instance v0, Lcom/htc/music/util/AsyncImageDecoder;

    invoke-virtual {p1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v2, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object v2, p0

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/htc/music/util/AsyncImageDecoder;-><init>(Landroid/content/Context;Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;IIZZ)V

    #setter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v8, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$5602(Lcom/htc/music/browserlayer/TrackBrowserActivity;Lcom/htc/music/util/AsyncImageDecoder;)Lcom/htc/music/util/AsyncImageDecoder;

    .line 5373
    :goto_0
    return-void

    .line 5371
    :cond_0
    const-string v0, "[PluginNowPlayingListActivity]"

    const-string v1, "NowPlayingListAdapter...mAsyncImageDecoder is not null, don\'t new it again..."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$6100(Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;)Lcom/htc/music/browserlayer/TrackBrowserActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5341
    iget-object v0, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 5376
    const/4 v0, 0x0

    .line 5377
    .local v0, count:I
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    iget-object v1, v1, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mLowerSearchFilter:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 5378
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNowPlayingItemsArrayList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$5200(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5383
    :goto_0
    return v0

    .line 5381
    :cond_0
    iget-object v1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mFilterPosToOldPosTable:Ljava/util/Hashtable;
    invoke-static {v1}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$5100(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/util/Hashtable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 5387
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 5391
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 19
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 5395
    const-string v13, "[PluginNowPlayingListActivity]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "########################################### getView() position => "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", ####Begin"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5399
    if-nez p2, :cond_6

    .line 5400
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;->mResID:I

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 5402
    new-instance v5, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter$ViewHolder;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter$ViewHolder;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;)V

    .line 5403
    .local v5, holder:Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter$ViewHolder;
    const v13, 0x7f080024

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v13, v5, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    .line 5404
    const v13, 0x7f080025

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/htc/widget/HtcListItemImageButton;

    iput-object v13, v5, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter$ViewHolder;->play_indicator:Lcom/htc/widget/HtcListItemImageButton;

    .line 5405
    iget-object v13, v5, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter$ViewHolder;->play_indicator:Lcom/htc/widget/HtcListItemImageButton;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    .line 5406
    const v13, 0x7f080023

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/htc/widget/HtcListItemTileImage;

    iput-object v13, v5, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter$ViewHolder;->icon:Lcom/htc/widget/HtcListItemTileImage;

    .line 5407
    const v13, 0x7f080026

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/htc/widget/HtcRimImageButton;

    iput-object v13, v5, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter$ViewHolder;->track_option:Lcom/htc/widget/HtcRimImageButton;

    .line 5408
    iget-object v13, v5, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter$ViewHolder;->track_option:Lcom/htc/widget/HtcRimImageButton;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    const-string v15, "common_circle_outer"

    const v16, 0x208001f

    invoke-static/range {v14 .. v16}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    const-string v16, "common_circle_pressed"

    const v17, 0x2080020

    invoke-static/range {v15 .. v17}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    move-object/from16 v16, v0

    const-string v17, "common_circle_rest"

    const v18, 0x2080021

    invoke-static/range {v16 .. v18}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v16

    invoke-virtual/range {v13 .. v16}, Lcom/htc/widget/HtcRimImageButton;->setButtonBackgroundResource(III)V

    .line 5412
    iget-object v13, v5, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter$ViewHolder;->track_option:Lcom/htc/widget/HtcRimImageButton;

    const v14, 0x7f020028

    invoke-virtual {v13, v14}, Lcom/htc/widget/HtcRimImageButton;->setIconResource(I)V

    .line 5413
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 5422
    :goto_0
    iget-object v13, v5, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter$ViewHolder;->track_option:Lcom/htc/widget/HtcRimImageButton;

    if-eqz v13, :cond_0

    .line 5423
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 5424
    .local v4, data:Landroid/os/Bundle;
    const-string v13, "position"

    move/from16 v0, p1

    invoke-virtual {v4, v13, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5426
    iget-object v13, v5, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter$ViewHolder;->track_option:Lcom/htc/widget/HtcRimImageButton;

    invoke-virtual {v13, v4}, Lcom/htc/widget/HtcRimImageButton;->setTag(Ljava/lang/Object;)V

    .line 5429
    .end local v4           #data:Landroid/os/Bundle;
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNowPlayingItemsArrayList:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$5200(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_e

    .line 5432
    const/4 v3, 0x0

    .line 5434
    .local v3, curListItem:Landroid/content/ContentValues;
    move/from16 v11, p1

    .line 5435
    .local v11, realPos:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    iget-object v13, v13, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mLowerSearchFilter:Ljava/lang/String;

    if-eqz v13, :cond_1

    .line 5437
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mFilterPosToOldPosTable:Ljava/util/Hashtable;
    invoke-static {v13}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$5100(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/util/Hashtable;

    move-result-object v13

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 5438
    .local v10, pos:Ljava/lang/Integer;
    if-eqz v10, :cond_1

    .line 5439
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 5442
    .end local v10           #pos:Ljava/lang/Integer;
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNowPlayingItemsArrayList:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$5200(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #curListItem:Landroid/content/ContentValues;
    check-cast v3, Landroid/content/ContentValues;

    .line 5444
    .restart local v3       #curListItem:Landroid/content/ContentValues;
    const/4 v12, 0x0

    .line 5447
    .local v12, tmpStr:Ljava/lang/String;
    const-string v13, "title"

    invoke-virtual {v3, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 5448
    if-eqz v12, :cond_2

    .line 5449
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    iget-object v13, v13, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mLowerSearchFilter:Ljava/lang/String;

    if-nez v13, :cond_7

    .line 5451
    iget-object v13, v5, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v13, v12}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 5460
    :cond_2
    :goto_1
    const-string v13, "artist"

    invoke-virtual {v3, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 5461
    if-eqz v12, :cond_3

    const-string v13, "<unknown>"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 5462
    :cond_3
    iget-object v13, v5, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;->mUnknownArtist:Ljava/lang/String;

    invoke-virtual {v13, v14}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    .line 5467
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;
    invoke-static {v13}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$5800(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    move-result-object v13

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/htc/music/util/MemoryCacheBitmapByPosition;->pull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 5470
    .local v2, cacheBmp:Landroid/graphics/Bitmap;
    iget-object v13, v5, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter$ViewHolder;->icon:Lcom/htc/widget/HtcListItemTileImage;

    new-instance v14, Ljava/lang/Integer;

    invoke-direct {v14, v11}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v13, v14}, Lcom/htc/widget/HtcListItemTileImage;->setTag(Ljava/lang/Object;)V

    .line 5472
    if-eqz v2, :cond_9

    .line 5474
    iget-object v13, v5, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter$ViewHolder;->icon:Lcom/htc/widget/HtcListItemTileImage;

    if-eqz v13, :cond_4

    .line 5475
    iget-object v13, v5, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter$ViewHolder;->icon:Lcom/htc/widget/HtcListItemTileImage;

    invoke-virtual {v13, v2}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    .line 5526
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentPosition:I
    invoke-static {v13}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$6000(Lcom/htc/music/browserlayer/TrackBrowserActivity;)I

    move-result v13

    if-ne v13, v11, :cond_d

    .line 5527
    iget-object v13, v5, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter$ViewHolder;->play_indicator:Lcom/htc/widget/HtcListItemImageButton;

    const v14, 0x2080089

    invoke-virtual {v13, v14}, Lcom/htc/widget/HtcListItemImageButton;->setImageResource(I)V

    .line 5528
    iget-object v13, v5, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter$ViewHolder;->play_indicator:Lcom/htc/widget/HtcListItemImageButton;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    .line 5529
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #setter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mCurrentPosition:I
    invoke-static {v13, v11}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$6002(Lcom/htc/music/browserlayer/TrackBrowserActivity;I)I

    .line 5535
    :goto_4
    iget-object v13, v5, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter$ViewHolder;->track_option:Lcom/htc/widget/HtcRimImageButton;

    if-eqz v13, :cond_5

    .line 5538
    iget-object v13, v5, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter$ViewHolder;->track_option:Lcom/htc/widget/HtcRimImageButton;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/htc/widget/HtcRimImageButton;->setVisibility(I)V

    .line 5539
    iget-object v13, v5, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter$ViewHolder;->track_option:Lcom/htc/widget/HtcRimImageButton;

    new-instance v14, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter$1;-><init>(Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;)V

    invoke-virtual {v13, v14}, Lcom/htc/widget/HtcRimImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5555
    .end local v2           #cacheBmp:Landroid/graphics/Bitmap;
    .end local v3           #curListItem:Landroid/content/ContentValues;
    .end local v11           #realPos:I
    .end local v12           #tmpStr:Ljava/lang/String;
    :cond_5
    :goto_5
    const-string v13, "[PluginNowPlayingListActivity]"

    const-string v14, "########################################### getView() End"

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5556
    return-object p2

    .line 5418
    .end local v5           #holder:Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter$ViewHolder;
    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter$ViewHolder;

    .line 5419
    .restart local v5       #holder:Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter$ViewHolder;
    iget-object v13, v5, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter$ViewHolder;->icon:Lcom/htc/widget/HtcListItemTileImage;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/htc/widget/HtcListItemTileImage;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 5454
    .restart local v3       #curListItem:Landroid/content/ContentValues;
    .restart local v11       #realPos:I
    .restart local v12       #tmpStr:Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    iget-object v14, v14, Lcom/htc/music/browserlayer/TrackBrowserActivity;->mLowerSearchFilter:Ljava/lang/String;

    #calls: Lcom/htc/music/browserlayer/TrackBrowserActivity;->getMarkedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    invoke-static {v13, v12, v14}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$5700(Lcom/htc/music/browserlayer/TrackBrowserActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 5455
    .local v7, markedString:Ljava/lang/CharSequence;
    iget-object v13, v5, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v13, v7}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 5464
    .end local v7           #markedString:Ljava/lang/CharSequence;
    :cond_8
    iget-object v13, v5, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v13, v12}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 5480
    .restart local v2       #cacheBmp:Landroid/graphics/Bitmap;
    :cond_9
    const/4 v6, 0x1

    .line 5482
    .local v6, isNeedToQuery:Z
    const-string v13, "albumartpath"

    invoke-virtual {v3, v13}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 5483
    const-string v13, "albumartpath"

    invoke-virtual {v3, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 5484
    .local v9, path:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5485
    .local v1, albumArtFile:Ljava/io/File;
    const-string v13, "[PluginNowPlayingListActivity]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "## curListItem.containsKey(albumartpath)...path = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5487
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_b

    .line 5488
    const/4 v6, 0x0

    .line 5495
    .end local v1           #albumArtFile:Ljava/io/File;
    .end local v9           #path:Ljava/lang/String;
    :cond_a
    :goto_6
    if-nez v6, :cond_c

    .line 5498
    const-string v13, "albumartpath"

    invoke-virtual {v3, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 5500
    .restart local v9       #path:Ljava/lang/String;
    const-string v13, "[PluginNowPlayingListActivity]"

    const-string v14, "## Don\'t query it!! There is no cache, but there is albumartpath in SD card. Try to decode it."

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5502
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v13}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$5600(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v13

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-virtual {v13, v11, v9, v11, v14}, Lcom/htc/music/util/AsyncImageDecoder;->add(ILjava/lang/String;I[Ljava/lang/Object;)V

    .line 5504
    iget-object v13, v5, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter$ViewHolder;->icon:Lcom/htc/widget/HtcListItemTileImage;

    if-eqz v13, :cond_4

    .line 5505
    iget-object v13, v5, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter$ViewHolder;->icon:Lcom/htc/widget/HtcListItemTileImage;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v13, v14}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    .line 5490
    .restart local v1       #albumArtFile:Ljava/io/File;
    :cond_b
    const/4 v6, 0x1

    .line 5491
    const-string v13, "albumartpath"

    invoke-virtual {v3, v13}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto :goto_6

    .line 5509
    .end local v1           #albumArtFile:Ljava/io/File;
    .end local v9           #path:Ljava/lang/String;
    :cond_c
    const-string v13, "[PluginNowPlayingListActivity]"

    const-string v14, "## Query it!! There is no cache and no in SD card. Send message to DMP service to get album art path."

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5511
    iget-object v13, v5, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter$ViewHolder;->icon:Lcom/htc/widget/HtcListItemTileImage;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v13, v14}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5513
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mIsScrolling:Z
    invoke-static {v13}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$5000(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 5516
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNonUIHandler:Lcom/htc/music/browserlayer/TrackBrowserActivity$NonUIHandler;
    invoke-static {v13}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$5900(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Lcom/htc/music/browserlayer/TrackBrowserActivity$NonUIHandler;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/htc/music/browserlayer/TrackBrowserActivity$NonUIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    .line 5517
    .local v8, msg:Landroid/os/Message;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 5518
    .restart local v4       #data:Landroid/os/Bundle;
    const-string v13, "position"

    invoke-virtual {v4, v13, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5519
    invoke-virtual {v8, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 5520
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mNonUIHandler:Lcom/htc/music/browserlayer/TrackBrowserActivity$NonUIHandler;
    invoke-static {v13}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$5900(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Lcom/htc/music/browserlayer/TrackBrowserActivity$NonUIHandler;

    move-result-object v13

    invoke-virtual {v13, v8}, Lcom/htc/music/browserlayer/TrackBrowserActivity$NonUIHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_3

    .line 5531
    .end local v4           #data:Landroid/os/Bundle;
    .end local v6           #isNeedToQuery:Z
    .end local v8           #msg:Landroid/os/Message;
    :cond_d
    iget-object v13, v5, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter$ViewHolder;->play_indicator:Lcom/htc/widget/HtcListItemImageButton;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    goto/16 :goto_4

    .line 5553
    .end local v2           #cacheBmp:Landroid/graphics/Bitmap;
    .end local v3           #curListItem:Landroid/content/ContentValues;
    .end local v11           #realPos:I
    .end local v12           #tmpStr:Ljava/lang/String;
    :cond_e
    const-string v13, "[PluginNowPlayingListActivity]"

    const-string v14, "getView()...mNowPlayingItemsArrayList is empty..."

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5
.end method

.method public varargs onImageDecoded(ILandroid/graphics/Bitmap;J[Ljava/lang/Object;)V
    .locals 9
    .parameter "position"
    .parameter "bitmap"
    .parameter "timeStamp"
    .parameter "arg0"

    .prologue
    .line 5571
    if-nez p2, :cond_1

    .line 5572
    const-string v6, "[TrackBrowser]"

    const-string v7, "onImageDecoded: bitmap is null"

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5600
    :cond_0
    return-void

    .line 5575
    :cond_1
    const-string v6, "[TrackBrowser]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onImageDecoded: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5576
    iget-object v6, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;
    invoke-static {v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$2300(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Lcom/htc/widget/HtcListView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v2

    .line 5577
    .local v2, childCount:I
    if-lez v2, :cond_0

    .line 5581
    iget-object v6, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;
    invoke-static {v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$5800(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Lcom/htc/music/util/MemoryCacheBitmapByPosition;->push(ILandroid/graphics/Bitmap;)Z

    move-result v0

    .line 5582
    .local v0, addedToCache:Z
    if-eqz v0, :cond_0

    .line 5583
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 5584
    iget-object v6, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;->this$0:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/TrackBrowserActivity;->mTrackList:Lcom/htc/widget/HtcListView;
    invoke-static {v6}, Lcom/htc/music/browserlayer/TrackBrowserActivity;->access$2300(Lcom/htc/music/browserlayer/TrackBrowserActivity;)Lcom/htc/widget/HtcListView;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 5586
    .local v5, ll:Landroid/view/View;
    if-eqz v5, :cond_2

    .line 5587
    const v6, 0x7f080023

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItemTileImage;

    .line 5589
    .local v1, albumArt:Lcom/htc/widget/HtcListItemTileImage;
    if-eqz v1, :cond_2

    .line 5590
    invoke-virtual {v1}, Lcom/htc/widget/HtcListItemTileImage;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 5592
    .local v4, integer:Ljava/lang/Integer;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, p1, :cond_2

    .line 5593
    invoke-virtual {v1, p2}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    .line 5583
    .end local v1           #albumArt:Lcom/htc/widget/HtcListItemTileImage;
    .end local v4           #integer:Ljava/lang/Integer;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public setActivity(Lcom/htc/music/browserlayer/TrackBrowserActivity;)V
    .locals 0
    .parameter "newactivity"

    .prologue
    .line 5560
    iput-object p1, p0, Lcom/htc/music/browserlayer/TrackBrowserActivity$NowPlayingListAdapter;->mActivity:Lcom/htc/music/browserlayer/TrackBrowserActivity;

    .line 5561
    return-void
.end method
