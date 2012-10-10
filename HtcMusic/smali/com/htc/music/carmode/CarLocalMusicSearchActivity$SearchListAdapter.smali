.class Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;
.super Landroid/widget/BaseAdapter;
.source "CarLocalMusicSearchActivity.java"

# interfaces
.implements Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/carmode/CarLocalMusicSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SearchListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mActivityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/music/carmode/CarLocalMusicSearchActivity;",
            ">;"
        }
    .end annotation
.end field

.field private mDebug:Z

.field private final mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

.field private mInflater:Landroid/view/LayoutInflater;

.field private final mItemViewResId:I

.field private final mNoResultViewResId:I

.field private final mSubTitleViewResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)V
    .locals 9
    .parameter "context"
    .parameter "currentactivity"

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 985
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 981
    const v0, 0x7f03002e

    iput v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;->mSubTitleViewResId:I

    .line 982
    const v0, 0x7f030008

    iput v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;->mItemViewResId:I

    .line 983
    const v0, 0x7f030019

    iput v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;->mNoResultViewResId:I

    .line 1046
    iput-boolean v2, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;->mDebug:Z

    .line 987
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 989
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;

    .line 992
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020052

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 994
    .local v7, b:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 995
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;->setFilterBitmap(Z)V

    .line 996
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;->setDither(Z)V

    .line 998
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    .line 999
    .local v8, tempActivity:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;
    if-eqz v8, :cond_1

    .line 1000
    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v8}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$3700(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1001
    new-instance v0, Lcom/htc/music/util/AsyncImageDecoder;

    iget-object v1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object v1, p1

    move-object v2, p0

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/htc/music/util/AsyncImageDecoder;-><init>(Landroid/content/Context;Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;IIZZ)V

    #setter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v8, v0}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$3702(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;Lcom/htc/music/util/AsyncImageDecoder;)Lcom/htc/music/util/AsyncImageDecoder;

    .line 1012
    :goto_0
    return-void

    .line 1005
    :cond_0
    const-string v0, "[CarLocalMusicSearchActivity]"

    const-string v1, "SearchListAdapter...mAsyncImageDecoder is not null, don\'t new it again..."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1009
    :cond_1
    const-string v0, "[CarLocalMusicSearchActivity]"

    const-string v1, "SearchListAdapter, tempActivity is null!"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 3

    .prologue
    .line 1288
    iget-object v1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    .line 1289
    .local v0, tempActivity:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;
    if-eqz v0, :cond_0

    .line 1290
    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchResultList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$2000(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1295
    :goto_0
    return v1

    .line 1292
    :cond_0
    const-string v1, "[CarLocalMusicSearchActivity]"

    const-string v2, "SearchListAdapter, getCount, tempActivity is null!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1295
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .parameter "position"

    .prologue
    .line 1300
    iget-object v1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    .line 1301
    .local v0, tempActivity:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;
    if-eqz v0, :cond_0

    .line 1302
    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchResultList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$2000(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 1306
    :goto_0
    return-object v1

    .line 1304
    :cond_0
    const-string v1, "[CarLocalMusicSearchActivity]"

    const-string v2, "SearchListAdapter, getItem, tempActivity is null!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1306
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 1311
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 3
    .parameter "position"

    .prologue
    .line 1316
    iget-object v1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    .line 1317
    .local v0, tempActivity:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;
    if-eqz v0, :cond_0

    .line 1318
    #calls: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->getItemViewType(I)I
    invoke-static {v0, p1}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$4200(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;I)I

    move-result v1

    .line 1323
    :goto_0
    return v1

    .line 1320
    :cond_0
    const-string v1, "[CarLocalMusicSearchActivity]"

    const-string v2, "SearchListAdapter, getItemViewType, tempActivity is null!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1323
    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->getItemViewType(I)I

    move-result v1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 27
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 1051
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;->mDebug:Z

    move/from16 v23, v0

    if-eqz v23, :cond_0

    .line 1052
    const-string v23, "[CarLocalMusicSearchActivity]"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "["

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "], getView +++++"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    .line 1055
    .local v17, startTime:J
    const/4 v13, 0x0

    .line 1056
    .local v13, itemInfo:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    .line 1057
    .local v20, tempActivity:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;
    if-eqz v20, :cond_3

    .line 1058
    if-ltz p1, :cond_1

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchResultList:Ljava/util/ArrayList;
    invoke-static/range {v20 .. v20}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$2000(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    move/from16 v0, p1

    move/from16 v1, v23

    if-ge v0, v1, :cond_1

    .line 1059
    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchResultList:Ljava/util/ArrayList;
    invoke-static/range {v20 .. v20}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$2000(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    .end local v13           #itemInfo:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;
    check-cast v13, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;

    .line 1065
    .restart local v13       #itemInfo:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;
    :cond_1
    :goto_0
    if-nez v13, :cond_4

    move-object/from16 v21, p2

    .line 1283
    :cond_2
    :goto_1
    return-object v21

    .line 1062
    :cond_3
    const-string v23, "[CarLocalMusicSearchActivity]"

    const-string v24, "SearchListAdapter, getItem, tempActivity is null!"

    invoke-static/range {v23 .. v24}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1070
    :cond_4
    invoke-virtual/range {p0 .. p1}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;->getItemViewType(I)I

    move-result v22

    .line 1071
    .local v22, viewType:I
    const/16 v21, 0x0

    .line 1073
    .local v21, v:Landroid/view/View;
    const/4 v9, 0x0

    .line 1075
    .local v9, holder:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;
    const/4 v11, 0x1

    .line 1076
    .local v11, isNeedToReInflate:Z
    if-eqz p2, :cond_6

    .line 1077
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    .end local v9           #holder:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;
    check-cast v9, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;

    .line 1083
    .restart local v9       #holder:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;
    iget v0, v9, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;->viewType:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_8

    const/16 v23, 0x2

    move/from16 v0, v23

    move/from16 v1, v22

    if-eq v0, v1, :cond_5

    const/16 v23, 0x2

    iget v0, v9, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;->viewType:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_5

    const/16 v23, 0x6

    move/from16 v0, v23

    move/from16 v1, v22

    if-eq v0, v1, :cond_5

    const/16 v23, 0x6

    iget v0, v9, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;->viewType:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_8

    .line 1086
    :cond_5
    const/4 v11, 0x1

    .line 1092
    :cond_6
    :goto_2
    if-eqz p2, :cond_7

    if-eqz v11, :cond_10

    .line 1093
    :cond_7
    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_9

    .line 1094
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v23, v0

    const v24, 0x7f03002e

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, p3

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v21

    .line 1095
    const v23, 0x7f080077

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Lcom/htc/widget/HtcListItemSeparator;

    .line 1097
    .local v19, subTitle:Lcom/htc/widget/HtcListItemSeparator;
    const/16 v23, 0x0

    #calls: Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->getPrimaryText()Ljava/lang/String;
    invoke-static {v13}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->access$3800(Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v19

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcListItemSeparator;->setText(ILjava/lang/CharSequence;)V

    .line 1098
    const/16 v23, 0x0

    const v24, 0x2030086

    move-object/from16 v0, v19

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcListItemSeparator;->setTextStyle(II)V

    .line 1101
    new-instance v9, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;

    .end local v9           #holder:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;
    invoke-direct {v9}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;-><init>()V

    .line 1102
    .restart local v9       #holder:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;
    move/from16 v0, v22

    iput v0, v9, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;->viewType:I

    .line 1103
    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1105
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;->mDebug:Z

    move/from16 v23, v0

    if-eqz v23, :cond_2

    .line 1106
    const-string v23, "[CarLocalMusicSearchActivity]"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "getView ----- time cost: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    sub-long v25, v25, v17

    invoke-virtual/range {v24 .. v26}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1088
    .end local v19           #subTitle:Lcom/htc/widget/HtcListItemSeparator;
    :cond_8
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 1111
    :cond_9
    const/16 v23, 0x6

    move/from16 v0, v23

    move/from16 v1, v22

    if-ne v0, v1, :cond_c

    .line 1112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v23, v0

    const v24, 0x7f030019

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, p3

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v21

    .line 1113
    move-object/from16 v0, v21

    instance-of v0, v0, Lcom/htc/widget/HtcListItem;

    move/from16 v23, v0

    if-eqz v23, :cond_b

    move-object/from16 v12, v21

    .line 1114
    check-cast v12, Lcom/htc/widget/HtcListItem;

    .line 1115
    .local v12, item:Lcom/htc/widget/HtcListItem;
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Lcom/htc/widget/HtcListItem;->setAutoMotiveMode(Z)V

    .line 1116
    invoke-virtual {v12}, Lcom/htc/widget/HtcListItem;->getChildCount()I

    move-result v8

    .line 1117
    .local v8, count:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_3
    if-ge v10, v8, :cond_b

    .line 1118
    invoke-virtual {v12, v10}, Lcom/htc/widget/HtcListItem;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1119
    .local v7, child:Landroid/view/View;
    instance-of v0, v7, Lcom/htc/widget/IHtcListItemAutoMotiveControl;

    move/from16 v23, v0

    if-eqz v23, :cond_a

    .line 1120
    check-cast v7, Lcom/htc/widget/IHtcListItemAutoMotiveControl;

    .end local v7           #child:Landroid/view/View;
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-interface {v7, v0}, Lcom/htc/widget/IHtcListItemAutoMotiveControl;->setAutoMotiveMode(Z)V

    .line 1117
    :cond_a
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 1124
    .end local v8           #count:I
    .end local v10           #i:I
    .end local v12           #item:Lcom/htc/widget/HtcListItem;
    :cond_b
    const v23, 0x7f080054

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 1125
    .local v14, itemText:Landroid/widget/TextView;
    #calls: Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->getPrimaryText()Ljava/lang/String;
    invoke-static {v13}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->access$3800(Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1127
    new-instance v9, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;

    .end local v9           #holder:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;
    invoke-direct {v9}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;-><init>()V

    .line 1128
    .restart local v9       #holder:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;
    move/from16 v0, v22

    iput v0, v9, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;->viewType:I

    .line 1129
    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1131
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;->mDebug:Z

    move/from16 v23, v0

    if-eqz v23, :cond_2

    .line 1132
    const-string v23, "[CarLocalMusicSearchActivity]"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "getView ----- time cost: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    sub-long v25, v25, v17

    invoke-virtual/range {v24 .. v26}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1138
    .end local v14           #itemText:Landroid/widget/TextView;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v23, v0

    const v24, 0x7f030008

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, p3

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v21

    .line 1139
    move-object/from16 v0, v21

    instance-of v0, v0, Lcom/htc/widget/HtcListItem;

    move/from16 v23, v0

    if-eqz v23, :cond_e

    move-object/from16 v12, v21

    .line 1140
    check-cast v12, Lcom/htc/widget/HtcListItem;

    .line 1141
    .restart local v12       #item:Lcom/htc/widget/HtcListItem;
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Lcom/htc/widget/HtcListItem;->setAutoMotiveMode(Z)V

    .line 1142
    invoke-virtual {v12}, Lcom/htc/widget/HtcListItem;->getChildCount()I

    move-result v8

    .line 1143
    .restart local v8       #count:I
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_4
    if-ge v10, v8, :cond_e

    .line 1144
    invoke-virtual {v12, v10}, Lcom/htc/widget/HtcListItem;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1145
    .restart local v7       #child:Landroid/view/View;
    instance-of v0, v7, Lcom/htc/widget/IHtcListItemAutoMotiveControl;

    move/from16 v23, v0

    if-eqz v23, :cond_d

    .line 1146
    check-cast v7, Lcom/htc/widget/IHtcListItemAutoMotiveControl;

    .end local v7           #child:Landroid/view/View;
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-interface {v7, v0}, Lcom/htc/widget/IHtcListItemAutoMotiveControl;->setAutoMotiveMode(Z)V

    .line 1143
    :cond_d
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 1151
    .end local v8           #count:I
    .end local v10           #i:I
    .end local v12           #item:Lcom/htc/widget/HtcListItem;
    :cond_e
    new-instance v9, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;

    .end local v9           #holder:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;
    invoke-direct {v9}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;-><init>()V

    .line 1152
    .restart local v9       #holder:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;
    const v23, 0x7f080023

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Lcom/htc/widget/HtcListItemTileImage;

    move-object/from16 v0, v23

    iput-object v0, v9, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    .line 1154
    iget-object v0, v9, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    move-object/from16 v23, v0

    if-eqz v23, :cond_f

    .line 1155
    iget-object v0, v9, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Lcom/htc/widget/HtcListItemTileImage;->setDarkMode(Z)V

    .line 1157
    :cond_f
    const v23, 0x7f080024

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v0, v23

    iput-object v0, v9, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    .line 1159
    move/from16 v0, v22

    iput v0, v9, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;->viewType:I

    .line 1160
    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1192
    :goto_5
    if-nez v9, :cond_13

    .line 1193
    const-string v23, "[CarLocalMusicSearchActivity]"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "["

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "], getView, holder is null!"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1163
    :cond_10
    move-object/from16 v21, p2

    .line 1165
    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_11

    .line 1166
    const v23, 0x7f080077

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Lcom/htc/widget/HtcListItemSeparator;

    .line 1168
    .restart local v19       #subTitle:Lcom/htc/widget/HtcListItemSeparator;
    const/16 v23, 0x0

    #calls: Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->getPrimaryText()Ljava/lang/String;
    invoke-static {v13}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->access$3800(Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v19

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcListItemSeparator;->setText(ILjava/lang/CharSequence;)V

    .line 1170
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;->mDebug:Z

    move/from16 v23, v0

    if-eqz v23, :cond_2

    .line 1171
    const-string v23, "[CarLocalMusicSearchActivity]"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "getView ----- time cost: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    sub-long v25, v25, v17

    invoke-virtual/range {v24 .. v26}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1176
    .end local v19           #subTitle:Lcom/htc/widget/HtcListItemSeparator;
    :cond_11
    const/16 v23, 0x6

    move/from16 v0, v23

    move/from16 v1, v22

    if-ne v0, v1, :cond_12

    .line 1177
    const v23, 0x7f080054

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 1178
    .restart local v14       #itemText:Landroid/widget/TextView;
    #calls: Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->getPrimaryText()Ljava/lang/String;
    invoke-static {v13}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->access$3800(Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1180
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;->mDebug:Z

    move/from16 v23, v0

    if-eqz v23, :cond_2

    .line 1181
    const-string v23, "[CarLocalMusicSearchActivity]"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "getView ----- time cost: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    sub-long v25, v25, v17

    invoke-virtual/range {v24 .. v26}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1187
    .end local v14           #itemText:Landroid/widget/TextView;
    :cond_12
    move/from16 v0, v22

    iput v0, v9, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;->viewType:I

    .line 1188
    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 1201
    :cond_13
    iget-object v0, v9, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v23, v0

    if-eqz v23, :cond_16

    .line 1202
    const/16 v23, 0x3

    move/from16 v0, v23

    move/from16 v1, v22

    if-eq v0, v1, :cond_14

    const/16 v23, 0x4

    move/from16 v0, v23

    move/from16 v1, v22

    if-ne v0, v1, :cond_19

    .line 1203
    :cond_14
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchStr:Landroid/widget/AutoCompleteTextView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    .line 1204
    .local v15, key:Ljava/lang/String;
    if-eqz v15, :cond_15

    const-string v23, ""

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_18

    .line 1205
    :cond_15
    iget-object v0, v9, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v23, v0

    #calls: Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->getPrimaryText()Ljava/lang/String;
    invoke-static {v13}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->access$3800(Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 1211
    :goto_6
    iget-object v0, v9, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v23, v0

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 1232
    .end local v15           #key:Ljava/lang/String;
    :cond_16
    :goto_7
    iget-object v0, v9, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    move-object/from16 v23, v0

    if-eqz v23, :cond_17

    .line 1233
    const/16 v23, 0x3

    move/from16 v0, v23

    move/from16 v1, v22

    if-ne v0, v1, :cond_1c

    .line 1234
    iget-object v0, v9, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    move-object/from16 v23, v0

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Lcom/htc/widget/HtcListItemTileImage;->setVisibility(I)V

    .line 1281
    :cond_17
    :goto_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;->mDebug:Z

    move/from16 v23, v0

    if-eqz v23, :cond_2

    .line 1282
    const-string v23, "[CarLocalMusicSearchActivity]"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "getView ----- time cost: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    sub-long v25, v25, v17

    invoke-virtual/range {v24 .. v26}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1207
    .restart local v15       #key:Ljava/lang/String;
    :cond_18
    #calls: Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->getPrimaryText()Ljava/lang/String;
    invoke-static {v13}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->access$3800(Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v15}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->getMarkedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v16

    .line 1209
    .local v16, markedString:Ljava/lang/CharSequence;
    iget-object v0, v9, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 1214
    .end local v15           #key:Ljava/lang/String;
    .end local v16           #markedString:Ljava/lang/CharSequence;
    :cond_19
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchStr:Landroid/widget/AutoCompleteTextView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    .line 1215
    .restart local v15       #key:Ljava/lang/String;
    if-eqz v15, :cond_1a

    const-string v23, ""

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1b

    .line 1216
    :cond_1a
    iget-object v0, v9, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v23, v0

    #calls: Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->getPrimaryText()Ljava/lang/String;
    invoke-static {v13}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->access$3800(Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 1223
    :goto_9
    iget-object v0, v9, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 1224
    iget-object v0, v9, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v23, v0

    #calls: Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->getSecondaryText()Ljava/lang/String;
    invoke-static {v13}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->access$3900(Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1218
    :cond_1b
    #calls: Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->getPrimaryText()Ljava/lang/String;
    invoke-static {v13}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->access$3800(Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v15}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->getMarkedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v16

    .line 1220
    .restart local v16       #markedString:Ljava/lang/CharSequence;
    iget-object v0, v9, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 1236
    .end local v15           #key:Ljava/lang/String;
    .end local v16           #markedString:Ljava/lang/CharSequence;
    :cond_1c
    iget-object v0, v9, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/htc/widget/HtcListItemTileImage;->setVisibility(I)V

    .line 1238
    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;
    invoke-static/range {v20 .. v20}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$4000(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    move-result-object v23

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/htc/music/util/MemoryCacheBitmapByPosition;->pull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;

    .line 1241
    .local v6, cacheBmp:Landroid/graphics/Bitmap;
    iget-object v0, v9, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/Integer;

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual/range {v23 .. v24}, Lcom/htc/widget/HtcListItemTileImage;->setTag(Ljava/lang/Object;)V

    .line 1243
    if-eqz v6, :cond_1d

    .line 1245
    iget-object v0, v9, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_8

    .line 1248
    :cond_1d
    iget-object v0, v9, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1251
    #calls: Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->getArtPath()Ljava/lang/String;
    invoke-static {v13}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->access$4100(Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;)Ljava/lang/String;

    move-result-object v5

    .line 1252
    .local v5, albumArtpath:Ljava/lang/String;
    if-eqz v5, :cond_1f

    .line 1253
    const-string v23, "[CarLocalMusicSearchActivity]"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Pos ["

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "] ## There is art path in this item, path = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1258
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1260
    .local v4, albumArtFile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v23

    if-eqz v23, :cond_1e

    .line 1261
    const-string v23, "[CarLocalMusicSearchActivity]"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Pos ["

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "] ## There is albumartpath. Try to decode it."

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1263
    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static/range {v20 .. v20}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$3700(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v23

    const/16 v24, 0x0

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move/from16 v1, p1

    move/from16 v2, p1

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v5, v2, v3}, Lcom/htc/music/util/AsyncImageDecoder;->add(ILjava/lang/String;I[Ljava/lang/Object;)V

    goto/16 :goto_8

    .line 1266
    :cond_1e
    const-string v23, "[CarLocalMusicSearchActivity]"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Pos ["

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "] ## File in this albumartpath didn\'t exist. No need to decode..."

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 1272
    .end local v4           #albumArtFile:Ljava/io/File;
    :cond_1f
    const-string v23, "[CarLocalMusicSearchActivity]"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Pos ["

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "], No album art path, set default one."

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1274
    iget-object v0, v9, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_8
.end method

.method public isEnabled(I)Z
    .locals 4
    .parameter "position"

    .prologue
    .line 1328
    iget-object v2, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    .line 1329
    .local v0, tempActivity:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;
    if-eqz v0, :cond_0

    .line 1330
    #calls: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->getItemViewType(I)I
    invoke-static {v0, p1}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$4200(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;I)I

    move-result v1

    .line 1331
    .local v1, viewType:I
    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    .line 1332
    const/4 v2, 0x0

    .line 1336
    .end local v1           #viewType:I
    :goto_0
    return v2

    .line 1334
    :cond_0
    const-string v2, "[CarLocalMusicSearchActivity]"

    const-string v3, "SearchListAdapter, getItemViewType, tempActivity is null!"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1336
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->isEnabled(I)Z

    move-result v2

    goto :goto_0
.end method

.method public varargs onImageDecoded(ILandroid/graphics/Bitmap;J[Ljava/lang/Object;)V
    .locals 10
    .parameter "position"
    .parameter "bitmap"
    .parameter "timeStamp"
    .parameter "varargs"

    .prologue
    .line 1341
    if-nez p2, :cond_1

    .line 1342
    const-string v7, "[CarLocalMusicSearchActivity]"

    const-string v8, "onImageDecoded: bitmap is null"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1379
    :cond_0
    :goto_0
    return-void

    .line 1345
    :cond_1
    const-string v7, "[CarLocalMusicSearchActivity]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "#### onImageDecoded ,pos: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", bitmap: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1347
    iget-object v7, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    .line 1348
    .local v6, tempActivity:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;
    if-eqz v6, :cond_3

    .line 1349
    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchList:Lcom/htc/widget/HtcListView;
    invoke-static {v6}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$4300(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Lcom/htc/widget/HtcListView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v2

    .line 1350
    .local v2, childCount:I
    if-lez v2, :cond_0

    .line 1354
    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;
    invoke-static {v6}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$4000(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Lcom/htc/music/util/MemoryCacheBitmapByPosition;->push(ILandroid/graphics/Bitmap;)Z

    move-result v0

    .line 1355
    .local v0, addedToCache:Z
    if-eqz v0, :cond_0

    .line 1356
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v2, :cond_0

    .line 1357
    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchList:Lcom/htc/widget/HtcListView;
    invoke-static {v6}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$4300(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Lcom/htc/widget/HtcListView;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1359
    .local v5, ll:Landroid/view/View;
    if-eqz v5, :cond_2

    .line 1360
    const v7, 0x7f080023

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1362
    .local v1, albumArt:Landroid/view/View;
    if-eqz v1, :cond_2

    .line 1363
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1365
    .local v4, integer:Ljava/lang/Integer;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, p1, :cond_2

    .line 1366
    const-string v7, "[CarLocalMusicSearchActivity]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "#### onImageDecoded ,pos: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", Set album art!!!!!!!!!!!!!!!!!!!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1368
    check-cast v1, Lcom/htc/widget/HtcListItemTileImage;

    .end local v1           #albumArt:Landroid/view/View;
    invoke-virtual {v1, p2}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1356
    .end local v4           #integer:Ljava/lang/Integer;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1376
    .end local v0           #addedToCache:Z
    .end local v2           #childCount:I
    .end local v3           #i:I
    .end local v5           #ll:Landroid/view/View;
    :cond_3
    const-string v7, "[CarLocalMusicSearchActivity]"

    const-string v8, "SearchListAdapter, onImageDecoded, tempActivity is null!"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public setActivity(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)V
    .locals 1
    .parameter "newactivity"

    .prologue
    .line 1382
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;

    .line 1383
    return-void
.end method
