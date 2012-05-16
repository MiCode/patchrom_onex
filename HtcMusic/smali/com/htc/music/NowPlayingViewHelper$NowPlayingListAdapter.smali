.class Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;
.super Landroid/widget/BaseAdapter;
.source "NowPlayingViewHelper.java"

# interfaces
.implements Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/NowPlayingViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NowPlayingListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mActivity:Lcom/htc/music/NowPlayingViewHelper;

.field private mContext:Landroid/content/Context;

.field private final mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mResID:I

.field private final mUnknownArtist:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/music/NowPlayingViewHelper;


# direct methods
.method public constructor <init>(Lcom/htc/music/NowPlayingViewHelper;Landroid/content/Context;Lcom/htc/music/NowPlayingViewHelper;I)V
    .locals 9
    .parameter
    .parameter "context"
    .parameter "currentactivity"
    .parameter "resId"

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 3191
    iput-object p1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 3185
    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;->mActivity:Lcom/htc/music/NowPlayingViewHelper;

    .line 3186
    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;->mContext:Landroid/content/Context;

    .line 3193
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 3194
    iput p4, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;->mResID:I

    .line 3195
    iput-object p3, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;->mActivity:Lcom/htc/music/NowPlayingViewHelper;

    .line 3196
    iput-object p2, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;->mContext:Landroid/content/Context;

    .line 3198
    const v0, 0x7f07004d

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;->mUnknownArtist:Ljava/lang/String;

    .line 3201
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020050

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 3203
    .local v7, b:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 3204
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;->setFilterBitmap(Z)V

    .line 3205
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;->setDither(Z)V

    .line 3207
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;->mActivity:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v0}, Lcom/htc/music/NowPlayingViewHelper;->access$3700(Lcom/htc/music/NowPlayingViewHelper;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3209
    iget-object v8, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;->mActivity:Lcom/htc/music/NowPlayingViewHelper;

    new-instance v0, Lcom/htc/music/util/AsyncImageDecoder;

    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v2, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object v2, p0

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/htc/music/util/AsyncImageDecoder;-><init>(Landroid/content/Context;Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;IIZZ)V

    #setter for: Lcom/htc/music/NowPlayingViewHelper;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v8, v0}, Lcom/htc/music/NowPlayingViewHelper;->access$3702(Lcom/htc/music/NowPlayingViewHelper;Lcom/htc/music/util/AsyncImageDecoder;)Lcom/htc/music/util/AsyncImageDecoder;

    .line 3215
    :goto_0
    return-void

    .line 3213
    :cond_0
    const-string v0, "[NowPlayingViewHelper]"

    const-string v1, "NowPlayingListAdapter...mAsyncImageDecoder is not null, don\'t new it again..."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$4000(Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;)Lcom/htc/music/NowPlayingViewHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3181
    iget-object v0, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;->mActivity:Lcom/htc/music/NowPlayingViewHelper;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 3218
    const/4 v0, 0x0

    .line 3219
    .local v0, count:I
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;->mActivity:Lcom/htc/music/NowPlayingViewHelper;

    iget-object v1, v1, Lcom/htc/music/NowPlayingViewHelper;->mLowerSearchFilter:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 3220
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mNowPlayingItemsArrayList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/music/NowPlayingViewHelper;->access$2000(Lcom/htc/music/NowPlayingViewHelper;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3225
    :goto_0
    return v0

    .line 3223
    :cond_0
    iget-object v1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mFilterPosToOldPosTable:Ljava/util/Hashtable;
    invoke-static {v1}, Lcom/htc/music/NowPlayingViewHelper;->access$3400(Lcom/htc/music/NowPlayingViewHelper;)Ljava/util/Hashtable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 3229
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 3233
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 19
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 3240
    if-nez p2, :cond_7

    .line 3241
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;->mResID:I

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 3243
    new-instance v5, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter$ViewHolder;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter$ViewHolder;-><init>(Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;)V

    .line 3244
    .local v5, holder:Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter$ViewHolder;
    const v13, 0x7f080024

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v13, v5, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    .line 3245
    const v13, 0x7f080025

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/htc/widget/HtcListItemImageButton;

    iput-object v13, v5, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter$ViewHolder;->play_indicator:Lcom/htc/widget/HtcListItemImageButton;

    .line 3246
    iget-object v13, v5, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter$ViewHolder;->play_indicator:Lcom/htc/widget/HtcListItemImageButton;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    .line 3247
    const v13, 0x7f080023

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/htc/widget/HtcListItemTileImage;

    iput-object v13, v5, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter$ViewHolder;->icon:Lcom/htc/widget/HtcListItemTileImage;

    .line 3248
    const v13, 0x7f080026

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/htc/widget/HtcRimImageButton;

    iput-object v13, v5, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter$ViewHolder;->track_option:Lcom/htc/widget/HtcRimImageButton;

    .line 3250
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 3260
    :goto_0
    iget-object v13, v5, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter$ViewHolder;->track_option:Lcom/htc/widget/HtcRimImageButton;

    if-eqz v13, :cond_0

    .line 3261
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 3262
    .local v4, data:Landroid/os/Bundle;
    const-string v13, "position"

    move/from16 v0, p1

    invoke-virtual {v4, v13, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3264
    iget-object v13, v5, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter$ViewHolder;->track_option:Lcom/htc/widget/HtcRimImageButton;

    invoke-virtual {v13, v4}, Lcom/htc/widget/HtcRimImageButton;->setTag(Ljava/lang/Object;)V

    .line 3268
    .end local v4           #data:Landroid/os/Bundle;
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mNowPlayingItemsArrayList:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/htc/music/NowPlayingViewHelper;->access$2000(Lcom/htc/music/NowPlayingViewHelper;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_e

    .line 3271
    const/4 v3, 0x0

    .line 3273
    .local v3, curListItem:Landroid/content/ContentValues;
    move/from16 v11, p1

    .line 3274
    .local v11, realPos:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;->mActivity:Lcom/htc/music/NowPlayingViewHelper;

    iget-object v13, v13, Lcom/htc/music/NowPlayingViewHelper;->mLowerSearchFilter:Ljava/lang/String;

    if-eqz v13, :cond_1

    .line 3276
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mFilterPosToOldPosTable:Ljava/util/Hashtable;
    invoke-static {v13}, Lcom/htc/music/NowPlayingViewHelper;->access$3400(Lcom/htc/music/NowPlayingViewHelper;)Ljava/util/Hashtable;

    move-result-object v13

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 3277
    .local v10, pos:Ljava/lang/Integer;
    if-eqz v10, :cond_1

    .line 3278
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 3281
    .end local v10           #pos:Ljava/lang/Integer;
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mNowPlayingItemsArrayList:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/htc/music/NowPlayingViewHelper;->access$2000(Lcom/htc/music/NowPlayingViewHelper;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #curListItem:Landroid/content/ContentValues;
    check-cast v3, Landroid/content/ContentValues;

    .line 3283
    .restart local v3       #curListItem:Landroid/content/ContentValues;
    const/4 v12, 0x0

    .line 3286
    .local v12, tmpStr:Ljava/lang/String;
    const-string v13, "title"

    invoke-virtual {v3, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 3287
    if-eqz v12, :cond_2

    .line 3288
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;->mActivity:Lcom/htc/music/NowPlayingViewHelper;

    iget-object v13, v13, Lcom/htc/music/NowPlayingViewHelper;->mLowerSearchFilter:Ljava/lang/String;

    if-nez v13, :cond_8

    .line 3290
    iget-object v13, v5, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v13, v12}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 3300
    :cond_2
    :goto_1
    const-string v13, "artist"

    invoke-virtual {v3, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 3301
    if-eqz v12, :cond_3

    const-string v13, "<unknown>"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 3302
    :cond_3
    iget-object v13, v5, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;->mUnknownArtist:Ljava/lang/String;

    invoke-virtual {v13, v14}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    .line 3307
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;
    invoke-static {v13}, Lcom/htc/music/NowPlayingViewHelper;->access$3800(Lcom/htc/music/NowPlayingViewHelper;)Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    move-result-object v13

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/htc/music/util/MemoryCacheBitmapByPosition;->pull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 3310
    .local v2, cacheBmp:Landroid/graphics/Bitmap;
    iget-object v13, v5, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter$ViewHolder;->icon:Lcom/htc/widget/HtcListItemTileImage;

    invoke-virtual {v13, v2}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    .line 3312
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v13

    if-nez v13, :cond_a

    .line 3314
    iget-object v13, v5, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter$ViewHolder;->icon:Lcom/htc/widget/HtcListItemTileImage;

    if-eqz v13, :cond_4

    .line 3315
    iget-object v13, v5, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter$ViewHolder;->icon:Lcom/htc/widget/HtcListItemTileImage;

    invoke-virtual {v13, v2}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    .line 3366
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mCurrentPosition:I
    invoke-static {v13}, Lcom/htc/music/NowPlayingViewHelper;->access$2900(Lcom/htc/music/NowPlayingViewHelper;)I

    move-result v13

    if-ne v13, v11, :cond_5

    .line 3368
    iget-object v13, v5, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter$ViewHolder;->play_indicator:Lcom/htc/widget/HtcListItemImageButton;

    const v14, 0x2080089

    invoke-virtual {v13, v14}, Lcom/htc/widget/HtcListItemImageButton;->setImageResource(I)V

    .line 3369
    iget-object v13, v5, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter$ViewHolder;->play_indicator:Lcom/htc/widget/HtcListItemImageButton;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    .line 3374
    :cond_5
    iget-object v13, v5, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter$ViewHolder;->track_option:Lcom/htc/widget/HtcRimImageButton;

    if-eqz v13, :cond_6

    .line 3377
    iget-object v13, v5, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter$ViewHolder;->track_option:Lcom/htc/widget/HtcRimImageButton;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;->mContext:Landroid/content/Context;

    const-string v15, "common_circle_outer"

    const v16, 0x208001f

    invoke-static/range {v14 .. v16}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;->mContext:Landroid/content/Context;

    const-string v16, "common_circle_pressed"

    const v17, 0x2080020

    invoke-static/range {v15 .. v17}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const-string v17, "common_circle_rest"

    const v18, 0x2080021

    invoke-static/range {v16 .. v18}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v16

    invoke-virtual/range {v13 .. v16}, Lcom/htc/widget/HtcRimImageButton;->setButtonBackgroundResource(III)V

    .line 3381
    iget-object v13, v5, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter$ViewHolder;->track_option:Lcom/htc/widget/HtcRimImageButton;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/htc/widget/HtcRimImageButton;->setFocusable(Z)V

    .line 3382
    iget-object v13, v5, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter$ViewHolder;->track_option:Lcom/htc/widget/HtcRimImageButton;

    const v14, 0x7f020028

    invoke-virtual {v13, v14}, Lcom/htc/widget/HtcRimImageButton;->setIconResource(I)V

    .line 3383
    iget-object v13, v5, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter$ViewHolder;->track_option:Lcom/htc/widget/HtcRimImageButton;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/htc/widget/HtcRimImageButton;->setVisibility(I)V

    .line 3384
    iget-object v13, v5, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter$ViewHolder;->track_option:Lcom/htc/widget/HtcRimImageButton;

    new-instance v14, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter$1;-><init>(Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;)V

    invoke-virtual {v13, v14}, Lcom/htc/widget/HtcRimImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3400
    .end local v2           #cacheBmp:Landroid/graphics/Bitmap;
    .end local v3           #curListItem:Landroid/content/ContentValues;
    .end local v11           #realPos:I
    .end local v12           #tmpStr:Ljava/lang/String;
    :cond_6
    :goto_4
    const-string v13, "[NowPlayingViewHelper]"

    const-string v14, "########################################### getView() End"

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3401
    return-object p2

    .line 3255
    .end local v5           #holder:Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter$ViewHolder;
    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter$ViewHolder;

    .line 3256
    .restart local v5       #holder:Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter$ViewHolder;
    iget-object v13, v5, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter$ViewHolder;->play_indicator:Lcom/htc/widget/HtcListItemImageButton;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    .line 3257
    iget-object v13, v5, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter$ViewHolder;->icon:Lcom/htc/widget/HtcListItemTileImage;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/htc/widget/HtcListItemTileImage;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 3294
    .restart local v3       #curListItem:Landroid/content/ContentValues;
    .restart local v11       #realPos:I
    .restart local v12       #tmpStr:Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;->mActivity:Lcom/htc/music/NowPlayingViewHelper;

    iget-object v14, v14, Lcom/htc/music/NowPlayingViewHelper;->mLowerSearchFilter:Ljava/lang/String;

    invoke-static {v13, v12, v14}, Lcom/htc/music/util/MusicUtils;->getMarkedString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 3295
    .local v7, markedString:Ljava/lang/CharSequence;
    iget-object v13, v5, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v13, v7}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 3304
    .end local v7           #markedString:Ljava/lang/CharSequence;
    :cond_9
    iget-object v13, v5, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v13, v12}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 3320
    .restart local v2       #cacheBmp:Landroid/graphics/Bitmap;
    :cond_a
    const/4 v6, 0x1

    .line 3322
    .local v6, isNeedToQuery:Z
    const-string v13, "albumartpath"

    invoke-virtual {v3, v13}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 3323
    const-string v13, "albumartpath"

    invoke-virtual {v3, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3324
    .local v9, path:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3325
    .local v1, albumArtFile:Ljava/io/File;
    const-string v13, "[NowPlayingViewHelper]"

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

    .line 3327
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_c

    .line 3328
    const/4 v6, 0x0

    .line 3335
    .end local v1           #albumArtFile:Ljava/io/File;
    .end local v9           #path:Ljava/lang/String;
    :cond_b
    :goto_5
    if-nez v6, :cond_d

    .line 3338
    const-string v13, "albumartpath"

    invoke-virtual {v3, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3340
    .restart local v9       #path:Ljava/lang/String;
    const-string v13, "[NowPlayingViewHelper]"

    const-string v14, "## Don\'t query it!! There is no cache, but there is albumartpath in SD card. Try to decode it."

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3342
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;->mActivity:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v13}, Lcom/htc/music/NowPlayingViewHelper;->access$3700(Lcom/htc/music/NowPlayingViewHelper;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v13

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-virtual {v13, v11, v9, v11, v14}, Lcom/htc/music/util/AsyncImageDecoder;->add(ILjava/lang/String;I[Ljava/lang/Object;)V

    .line 3344
    iget-object v13, v5, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter$ViewHolder;->icon:Lcom/htc/widget/HtcListItemTileImage;

    if-eqz v13, :cond_4

    .line 3345
    iget-object v13, v5, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter$ViewHolder;->icon:Lcom/htc/widget/HtcListItemTileImage;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v13, v14}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    .line 3330
    .restart local v1       #albumArtFile:Ljava/io/File;
    :cond_c
    const/4 v6, 0x1

    .line 3331
    const-string v13, "albumartpath"

    invoke-virtual {v3, v13}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto :goto_5

    .line 3349
    .end local v1           #albumArtFile:Ljava/io/File;
    .end local v9           #path:Ljava/lang/String;
    :cond_d
    const-string v13, "[NowPlayingViewHelper]"

    const-string v14, "## Query it!! There is no cache and no in SD card. Send message to DMP service to get album art path."

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3351
    iget-object v13, v5, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter$ViewHolder;->icon:Lcom/htc/widget/HtcListItemTileImage;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v13, v14}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3353
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mIsScrolling:Z
    invoke-static {v13}, Lcom/htc/music/NowPlayingViewHelper;->access$3300(Lcom/htc/music/NowPlayingViewHelper;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 3356
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mNonUIHandler:Lcom/htc/music/NowPlayingViewHelper$NonUIHandler;
    invoke-static {v13}, Lcom/htc/music/NowPlayingViewHelper;->access$3900(Lcom/htc/music/NowPlayingViewHelper;)Lcom/htc/music/NowPlayingViewHelper$NonUIHandler;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/htc/music/NowPlayingViewHelper$NonUIHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    .line 3357
    .local v8, msg:Landroid/os/Message;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 3358
    .restart local v4       #data:Landroid/os/Bundle;
    const-string v13, "position"

    invoke-virtual {v4, v13, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3359
    invoke-virtual {v8, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 3360
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mNonUIHandler:Lcom/htc/music/NowPlayingViewHelper$NonUIHandler;
    invoke-static {v13}, Lcom/htc/music/NowPlayingViewHelper;->access$3900(Lcom/htc/music/NowPlayingViewHelper;)Lcom/htc/music/NowPlayingViewHelper$NonUIHandler;

    move-result-object v13

    invoke-virtual {v13, v8}, Lcom/htc/music/NowPlayingViewHelper$NonUIHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_3

    .line 3398
    .end local v2           #cacheBmp:Landroid/graphics/Bitmap;
    .end local v3           #curListItem:Landroid/content/ContentValues;
    .end local v4           #data:Landroid/os/Bundle;
    .end local v6           #isNeedToQuery:Z
    .end local v8           #msg:Landroid/os/Message;
    .end local v11           #realPos:I
    .end local v12           #tmpStr:Ljava/lang/String;
    :cond_e
    const-string v13, "[NowPlayingViewHelper]"

    const-string v14, "getView()...mNowPlayingItemsArrayList is empty..."

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4
.end method

.method public varargs onImageDecoded(ILandroid/graphics/Bitmap;J[Ljava/lang/Object;)V
    .locals 7
    .parameter "position"
    .parameter "bitmap"
    .parameter "timeStamp"
    .parameter "varargs"

    .prologue
    .line 3417
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    iget-object v6, v6, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v6}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v2

    .line 3418
    .local v2, childCount:I
    if-gtz v2, :cond_1

    .line 3438
    :cond_0
    return-void

    .line 3422
    :cond_1
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    #getter for: Lcom/htc/music/NowPlayingViewHelper;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;
    invoke-static {v6}, Lcom/htc/music/NowPlayingViewHelper;->access$3800(Lcom/htc/music/NowPlayingViewHelper;)Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Lcom/htc/music/util/MemoryCacheBitmapByPosition;->push(ILandroid/graphics/Bitmap;)Z

    move-result v0

    .line 3423
    .local v0, addedToCache:Z
    if-eqz v0, :cond_0

    .line 3425
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 3426
    iget-object v6, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;->this$0:Lcom/htc/music/NowPlayingViewHelper;

    iget-object v6, v6, Lcom/htc/music/NowPlayingViewHelper;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v6, v3}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 3427
    .local v5, ll:Landroid/view/View;
    if-nez v5, :cond_3

    .line 3425
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3429
    :cond_3
    const v6, 0x7f080023

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItemTileImage;

    .line 3430
    .local v1, albumArt:Lcom/htc/widget/HtcListItemTileImage;
    if-eqz v1, :cond_2

    .line 3432
    invoke-virtual {v1}, Lcom/htc/widget/HtcListItemTileImage;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 3433
    .local v4, integer:Ljava/lang/Integer;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, p1, :cond_2

    .line 3434
    invoke-virtual {v1, p2}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method public setActivity(Lcom/htc/music/NowPlayingViewHelper;)V
    .locals 0
    .parameter "newactivity"

    .prologue
    .line 3405
    iput-object p1, p0, Lcom/htc/music/NowPlayingViewHelper$NowPlayingListAdapter;->mActivity:Lcom/htc/music/NowPlayingViewHelper;

    .line 3406
    return-void
.end method
