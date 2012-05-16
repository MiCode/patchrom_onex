.class Lcom/htc/music/LandingPageActivity$1;
.super Landroid/os/Handler;
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
    .line 446
    iput-object p1, p0, Lcom/htc/music/LandingPageActivity$1;->this$0:Lcom/htc/music/LandingPageActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 449
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 475
    :cond_0
    :goto_0
    return-void

    .line 451
    :pswitch_0
    iget-object v2, p0, Lcom/htc/music/LandingPageActivity$1;->this$0:Lcom/htc/music/LandingPageActivity;

    iget-object v1, p0, Lcom/htc/music/LandingPageActivity$1;->this$0:Lcom/htc/music/LandingPageActivity;

    const-string v3, "layout_inflater"

    invoke-virtual {v1, v3}, Lcom/htc/music/LandingPageActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    #setter for: Lcom/htc/music/LandingPageActivity;->mLayoutInflater:Landroid/view/LayoutInflater;
    invoke-static {v2, v1}, Lcom/htc/music/LandingPageActivity;->access$302(Lcom/htc/music/LandingPageActivity;Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    .line 453
    iget-object v1, p0, Lcom/htc/music/LandingPageActivity$1;->this$0:Lcom/htc/music/LandingPageActivity;

    iget-object v2, p0, Lcom/htc/music/LandingPageActivity$1;->this$0:Lcom/htc/music/LandingPageActivity;

    invoke-virtual {v2}, Lcom/htc/music/LandingPageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    #setter for: Lcom/htc/music/LandingPageActivity;->mOrientation:I
    invoke-static {v1, v2}, Lcom/htc/music/LandingPageActivity;->access$402(Lcom/htc/music/LandingPageActivity;I)I

    .line 455
    iget-object v1, p0, Lcom/htc/music/LandingPageActivity$1;->this$0:Lcom/htc/music/LandingPageActivity;

    #calls: Lcom/htc/music/LandingPageActivity;->initConstant()V
    invoke-static {v1}, Lcom/htc/music/LandingPageActivity;->access$500(Lcom/htc/music/LandingPageActivity;)V

    .line 456
    iget-object v1, p0, Lcom/htc/music/LandingPageActivity$1;->this$0:Lcom/htc/music/LandingPageActivity;

    #calls: Lcom/htc/music/LandingPageActivity;->initPreloadMap()V
    invoke-static {v1}, Lcom/htc/music/LandingPageActivity;->access$600(Lcom/htc/music/LandingPageActivity;)V

    .line 457
    iget-object v1, p0, Lcom/htc/music/LandingPageActivity$1;->this$0:Lcom/htc/music/LandingPageActivity;

    #calls: Lcom/htc/music/LandingPageActivity;->initPreloadAutoDetectTypeMap()V
    invoke-static {v1}, Lcom/htc/music/LandingPageActivity;->access$700(Lcom/htc/music/LandingPageActivity;)V

    .line 458
    iget-object v1, p0, Lcom/htc/music/LandingPageActivity$1;->this$0:Lcom/htc/music/LandingPageActivity;

    #calls: Lcom/htc/music/LandingPageActivity;->reloadLaunchItemList()V
    invoke-static {v1}, Lcom/htc/music/LandingPageActivity;->access$800(Lcom/htc/music/LandingPageActivity;)V

    .line 459
    iget-object v1, p0, Lcom/htc/music/LandingPageActivity$1;->this$0:Lcom/htc/music/LandingPageActivity;

    #calls: Lcom/htc/music/LandingPageActivity;->updateLaunchItemsUI()V
    invoke-static {v1}, Lcom/htc/music/LandingPageActivity;->access$900(Lcom/htc/music/LandingPageActivity;)V

    .line 461
    iget-object v1, p0, Lcom/htc/music/LandingPageActivity$1;->this$0:Lcom/htc/music/LandingPageActivity;

    new-instance v2, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;

    iget-object v3, p0, Lcom/htc/music/LandingPageActivity$1;->this$0:Lcom/htc/music/LandingPageActivity;

    invoke-virtual {v3}, Lcom/htc/music/LandingPageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/LandingPageActivity$1;->this$0:Lcom/htc/music/LandingPageActivity;

    invoke-direct {v2, v3, v4}, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;-><init>(Landroid/content/Context;Lcom/htc/music/LandingPageActivity;)V

    #setter for: Lcom/htc/music/LandingPageActivity;->mAdapter:Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;
    invoke-static {v1, v2}, Lcom/htc/music/LandingPageActivity;->access$1002(Lcom/htc/music/LandingPageActivity;Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;)Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;

    .line 462
    iget-object v1, p0, Lcom/htc/music/LandingPageActivity$1;->this$0:Lcom/htc/music/LandingPageActivity;

    iget-object v2, p0, Lcom/htc/music/LandingPageActivity$1;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mAdapter:Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;
    invoke-static {v2}, Lcom/htc/music/LandingPageActivity;->access$1000(Lcom/htc/music/LandingPageActivity;)Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/music/LandingPageActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 465
    :pswitch_1
    iget-object v1, p0, Lcom/htc/music/LandingPageActivity$1;->this$0:Lcom/htc/music/LandingPageActivity;

    #calls: Lcom/htc/music/LandingPageActivity;->hideRecentlyAlbumDialogs()V
    invoke-static {v1}, Lcom/htc/music/LandingPageActivity;->access$1100(Lcom/htc/music/LandingPageActivity;)V

    .line 466
    iget-object v1, p0, Lcom/htc/music/LandingPageActivity$1;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mRecentAlbumList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/music/LandingPageActivity;->access$1200(Lcom/htc/music/LandingPageActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 467
    new-instance v0, Lcom/htc/music/LandingPageActivity$BaseItem;

    invoke-direct {v0}, Lcom/htc/music/LandingPageActivity$BaseItem;-><init>()V

    .line 468
    .local v0, addItem:Lcom/htc/music/LandingPageActivity$BaseItem;
    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/htc/music/LandingPageActivity$BaseItem;->setId(I)V

    .line 469
    iget-object v1, p0, Lcom/htc/music/LandingPageActivity$1;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mRecentAlbumList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/music/LandingPageActivity;->access$1200(Lcom/htc/music/LandingPageActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 470
    iget-object v1, p0, Lcom/htc/music/LandingPageActivity$1;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mAdapter:Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;
    invoke-static {v1}, Lcom/htc/music/LandingPageActivity;->access$1000(Lcom/htc/music/LandingPageActivity;)Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 471
    iget-object v1, p0, Lcom/htc/music/LandingPageActivity$1;->this$0:Lcom/htc/music/LandingPageActivity;

    #getter for: Lcom/htc/music/LandingPageActivity;->mAdapter:Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;
    invoke-static {v1}, Lcom/htc/music/LandingPageActivity;->access$1000(Lcom/htc/music/LandingPageActivity;)Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/music/LandingPageActivity$RecentAlbumListAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 449
    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
