.class Lcom/htc/music/carmode/CarArtistBrowseActivity$4;
.super Ljava/lang/Object;
.source "CarArtistBrowseActivity.java"

# interfaces
.implements Lcom/htc/sunny2/Preparator$UpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/carmode/CarArtistBrowseActivity;->initGridViewPreparator(Lcom/htc/music/widget/gridview/MusicGridViewPreparator;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V
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
    .line 505
    iput-object p1, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity$4;->this$0:Lcom/htc/music/carmode/CarArtistBrowseActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExpired(IILandroid/os/Bundle;)V
    .locals 0
    .parameter "mediaListIdx"
    .parameter "itemIndex"
    .parameter "inValue"

    .prologue
    .line 526
    return-void
.end method

.method public onFailed(IILandroid/os/Bundle;)V
    .locals 1
    .parameter "mediaListIdx"
    .parameter "itemIndex"
    .parameter "inValue"

    .prologue
    .line 519
    iget-object v0, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity$4;->this$0:Lcom/htc/music/carmode/CarArtistBrowseActivity;

    iget-object v0, v0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v0, p2}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->notifyMediaDataInvalidate(I)V

    .line 520
    return-void
.end method

.method public onReady(IILandroid/os/Bundle;)V
    .locals 2
    .parameter "mediaListIdx"
    .parameter "itemIndex"
    .parameter "inValue"

    .prologue
    .line 510
    iget-object v0, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity$4;->this$0:Lcom/htc/music/carmode/CarArtistBrowseActivity;

    iget-object v0, v0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity$4;->this$0:Lcom/htc/music/carmode/CarArtistBrowseActivity;

    iget-object v0, v0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v0, p2}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getChildIndex(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 511
    iget-object v0, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity$4;->this$0:Lcom/htc/music/carmode/CarArtistBrowseActivity;

    iget-object v0, v0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    add-int/lit8 v1, p2, -0x1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->notifyMediaDataInvalidate(I)V

    .line 513
    :cond_0
    iget-object v0, p0, Lcom/htc/music/carmode/CarArtistBrowseActivity$4;->this$0:Lcom/htc/music/carmode/CarArtistBrowseActivity;

    iget-object v0, v0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v0, p2}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->notifyMediaDataInvalidate(I)V

    .line 514
    return-void
.end method
