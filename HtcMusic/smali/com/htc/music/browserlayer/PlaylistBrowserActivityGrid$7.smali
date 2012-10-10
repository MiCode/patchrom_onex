.class Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$7;
.super Ljava/lang/Object;
.source "PlaylistBrowserActivityGrid.java"

# interfaces
.implements Lcom/htc/music/widget/gridview/MusicGridViewUtil$MusicGridViewItemUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->initMusicGridViewUtil()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)V
    .locals 0
    .parameter

    .prologue
    .line 584
    iput-object p1, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$7;->this$0:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChildCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2
    .parameter "xxxid"

    .prologue
    .line 607
    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$7;->this$0:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;

    const/4 v1, 0x0

    #calls: Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->getPlaylistFirstTrackCursor(Ljava/lang/String;Z)Landroid/database/Cursor;
    invoke-static {v0, p1, v1}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->access$1300(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getImagePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "xxxid"

    .prologue
    .line 588
    const/4 v0, 0x0

    return-object v0
.end method

.method public notifyAllDataChange()V
    .locals 2

    .prologue
    .line 593
    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$7;->this$0:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;
    invoke-static {v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->access$800(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->getMediaList()Lcom/htc/sunny2/IMediaList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 594
    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$7;->this$0:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;
    invoke-static {v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->access$900(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->notifyMediaDataChange()V

    .line 598
    :goto_0
    return-void

    .line 596
    :cond_0
    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$7;->this$0:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;
    invoke-static {v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->access$1100(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$7;->this$0:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mMusicGridViewUtil:Lcom/htc/music/widget/gridview/MusicGridViewUtil;
    invoke-static {v1}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->access$1000(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/music/widget/gridview/MusicGridViewUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/music/widget/gridview/MusicGridViewUtil;->getParentMediaList()Lcom/htc/sunny2/IMediaList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->setMediaList(Lcom/htc/sunny2/IMediaList;)V

    goto :goto_0
.end method

.method public notifyViewItemDataChange(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 602
    iget-object v0, p0, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid$7;->this$0:Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;
    invoke-static {v0}, Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;->access$1200(Lcom/htc/music/browserlayer/PlaylistBrowserActivityGrid;)Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->notifyPreparatorMediaDataChange(I)V

    .line 603
    return-void
.end method
