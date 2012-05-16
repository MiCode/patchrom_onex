.class Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$9;
.super Ljava/lang/Object;
.source "TrackBrowserFragment.java"

# interfaces
.implements Lcom/htc/widget/HtcReorderListView$RemoveListener;


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
    .line 1439
    iput-object p1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$9;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public remove(I)V
    .locals 1
    .parameter "which"

    .prologue
    .line 1441
    iget-object v0, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$9;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    #calls: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->removePlaylistItem(I)V
    invoke-static {v0, p1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$1700(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;I)V

    .line 1442
    return-void
.end method
