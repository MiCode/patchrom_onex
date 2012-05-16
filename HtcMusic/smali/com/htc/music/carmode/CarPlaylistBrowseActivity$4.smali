.class Lcom/htc/music/carmode/CarPlaylistBrowseActivity$4;
.super Ljava/lang/Object;
.source "CarPlaylistBrowseActivity.java"

# interfaces
.implements Lcom/htc/music/widget/gridview/MusicGridViewItem$ITextViewBind;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->initMusicGridViewItem(Lcom/htc/music/widget/gridview/MusicGridViewItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/carmode/CarPlaylistBrowseActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/carmode/CarPlaylistBrowseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 422
    iput-object p1, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity$4;->this$0:Lcom/htc/music/carmode/CarPlaylistBrowseActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public textViewBinding(ILcom/htc/sunny2/IMediaData;Landroid/view/View;)Landroid/view/View;
    .locals 4
    .parameter "index"
    .parameter "mediaData"
    .parameter "container"

    .prologue
    .line 427
    if-nez p3, :cond_1

    .line 428
    iget-object v2, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity$4;->this$0:Lcom/htc/music/carmode/CarPlaylistBrowseActivity;

    invoke-virtual {v2}, Lcom/htc/music/carmode/CarPlaylistBrowseActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 429
    .local v0, inflator:Landroid/view/LayoutInflater;
    const v2, 0x7f030012

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 430
    const v2, 0x7f080046

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 431
    .local v1, textView:Landroid/widget/TextView;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 432
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLines(I)V

    .line 433
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 434
    invoke-virtual {p3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 439
    .end local v0           #inflator:Landroid/view/LayoutInflater;
    :goto_0
    iget-object v2, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity$4;->this$0:Lcom/htc/music/carmode/CarPlaylistBrowseActivity;

    iget-object v2, v2, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    if-eqz v2, :cond_0

    .line 440
    iget-object v2, p0, Lcom/htc/music/carmode/CarPlaylistBrowseActivity$4;->this$0:Lcom/htc/music/carmode/CarPlaylistBrowseActivity;

    iget-object v2, v2, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v2, p2}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentMediaDataName(Lcom/htc/sunny2/IMediaData;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 442
    :cond_0
    return-object p3

    .line 436
    .end local v1           #textView:Landroid/widget/TextView;
    :cond_1
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .restart local v1       #textView:Landroid/widget/TextView;
    goto :goto_0
.end method
