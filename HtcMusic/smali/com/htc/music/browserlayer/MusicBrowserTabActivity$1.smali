.class Lcom/htc/music/browserlayer/MusicBrowserTabActivity$1;
.super Landroid/os/Handler;
.source "MusicBrowserTabActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/MusicBrowserTabActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/MusicBrowserTabActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/MusicBrowserTabActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 334
    iput-object p1, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$1;->this$0:Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    .line 337
    const-string v5, "[MusicBrowserTabActivity]"

    const-string v6, "browsertab, mUIHandler receive message..."

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 347
    iget-object v5, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$1;->this$0:Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    #getter for: Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mDestroyed:Z
    invoke-static {v5}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->access$100(Lcom/htc/music/browserlayer/MusicBrowserTabActivity;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 393
    :cond_0
    :goto_0
    return-void

    .line 340
    :pswitch_0
    iget-object v5, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$1;->this$0:Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    iget-object v5, v5, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mContentView:Landroid/widget/FrameLayout;

    if-eqz v5, :cond_0

    .line 341
    iget-object v5, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$1;->this$0:Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    iget-object v5, v5, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mContentView:Landroid/widget/FrameLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->removeViewAt(I)V

    goto :goto_0

    .line 349
    :cond_1
    iget-object v5, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$1;->this$0:Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    invoke-virtual {v5}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->inflateTitle()V

    .line 350
    iget-object v5, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$1;->this$0:Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    iget-object v5, v5, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    if-eqz v5, :cond_2

    .line 351
    iget-object v5, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$1;->this$0:Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    iget-object v5, v5, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v5}, Lcom/htc/music/MiniPlayer;->inflateView()V

    .line 354
    :cond_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    .line 355
    .local v1, intent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$1;->this$0:Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    #getter for: Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMimeType:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->access$200(Lcom/htc/music/browserlayer/MusicBrowserTabActivity;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    const-string v5, ""

    iget-object v6, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$1;->this$0:Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    #getter for: Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMimeType:Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->access$200(Lcom/htc/music/browserlayer/MusicBrowserTabActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 356
    :cond_3
    iget-object v5, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$1;->this$0:Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    iget-object v5, v5, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    iget-object v6, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$1;->this$0:Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    iget-object v7, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$1;->this$0:Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    #getter for: Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mSourceSwitcherAdapter:Lcom/htc/music/widget/SourceSwitcherAdapter;
    invoke-static {v7}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->access$300(Lcom/htc/music/browserlayer/MusicBrowserTabActivity;)Lcom/htc/music/widget/SourceSwitcherAdapter;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$1;->this$0:Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    #getter for: Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mCategorySwitcherAdapter:Lcom/htc/music/widget/CategorySwitcherAdapter;
    invoke-static {v8}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->access$400(Lcom/htc/music/browserlayer/MusicBrowserTabActivity;)Lcom/htc/music/widget/CategorySwitcherAdapter;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Lcom/htc/music/util/HistoryManager;->restoreHistoryInstanceState(Landroid/content/Context;Lcom/htc/music/widget/SourceSwitcherAdapter;Lcom/htc/music/widget/CategorySwitcherAdapter;)V

    .line 357
    const/4 v2, 0x0

    .line 358
    .local v2, lastActivityItem:Lcom/htc/music/util/HistoryManager$ActivityHistory;
    iget-object v5, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$1;->this$0:Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    iget-object v5, v5, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    invoke-virtual {v5}, Lcom/htc/music/util/HistoryManager;->getLastHistory()Lcom/htc/music/util/HistoryManager$ActivityHistory;

    move-result-object v2

    .line 359
    if-eqz v2, :cond_5

    .line 360
    iget-object v5, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$1;->this$0:Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    iget-object v6, v2, Lcom/htc/music/util/HistoryManager$ActivityHistory;->currentTag:Ljava/lang/String;

    iget-object v7, v2, Lcom/htc/music/util/HistoryManager$ActivityHistory;->currentIntent:Landroid/content/Intent;

    const/4 v8, 0x3

    invoke-virtual {v5, v6, v7, v8}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->startMaActivity(Ljava/lang/String;Landroid/content/Intent;I)V

    .line 372
    .end local v2           #lastActivityItem:Lcom/htc/music/util/HistoryManager$ActivityHistory;
    :goto_1
    iget-object v5, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$1;->this$0:Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    const v6, 0x7f080006

    invoke-virtual {v5, v6}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/sunny2/view/SSurfaceView;

    .line 373
    .local v4, view:Lcom/htc/sunny2/view/SSurfaceView;
    if-eqz v4, :cond_4

    .line 374
    invoke-virtual {v4}, Lcom/htc/sunny2/view/SSurfaceView;->onPause()V

    .line 380
    const/4 v4, 0x0

    .line 384
    :cond_4
    const-string v5, "[MusicBrowserTabActivity]"

    const-string v6, "Send a FOTA broadcast"

    invoke-static {v5, v6}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    new-instance v0, Landroid/content/Intent;

    const-string v5, "com.android.updater.FOTA_SETTING_INDIVIDUAL"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 386
    .local v0, fotaIntent:Landroid/content/Intent;
    const-string v5, "package_name"

    const-string v6, "com.htc.music"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 387
    const-string v5, "show_download_dialog"

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 388
    const-string v5, "update_type"

    const-string v6, "individual_appupdate"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 389
    iget-object v5, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$1;->this$0:Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    invoke-virtual {v5, v0}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 362
    .end local v0           #fotaIntent:Landroid/content/Intent;
    .end local v4           #view:Lcom/htc/sunny2/view/SSurfaceView;
    .restart local v2       #lastActivityItem:Lcom/htc/music/util/HistoryManager$ActivityHistory;
    :cond_5
    iget-object v5, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$1;->this$0:Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    iget-object v5, v5, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mHistoryManager:Lcom/htc/music/util/HistoryManager;

    iget-object v6, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$1;->this$0:Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    iget-object v7, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$1;->this$0:Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    #getter for: Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mSourceSwitcherAdapter:Lcom/htc/music/widget/SourceSwitcherAdapter;
    invoke-static {v7}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->access$300(Lcom/htc/music/browserlayer/MusicBrowserTabActivity;)Lcom/htc/music/widget/SourceSwitcherAdapter;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/htc/music/util/HistoryManager;->getLastSourceItem(Landroid/content/Context;Lcom/htc/music/widget/SourceSwitcherAdapter;)Lcom/htc/music/util/SourceItem;

    move-result-object v3

    .line 363
    .local v3, selectedSourceItem:Lcom/htc/music/util/SourceItem;
    iget-object v5, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$1;->this$0:Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    iget-object v6, v3, Lcom/htc/music/util/SourceItem;->mSourceTag:Ljava/lang/String;

    iget-object v7, v3, Lcom/htc/music/util/SourceItem;->mLaunchIntent:Landroid/content/Intent;

    invoke-virtual {v5, v6, v7}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->startMaActivity(Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_1

    .line 369
    .end local v2           #lastActivityItem:Lcom/htc/music/util/HistoryManager$ActivityHistory;
    .end local v3           #selectedSourceItem:Lcom/htc/music/util/SourceItem;
    :cond_6
    iget-object v5, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$1;->this$0:Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    iget-object v6, p0, Lcom/htc/music/browserlayer/MusicBrowserTabActivity$1;->this$0:Lcom/htc/music/browserlayer/MusicBrowserTabActivity;

    #getter for: Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->mMimeType:Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->access$200(Lcom/htc/music/browserlayer/MusicBrowserTabActivity;)Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->startIndicateActivity(Ljava/lang/String;Landroid/content/Intent;)V
    invoke-static {v5, v6, v1}, Lcom/htc/music/browserlayer/MusicBrowserTabActivity;->access$500(Lcom/htc/music/browserlayer/MusicBrowserTabActivity;Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_1

    .line 338
    :pswitch_data_0
    .packed-switch 0x2ee2
        :pswitch_0
    .end packed-switch
.end method
