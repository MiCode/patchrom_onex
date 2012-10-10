.class Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;
.super Landroid/widget/BaseAdapter;
.source "LandingPageActivity.java"

# interfaces
.implements Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/LandingPageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RecentAlbumListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mActivityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/music/LandingPageActivity;",
            ">;"
        }
    .end annotation
.end field

.field private final mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/music/LandingPageActivity;)V
    .locals 9
    .parameter "context"
    .parameter "currentactivity"

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 1185
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1186
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 1187
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;

    .line 1190
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020052

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1192
    .local v7, b:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 1193
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;->setFilterBitmap(Z)V

    .line 1194
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;->setDither(Z)V

    .line 1196
    iget-object v0, p0, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/music/LandingPageActivity;

    .line 1197
    .local v8, tempActivity:Lcom/htc/music/LandingPageActivity;
    if-eqz v8, :cond_1

    .line 1198
    #getter for: Lcom/htc/music/LandingPageActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v8}, Lcom/htc/music/LandingPageActivity;->access$4200(Lcom/htc/music/LandingPageActivity;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1200
    new-instance v0, Lcom/htc/music/util/AsyncImageDecoder;

    iget-object v1, p0, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v1, p0, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object v1, p1

    move-object v2, p0

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/htc/music/util/AsyncImageDecoder;-><init>(Landroid/content/Context;Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;IIZZ)V

    #setter for: Lcom/htc/music/LandingPageActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v8, v0}, Lcom/htc/music/LandingPageActivity;->access$4202(Lcom/htc/music/LandingPageActivity;Lcom/htc/music/util/AsyncImageDecoder;)Lcom/htc/music/util/AsyncImageDecoder;

    .line 1210
    :goto_0
    return-void

    .line 1204
    :cond_0
    const-string v0, "[LandingPage]"

    const-string v1, "SearchListAdapter...mAsyncImageDecoder is not null, don\'t new it again..."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1208
    :cond_1
    const-string v0, "[LandingPage]"

    const-string v1, "SearchListAdapter, tempActivity is null!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 3

    .prologue
    .line 1220
    iget-object v1, p0, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/LandingPageActivity;

    .line 1221
    .local v0, tempActivity:Lcom/htc/music/LandingPageActivity;
    if-eqz v0, :cond_0

    .line 1222
    #getter for: Lcom/htc/music/LandingPageActivity;->mRecentAlbumList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/music/LandingPageActivity;->access$1200(Lcom/htc/music/LandingPageActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1228
    :goto_0
    return v1

    .line 1225
    :cond_0
    const-string v1, "[LandingPage]"

    const-string v2, "RecentAlbumListAdapter, getCount, tempActivity is null!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1228
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .parameter "position"

    .prologue
    .line 1233
    iget-object v1, p0, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/LandingPageActivity;

    .line 1234
    .local v0, tempActivity:Lcom/htc/music/LandingPageActivity;
    if-eqz v0, :cond_0

    .line 1235
    #getter for: Lcom/htc/music/LandingPageActivity;->mRecentAlbumList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/music/LandingPageActivity;->access$1200(Lcom/htc/music/LandingPageActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 1241
    :goto_0
    return-object v1

    .line 1238
    :cond_0
    const-string v1, "[LandingPage]"

    const-string v2, "RecentAlbumListAdapter, getItem, tempActivity is null!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1241
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 3
    .parameter "position"

    .prologue
    .line 1246
    iget-object v1, p0, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/LandingPageActivity;

    .line 1247
    .local v0, tempActivity:Lcom/htc/music/LandingPageActivity;
    if-eqz v0, :cond_0

    .line 1248
    #getter for: Lcom/htc/music/LandingPageActivity;->mRecentAlbumList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/music/LandingPageActivity;->access$1200(Lcom/htc/music/LandingPageActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/LandingPageActivity$BaseItem;

    #calls: Lcom/htc/music/LandingPageActivity$BaseItem;->getId()I
    invoke-static {v1}, Lcom/htc/music/LandingPageActivity$BaseItem;->access$4100(Lcom/htc/music/LandingPageActivity$BaseItem;)I

    move-result v1

    int-to-long v1, v1

    .line 1253
    :goto_0
    return-wide v1

    .line 1250
    :cond_0
    const-string v1, "[LandingPage]"

    const-string v2, "RecentAlbumListAdapter, getItemId, tempActivity is null!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1253
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 21
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 1262
    const/16 v19, 0x0

    .line 1263
    .local v19, itemInfo:Lcom/htc/music/LandingPageActivity$BaseItem;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/music/LandingPageActivity;

    .line 1264
    .local v4, tempActivity:Lcom/htc/music/LandingPageActivity;
    if-eqz v4, :cond_2

    .line 1265
    if-ltz p1, :cond_0

    #getter for: Lcom/htc/music/LandingPageActivity;->mRecentAlbumList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/htc/music/LandingPageActivity;->access$1200(Lcom/htc/music/LandingPageActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, p1

    if-ge v0, v2, :cond_0

    .line 1266
    #getter for: Lcom/htc/music/LandingPageActivity;->mRecentAlbumList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/htc/music/LandingPageActivity;->access$1200(Lcom/htc/music/LandingPageActivity;)Ljava/util/ArrayList;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    .end local v19           #itemInfo:Lcom/htc/music/LandingPageActivity$BaseItem;
    check-cast v19, Lcom/htc/music/LandingPageActivity$BaseItem;

    .line 1273
    .restart local v19       #itemInfo:Lcom/htc/music/LandingPageActivity$BaseItem;
    :cond_0
    :goto_0
    if-nez v19, :cond_3

    move-object/from16 v20, p2

    .line 1409
    :cond_1
    :goto_1
    return-object v20

    .line 1270
    :cond_2
    const-string v2, "[LandingPage]"

    const-string v3, "SearchListAdapter, getItem, tempActivity is null!"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1277
    :cond_3
    const/16 v20, 0x0

    .line 1278
    .local v20, v:Landroid/view/View;
    const/16 v17, 0x0

    .line 1280
    .local v17, holder:Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter$ViewHolder;
    #calls: Lcom/htc/music/LandingPageActivity$BaseItem;->getPrimaryText()Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/htc/music/LandingPageActivity$BaseItem;->access$4300(Lcom/htc/music/LandingPageActivity$BaseItem;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    #calls: Lcom/htc/music/LandingPageActivity$BaseItem;->getPrimaryText()Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/htc/music/LandingPageActivity$BaseItem;->access$4300(Lcom/htc/music/LandingPageActivity$BaseItem;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    #calls: Lcom/htc/music/LandingPageActivity$BaseItem;->getPrimaryText()Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/htc/music/LandingPageActivity$BaseItem;->access$4300(Lcom/htc/music/LandingPageActivity$BaseItem;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "<unknown>"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1281
    :cond_4
    const v2, 0x7f07004e

    invoke-virtual {v4, v2}, Lcom/htc/music/LandingPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1287
    .local v5, albumName:Ljava/lang/String;
    :goto_2
    #calls: Lcom/htc/music/LandingPageActivity$BaseItem;->getSecondaryText()Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/htc/music/LandingPageActivity$BaseItem;->access$4400(Lcom/htc/music/LandingPageActivity$BaseItem;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    #calls: Lcom/htc/music/LandingPageActivity$BaseItem;->getSecondaryText()Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/htc/music/LandingPageActivity$BaseItem;->access$4400(Lcom/htc/music/LandingPageActivity$BaseItem;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    #calls: Lcom/htc/music/LandingPageActivity$BaseItem;->getSecondaryText()Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/htc/music/LandingPageActivity$BaseItem;->access$4400(Lcom/htc/music/LandingPageActivity$BaseItem;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "<unknown>"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1288
    :cond_5
    const v2, 0x7f07004d

    invoke-virtual {v4, v2}, Lcom/htc/music/LandingPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1293
    .local v6, artistName:Ljava/lang/String;
    :goto_3
    #calls: Lcom/htc/music/LandingPageActivity$BaseItem;->getId()I
    invoke-static/range {v19 .. v19}, Lcom/htc/music/LandingPageActivity$BaseItem;->access$4100(Lcom/htc/music/LandingPageActivity$BaseItem;)I

    move-result v7

    .line 1295
    .local v7, albumId:I
    if-nez p2, :cond_8

    .line 1296
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030034

    const/4 v8, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v2, v3, v0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v20

    .line 1297
    new-instance v17, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter$ViewHolder;

    .end local v17           #holder:Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter$ViewHolder;
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter$ViewHolder;-><init>(Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;)V

    .line 1298
    .restart local v17       #holder:Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter$ViewHolder;
    const v2, 0x7f080023

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItemTileImage;

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    .line 1300
    const v2, 0x7f080024

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    .line 1301
    const v2, 0x7f080026

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcRimImageButton;

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

    .line 1302
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

    const-string v3, "common_circle_outer"

    const v8, 0x208001f

    invoke-static {v4, v3, v8}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    const-string v8, "common_circle_pressed"

    const v9, 0x2080020

    invoke-static {v4, v8, v9}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v8

    const-string v9, "common_circle_rest"

    const v11, 0x2080021

    invoke-static {v4, v9, v11}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v2, v3, v8, v9}, Lcom/htc/widget/HtcRimImageButton;->setButtonBackgroundResource(III)V

    .line 1306
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcRimImageButton;->setFocusable(Z)V

    .line 1307
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

    const v3, 0x7f020028

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcRimImageButton;->setIconResource(I)V

    .line 1308
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcRimImageButton;->setVisibility(I)V

    .line 1309
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1316
    :goto_4
    move-object/from16 v0, v17

    iget-object v8, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

    new-instance v2, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter$1;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter$1;-><init>(Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;Lcom/htc/music/LandingPageActivity;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v8, v2}, Lcom/htc/widget/HtcRimImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1328
    if-nez v17, :cond_9

    .line 1329
    const-string v2, "[LandingPage]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "["

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "], getView, holder is null!"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1283
    .end local v5           #albumName:Ljava/lang/String;
    .end local v6           #artistName:Ljava/lang/String;
    .end local v7           #albumId:I
    :cond_6
    #calls: Lcom/htc/music/LandingPageActivity$BaseItem;->getPrimaryText()Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/htc/music/LandingPageActivity$BaseItem;->access$4300(Lcom/htc/music/LandingPageActivity$BaseItem;)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #albumName:Ljava/lang/String;
    goto/16 :goto_2

    .line 1290
    :cond_7
    #calls: Lcom/htc/music/LandingPageActivity$BaseItem;->getSecondaryText()Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/htc/music/LandingPageActivity$BaseItem;->access$4400(Lcom/htc/music/LandingPageActivity$BaseItem;)Ljava/lang/String;

    move-result-object v6

    .restart local v6       #artistName:Ljava/lang/String;
    goto/16 :goto_3

    .line 1311
    .restart local v7       #albumId:I
    :cond_8
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v17

    .end local v17           #holder:Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter$ViewHolder;
    check-cast v17, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter$ViewHolder;

    .line 1312
    .restart local v17       #holder:Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter$ViewHolder;
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItemTileImage;->setTag(Ljava/lang/Object;)V

    .line 1313
    move-object/from16 v20, p2

    goto :goto_4

    .line 1333
    :cond_9
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    if-eqz v2, :cond_a

    .line 1334
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v2, v5}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 1335
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v2, v6}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    .line 1338
    :cond_a
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    if-eqz v2, :cond_b

    .line 1341
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItemTileImage;->setTag(Ljava/lang/Object;)V

    .line 1343
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;
    invoke-static {v2}, Lcom/htc/music/LandingPageActivity;->access$4900(Lcom/htc/music/LandingPageActivity;)Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/htc/music/util/MemoryCacheMBitmapByTime;->pull(I)Lcom/htc/music/util/MBitmap;

    move-result-object v18

    .line 1344
    .local v18, item:Lcom/htc/music/util/MBitmap;
    if-nez v18, :cond_c

    const/4 v15, 0x0

    .line 1345
    .local v15, cacheBmp:Landroid/graphics/Bitmap;
    :goto_5
    if-nez v18, :cond_d

    const/16 v16, 0x0

    .line 1356
    .local v16, decodePath:Ljava/lang/String;
    :goto_6
    if-eqz v15, :cond_e

    .line 1357
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    invoke-virtual {v2, v15}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1388
    .end local v15           #cacheBmp:Landroid/graphics/Bitmap;
    .end local v16           #decodePath:Ljava/lang/String;
    .end local v18           #item:Lcom/htc/music/util/MBitmap;
    :cond_b
    :goto_7
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    if-eqz v2, :cond_1

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    if-eqz v2, :cond_1

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

    if-eqz v2, :cond_1

    .line 1389
    const/4 v2, -0x2

    if-ne v7, v2, :cond_11

    .line 1390
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItemTileImage;->setVisibility(I)V

    .line 1391
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    const v3, 0x7f0701d6

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    .line 1392
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 1393
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcRimImageButton;->setVisibility(I)V

    .line 1394
    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    goto/16 :goto_1

    .line 1344
    .restart local v18       #item:Lcom/htc/music/util/MBitmap;
    :cond_c
    invoke-virtual/range {v18 .. v18}, Lcom/htc/music/util/MBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v15

    goto :goto_5

    .line 1345
    .restart local v15       #cacheBmp:Landroid/graphics/Bitmap;
    :cond_d
    invoke-virtual/range {v18 .. v18}, Lcom/htc/music/util/MBitmap;->getPath()Ljava/lang/String;

    move-result-object v16

    goto :goto_6

    .line 1359
    .restart local v16       #decodePath:Ljava/lang/String;
    :cond_e
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1361
    #calls: Lcom/htc/music/LandingPageActivity$BaseItem;->getArtPath()Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/htc/music/LandingPageActivity$BaseItem;->access$5000(Lcom/htc/music/LandingPageActivity$BaseItem;)Ljava/lang/String;

    move-result-object v10

    .line 1362
    .local v10, albumArtpath:Ljava/lang/String;
    if-eqz v10, :cond_10

    .line 1363
    const-string v2, "[LandingPage]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Pos ["

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "] ## There is art path in this item, path = "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1365
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1367
    .local v14, albumArtFile:Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1368
    const-string v2, "[LandingPage]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Pos ["

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "] ## There is albumartpath. Try to decode it."

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1370
    #getter for: Lcom/htc/music/LandingPageActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v4}, Lcom/htc/music/LandingPageActivity;->access$4200(Lcom/htc/music/LandingPageActivity;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v8

    const/4 v2, 0x1

    new-array v13, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v10, v13, v2

    move v9, v7

    move v11, v7

    move/from16 v12, p1

    invoke-virtual/range {v8 .. v13}, Lcom/htc/music/util/AsyncImageDecoder;->add(ILjava/lang/String;II[Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 1372
    :cond_f
    const-string v2, "[LandingPage]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Pos ["

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "] ## File in this albumartpath didn\'t exist. No need to decode..."

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1375
    .end local v14           #albumArtFile:Ljava/io/File;
    :cond_10
    const-string v2, "[LandingPage]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Pos ["

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "], No album art path, set default one."

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1396
    .end local v10           #albumArtpath:Ljava/lang/String;
    .end local v15           #cacheBmp:Landroid/graphics/Bitmap;
    .end local v16           #decodePath:Ljava/lang/String;
    .end local v18           #item:Lcom/htc/music/util/MBitmap;
    :cond_11
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItemTileImage;->setVisibility(I)V

    .line 1397
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 1398
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcRimImageButton;->setVisibility(I)V

    .line 1399
    new-instance v2, Landroid/view/TouchDelegate;

    new-instance v3, Landroid/graphics/Rect;

    #getter for: Lcom/htc/music/LandingPageActivity;->mScreenWidth:I
    invoke-static {v4}, Lcom/htc/music/LandingPageActivity;->access$5100(Lcom/htc/music/LandingPageActivity;)I

    move-result v8

    const v9, 0x7f0b009c

    invoke-static {v4, v9}, Lcom/htc/music/util/ProjectSettings;->getIntValue(Landroid/content/Context;I)I

    move-result v9

    sub-int/2addr v8, v9

    const/4 v9, 0x0

    #getter for: Lcom/htc/music/LandingPageActivity;->mScreenWidth:I
    invoke-static {v4}, Lcom/htc/music/LandingPageActivity;->access$5100(Lcom/htc/music/LandingPageActivity;)I

    move-result v11

    #getter for: Lcom/htc/music/LandingPageActivity;->mScreenHeight:I
    invoke-static {v4}, Lcom/htc/music/LandingPageActivity;->access$5200(Lcom/htc/music/LandingPageActivity;)I

    move-result v12

    invoke-direct {v3, v8, v9, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v17

    iget-object v8, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter$ViewHolder;->listItemRearButton:Lcom/htc/widget/HtcRimImageButton;

    invoke-direct {v2, v3, v8}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    goto/16 :goto_1
.end method

.method public varargs onImageDecoded(ILandroid/graphics/Bitmap;J[Ljava/lang/Object;)V
    .locals 16
    .parameter "position"
    .parameter "bitmap"
    .parameter "timeStamp"
    .parameter "varargs"

    .prologue
    .line 1415
    if-nez p2, :cond_1

    .line 1416
    const-string v13, "[LandingPage]"

    const-string v14, "onImageDecoded: bitmap is null"

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1448
    :cond_0
    :goto_0
    return-void

    .line 1419
    :cond_1
    const-string v13, "[LandingPage]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "onImageDecoded: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1420
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v13}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/htc/music/LandingPageActivity;

    .line 1421
    .local v11, tempActivity:Lcom/htc/music/LandingPageActivity;
    invoke-virtual {v11}, Lcom/htc/music/LandingPageActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v9

    .line 1422
    .local v9, listView:Lcom/htc/widget/HtcListView;
    invoke-virtual {v9}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v6

    .line 1423
    .local v6, childCount:I
    if-gtz v6, :cond_2

    .line 1424
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 1427
    :cond_2
    const/4 v10, 0x0

    .line 1428
    .local v10, path:Ljava/lang/String;
    if-eqz p5, :cond_3

    move-object/from16 v0, p5

    array-length v13, v0

    if-lez v13, :cond_3

    const/4 v13, 0x0

    aget-object v13, p5, v13

    if-eqz v13, :cond_3

    const/4 v13, 0x0

    aget-object v13, p5, v13

    instance-of v13, v13, Ljava/lang/String;

    if-eqz v13, :cond_3

    .line 1429
    const/4 v13, 0x0

    aget-object v10, p5, v13

    .end local v10           #path:Ljava/lang/String;
    check-cast v10, Ljava/lang/String;

    .line 1431
    .restart local v10       #path:Ljava/lang/String;
    :cond_3
    new-instance v5, Lcom/htc/music/util/MBitmap;

    move-object/from16 v0, p2

    invoke-direct {v5, v0, v10}, Lcom/htc/music/util/MBitmap;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 1432
    .local v5, b:Lcom/htc/music/util/MBitmap;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v13}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mMemCache:Lcom/htc/music/util/MemoryCacheMBitmapByTime;
    invoke-static {v13}, Lcom/htc/music/LandingPageActivity;->access$4900(Lcom/htc/music/LandingPageActivity;)Lcom/htc/music/util/MemoryCacheMBitmapByTime;

    move-result-object v13

    move/from16 v0, p1

    move-wide/from16 v1, p3

    invoke-virtual {v13, v0, v5, v1, v2}, Lcom/htc/music/util/MemoryCacheMBitmapByTime;->push(ILcom/htc/music/util/MBitmap;J)Z

    move-result v3

    .line 1433
    .local v3, addToCache:Z
    if-eqz v3, :cond_0

    .line 1434
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    if-ge v7, v6, :cond_0

    .line 1435
    invoke-virtual {v9, v7}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup;

    .line 1436
    .local v12, viewGroup:Landroid/view/ViewGroup;
    if-eqz v12, :cond_4

    .line 1437
    const v13, 0x7f080023

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcListItemTileImage;

    .line 1438
    .local v4, albumArt:Lcom/htc/widget/HtcListItemTileImage;
    if-eqz v4, :cond_4

    .line 1439
    invoke-virtual {v4}, Lcom/htc/widget/HtcListItemTileImage;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 1440
    .local v8, integer:Ljava/lang/Integer;
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v13

    move/from16 v0, p1

    if-ne v13, v0, :cond_4

    .line 1441
    if-eqz p2, :cond_4

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v13

    if-nez v13, :cond_4

    .line 1442
    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1434
    .end local v4           #albumArt:Lcom/htc/widget/HtcListItemTileImage;
    .end local v8           #integer:Ljava/lang/Integer;
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1
.end method
