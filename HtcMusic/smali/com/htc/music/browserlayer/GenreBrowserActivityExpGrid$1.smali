.class Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$1;
.super Ljava/lang/Object;
.source "GenreBrowserActivityExpGrid.java"

# interfaces
.implements Lcom/htc/music/widget/gridview/MusicGridViewItem$ITextViewBind;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->initMusicGridViewItem(Lcom/htc/music/widget/gridview/MusicGridViewItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)V
    .locals 0
    .parameter

    .prologue
    .line 363
    iput-object p1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$1;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;

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

    .line 370
    if-nez p3, :cond_1

    .line 371
    iget-object v4, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$1;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;

    invoke-virtual {v4}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 372
    .local v2, inflator:Landroid/view/LayoutInflater;
    const v4, 0x7f030029

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 373
    invoke-virtual {p3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 374
    .local v1, folderNameTextView:Landroid/widget/TextView;
    invoke-virtual {p3, v7, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 375
    invoke-virtual {p3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 376
    .local v3, itemNumberTextView:Landroid/widget/TextView;
    invoke-virtual {p3, v8, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 382
    .end local v2           #inflator:Landroid/view/LayoutInflater;
    :goto_0
    instance-of v4, p2, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;

    if-eqz v4, :cond_3

    .line 384
    iget-object v4, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$1;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    invoke-static {v4}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->access$000(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$1;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    invoke-static {v4}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->access$100(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getChildItemCount(Lcom/htc/sunny2/IMediaData;)I

    move-result v0

    .local v0, count:I
    if-lez v0, :cond_2

    .line 386
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 387
    iget-object v4, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$1;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;

    #calls: Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->setTitleWithCount(II)Ljava/lang/String;
    invoke-static {v4, v6, v0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->access$200(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 398
    .end local v0           #count:I
    :goto_1
    iget-object v4, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$1;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    invoke-static {v4}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->access$300(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 399
    iget-object v4, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$1;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    invoke-static {v4}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->access$400(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getMediaDataName(Lcom/htc/sunny2/IMediaData;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    :cond_0
    return-object p3

    .line 378
    .end local v1           #folderNameTextView:Landroid/widget/TextView;
    .end local v3           #itemNumberTextView:Landroid/widget/TextView;
    :cond_1
    invoke-virtual {p3, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 379
    .restart local v1       #folderNameTextView:Landroid/widget/TextView;
    invoke-virtual {p3, v8}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .restart local v3       #itemNumberTextView:Landroid/widget/TextView;
    goto :goto_0

    .line 389
    :cond_2
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 392
    :cond_3
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 393
    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setLines(I)V

    .line 394
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 395
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method
