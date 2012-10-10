.class Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$18;
.super Landroid/os/Handler;
.source "DlnaBrowserActivityExp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)V
    .locals 0
    .parameter

    .prologue
    .line 626
    iput-object p1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$18;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 35
    .parameter "msg"

    .prologue
    .line 629
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 881
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 631
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$18;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;
    invoke-static {v4}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$900(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 632
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$18;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mIsScrolling:Z
    invoke-static {v4}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$1000(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 633
    const-string v4, "[DLNA] "

    const-string v5, "REFRESH: mIsScrolling = false, notifyDataSetChanged"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$18;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mAdapter:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;
    invoke-static {v4}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$900(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ExpandableListAdapter;->notifyDataSetChanged()V

    .line 640
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$18;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mServerList:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$000(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-nez v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$18;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mInitial:Z
    invoke-static {v4}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$1100(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 641
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$18;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mInitial:Z
    invoke-static {v4}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$1100(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 642
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$18;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    invoke-virtual {v4}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->clearData()V

    .line 643
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$18;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    const v5, 0x20400a2

    invoke-virtual {v4, v5}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->showEmptyView(I)V

    goto :goto_0

    .line 636
    :cond_2
    const-string v4, "[DLNA] "

    const-string v5, "REFRESH: mIsScrolling = true, do nothing"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 646
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$18;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    invoke-virtual {v4}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->clearData()V

    .line 647
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$18;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    const v5, 0x7f07003d

    invoke-virtual {v4, v5}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->showEmptyView(I)V

    goto :goto_0

    .line 650
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$18;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mServerList:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$000(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 651
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$18;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    invoke-virtual {v4}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->hideEmptyErrorView()V

    goto/16 :goto_0

    .line 655
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$18;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mServerList:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$000(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Ljava/util/LinkedList;

    move-result-object v4

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$18;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mServerList:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$000(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 656
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$18;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    invoke-virtual {v4}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->clearData()V

    .line 657
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$18;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    invoke-virtual {v4}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->showEmptyView()V

    goto/16 :goto_0

    .line 662
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$18;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mIsScrolling:Z
    invoke-static {v4}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$1000(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 663
    const-string v4, "[DLNA] "

    const-string v5, "GETCURSOR: Scrolling"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "isComplete"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v18

    .line 666
    .local v18, isComplete:Z
    const/4 v4, 0x1

    move/from16 v0, v18

    if-ne v0, v4, :cond_0

    .line 667
    const-string v4, "[DLNA] "

    const-string v5, "Scrolling: Browsing complete"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$18;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$1200(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v22

    .line 669
    .local v22, msg2:Landroid/os/Message;
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, v22

    iput-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 670
    invoke-virtual/range {v22 .. v22}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "containerID"

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "containerID"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    invoke-virtual/range {v22 .. v22}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "isComplete"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 672
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$18;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$1200(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Landroid/os/Handler;

    move-result-object v4

    const-wide/16 v5, 0x3e8

    move-object/from16 v0, v22

    invoke-virtual {v4, v0, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 678
    .end local v18           #isComplete:Z
    .end local v22           #msg2:Landroid/os/Message;
    :cond_6
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/database/Cursor;

    .line 680
    .local v14, cursor:Landroid/database/Cursor;
    if-nez v14, :cond_7

    .line 681
    const-string v4, "[DLNA] "

    const-string v5, "get cursor == null"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 684
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "containerID"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 685
    .local v16, id:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$18;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mCurContainID:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$300(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 686
    const-string v4, "[DLNA] "

    const-string v5, "user browse another folder, abort"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 690
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$18;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mDestroy:Z
    invoke-static {v4}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$1300(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 691
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 695
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$18;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    invoke-virtual {v4, v14}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->GetCursorInfo(Landroid/database/Cursor;)V

    .line 696
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 697
    const/4 v14, 0x0

    .line 698
    goto/16 :goto_0

    .line 701
    .end local v14           #cursor:Landroid/database/Cursor;
    .end local v16           #id:Ljava/lang/String;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$18;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mIsScrolling:Z
    invoke-static {v4}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$1000(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 702
    const-string v4, "[DLNA] "

    const-string v5, "SERVERLIST_ADD: Scrolling"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$18;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$1200(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v22

    .line 705
    .restart local v22       #msg2:Landroid/os/Message;
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, v22

    iput-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 706
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$18;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$1200(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Landroid/os/Handler;

    move-result-object v4

    const-wide/16 v5, 0x3e8

    move-object/from16 v0, v22

    invoke-virtual {v4, v0, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 710
    .end local v22           #msg2:Landroid/os/Message;
    :cond_a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Lcom/htc/dlnainterface/DLNAServerData;

    .line 711
    .local v17, info:Lcom/htc/dlnainterface/DLNAServerData;
    const-string v4, "[DLNA] "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "server add id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    iget-object v6, v0, Lcom/htc/dlnainterface/DLNAServerData;->serverID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    const-string v4, "[DLNA] "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "server add name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    iget-object v6, v0, Lcom/htc/dlnainterface/DLNAServerData;->serverName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$18;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mServerList:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$000(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v29

    .line 715
    .local v29, size:I
    const/4 v15, 0x0

    .local v15, i:I
    :goto_2
    move/from16 v0, v29

    if-ge v15, v0, :cond_c

    .line 716
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$18;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mServerList:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$000(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;

    invoke-virtual {v4}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->GetId()Ljava/lang/String;

    move-result-object v26

    .line 718
    .local v26, serverID:Ljava/lang/String;
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/htc/dlnainterface/DLNAServerData;->serverID:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 719
    const-string v4, "[DLNA] "

    const-string v5, "the same server, return"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 715
    :cond_b
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 724
    .end local v26           #serverID:Ljava/lang/String;
    :cond_c
    new-instance v33, Ljava/util/LinkedList;

    invoke-direct/range {v33 .. v33}, Ljava/util/LinkedList;-><init>()V

    .line 725
    .local v33, templist:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;>;"
    new-instance v3, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$18;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/htc/dlnainterface/DLNAServerData;->serverID:Ljava/lang/String;

    move-object/from16 v0, v17

    iget-object v6, v0, Lcom/htc/dlnainterface/DLNAServerData;->serverName:Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$18;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mServerList:Ljava/util/LinkedList;
    invoke-static {v8}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$000(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Ljava/util/LinkedList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v8

    int-to-long v8, v8

    const/4 v10, 0x1

    invoke-direct/range {v3 .. v10}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;-><init>(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 726
    const-string v4, "[DLNA] "

    const-string v5, "add new server"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$18;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;
    invoke-static {v4}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$800(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Lcom/htc/widget/MoreExpandableHtcListView;

    move-result-object v4

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Lcom/htc/widget/MoreExpandableHtcListView;->appendRoot(Ljava/util/LinkedList;)V

    goto/16 :goto_0

    .line 731
    .end local v15           #i:I
    .end local v17           #info:Lcom/htc/dlnainterface/DLNAServerData;
    .end local v29           #size:I
    .end local v33           #templist:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;>;"
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$18;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mIsScrolling:Z
    invoke-static {v4}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$1000(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 732
    const-string v4, "[DLNA] "

    const-string v5, "SERVERLIST_REMOVE: Scrolling"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$18;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$1200(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v22

    .line 735
    .restart local v22       #msg2:Landroid/os/Message;
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, v22

    iput-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 736
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$18;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$1200(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Landroid/os/Handler;

    move-result-object v4

    const-wide/16 v5, 0x3e8

    move-object/from16 v0, v22

    invoke-virtual {v4, v0, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 741
    .end local v22           #msg2:Landroid/os/Message;
    :cond_d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Ljava/lang/String;

    .line 742
    .local v34, uniqueID:Ljava/lang/String;
    if-eqz v34, :cond_0

    .line 745
    const/4 v15, 0x0

    .restart local v15       #i:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$18;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mServerList:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$000(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-ge v15, v4, :cond_0

    .line 746
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$18;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mServerList:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$000(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;

    .line 747
    .local v32, tempInfo:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;
    invoke-virtual/range {v32 .. v32}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->GetId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_e

    invoke-virtual/range {v32 .. v32}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->GetId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 748
    const-string v4, "[DLNA] "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "server remove: id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v32 .. v32}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->GetId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$18;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mServerList:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$000(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 751
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$18;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;
    invoke-static {v4}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$800(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Lcom/htc/widget/MoreExpandableHtcListView;

    move-result-object v4

    invoke-virtual {v4, v15}, Lcom/htc/widget/MoreExpandableHtcListView;->deleteItem(I)V

    .line 752
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$18;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$1200(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Landroid/os/Handler;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$18;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$1200(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 745
    :cond_e
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 760
    .end local v15           #i:I
    .end local v32           #tempInfo:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;
    .end local v34           #uniqueID:Ljava/lang/String;
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$18;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mIsScrolling:Z
    invoke-static {v4}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$1000(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 761
    const-string v4, "[DLNA] "

    const-string v5, "SERVERLIST_UPDATE: Scrolling"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$18;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$1200(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v22

    .line 764
    .restart local v22       #msg2:Landroid/os/Message;
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, v22

    iput-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 765
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$18;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$1200(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Landroid/os/Handler;

    move-result-object v4

    const-wide/16 v5, 0x3e8

    move-object/from16 v0, v22

    invoke-virtual {v4, v0, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 769
    .end local v22           #msg2:Landroid/os/Message;
    :cond_f
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [Lcom/htc/dlnainterface/DLNAServerData;

    move-object/from16 v20, v4

    check-cast v20, [Lcom/htc/dlnainterface/DLNAServerData;

    .line 770
    .local v20, list:[Lcom/htc/dlnainterface/DLNAServerData;
    new-instance v28, Ljava/util/LinkedList;

    invoke-direct/range {v28 .. v28}, Ljava/util/LinkedList;-><init>()V

    .line 772
    .local v28, serverList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;>;"
    if-eqz v20, :cond_0

    .line 773
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$18;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mServerList:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$000(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v13

    .line 774
    .local v13, count:I
    const-string v4, "[DLNA] "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SERVERLIST_UPDATE: current count = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    const-string v4, "[DLNA] "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SERVERLIST_UPDATE: update count = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    array-length v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    move-object/from16 v0, v20

    array-length v4, v0

    if-nez v4, :cond_10

    .line 778
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$18;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    invoke-virtual {v4}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->clearData()V

    .line 781
    :cond_10
    const/4 v15, 0x0

    .restart local v15       #i:I
    :goto_4
    move-object/from16 v0, v20

    array-length v4, v0

    if-ge v15, v4, :cond_15

    .line 782
    new-instance v3, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$18;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    aget-object v5, v20, v15

    iget-object v5, v5, Lcom/htc/dlnainterface/DLNAServerData;->serverID:Ljava/lang/String;

    aget-object v6, v20, v15

    iget-object v6, v6, Lcom/htc/dlnainterface/DLNAServerData;->serverName:Ljava/lang/String;

    aget-object v7, v20, v15

    iget-object v7, v7, Lcom/htc/dlnainterface/DLNAServerData;->thumbnailPath:Ljava/lang/String;

    int-to-long v8, v15

    const/4 v10, 0x1

    invoke-direct/range {v3 .. v10}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;-><init>(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 784
    .local v3, tmpServerList:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;
    if-lez v13, :cond_14

    .line 785
    const/16 v19, 0x0

    .local v19, j:I
    :goto_5
    move/from16 v0, v19

    if-ge v0, v13, :cond_11

    .line 786
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$18;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mServerList:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$000(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Ljava/util/LinkedList;

    move-result-object v4

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;

    invoke-virtual {v4}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->GetId()Ljava/lang/String;

    move-result-object v27

    .line 787
    .local v27, serverId:Ljava/lang/String;
    if-eqz v27, :cond_12

    aget-object v4, v20, v15

    iget-object v4, v4, Lcom/htc/dlnainterface/DLNAServerData;->serverID:Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 789
    const-string v4, "[DLNA] "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "has the same server list: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v20, v15

    iget-object v6, v6, Lcom/htc/dlnainterface/DLNAServerData;->serverID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 781
    .end local v19           #j:I
    .end local v27           #serverId:Ljava/lang/String;
    :cond_11
    :goto_6
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 795
    .restart local v19       #j:I
    .restart local v27       #serverId:Ljava/lang/String;
    :cond_12
    add-int/lit8 v4, v13, -0x1

    move/from16 v0, v19

    if-ne v0, v4, :cond_13

    .line 797
    new-instance v24, Lcom/htc/dlnainterface/DLNAServerData;

    invoke-direct/range {v24 .. v24}, Lcom/htc/dlnainterface/DLNAServerData;-><init>()V

    .line 798
    .local v24, newServer:Lcom/htc/dlnainterface/DLNAServerData;
    aget-object v4, v20, v15

    iget-object v4, v4, Lcom/htc/dlnainterface/DLNAServerData;->serverID:Ljava/lang/String;

    move-object/from16 v0, v24

    iput-object v4, v0, Lcom/htc/dlnainterface/DLNAServerData;->serverID:Ljava/lang/String;

    .line 799
    aget-object v4, v20, v15

    iget-object v4, v4, Lcom/htc/dlnainterface/DLNAServerData;->serverName:Ljava/lang/String;

    move-object/from16 v0, v24

    iput-object v4, v0, Lcom/htc/dlnainterface/DLNAServerData;->serverName:Ljava/lang/String;

    .line 800
    aget-object v4, v20, v15

    iget-object v4, v4, Lcom/htc/dlnainterface/DLNAServerData;->thumbnailPath:Ljava/lang/String;

    move-object/from16 v0, v24

    iput-object v4, v0, Lcom/htc/dlnainterface/DLNAServerData;->thumbnailPath:Ljava/lang/String;

    .line 802
    const-string v4, "[DLNA] "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SERVERLIST_UPDATE: add server: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v24

    iget-object v6, v0, Lcom/htc/dlnainterface/DLNAServerData;->serverID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$18;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$1200(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v23

    .line 805
    .local v23, msg_add:Landroid/os/Message;
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 806
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$18;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$1200(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Landroid/os/Handler;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 785
    .end local v23           #msg_add:Landroid/os/Message;
    .end local v24           #newServer:Lcom/htc/dlnainterface/DLNAServerData;
    :cond_13
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_5

    .line 811
    .end local v19           #j:I
    .end local v27           #serverId:Ljava/lang/String;
    :cond_14
    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 815
    .end local v3           #tmpServerList:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;
    :cond_15
    if-gtz v13, :cond_16

    .line 816
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$18;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    move-object/from16 v0, v28

    #setter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mServerList:Ljava/util/LinkedList;
    invoke-static {v4, v0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$002(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;Ljava/util/LinkedList;)Ljava/util/LinkedList;

    .line 817
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$18;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mListView:Lcom/htc/widget/MoreExpandableHtcListView;
    invoke-static {v4}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$800(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Lcom/htc/widget/MoreExpandableHtcListView;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$18;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mServerList:Ljava/util/LinkedList;
    invoke-static {v5}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$000(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Ljava/util/LinkedList;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/widget/MoreExpandableHtcListView;->changeRoot(Ljava/util/LinkedList;)V

    .line 818
    const-string v4, "[DLNA] "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "changeRoot, list length = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v28 .. v28}, Ljava/util/LinkedList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 823
    :cond_16
    invoke-virtual/range {v28 .. v28}, Ljava/util/LinkedList;->size()I

    move-result v21

    .line 824
    .local v21, listSize:I
    if-lez v21, :cond_0

    .line 825
    const/4 v15, 0x0

    :goto_7
    if-ge v15, v13, :cond_0

    .line 826
    const/16 v19, 0x0

    .restart local v19       #j:I
    :goto_8
    move/from16 v0, v19

    move/from16 v1, v21

    if-ge v0, v1, :cond_17

    .line 827
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$18;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mServerList:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$000(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;

    invoke-virtual {v4}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->GetId()Ljava/lang/String;

    move-result-object v27

    .line 828
    .restart local v27       #serverId:Ljava/lang/String;
    if-eqz v27, :cond_19

    move-object/from16 v0, v28

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;

    invoke-virtual {v4}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->GetId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 829
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$18;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mServerList:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$000(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;

    invoke-virtual {v4}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->getLevel()I

    move-result v4

    if-eqz v4, :cond_18

    .line 830
    const-string v5, "[DLNA] "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SERVERLIST_UPDATE: getLevel > 0, not server: id = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v28

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;

    invoke-virtual {v4}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->GetId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    .end local v27           #serverId:Ljava/lang/String;
    :cond_17
    :goto_9
    add-int/lit8 v15, v15, 0x1

    goto :goto_7

    .line 833
    .restart local v27       #serverId:Ljava/lang/String;
    :cond_18
    const-string v5, "[DLNA] "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SERVERLIST_UPDATE: not change, id = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v28

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;

    invoke-virtual {v4}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->GetId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 837
    :cond_19
    add-int/lit8 v4, v21, -0x1

    move/from16 v0, v19

    if-ne v0, v4, :cond_1a

    .line 838
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$18;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$1200(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v25

    .line 839
    .local v25, removeServer:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$18;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mServerList:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$000(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;

    invoke-virtual {v4}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->GetId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v25

    iput-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 840
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$18;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$1200(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Landroid/os/Handler;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 841
    const-string v5, "[DLNA] "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "server remove: id = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$18;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mServerList:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$000(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;

    invoke-virtual {v4}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;->GetId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    .end local v25           #removeServer:Landroid/os/Message;
    :cond_1a
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_8

    .line 852
    .end local v13           #count:I
    .end local v15           #i:I
    .end local v19           #j:I
    .end local v20           #list:[Lcom/htc/dlnainterface/DLNAServerData;
    .end local v21           #listSize:I
    .end local v27           #serverId:Ljava/lang/String;
    .end local v28           #serverList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$ServerInfo;>;"
    :pswitch_7
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "errorID"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 853
    .local v11, ID:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$18;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    invoke-virtual {v4, v11}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->showDialog(I)V

    goto/16 :goto_0

    .line 857
    .end local v11           #ID:I
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$18;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->showSpinner(Z)V

    goto/16 :goto_0

    .line 861
    :pswitch_9
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "serverID"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 862
    .restart local v26       #serverID:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "containID"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 863
    .local v12, containID:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "startIdx"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v30

    .line 865
    .local v30, startIdx:J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$18;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    move-object/from16 v0, v26

    move-wide/from16 v1, v30

    invoke-virtual {v4, v0, v12, v1, v2}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->browse(Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 869
    .end local v12           #containID:Ljava/lang/String;
    .end local v26           #serverID:Ljava/lang/String;
    .end local v30           #startIdx:J
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$18;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mIsScrolling:Z
    invoke-static {v4}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$1000(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 870
    const-string v4, "[DLNA] "

    const-string v5, "INSERT_NOMUSIC: Scrolling"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$18;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$1200(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v22

    .line 873
    .restart local v22       #msg2:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$18;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    #getter for: Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->access$1200(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)Landroid/os/Handler;

    move-result-object v4

    const-wide/16 v5, 0x3e8

    move-object/from16 v0, v22

    invoke-virtual {v4, v0, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 876
    .end local v22           #msg2:Landroid/os/Message;
    :cond_1b
    const-string v4, "[DLNA] "

    const-string v5, "insert no music view"

    invoke-static {v4, v5}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$18;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    invoke-virtual {v4}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->insertNoMusicView()V

    goto/16 :goto_0

    .line 629
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method
