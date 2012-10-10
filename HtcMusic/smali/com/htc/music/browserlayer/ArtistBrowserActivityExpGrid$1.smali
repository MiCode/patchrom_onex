.class Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$1;
.super Ljava/lang/Object;
.source "ArtistBrowserActivityExpGrid.java"

# interfaces
.implements Lcom/htc/music/widget/gridview/MusicGridViewItem$ITextViewBind;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->initMusicGridViewItem(Lcom/htc/music/widget/gridview/MusicGridViewItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)V
    .locals 0
    .parameter

    .prologue
    .line 397
    iput-object p1, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$1;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public textViewBinding(ILcom/htc/sunny2/IMediaData;Landroid/view/View;)Landroid/view/View;
    .locals 9
    .parameter "index"
    .parameter "mediaData"
    .parameter "container"

    .prologue
    const v8, 0x7f080047

    const v7, 0x7f080046

    const/4 v6, 0x0

    .line 403
    if-nez p3, :cond_1

    .line 404
    iget-object v4, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$1;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;

    invoke-virtual {v4}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 405
    .local v2, inflator:Landroid/view/LayoutInflater;
    const v4, 0x7f030029

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 406
    invoke-virtual {p3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 407
    .local v1, folderNameTextView:Landroid/widget/TextView;
    invoke-virtual {p3, v7, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 408
    invoke-virtual {p3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 409
    .local v3, itemNumberTextView:Landroid/widget/TextView;
    invoke-virtual {p3, v8, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 415
    .end local v2           #inflator:Landroid/view/LayoutInflater;
    :goto_0
    instance-of v4, p2, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;

    if-eqz v4, :cond_3

    .line 417
    iget-object v4, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$1;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    invoke-static {v4}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->access$000(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$1;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    invoke-static {v4}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->access$100(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getChildItemCount(Lcom/htc/sunny2/IMediaData;)I

    move-result v0

    .local v0, count:I
    if-lez v0, :cond_2

    .line 419
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 420
    iget-object v4, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$1;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;

    #calls: Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->setTitleWithCount(II)Ljava/lang/String;
    invoke-static {v4, v6, v0}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->access$200(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 431
    .end local v0           #count:I
    :goto_1
    iget-object v4, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$1;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    invoke-static {v4}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->access$300(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 432
    iget-object v4, p0, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid$1;->this$0:Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    invoke-static {v4}, Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;->access$400(Lcom/htc/music/browserlayer/ArtistBrowserActivityExpGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getMediaDataName(Lcom/htc/sunny2/IMediaData;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 434
    :cond_0
    return-object p3

    .line 411
    .end local v1           #folderNameTextView:Landroid/widget/TextView;
    .end local v3           #itemNumberTextView:Landroid/widget/TextView;
    :cond_1
    invoke-virtual {p3, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 412
    .restart local v1       #folderNameTextView:Landroid/widget/TextView;
    invoke-virtual {p3, v8}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .restart local v3       #itemNumberTextView:Landroid/widget/TextView;
    goto :goto_0

    .line 422
    :cond_2
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 425
    :cond_3
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 426
    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setLines(I)V

    .line 427
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 428
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method
