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

    .line 976
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 972
    const v0, 0x7f03002e

    iput v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;->mSubTitleViewResId:I

    .line 973
    const v0, 0x7f030008

    iput v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;->mItemViewResId:I

    .line 974
    const v0, 0x7f030019

    iput v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;->mNoResultViewResId:I

    .line 1037
    iput-boolean v2, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;->mDebug:Z

    .line 978
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 980
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;

    .line 983
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020050

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 985
    .local v7, b:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 986
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;->setFilterBitmap(Z)V

    .line 987
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;->setDither(Z)V

    .line 989
    iget-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    .line 990
    .local v8, tempActivity:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;
    if-eqz v8, :cond_1

    .line 991
    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mAsyncImageDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {v8}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$3700(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Lcom/htc/music/util/AsyncImageDecoder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 992
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

    .line 1003
    :goto_0
    return-void

    .line 996
    :cond_0
    const-string v0, "[CarLocalMusicSearchActivity]"

    const-string v1, "SearchListAdapter...mAsyncImageDecoder is not null, don\'t new it again..."

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1000
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
    .line 1279
    iget-object v1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    .line 1280
    .local v0, tempActivity:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;
    if-eqz v0, :cond_0

    .line 1281
    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchResultList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$2000(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1286
    :goto_0
    return v1

    .line 1283
    :cond_0
    const-string v1, "[CarLocalMusicSearchActivity]"

    const-string v2, "SearchListAdapter, getCount, tempActivity is null!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1286
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .parameter "position"

    .prologue
    .line 1291
    iget-object v1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    .line 1292
    .local v0, tempActivity:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;
    if-eqz v0, :cond_0

    .line 1293
    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchResultList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$2000(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 1297
    :goto_0
    return-object v1

    .line 1295
    :cond_0
    const-string v1, "[CarLocalMusicSearchActivity]"

    const-string v2, "SearchListAdapter, getItem, tempActivity is null!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1297
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 1302
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 3
    .parameter "position"

    .prologue
    .line 1307
    iget-object v1, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    .line 1308
    .local v0, tempActivity:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;
    if-eqz v0, :cond_0

    .line 1309
    #calls: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->getItemViewType(I)I
    invoke-static {v0, p1}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$4200(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;I)I

    move-result v1

    .line 1314
    :goto_0
    return v1

    .line 1311
    :cond_0
    const-string v1, "[CarLocalMusicSearchActivity]"

    const-string v2, "SearchListAdapter, getItemViewType, tempActivity is null!"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1314
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
    .line 1042
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;->mDebug:Z

    move/from16 v23, v0

    if-eqz v23, :cond_0

    .line 1043
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

    .line 1044
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    .line 1046
    .local v17, startTime:J
    const/4 v13, 0x0

    .line 1047
    .local v13, itemInfo:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    .line 1048
    .local v20, tempActivity:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;
    if-eqz v20, :cond_3

    .line 1049
    if-ltz p1, :cond_1

    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchResultList:Ljava/util/ArrayList;
    invoke-static/range {v20 .. v20}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$2000(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    move/from16 v0, p1

    move/from16 v1, v23

    if-ge v0, v1, :cond_1

    .line 1050
    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchResultList:Ljava/util/ArrayList;
    invoke-static/range {v20 .. v20}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$2000(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Ljava/util/ArrayList;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    .end local v13           #itemInfo:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;
    check-cast v13, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;

    .line 1056
    .restart local v13       #itemInfo:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;
    :cond_1
    :goto_0
    if-nez v13, :cond_4

    move-object/from16 v21, p2

    .line 1274
    :cond_2
    :goto_1
    return-object v21

    .line 1053
    :cond_3
    const-string v23, "[CarLocalMusicSearchActivity]"

    const-string v24, "SearchListAdapter, getItem, tempActivity is null!"

    invoke-static/range {v23 .. v24}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1061
    :cond_4
    invoke-virtual/range {p0 .. p1}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;->getItemViewType(I)I

    move-result v22

    .line 1062
    .local v22, viewType:I
    const/16 v21, 0x0

    .line 1064
    .local v21, v:Landroid/view/View;
    const/4 v9, 0x0

    .line 1066
    .local v9, holder:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;
    const/4 v11, 0x1

    .line 1067
    .local v11, isNeedToReInflate:Z
    if-eqz p2, :cond_6

    .line 1068
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    .end local v9           #holder:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;
    check-cast v9, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;

    .line 1074
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

    .line 1077
    :cond_5
    const/4 v11, 0x1

    .line 1083
    :cond_6
    :goto_2
    if-eqz p2, :cond_7

    if-eqz v11, :cond_10

    .line 1084
    :cond_7
    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_9

    .line 1085
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

    .line 1086
    const v23, 0x7f080077

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Lcom/htc/widget/HtcListItemSeparator;

    .line 1088
    .local v19, subTitle:Lcom/htc/widget/HtcListItemSeparator;
    const/16 v23, 0x0

    #calls: Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->getPrimaryText()Ljava/lang/String;
    invoke-static {v13}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->access$3800(Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v19

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcListItemSeparator;->setText(ILjava/lang/CharSequence;)V

    .line 1089
    const/16 v23, 0x0

    const v24, 0x2030086

    move-object/from16 v0, v19

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcListItemSeparator;->setTextStyle(II)V

    .line 1092
    new-instance v9, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;

    .end local v9           #holder:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;
    invoke-direct {v9}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;-><init>()V

    .line 1093
    .restart local v9       #holder:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;
    move/from16 v0, v22

    iput v0, v9, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;->viewType:I

    .line 1094
    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1096
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;->mDebug:Z

    move/from16 v23, v0

    if-eqz v23, :cond_2

    .line 1097
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

    .line 1079
    .end local v19           #subTitle:Lcom/htc/widget/HtcListItemSeparator;
    :cond_8
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 1102
    :cond_9
    const/16 v23, 0x6

    move/from16 v0, v23

    move/from16 v1, v22

    if-ne v0, v1, :cond_c

    .line 1103
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

    .line 1104
    move-object/from16 v0, v21

    instance-of v0, v0, Lcom/htc/widget/HtcListItem;

    move/from16 v23, v0

    if-eqz v23, :cond_b

    move-object/from16 v12, v21

    .line 1105
    check-cast v12, Lcom/htc/widget/HtcListItem;

    .line 1106
    .local v12, item:Lcom/htc/widget/HtcListItem;
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Lcom/htc/widget/HtcListItem;->setAutoMotiveMode(Z)V

    .line 1107
    invoke-virtual {v12}, Lcom/htc/widget/HtcListItem;->getChildCount()I

    move-result v8

    .line 1108
    .local v8, count:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_3
    if-ge v10, v8, :cond_b

    .line 1109
    invoke-virtual {v12, v10}, Lcom/htc/widget/HtcListItem;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1110
    .local v7, child:Landroid/view/View;
    instance-of v0, v7, Lcom/htc/widget/IHtcListItemAutoMotiveControl;

    move/from16 v23, v0

    if-eqz v23, :cond_a

    .line 1111
    check-cast v7, Lcom/htc/widget/IHtcListItemAutoMotiveControl;

    .end local v7           #child:Landroid/view/View;
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-interface {v7, v0}, Lcom/htc/widget/IHtcListItemAutoMotiveControl;->setAutoMotiveMode(Z)V

    .line 1108
    :cond_a
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 1115
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

    .line 1116
    .local v14, itemText:Landroid/widget/TextView;
    #calls: Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->getPrimaryText()Ljava/lang/String;
    invoke-static {v13}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->access$3800(Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1118
    new-instance v9, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;

    .end local v9           #holder:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;
    invoke-direct {v9}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;-><init>()V

    .line 1119
    .restart local v9       #holder:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;
    move/from16 v0, v22

    iput v0, v9, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;->viewType:I

    .line 1120
    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1122
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;->mDebug:Z

    move/from16 v23, v0

    if-eqz v23, :cond_2

    .line 1123
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

    .line 1129
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

    .line 1130
    move-object/from16 v0, v21

    instance-of v0, v0, Lcom/htc/widget/HtcListItem;

    move/from16 v23, v0

    if-eqz v23, :cond_e

    move-object/from16 v12, v21

    .line 1131
    check-cast v12, Lcom/htc/widget/HtcListItem;

    .line 1132
    .restart local v12       #item:Lcom/htc/widget/HtcListItem;
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Lcom/htc/widget/HtcListItem;->setAutoMotiveMode(Z)V

    .line 1133
    invoke-virtual {v12}, Lcom/htc/widget/HtcListItem;->getChildCount()I

    move-result v8

    .line 1134
    .restart local v8       #count:I
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_4
    if-ge v10, v8, :cond_e

    .line 1135
    invoke-virtual {v12, v10}, Lcom/htc/widget/HtcListItem;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1136
    .restart local v7       #child:Landroid/view/View;
    instance-of v0, v7, Lcom/htc/widget/IHtcListItemAutoMotiveControl;

    move/from16 v23, v0

    if-eqz v23, :cond_d

    .line 1137
    check-cast v7, Lcom/htc/widget/IHtcListItemAutoMotiveControl;

    .end local v7           #child:Landroid/view/View;
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-interface {v7, v0}, Lcom/htc/widget/IHtcListItemAutoMotiveControl;->setAutoMotiveMode(Z)V

    .line 1134
    :cond_d
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 1142
    .end local v8           #count:I
    .end local v10           #i:I
    .end local v12           #item:Lcom/htc/widget/HtcListItem;
    :cond_e
    new-instance v9, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;

    .end local v9           #holder:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;
    invoke-direct {v9}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;-><init>()V

    .line 1143
    .restart local v9       #holder:Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;
    const v23, 0x7f080023

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Lcom/htc/widget/HtcListItemTileImage;

    move-object/from16 v0, v23

    iput-object v0, v9, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    .line 1145
    iget-object v0, v9, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    move-object/from16 v23, v0

    if-eqz v23, :cond_f

    .line 1146
    iget-object v0, v9, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Lcom/htc/widget/HtcListItemTileImage;->setDarkMode(Z)V

    .line 1148
    :cond_f
    const v23, 0x7f080024

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v0, v23

    iput-object v0, v9, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    .line 1150
    move/from16 v0, v22

    iput v0, v9, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;->viewType:I

    .line 1151
    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1183
    :goto_5
    if-nez v9, :cond_13

    .line 1184
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

    .line 1154
    :cond_10
    move-object/from16 v21, p2

    .line 1156
    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_11

    .line 1157
    const v23, 0x7f080077

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Lcom/htc/widget/HtcListItemSeparator;

    .line 1159
    .restart local v19       #subTitle:Lcom/htc/widget/HtcListItemSeparator;
    const/16 v23, 0x0

    #calls: Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->getPrimaryText()Ljava/lang/String;
    invoke-static {v13}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->access$3800(Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v19

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcListItemSeparator;->setText(ILjava/lang/CharSequence;)V

    .line 1161
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;->mDebug:Z

    move/from16 v23, v0

    if-eqz v23, :cond_2

    .line 1162
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

    .line 1167
    .end local v19           #subTitle:Lcom/htc/widget/HtcListItemSeparator;
    :cond_11
    const/16 v23, 0x6

    move/from16 v0, v23

    move/from16 v1, v22

    if-ne v0, v1, :cond_12

    .line 1168
    const v23, 0x7f080054

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 1169
    .restart local v14       #itemText:Landroid/widget/TextView;
    #calls: Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->getPrimaryText()Ljava/lang/String;
    invoke-static {v13}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->access$3800(Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1171
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;->mDebug:Z

    move/from16 v23, v0

    if-eqz v23, :cond_2

    .line 1172
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

    .line 1178
    .end local v14           #itemText:Landroid/widget/TextView;
    :cond_12
    move/from16 v0, v22

    iput v0, v9, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;->viewType:I

    .line 1179
    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 1192
    :cond_13
    iget-object v0, v9, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v23, v0

    if-eqz v23, :cond_16

    .line 1193
    const/16 v23, 0x3

    move/from16 v0, v23

    move/from16 v1, v22

    if-eq v0, v1, :cond_14

    const/16 v23, 0x4

    move/from16 v0, v23

    move/from16 v1, v22

    if-ne v0, v1, :cond_19

    .line 1194
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

    .line 1195
    .local v15, key:Ljava/lang/String;
    if-eqz v15, :cond_15

    const-string v23, ""

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_18

    .line 1196
    :cond_15
    iget-object v0, v9, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v23, v0

    #calls: Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->getPrimaryText()Ljava/lang/String;
    invoke-static {v13}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->access$3800(Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 1202
    :goto_6
    iget-object v0, v9, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v23, v0

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 1223
    .end local v15           #key:Ljava/lang/String;
    :cond_16
    :goto_7
    iget-object v0, v9, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    move-object/from16 v23, v0

    if-eqz v23, :cond_17

    .line 1224
    const/16 v23, 0x3

    move/from16 v0, v23

    move/from16 v1, v22

    if-ne v0, v1, :cond_1c

    .line 1225
    iget-object v0, v9, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    move-object/from16 v23, v0

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Lcom/htc/widget/HtcListItemTileImage;->setVisibility(I)V

    .line 1272
    :cond_17
    :goto_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;->mDebug:Z

    move/from16 v23, v0

    if-eqz v23, :cond_2

    .line 1273
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

    .line 1198
    .restart local v15       #key:Ljava/lang/String;
    :cond_18
    #calls: Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->getPrimaryText()Ljava/lang/String;
    invoke-static {v13}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->access$3800(Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v15}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->getMarkedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v16

    .line 1200
    .local v16, markedString:Ljava/lang/CharSequence;
    iget-object v0, v9, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 1205
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

    .line 1206
    .restart local v15       #key:Ljava/lang/String;
    if-eqz v15, :cond_1a

    const-string v23, ""

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1b

    .line 1207
    :cond_1a
    iget-object v0, v9, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v23, v0

    #calls: Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->getPrimaryText()Ljava/lang/String;
    invoke-static {v13}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->access$3800(Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 1214
    :goto_9
    iget-object v0, v9, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 1215
    iget-object v0, v9, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v23, v0

    #calls: Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->getSecondaryText()Ljava/lang/String;
    invoke-static {v13}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->access$3900(Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1209
    :cond_1b
    #calls: Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->getPrimaryText()Ljava/lang/String;
    invoke-static {v13}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->access$3800(Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v15}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->getMarkedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v16

    .line 1211
    .restart local v16       #markedString:Ljava/lang/CharSequence;
    iget-object v0, v9, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;->listItemText:Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 1227
    .end local v15           #key:Ljava/lang/String;
    .end local v16           #markedString:Ljava/lang/CharSequence;
    :cond_1c
    iget-object v0, v9, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/htc/widget/HtcListItemTileImage;->setVisibility(I)V

    .line 1229
    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;
    invoke-static/range {v20 .. v20}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$4000(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    move-result-object v23

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/htc/music/util/MemoryCacheBitmapByPosition;->pull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;

    .line 1232
    .local v6, cacheBmp:Landroid/graphics/Bitmap;
    iget-object v0, v9, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    move-object/from16 v23, v0

    new-instance v24, Ljava/lang/Integer;

    move-object/from16 v0, v24

    move/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual/range {v23 .. v24}, Lcom/htc/widget/HtcListItemTileImage;->setTag(Ljava/lang/Object;)V

    .line 1234
    if-eqz v6, :cond_1d

    .line 1236
    iget-object v0, v9, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_8

    .line 1239
    :cond_1d
    iget-object v0, v9, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter$ViewHolder;->listItemAlbumArt:Lcom/htc/widget/HtcListItemTileImage;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1242
    #calls: Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->getArtPath()Ljava/lang/String;
    invoke-static {v13}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;->access$4100(Lcom/htc/music/carmode/CarLocalMusicSearchActivity$BaseItem;)Ljava/lang/String;

    move-result-object v5

    .line 1243
    .local v5, albumArtpath:Ljava/lang/String;
    if-eqz v5, :cond_1f

    .line 1244
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

    .line 1249
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1251
    .local v4, albumArtFile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v23

    if-eqz v23, :cond_1e

    .line 1252
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

    .line 1254
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

    .line 1257
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

    .line 1263
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

    .line 1265
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
    .line 1319
    iget-object v2, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    .line 1320
    .local v0, tempActivity:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;
    if-eqz v0, :cond_0

    .line 1321
    #calls: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->getItemViewType(I)I
    invoke-static {v0, p1}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$4200(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;I)I

    move-result v1

    .line 1322
    .local v1, viewType:I
    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    .line 1323
    const/4 v2, 0x0

    .line 1327
    .end local v1           #viewType:I
    :goto_0
    return v2

    .line 1325
    :cond_0
    const-string v2, "[CarLocalMusicSearchActivity]"

    const-string v3, "SearchListAdapter, getItemViewType, tempActivity is null!"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1327
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
    .line 1332
    if-nez p2, :cond_1

    .line 1333
    const-string v7, "[CarLocalMusicSearchActivity]"

    const-string v8, "onImageDecoded: bitmap is null"

    invoke-static {v7, v8}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1370
    :cond_0
    :goto_0
    return-void

    .line 1336
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

    .line 1338
    iget-object v7, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;

    .line 1339
    .local v6, tempActivity:Lcom/htc/music/carmode/CarLocalMusicSearchActivity;
    if-eqz v6, :cond_3

    .line 1340
    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchList:Lcom/htc/widget/HtcListView;
    invoke-static {v6}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$4300(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Lcom/htc/widget/HtcListView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v2

    .line 1341
    .local v2, childCount:I
    if-lez v2, :cond_0

    .line 1345
    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;
    invoke-static {v6}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$4000(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Lcom/htc/music/util/MemoryCacheBitmapByPosition;->push(ILandroid/graphics/Bitmap;)Z

    move-result v0

    .line 1346
    .local v0, addedToCache:Z
    if-eqz v0, :cond_0

    .line 1347
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v2, :cond_0

    .line 1348
    #getter for: Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->mSearchList:Lcom/htc/widget/HtcListView;
    invoke-static {v6}, Lcom/htc/music/carmode/CarLocalMusicSearchActivity;->access$4300(Lcom/htc/music/carmode/CarLocalMusicSearchActivity;)Lcom/htc/widget/HtcListView;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1350
    .local v5, ll:Landroid/view/View;
    if-eqz v5, :cond_2

    .line 1351
    const v7, 0x7f080023

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1353
    .local v1, albumArt:Landroid/view/View;
    if-eqz v1, :cond_2

    .line 1354
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1356
    .local v4, integer:Ljava/lang/Integer;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, p1, :cond_2

    .line 1357
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

    .line 1359
    check-cast v1, Lcom/htc/widget/HtcListItemTileImage;

    .end local v1           #albumArt:Landroid/view/View;
    invoke-virtual {v1, p2}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1347
    .end local v4           #integer:Ljava/lang/Integer;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1367
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
    .line 1373
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/music/carmode/CarLocalMusicSearchActivity$SearchListAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;

    .line 1374
    return-void
.end method
