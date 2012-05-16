.class Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$11;
.super Landroid/content/BroadcastReceiver;
.source "TrackBrowserFragment.java"


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
    .line 1490
    iput-object p1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$11;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1493
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.htc.music.metachanged"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1494
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$11;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcListView;->invalidateViews()V

    .line 1495
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$11;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    #calls: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->setPauseButtonImage()V
    invoke-static {v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$1200(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)V

    .line 1496
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$11;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    #calls: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->updateQueueTitle()V
    invoke-static {v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$1900(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)V

    .line 1514
    :cond_0
    :goto_0
    return-void

    .line 1497
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.htc.music.queuechanged"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1498
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$11;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mDeletedOneRow:Z
    invoke-static {v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$1500(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1502
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$11;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    const/4 v2, 0x0

    #setter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mDeletedOneRow:Z
    invoke-static {v1, v2}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$1502(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;Z)Z

    goto :goto_0

    .line 1505
    :cond_2
    new-instance v0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;

    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$11;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    sget-object v2, Lcom/htc/music/util/MusicUtils;->sService:Lcom/htc/music/IMediaPlaybackService;

    iget-object v3, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$11;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mCursorCols:[Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$2000(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$NowPlayingCursor;-><init>(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;Lcom/htc/music/IMediaPlaybackService;[Ljava/lang/String;)V

    .line 1506
    .local v0, c:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_3

    .line 1507
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$11;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 1510
    :cond_3
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$11;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;
    invoke-static {v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$300(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1511
    iget-object v1, p0, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$11;->this$0:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;

    #getter for: Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->mAdapter:Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;
    invoke-static {v1}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;->access$300(Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment;)Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/music/browserlayer/fragment/TrackBrowserFragment$TrackListAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_0
.end method
