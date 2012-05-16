.class Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$7;
.super Ljava/lang/Object;
.source "TrackBrowserFragment.java"

# interfaces
.implements Lcom/htc/widget/HtcReorderListView$DragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1326
    iput-object p1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$7;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drag(II)V
    .locals 3
    .parameter "from"
    .parameter "to"

    .prologue
    const/4 v2, 0x1

    .line 1328
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$7;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    iget-boolean v0, v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mIsNowPlayinglist:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$7;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;
    invoke-static {v0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$300(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$7;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;
    invoke-static {v0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$300(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->getAutoRequery()Z

    move-result v0

    if-ne v0, v2, :cond_0

    .line 1329
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$7;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;
    invoke-static {v0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$300(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->setAutoRequery(ZZ)V

    .line 1332
    :cond_0
    return-void
.end method
