.class Lcom/htc/music/LandingPageActivity$4;
.super Landroid/content/BroadcastReceiver;
.source "LandingPageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/LandingPageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/LandingPageActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/LandingPageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1498
    iput-object p1, p0, Lcom/htc/music/LandingPageActivity$4;->this$0:Lcom/htc/music/LandingPageActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1501
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1502
    .local v0, action:Ljava/lang/String;
    const-string v2, "[LandingPage]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mStatusListener, onReceive, action = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1503
    const-string v2, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1504
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity$4;->this$0:Lcom/htc/music/LandingPageActivity;

    #calls: Lcom/htc/music/LandingPageActivity;->hideRecentlyAlbumDialogs()V
    invoke-static {v2}, Lcom/htc/music/LandingPageActivity;->access$1100(Lcom/htc/music/LandingPageActivity;)V

    .line 1505
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity$4;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mRecentAlbumList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/music/LandingPageActivity;->access$1200(Lcom/htc/music/LandingPageActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1506
    new-instance v1, Lcom/htc/music/LandingPageActivity$BaseItem;

    invoke-direct {v1}, Lcom/htc/music/LandingPageActivity$BaseItem;-><init>()V

    .line 1507
    .local v1, addItem:Lcom/htc/music/LandingPageActivity$BaseItem;
    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Lcom/htc/music/LandingPageActivity$BaseItem;->setId(I)V

    .line 1508
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity$4;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mRecentAlbumList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/music/LandingPageActivity;->access$1200(Lcom/htc/music/LandingPageActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1510
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity$4;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mAdapter:Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;
    invoke-static {v2}, Lcom/htc/music/LandingPageActivity;->access$1000(Lcom/htc/music/LandingPageActivity;)Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1511
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity$4;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mAdapter:Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;
    invoke-static {v2}, Lcom/htc/music/LandingPageActivity;->access$1000(Lcom/htc/music/LandingPageActivity;)Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;->notifyDataSetChanged()V

    .line 1517
    .end local v1           #addItem:Lcom/htc/music/LandingPageActivity$BaseItem;
    :cond_0
    :goto_0
    return-void

    .line 1514
    :cond_1
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity$4;->this$0:Lcom/htc/music/LandingPageActivity;

    iget-object v2, v2, Lcom/htc/music/LandingPageActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v2, :cond_0

    .line 1515
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity$4;->this$0:Lcom/htc/music/LandingPageActivity;

    #calls: Lcom/htc/music/LandingPageActivity;->reloadRecentAlbumAsync()V
    invoke-static {v2}, Lcom/htc/music/LandingPageActivity;->access$3600(Lcom/htc/music/LandingPageActivity;)V

    goto :goto_0
.end method
