.class Lcom/htc/music/carmode/CarArtistBrowseActivity$1;
.super Ljava/lang/Object;
.source "CarArtistBrowseActivity.java"

# interfaces
.implements Lcom/htc/music/widget/gridview/MusicGridViewItem$ITextViewBind;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/carmode/CarArtistBrowseActivity;->initMusicGridViewItem(Lcom/htc/music/widget/gridview/MusicGridViewItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/carmode/CarArtistBrowseActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/carmode/CarArtistBrowseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 381
    iput-object p1, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity$1;->this$0:Lcom/htc/music/carmode/CarArtistBrowseActivity;

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

    .line 387
    if-nez p3, :cond_1

    .line 388
    iget-object v4, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity$1;->this$0:Lcom/htc/music/carmode/CarArtistBrowseActivity;

    invoke-virtual {v4}, Lcom/htc/music/carmode/CarArtistBrowseActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 389
    .local v2, inflator:Landroid/view/LayoutInflater;
    const v4, 0x7f030011

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 390
    invoke-virtual {p3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 391
    .local v1, folderNameTextView:Landroid/widget/TextView;
    invoke-virtual {p3, v7, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 392
    invoke-virtual {p3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 393
    .local v3, itemNumberTextView:Landroid/widget/TextView;
    invoke-virtual {p3, v8, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 399
    .end local v2           #inflator:Landroid/view/LayoutInflater;
    :goto_0
    instance-of v4, p2, Lcom/htc/music/widget/gridview/MusicGridViewUtil$ParentMediaData;

    if-eqz v4, :cond_3

    .line 401
    iget-object v4, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity$1;->this$0:Lcom/htc/music/carmode/CarArtistBrowseActivity;

    iget-object v4, v4, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity$1;->this$0:Lcom/htc/music/carmode/CarArtistBrowseActivity;

    iget-object v4, v4, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v4, p2}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getChildItemCount(Lcom/htc/sunny2/IMediaData;)I

    move-result v0

    .local v0, count:I
    if-lez v0, :cond_2

    .line 403
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 404
    iget-object v4, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity$1;->this$0:Lcom/htc/music/carmode/CarArtistBrowseActivity;

    invoke-virtual {v4, v6, v0}, Lcom/htc/music/carmode/CarArtistBrowseActivity;->setTitleWithCount(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 415
    .end local v0           #count:I
    :goto_1
    iget-object v4, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity$1;->this$0:Lcom/htc/music/carmode/CarArtistBrowseActivity;

    iget-object v4, v4, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    if-eqz v4, :cond_0

    .line 416
    iget-object v4, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity$1;->this$0:Lcom/htc/music/carmode/CarArtistBrowseActivity;

    iget-object v4, v4, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v4, p2}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getMediaDataName(Lcom/htc/sunny2/IMediaData;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 418
    :cond_0
    return-object p3

    .line 395
    .end local v1           #folderNameTextView:Landroid/widget/TextView;
    .end local v3           #itemNumberTextView:Landroid/widget/TextView;
    :cond_1
    invoke-virtual {p3, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 396
    .restart local v1       #folderNameTextView:Landroid/widget/TextView;
    invoke-virtual {p3, v8}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .restart local v3       #itemNumberTextView:Landroid/widget/TextView;
    goto :goto_0

    .line 406
    :cond_2
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 409
    :cond_3
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 410
    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setLines(I)V

    .line 411
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 412
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method
