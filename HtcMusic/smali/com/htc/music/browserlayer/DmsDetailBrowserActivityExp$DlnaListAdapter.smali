.class Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;
.super Landroid/widget/BaseAdapter;
.source "DmsDetailBrowserActivityExp.java"

# interfaces
.implements Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DlnaListAdapter"
.end annotation


# instance fields
.field private mBar:Landroid/widget/ProgressBar;

.field private mContext:Landroid/content/Context;

.field private mIcon:Lcom/htc/widget/HtcListItemTileImage;

.field private mName:Lcom/htc/widget/HtcListItem2LineText;

.field private mPlaying:Lcom/htc/widget/HtcListItemImageButton;

.field final synthetic this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;


# direct methods
.method public constructor <init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;Landroid/content/Context;)V
    .locals 6
    .parameter
    .parameter "context"

    .prologue
    .line 1839
    iput-object p1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1840
    iput-object p2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;->mContext:Landroid/content/Context;

    .line 1842
    invoke-virtual {p1}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020052

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    #setter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {p1, v0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$3002(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;

    .line 1847
    new-instance v0, Lcom/htc/music/util/AsyncImageDecoder;

    invoke-virtual {p1}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {p1}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$3000(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {p1}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$3000(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v5, 0x1

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/music/util/AsyncImageDecoder;-><init>(Landroid/content/Context;Lcom/htc/music/util/AsyncImageDecoder$IImageDecodeListener;IIZ)V

    #setter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDecoder:Lcom/htc/music/util/AsyncImageDecoder;
    invoke-static {p1, v0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$2202(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;Lcom/htc/music/util/AsyncImageDecoder;)Lcom/htc/music/util/AsyncImageDecoder;

    .line 1851
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 1854
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mContentList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$300(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1855
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mContentList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$300(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1857
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 1861
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mContentList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$300(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1862
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mContentList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$300(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 1864
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 1868
    iget-object v0, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mContentList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$300(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1869
    int-to-long v0, p1

    .line 1871
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 1875
    iget-object v6, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mContentList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$300(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1877
    .local v5, size:I
    iget-object v6, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mContentList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$300(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_0

    if-gt p1, v5, :cond_0

    iget-object v6, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mContentList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$300(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1

    .line 1878
    :cond_0
    const/4 v6, 0x0

    .line 1947
    :goto_0
    return-object v6

    .line 1880
    :cond_1
    iget-object v6, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mContentList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$300(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;

    invoke-virtual {v6}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;->GetId()Ljava/lang/String;

    move-result-object v0

    .line 1882
    .local v0, contentID:Ljava/lang/String;
    if-nez v0, :cond_9

    .line 1884
    if-eqz p2, :cond_2

    const v6, 0x7f080021

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_3

    .line 1885
    :cond_2
    iget-object v6, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v6}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$3100(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f030007

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 1888
    :cond_3
    const v6, 0x7f080022

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1889
    .local v1, contentText:Landroid/widget/TextView;
    const v6, 0x7f080021

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ProgressBar;

    iput-object v6, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;->mBar:Landroid/widget/ProgressBar;

    .line 1891
    if-nez p1, :cond_6

    .line 1892
    iget-object v6, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mLoadingPrev:Z
    invoke-static {v6}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$1700(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Z

    move-result v6

    if-eqz v6, :cond_4

    const v6, 0x7f0700ce

    :goto_1
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(I)V

    .line 1893
    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;->mBar:Landroid/widget/ProgressBar;

    iget-object v6, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mLoadingPrev:Z
    invoke-static {v6}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$1700(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v6, 0x0

    :goto_2
    invoke-virtual {v7, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    move-object v6, p2

    .line 1894
    goto :goto_0

    .line 1892
    :cond_4
    const v6, 0x7f0700cd

    goto :goto_1

    .line 1893
    :cond_5
    const/16 v6, 0x8

    goto :goto_2

    .line 1898
    :cond_6
    iget-object v6, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mLoadingNext:Z
    invoke-static {v6}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$1600(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Z

    move-result v6

    if-eqz v6, :cond_7

    const v6, 0x7f0700cc

    :goto_3
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(I)V

    .line 1899
    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;->mBar:Landroid/widget/ProgressBar;

    iget-object v6, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mLoadingNext:Z
    invoke-static {v6}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$1600(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Z

    move-result v6

    if-eqz v6, :cond_8

    const/4 v6, 0x0

    :goto_4
    invoke-virtual {v7, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    move-object v6, p2

    .line 1900
    goto/16 :goto_0

    .line 1898
    :cond_7
    const v6, 0x7f0700cb

    goto :goto_3

    .line 1899
    :cond_8
    const/16 v6, 0x8

    goto :goto_4

    .line 1904
    .end local v1           #contentText:Landroid/widget/TextView;
    :cond_9
    if-eqz p2, :cond_a

    const v6, 0x7f080023

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_b

    .line 1905
    :cond_a
    iget-object v6, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v6}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$3100(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f03000a

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 1907
    :cond_b
    const v6, 0x7f080024

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v6, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;->mName:Lcom/htc/widget/HtcListItem2LineText;

    .line 1908
    const v6, 0x7f080023

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/htc/widget/HtcListItemTileImage;

    iput-object v6, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;->mIcon:Lcom/htc/widget/HtcListItemTileImage;

    .line 1909
    const v6, 0x7f080028

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/htc/widget/HtcListItemImageButton;

    iput-object v6, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;->mPlaying:Lcom/htc/widget/HtcListItemImageButton;

    .line 1910
    iget-object v6, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;->mPlaying:Lcom/htc/widget/HtcListItemImageButton;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    .line 1912
    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;->mName:Lcom/htc/widget/HtcListItem2LineText;

    iget-object v6, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mContentList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$300(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;

    invoke-virtual {v6}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;->GetName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 1913
    iget-object v6, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;->mName:Lcom/htc/widget/HtcListItem2LineText;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 1916
    new-instance v3, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$itemInfo;

    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    iget-object v6, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mContentList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$300(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;

    #calls: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;->GetPosition()I
    invoke-static {v6}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;->access$1100(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;)I

    move-result v6

    invoke-direct {v3, v7, v6, v0}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$itemInfo;-><init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;ILjava/lang/String;)V

    .line 1917
    .local v3, info:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$itemInfo;
    iget-object v6, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;->mIcon:Lcom/htc/widget/HtcListItemTileImage;

    invoke-virtual {v6, v3}, Lcom/htc/widget/HtcListItemTileImage;->setTag(Ljava/lang/Object;)V

    .line 1923
    iget-object v6, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDlnaMode:I
    invoke-static {v6}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$2500(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_c

    iget-object v6, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDlnaMode:I
    invoke-static {v6}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$2500(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_d

    :cond_c
    iget-object v6, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mcurContent:Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$100(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mcurContent:Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$100(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 1925
    iget-object v6, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;->mPlaying:Lcom/htc/widget/HtcListItemImageButton;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    .line 1926
    iget-object v6, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;->mPlaying:Lcom/htc/widget/HtcListItemImageButton;

    const v7, 0x2080089

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcListItemImageButton;->setImageResource(I)V

    .line 1928
    const-string v6, "[DMS]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getView: Current content = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mcurContent:Ljava/lang/String;
    invoke-static {v8}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$100(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1931
    :cond_d
    iget-object v6, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;
    invoke-static {v6}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$3200(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    move-result-object v7

    iget-object v6, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mContentList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$300(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;

    #calls: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;->GetPosition()I
    invoke-static {v6}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;->access$1100(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$ContentInfo;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/htc/music/util/MemoryCacheBitmapByPosition;->pull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 1932
    .local v2, image:Landroid/graphics/Bitmap;
    if-eqz v2, :cond_e

    .line 1934
    iget-object v6, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;->mIcon:Lcom/htc/widget/HtcListItemTileImage;

    invoke-virtual {v6, v2}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    move-object v6, p2

    .line 1935
    goto/16 :goto_0

    .line 1938
    :cond_e
    iget-object v6, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;->mIcon:Lcom/htc/widget/HtcListItemTileImage;

    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$3000(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1940
    iget-object v6, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mIsScrolling:Z
    invoke-static {v6}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$3300(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Z

    move-result v6

    if-nez v6, :cond_f

    .line 1941
    iget-object v6, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mWorkHandler:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$workHandler;
    invoke-static {v6}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$3400(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$workHandler;

    move-result-object v6

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$workHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 1942
    .local v4, msg:Landroid/os/Message;
    invoke-virtual {v4}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "contentID"

    invoke-virtual {v6, v7, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1943
    iget-object v6, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mWorkHandler:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$workHandler;
    invoke-static {v6}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$3400(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$workHandler;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$workHandler;->sendMessage(Landroid/os/Message;)Z

    .end local v4           #msg:Landroid/os/Message;
    :cond_f
    move-object v6, p2

    .line 1947
    goto/16 :goto_0
.end method

.method public varargs onImageDecoded(ILandroid/graphics/Bitmap;J[Ljava/lang/Object;)V
    .locals 8
    .parameter "position"
    .parameter "bitmap"
    .parameter "timeStamp"
    .parameter "varargs"

    .prologue
    .line 1952
    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mListView:Lcom/htc/widget/HtcListView;
    invoke-static {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$2100(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Lcom/htc/widget/HtcListView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/widget/HtcListView;->getChildCount()I

    move-result v2

    .line 1953
    .local v2, childCount:I
    if-gtz v2, :cond_1

    .line 1975
    :cond_0
    return-void

    .line 1959
    :cond_1
    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mMemoryCache:Lcom/htc/music/util/MemoryCacheBitmapByPosition;
    invoke-static {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$3200(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Lcom/htc/music/util/MemoryCacheBitmapByPosition;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Lcom/htc/music/util/MemoryCacheBitmapByPosition;->push(ILandroid/graphics/Bitmap;)Z

    move-result v0

    .line 1960
    .local v0, addedToCache:Z
    if-eqz v0, :cond_0

    .line 1961
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 1962
    iget-object v7, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$DlnaListAdapter;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->mListView:Lcom/htc/widget/HtcListView;
    invoke-static {v7}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;->access$2100(Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp;)Lcom/htc/widget/HtcListView;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/htc/widget/HtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1963
    .local v6, ll:Landroid/view/View;
    if-eqz v6, :cond_2

    .line 1964
    const v7, 0x7f080023

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItemTileImage;

    .line 1965
    .local v1, child:Lcom/htc/widget/HtcListItemTileImage;
    if-eqz v1, :cond_2

    .line 1966
    invoke-virtual {v1}, Lcom/htc/widget/HtcListItemTileImage;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$itemInfo;

    .line 1967
    .local v4, info:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$itemInfo;
    invoke-virtual {v4}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$itemInfo;->getPostion()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1968
    .local v5, integer:Ljava/lang/Integer;
    if-eqz v5, :cond_2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1969
    invoke-virtual {v1, p2}, Lcom/htc/widget/HtcListItemTileImage;->setTileImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1961
    .end local v1           #child:Lcom/htc/widget/HtcListItemTileImage;
    .end local v4           #info:Lcom/htc/music/browserlayer/DmsDetailBrowserActivityExp$itemInfo;
    .end local v5           #integer:Ljava/lang/Integer;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
