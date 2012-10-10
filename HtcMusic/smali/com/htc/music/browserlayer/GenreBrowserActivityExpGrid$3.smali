.class Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$3;
.super Ljava/lang/Object;
.source "GenreBrowserActivityExpGrid.java"

# interfaces
.implements Lcom/htc/music/widget/gridview/MusicGridViewUtil$MusicGridViewItemUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->initMusicGridViewUtil()V
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
    .line 448
    iput-object p1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$3;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChildCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2
    .parameter "xxxid"

    .prologue
    .line 485
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$3;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;

    const/4 v1, 0x0

    #calls: Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->getGenresAlbumCursor(Ljava/lang/String;Z)Landroid/database/Cursor;
    invoke-static {v0, p1, v1}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->access$1100(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getImagePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "xxxid"

    .prologue
    .line 452
    const/4 v1, 0x0

    .line 453
    .local v1, path:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$3;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;

    const/4 v3, 0x0

    #calls: Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->getGenresAlbumCursor(Ljava/lang/String;Z)Landroid/database/Cursor;
    invoke-static {v2, p1, v3}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->access$1100(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v0

    .line 454
    .local v0, cur:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 455
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 457
    const-string v2, "album_art"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 459
    :cond_0
    return-object v1
.end method

.method public notifyAllDataChange()V
    .locals 2

    .prologue
    .line 471
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$3;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;
    invoke-static {v0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->access$1200(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->getMediaList()Lcom/htc/sunny2/IMediaList;

    move-result-object v0

    if-nez v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$3;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;
    invoke-static {v0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->access$1400(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$3;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    invoke-static {v1}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->access$1300(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentMediaList()Lcom/htc/sunny2/IMediaList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setMediaList(Lcom/htc/sunny2/IMediaList;)V

    .line 476
    :goto_0
    return-void

    .line 474
    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$3;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;
    invoke-static {v0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->access$1500(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->notifyMediaDataChange()V

    goto :goto_0
.end method

.method public notifyViewItemDataChange(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 480
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$3;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;
    invoke-static {v0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->access$1600(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->notifyPreparatorMediaDataChange(I)V

    .line 481
    return-void
.end method
