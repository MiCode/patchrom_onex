.class Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$4;
.super Ljava/lang/Object;
.source "GenreBrowserActivityExpGrid.java"

# interfaces
.implements Lcom/htc/sunny2/Preparator$UpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->initGridViewPreparator(Lcom/htc/music/widget/gridview/MusicGridViewPreparator;Lcom/htc/music/widget/gridview/MusicGridViewItemParams;)V
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
    .line 494
    iput-object p1, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$4;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExpired(IILandroid/os/Bundle;)V
    .locals 1
    .parameter "mediaListIdx"
    .parameter "itemIndex"
    .parameter "inValue"

    .prologue
    .line 512
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$4;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;
    invoke-static {v0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->access$1900(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->notifyMediaDataInvalidate(I)V

    .line 513
    return-void
.end method

.method public onFailed(IILandroid/os/Bundle;)V
    .locals 1
    .parameter "mediaListIdx"
    .parameter "itemIndex"
    .parameter "inValue"

    .prologue
    .line 506
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$4;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;
    invoke-static {v0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->access$1800(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->notifyMediaDataInvalidate(I)V

    .line 507
    return-void
.end method

.method public onReady(IILandroid/os/Bundle;)V
    .locals 1
    .parameter "mediaListIdx"
    .parameter "itemIndex"
    .parameter "inValue"

    .prologue
    .line 501
    iget-object v0, p0, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid$4;->this$0:Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;

    #getter for: Lcom/htc/music/widget/MusicAutoHeaderFooterGridViewActivity;->mGridView:Lcom/htc/sunny2/widget/gridview/ExpandableGridView;
    invoke-static {v0}, Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;->access$1700(Lcom/htc/music/browserlayer/GenreBrowserActivityExpGrid;)Lcom/htc/sunny2/widget/gridview/ExpandableGridView;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/htc/sunny2/widget/gridview/ExpandableGridView;->notifyMediaDataInvalidate(I)V

    .line 502
    return-void
.end method
