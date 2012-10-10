.class Lcom/htc/music/carmode/CarAlbumBrowseActivity$3;
.super Ljava/lang/Object;
.source "CarAlbumBrowseActivity.java"

# interfaces
.implements Lcom/htc/music/widget/gridview/MusicGridViewUtil$MusicGridViewItemUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/carmode/CarAlbumBrowseActivity;->initMusicGridViewUtil()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/carmode/CarAlbumBrowseActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/carmode/CarAlbumBrowseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 364
    iput-object p1, p0, Lcom/htc/music/carmode/CarAlbumBrowseActivity$3;->this$0:Lcom/htc/music/carmode/CarAlbumBrowseActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChildCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "xxxid"

    .prologue
    .line 389
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImagePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "xxxid"

    .prologue
    .line 368
    const/4 v0, 0x0

    return-object v0
.end method

.method public notifyAllDataChange()V
    .locals 2

    .prologue
    .line 374
    iget-object v0, p0, Lcom/htc/music/carmode/CarAlbumBrowseActivity$3;->this$0:Lcom/htc/music/carmode/CarAlbumBrowseActivity;

    iget-object v0, v0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->getMediaList()Lcom/htc/sunny2/IMediaList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/htc/music/carmode/CarAlbumBrowseActivity$3;->this$0:Lcom/htc/music/carmode/CarAlbumBrowseActivity;

    iget-object v0, v0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->notifyMediaDataChange()V

    .line 379
    :goto_0
    return-void

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/htc/music/carmode/CarAlbumBrowseActivity$3;->this$0:Lcom/htc/music/carmode/CarAlbumBrowseActivity;

    iget-object v0, v0, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    iget-object v1, p0, Lcom/htc/music/carmode/CarAlbumBrowseActivity$3;->this$0:Lcom/htc/music/carmode/CarAlbumBrowseActivity;

    iget-object v1, v1, Lcom/htc/music/carmode/CarMusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    invoke-virtual {v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentMediaList()Lcom/htc/sunny2/IMediaList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setMediaList(Lcom/htc/sunny2/IMediaList;)V

    goto :goto_0
.end method

.method public notifyViewItemDataChange(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 384
    return-void
.end method
