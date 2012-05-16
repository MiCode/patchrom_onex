.class Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;
.super Landroid/widget/BaseAdapter;
.source "AlbumDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/AlbumDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DetailListAdapter"
.end annotation


# static fields
.field private static final OFFSET_TRACKS:I = 0x1

.field private static final POSITION_HEADER:I


# instance fields
.field private mCtx:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mParentActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/music/browserlayer/AlbumDetailActivity;",
            ">;"
        }
    .end annotation
.end field

.field private posMoreByArtistName:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/music/browserlayer/AlbumDetailActivity;)V
    .locals 3
    .parameter "context"
    .parameter "parentActivity"

    .prologue
    .line 1640
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1631
    const/4 v2, -0x1

    iput v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;->posMoreByArtistName:I

    .line 1635
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;->mCtx:Landroid/content/Context;

    .line 1641
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;->mParentActivity:Ljava/lang/ref/WeakReference;

    .line 1643
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 1644
    iput-object p1, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;->mCtx:Landroid/content/Context;

    .line 1646
    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;->mParentActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/browserlayer/AlbumDetailActivity;

    .line 1647
    .local v1, tempActivity:Lcom/htc/music/browserlayer/AlbumDetailActivity;
    if-eqz v1, :cond_0

    .line 1648
    invoke-virtual {v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1649
    .local v0, resources:Landroid/content/res/Resources;
    const v2, 0x7f02003e

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    #setter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mDefaultAlbumArt:Landroid/graphics/Bitmap;
    invoke-static {v1, v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$1802(Lcom/htc/music/browserlayer/AlbumDetailActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 1651
    .end local v0           #resources:Landroid/content/res/Resources;
    :cond_0
    return-void
.end method

.method static synthetic access$900(Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1623
    iget v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;->posMoreByArtistName:I

    return v0
.end method


# virtual methods
.method public clearData()V
    .locals 1

    .prologue
    .line 1937
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;->posMoreByArtistName:I

    .line 1938
    return-void
.end method

.method public getCount()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1654
    iget-object v2, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;->mParentActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/music/browserlayer/AlbumDetailActivity;

    .line 1655
    .local v1, tempActivity:Lcom/htc/music/browserlayer/AlbumDetailActivity;
    if-nez v1, :cond_1

    .line 1656
    const-string v2, "[AlbumDetailActivity]"

    const-string v3, "DetailListAdapter.getCount():tempActivity == null."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1685
    :cond_0
    :goto_0
    return v0

    .line 1660
    :cond_1
    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mStopping:Z
    invoke-static {v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$1000(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1661
    const-string v2, "[AlbumDetailActivity]"

    const-string v3, "DetailListAdapter.getCount():stopping."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1665
    :cond_2
    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mShowError:Z
    invoke-static {v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$1300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1666
    const-string v2, "[AlbumDetailActivity]"

    const-string v3, "DetailListAdapter.getCount():mShowError."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1670
    :cond_3
    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_4

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_5

    .line 1671
    :cond_4
    const-string v2, "[AlbumDetailActivity]"

    const-string v3, "DetailListAdapter.getCount():mTrackCursor == null || mTrackCursor.getCount() == 0."

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1675
    :cond_5
    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    .line 1678
    .local v0, retInt:I
    invoke-static {}, Lcom/htc/music/util/CustomizeSetting;->isSupportListenStore()Z

    move-result v2

    if-eqz v2, :cond_0

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mArtistName:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$600(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mArtistName:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$600(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "<unknown>"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1680
    iput v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;->posMoreByArtistName:I

    .line 1681
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 1689
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 1693
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 1919
    if-nez p1, :cond_0

    .line 1920
    const/4 v0, 0x0

    .line 1928
    :goto_0
    return v0

    .line 1925
    :cond_0
    iget v0, p0, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;->posMoreByArtistName:I

    if-ne p1, v0, :cond_1

    .line 1926
    const/4 v0, 0x3

    goto :goto_0

    .line 1928
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 34
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 1705
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;->mParentActivity:Ljava/lang/ref/WeakReference;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/htc/music/browserlayer/AlbumDetailActivity;

    .line 1706
    .local v20, tempActivity:Lcom/htc/music/browserlayer/AlbumDetailActivity;
    if-nez v20, :cond_0

    .line 1707
    const-string v28, "[AlbumDetailActivity]"

    const-string v29, "DetailListAdapter.getView(int,View,ViewGroup):tempActivity == null."

    invoke-static/range {v28 .. v29}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v25, p2

    .line 1914
    :goto_0
    return-object v25

    .line 1711
    :cond_0
    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mStopping:Z
    invoke-static/range {v20 .. v20}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$1000(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Z

    move-result v28

    if-eqz v28, :cond_1

    .line 1712
    const-string v28, "[AlbumDetailActivity]"

    const-string v29, "DetailListAdapter.getView(int,View,ViewGroup):stopping."

    invoke-static/range {v28 .. v29}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v25, p2

    .line 1713
    goto :goto_0

    .line 1716
    :cond_1
    if-nez p1, :cond_a

    .line 1718
    if-eqz p2, :cond_3

    .line 1719
    move-object/from16 v25, p2

    .line 1750
    .local v25, v:Landroid/view/View;
    :goto_1
    const v28, 0x7f08005c

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Lcom/htc/widget/HtcRimImageButton;

    .line 1751
    .local v19, shareOn:Lcom/htc/widget/HtcRimImageButton;
    new-instance v28, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter$1;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter$1;-><init>(Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;Lcom/htc/music/browserlayer/AlbumDetailActivity;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1758
    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mArtistName:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$600(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Ljava/lang/String;

    move-result-object v28

    if-eqz v28, :cond_5

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumTitle:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$500(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Ljava/lang/String;

    move-result-object v28

    if-eqz v28, :cond_5

    const/16 v28, 0x1

    :goto_2
    move-object/from16 v0, v19

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimImageButton;->setEnabled(Z)V

    .line 1760
    const v28, 0x7f08005a

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 1761
    .local v17, releaseYearTV:Landroid/widget/TextView;
    const/16 v16, 0x0

    .line 1762
    .local v16, releaseYear:Ljava/lang/String;
    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mReleaseYear:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$2800(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Ljava/lang/String;

    move-result-object v28

    if-eqz v28, :cond_6

    .line 1763
    const v28, 0x7f0701c9

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mReleaseYear:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$2800(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Ljava/lang/String;

    move-result-object v31

    aput-object v31, v29, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 1764
    const/16 v28, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1765
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1771
    :goto_3
    const v28, 0x7f08005b

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 1772
    .local v10, genreType:Landroid/widget/TextView;
    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumGenre:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$3100(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Ljava/lang/String;

    move-result-object v28

    if-eqz v28, :cond_7

    .line 1773
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1774
    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumGenre:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$3100(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1780
    :goto_4
    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mNumberOfTracks:I
    invoke-static/range {v20 .. v20}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$1600(Lcom/htc/music/browserlayer/AlbumDetailActivity;)I

    move-result v28

    if-lez v28, :cond_2

    .line 1781
    const v28, 0x7f080059

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    .line 1782
    .local v24, trackNumberTV:Landroid/widget/TextView;
    const/4 v14, 0x0

    .line 1783
    .local v14, numTracks:Ljava/lang/String;
    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mNumberOfTracks:I
    invoke-static/range {v20 .. v20}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$1600(Lcom/htc/music/browserlayer/AlbumDetailActivity;)I

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_8

    .line 1784
    const v28, 0x7f0701c8

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mNumberOfTracks:I
    invoke-static/range {v20 .. v20}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$1600(Lcom/htc/music/browserlayer/AlbumDetailActivity;)I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    aput-object v31, v29, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 1788
    :goto_5
    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1791
    .end local v14           #numTracks:Ljava/lang/String;
    .end local v24           #trackNumberTV:Landroid/widget/TextView;
    :cond_2
    const v28, 0x7f080057

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 1792
    .local v4, albumArtIV:Landroid/widget/ImageView;
    const v28, 0x7f080058

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/ImageView;

    .line 1793
    .local v26, view:Landroid/widget/ImageView;
    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumArt:Landroid/graphics/Bitmap;
    invoke-static/range {v20 .. v20}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$1700(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/graphics/Bitmap;

    move-result-object v28

    if-eqz v28, :cond_9

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumArt:Landroid/graphics/Bitmap;
    invoke-static/range {v20 .. v20}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$1700(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/graphics/Bitmap;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v28

    if-nez v28, :cond_9

    .line 1794
    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mAlbumArt:Landroid/graphics/Bitmap;
    invoke-static/range {v20 .. v20}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$1700(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/graphics/Bitmap;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1795
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1796
    const/16 v28, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1721
    .end local v4           #albumArtIV:Landroid/widget/ImageView;
    .end local v10           #genreType:Landroid/widget/TextView;
    .end local v16           #releaseYear:Ljava/lang/String;
    .end local v17           #releaseYearTV:Landroid/widget/TextView;
    .end local v19           #shareOn:Lcom/htc/widget/HtcRimImageButton;
    .end local v25           #v:Landroid/view/View;
    .end local v26           #view:Landroid/widget/ImageView;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v28, v0

    const v29, 0x7f03001b

    const/16 v30, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v29

    move-object/from16 v2, p3

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v25

    .line 1723
    .restart local v25       #v:Landroid/view/View;
    const v28, 0x7f08005c

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Lcom/htc/widget/HtcRimImageButton;

    .line 1724
    .restart local v19       #shareOn:Lcom/htc/widget/HtcRimImageButton;
    if-eqz v19, :cond_4

    .line 1725
    const-string v28, "common_b_circle_outer"

    const v29, 0x2080007

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v28

    const-string v29, "common_b_circle_pressed"

    const v30, 0x2080008

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v29

    const-string v30, "common_b_circle_rest"

    const v31, 0x2080009

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-static {v0, v1, v2}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v30

    move-object/from16 v0, v19

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcRimImageButton;->setButtonBackgroundResource(III)V

    .line 1729
    const v28, 0x7f020026

    move-object/from16 v0, v19

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcRimImageButton;->setIconResource(I)V

    .line 1732
    :cond_4
    invoke-virtual/range {v20 .. v20}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    .line 1733
    .local v18, res:Landroid/content/res/Resources;
    new-instance v15, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v15}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1734
    .local v15, option:Landroid/graphics/BitmapFactory$Options;
    const/16 v28, 0x1

    move/from16 v0, v28

    iput v0, v15, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1735
    const/16 v28, 0x1

    move/from16 v0, v28

    iput-boolean v0, v15, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1736
    const v28, 0x7f02003e

    move-object/from16 v0, v18

    move/from16 v1, v28

    invoke-static {v0, v1, v15}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1738
    const v28, 0x7f080058

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/ImageView;

    .line 1739
    .restart local v26       #view:Landroid/widget/ImageView;
    iget v0, v15, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v28, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v29

    add-int v28, v28, v29

    invoke-virtual/range {v26 .. v26}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v29

    add-int v27, v28, v29

    .line 1740
    .local v27, width:I
    iget v0, v15, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v28, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v29

    add-int v28, v28, v29

    invoke-virtual/range {v26 .. v26}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v29

    add-int v11, v28, v29

    .line 1741
    .local v11, height:I
    invoke-virtual/range {v26 .. v26}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v28

    move/from16 v0, v27

    move-object/from16 v1, v28

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1742
    invoke-virtual/range {v26 .. v26}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v28

    move-object/from16 v0, v28

    iput v11, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1744
    new-instance v12, Lcom/htc/music/browserlayer/AlbumDetailActivity$ViewHolder;

    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-direct {v12, v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity$ViewHolder;-><init>(I)V

    .line 1745
    .local v12, holder:Lcom/htc/music/browserlayer/AlbumDetailActivity$ViewHolder;
    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1758
    .end local v11           #height:I
    .end local v12           #holder:Lcom/htc/music/browserlayer/AlbumDetailActivity$ViewHolder;
    .end local v15           #option:Landroid/graphics/BitmapFactory$Options;
    .end local v18           #res:Landroid/content/res/Resources;
    .end local v26           #view:Landroid/widget/ImageView;
    .end local v27           #width:I
    :cond_5
    const/16 v28, 0x0

    goto/16 :goto_2

    .line 1768
    .restart local v16       #releaseYear:Ljava/lang/String;
    .restart local v17       #releaseYearTV:Landroid/widget/TextView;
    :cond_6
    const/16 v28, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 1776
    .restart local v10       #genreType:Landroid/widget/TextView;
    :cond_7
    const/16 v28, 0x8

    move/from16 v0, v28

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 1786
    .restart local v14       #numTracks:Ljava/lang/String;
    .restart local v24       #trackNumberTV:Landroid/widget/TextView;
    :cond_8
    const v28, 0x7f0701c7

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mNumberOfTracks:I
    invoke-static/range {v20 .. v20}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$1600(Lcom/htc/music/browserlayer/AlbumDetailActivity;)I

    move-result v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    aput-object v31, v29, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_5

    .line 1802
    .end local v14           #numTracks:Ljava/lang/String;
    .end local v24           #trackNumberTV:Landroid/widget/TextView;
    .restart local v4       #albumArtIV:Landroid/widget/ImageView;
    .restart local v26       #view:Landroid/widget/ImageView;
    :cond_9
    const/16 v28, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 1823
    .end local v4           #albumArtIV:Landroid/widget/ImageView;
    .end local v10           #genreType:Landroid/widget/TextView;
    .end local v16           #releaseYear:Ljava/lang/String;
    .end local v17           #releaseYearTV:Landroid/widget/TextView;
    .end local v19           #shareOn:Lcom/htc/widget/HtcRimImageButton;
    .end local v25           #v:Landroid/view/View;
    .end local v26           #view:Landroid/widget/ImageView;
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;->posMoreByArtistName:I

    move/from16 v28, v0

    move/from16 v0, p1

    move/from16 v1, v28

    if-ne v0, v1, :cond_d

    .line 1825
    if-eqz p2, :cond_b

    .line 1826
    move-object/from16 v25, p2

    .line 1833
    .restart local v25       #v:Landroid/view/View;
    :goto_6
    const v28, 0x7f080054

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 1834
    .local v21, textContent:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;->mCtx:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f070112

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1835
    .local v5, artistPattern:Ljava/lang/String;
    const-string v28, "%s"

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_c

    .line 1836
    const-string v28, "%s"

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mArtistName:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$600(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1828
    .end local v5           #artistPattern:Ljava/lang/String;
    .end local v21           #textContent:Landroid/widget/TextView;
    .end local v25           #v:Landroid/view/View;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v28, v0

    const v29, 0x7f030019

    const/16 v30, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v29

    move-object/from16 v2, p3

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v25

    .line 1829
    .restart local v25       #v:Landroid/view/View;
    new-instance v12, Lcom/htc/music/browserlayer/AlbumDetailActivity$ViewHolder;

    const/16 v28, 0x3

    move/from16 v0, v28

    invoke-direct {v12, v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity$ViewHolder;-><init>(I)V

    .line 1830
    .restart local v12       #holder:Lcom/htc/music/browserlayer/AlbumDetailActivity$ViewHolder;
    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_6

    .line 1838
    .end local v12           #holder:Lcom/htc/music/browserlayer/AlbumDetailActivity$ViewHolder;
    .restart local v5       #artistPattern:Ljava/lang/String;
    .restart local v21       #textContent:Landroid/widget/TextView;
    :cond_c
    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1844
    .end local v5           #artistPattern:Ljava/lang/String;
    .end local v21           #textContent:Landroid/widget/TextView;
    .end local v25           #v:Landroid/view/View;
    :cond_d
    add-int/lit8 p1, p1, -0x1

    .line 1846
    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static/range {v20 .. v20}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/database/Cursor;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1847
    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static/range {v20 .. v20}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/database/Cursor;

    move-result-object v28

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static/range {v20 .. v20}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/database/Cursor;

    move-result-object v29

    const-string v30, "title"

    invoke-interface/range {v29 .. v30}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v29

    invoke-interface/range {v28 .. v29}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 1849
    .local v23, trackName:Ljava/lang/String;
    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static/range {v20 .. v20}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/database/Cursor;

    move-result-object v28

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static/range {v20 .. v20}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)Landroid/database/Cursor;

    move-result-object v29

    const-string v30, "_id"

    invoke-interface/range {v29 .. v30}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v29

    invoke-interface/range {v28 .. v29}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 1854
    .local v6, audioId:I
    if-eqz p2, :cond_e

    .line 1855
    move-object/from16 v25, p2

    .line 1856
    .restart local v25       #v:Landroid/view/View;
    const v28, 0x7f080056

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/htc/widget/HtcRimImageButton;

    .line 1870
    .local v13, ib:Lcom/htc/widget/HtcRimImageButton;
    :goto_7
    const v28, 0x7f080037

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Lcom/htc/widget/HtcListItem2LineText;

    .line 1872
    .local v22, textView:Lcom/htc/widget/HtcListItem2LineText;
    invoke-virtual/range {v22 .. v23}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 1873
    const/16 v28, 0x8

    move-object/from16 v0, v22

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 1878
    const v28, 0x7f080055

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/htc/widget/HtcListItemImageButton;

    .line 1880
    .local v7, badgeNowPlaying:Lcom/htc/widget/HtcListItemImageButton;
    :try_start_0
    sget-object v28, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v28, :cond_f

    sget-object v28, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    invoke-interface/range {v28 .. v28}, Lcom/htc/music/IMediaPlaybackService;->getAudioId()I

    move-result v28

    move/from16 v0, v28

    if-ne v6, v0, :cond_f

    .line 1881
    sget-object v28, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Lcom/htc/widget/HtcListItemImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1882
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v7, v0}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1895
    :goto_8
    invoke-virtual {v13}, Lcom/htc/widget/HtcRimImageButton;->getTag()Ljava/lang/Object;

    move-result-object v28

    if-eqz v28, :cond_10

    invoke-virtual {v13}, Lcom/htc/widget/HtcRimImageButton;->getTag()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/os/Bundle;

    move-object/from16 v8, v28

    .line 1896
    .local v8, data:Landroid/os/Bundle;
    :goto_9
    const-string v28, "audioid"

    move-object/from16 v0, v28

    invoke-virtual {v8, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1897
    const-string v28, "position"

    move-object/from16 v0, v28

    move/from16 v1, p1

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1898
    const-string v28, "trackname"

    move-object/from16 v0, v28

    move-object/from16 v1, v23

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1899
    invoke-virtual {v13, v8}, Lcom/htc/widget/HtcRimImageButton;->setTag(Ljava/lang/Object;)V

    .line 1900
    new-instance v28, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter$2;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter$2;-><init>(Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;Lcom/htc/music/browserlayer/AlbumDetailActivity;)V

    move-object/from16 v0, v28

    invoke-virtual {v13, v0}, Lcom/htc/widget/HtcRimImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1910
    new-instance v28, Landroid/view/TouchDelegate;

    new-instance v29, Landroid/graphics/Rect;

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mScreenWidth:I
    invoke-static/range {v20 .. v20}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$3300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)I

    move-result v30

    add-int/lit8 v30, v30, -0x64

    const/16 v31, 0x0

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mScreenWidth:I
    invoke-static/range {v20 .. v20}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$3300(Lcom/htc/music/browserlayer/AlbumDetailActivity;)I

    move-result v32

    #getter for: Lcom/htc/music/browserlayer/AlbumDetailActivity;->mScreenHeight:I
    invoke-static/range {v20 .. v20}, Lcom/htc/music/browserlayer/AlbumDetailActivity;->access$3400(Lcom/htc/music/browserlayer/AlbumDetailActivity;)I

    move-result v33

    invoke-direct/range {v29 .. v33}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-direct {v0, v1, v13}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    goto/16 :goto_0

    .line 1858
    .end local v7           #badgeNowPlaying:Lcom/htc/widget/HtcListItemImageButton;
    .end local v8           #data:Landroid/os/Bundle;
    .end local v13           #ib:Lcom/htc/widget/HtcRimImageButton;
    .end local v22           #textView:Lcom/htc/widget/HtcListItem2LineText;
    .end local v25           #v:Landroid/view/View;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/browserlayer/AlbumDetailActivity$DetailListAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v28, v0

    const v29, 0x7f03001a

    const/16 v30, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v29

    move-object/from16 v2, p3

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v25

    .line 1859
    .restart local v25       #v:Landroid/view/View;
    const v28, 0x7f080056

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/htc/widget/HtcRimImageButton;

    .line 1860
    .restart local v13       #ib:Lcom/htc/widget/HtcRimImageButton;
    const-string v28, "common_circle_outer"

    const v29, 0x208001f

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v28

    const-string v29, "common_circle_pressed"

    const v30, 0x2080020

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v29

    const-string v30, "common_circle_rest"

    const v31, 0x2080021

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-static {v0, v1, v2}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v30

    move/from16 v0, v28

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v13, v0, v1, v2}, Lcom/htc/widget/HtcRimImageButton;->setButtonBackgroundResource(III)V

    .line 1864
    const v28, 0x7f020028

    move/from16 v0, v28

    invoke-virtual {v13, v0}, Lcom/htc/widget/HtcRimImageButton;->setIconResource(I)V

    .line 1865
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v13, v0}, Lcom/htc/widget/HtcRimImageButton;->setFocusable(Z)V

    .line 1866
    new-instance v12, Lcom/htc/music/browserlayer/AlbumDetailActivity$ViewHolder;

    const/16 v28, 0x2

    move/from16 v0, v28

    invoke-direct {v12, v0}, Lcom/htc/music/browserlayer/AlbumDetailActivity$ViewHolder;-><init>(I)V

    .line 1867
    .restart local v12       #holder:Lcom/htc/music/browserlayer/AlbumDetailActivity$ViewHolder;
    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 1884
    .end local v12           #holder:Lcom/htc/music/browserlayer/AlbumDetailActivity$ViewHolder;
    .restart local v7       #badgeNowPlaying:Lcom/htc/widget/HtcListItemImageButton;
    .restart local v22       #textView:Lcom/htc/widget/HtcListItem2LineText;
    :cond_f
    const/16 v28, 0x8

    :try_start_1
    move/from16 v0, v28

    invoke-virtual {v7, v0}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_8

    .line 1886
    :catch_0
    move-exception v9

    .line 1887
    .local v9, e:Landroid/os/RemoteException;
    invoke-virtual {v9}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_8

    .line 1895
    .end local v9           #e:Landroid/os/RemoteException;
    :cond_10
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    goto/16 :goto_9
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 1933
    const/4 v0, 0x4

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    const/4 v0, 0x1

    .line 1698
    if-ge p1, v0, :cond_0

    .line 1699
    const/4 v0, 0x0

    .line 1701
    :cond_0
    return v0
.end method
