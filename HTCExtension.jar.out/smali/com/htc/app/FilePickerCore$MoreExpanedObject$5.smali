.class Lcom/htc/app/FilePickerCore$MoreExpanedObject$5;
.super Ljava/lang/Object;
.source "FilePickerCore.java"

# interfaces
.implements Lcom/htc/widget/MoreExpandableHtcListView$OnChildClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/app/FilePickerCore$MoreExpanedObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;


# direct methods
.method constructor <init>(Lcom/htc/app/FilePickerCore$MoreExpanedObject;)V
    .locals 0
    .parameter

    .prologue
    .line 1725
    iput-object p1, p0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$5;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildClick(Lcom/htc/widget/MoreExpandableHtcListView;Landroid/view/View;IIJ)Z
    .locals 21
    .parameter "parent"
    .parameter "v"
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "id"

    .prologue
    .line 1730
    invoke-static/range {p3 .. p4}, Lcom/htc/widget/MoreExpandableItemInfo;->getPosition(II)I

    move-result v15

    .line 1731
    .local v15, position:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$5;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    #getter for: Lcom/htc/app/FilePickerCore$MoreExpanedObject;->mFolderAdapter:Lcom/htc/app/FilePickerFolderAdapter;
    invoke-static {v1}, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->access$2000(Lcom/htc/app/FilePickerCore$MoreExpanedObject;)Lcom/htc/app/FilePickerFolderAdapter;

    move-result-object v1

    invoke-virtual {v1, v15}, Lcom/htc/app/FilePickerFolderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/htc/app/FolderItemInfo;

    .line 1732
    .local v16, selectedItem:Lcom/htc/app/FolderItemInfo;
    invoke-virtual/range {v16 .. v16}, Lcom/htc/app/FolderItemInfo;->isNothing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1733
    const/4 v1, 0x0

    .line 1810
    :goto_0
    return v1

    .line 1736
    :cond_0
    invoke-virtual/range {v16 .. v16}, Lcom/htc/app/FolderItemInfo;->isCloudItem()Z

    move-result v13

    .line 1737
    .local v13, isCloudItem:Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$5;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    iget-object v1, v1, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->isReturnCloudShareLinkEnabled:Z
    invoke-static {v1}, Lcom/htc/app/FilePickerCore;->access$1900(Lcom/htc/app/FilePickerCore;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1738
    if-eqz v13, :cond_6

    .line 1739
    invoke-virtual/range {v16 .. v16}, Lcom/htc/app/FolderItemInfo;->getSyncState()Z

    move-result v14

    .line 1740
    .local v14, isSync:Z
    if-nez v14, :cond_6

    .line 1741
    invoke-virtual/range {v16 .. v16}, Lcom/htc/app/FolderItemInfo;->getCloudId()J

    move-result-wide v4

    .line 1742
    .local v4, cloudId:J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$5;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    iget-object v1, v1, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;
    invoke-static {v1}, Lcom/htc/app/FilePickerCore;->access$300(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerUtil;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Lcom/htc/app/FilePickerUtil;->existsDownloadList(J)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1743
    invoke-virtual/range {v16 .. v16}, Lcom/htc/app/FolderItemInfo;->getCloudPath()Ljava/lang/String;

    move-result-object v6

    .line 1749
    .local v6, cloudPath:Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Lcom/htc/app/FolderItemInfo;->getFileSize()J

    move-result-wide v17

    const-wide/32 v19, 0x1400000

    cmp-long v1, v17, v19

    if-lez v1, :cond_1

    .line 1750
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$5;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    iget-object v1, v1, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;
    invoke-static {v1}, Lcom/htc/app/FilePickerCore;->access$300(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerUtil;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$5;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->this$0:Lcom/htc/app/FilePickerCore;

    move-object/from16 v17, v0

    #calls: Lcom/htc/app/FilePickerCore;->getApplicationContext()Landroid/content/Context;
    invoke-static/range {v17 .. v17}, Lcom/htc/app/FilePickerCore;->access$200(Lcom/htc/app/FilePickerCore;)Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Lcom/htc/app/FilePickerUtil;->isNetworkAllowed(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1751
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$5;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    iget-object v1, v1, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->this$0:Lcom/htc/app/FilePickerCore;

    invoke-virtual {v1}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v17, 0x5

    move/from16 v0, v17

    invoke-virtual {v1, v0}, Landroid/app/Activity;->showDialog(I)V

    .line 1752
    const/4 v1, 0x0

    goto :goto_0

    .line 1757
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$5;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    iget-object v1, v1, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->this$0:Lcom/htc/app/FilePickerCore;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$5;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->this$0:Lcom/htc/app/FilePickerCore;

    move-object/from16 v17, v0

    #calls: Lcom/htc/app/FilePickerCore;->getApplicationContext()Landroid/content/Context;
    invoke-static/range {v17 .. v17}, Lcom/htc/app/FilePickerCore;->access$200(Lcom/htc/app/FilePickerCore;)Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/htc/app/FilePickerUtil;->checkNetworkConnected(Landroid/content/Context;)Z

    move-result v17

    move/from16 v0, v17

    #setter for: Lcom/htc/app/FilePickerCore;->isNetworkConnected:Z
    invoke-static {v1, v0}, Lcom/htc/app/FilePickerCore;->access$2202(Lcom/htc/app/FilePickerCore;Z)Z

    .line 1759
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$5;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    iget-object v1, v1, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->isNetworkConnected:Z
    invoke-static {v1}, Lcom/htc/app/FilePickerCore;->access$2200(Lcom/htc/app/FilePickerCore;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1762
    invoke-static {}, Lcom/htc/app/FilePickerUtil;->isInternalStorageAvailable()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/htc/app/FilePickerUtil;->isExternalStorageAvailable()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1765
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$5;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    iget-object v1, v1, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;
    invoke-static {v1}, Lcom/htc/app/FilePickerCore;->access$300(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerUtil;

    move-result-object v1

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v1, v4, v5, v0}, Lcom/htc/app/FilePickerUtil;->setDownloadProgerss(JI)V

    .line 1767
    invoke-virtual/range {v16 .. v16}, Lcom/htc/app/FolderItemInfo;->getItemDataSourceType()I

    move-result v2

    .line 1768
    .local v2, dataSourceType:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$5;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    iget-object v1, v1, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mFilePickerCloudHelper:Lcom/htc/app/FilePickerCloudHelper;
    invoke-static {v1}, Lcom/htc/app/FilePickerCore;->access$100(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerCloudHelper;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/htc/app/FilePickerCloudHelper;->getAccountIds(I)[Ljava/lang/String;

    move-result-object v9

    .line 1770
    .local v9, accountIds:[Ljava/lang/String;
    if-eqz v9, :cond_3

    .line 1771
    const/4 v1, 0x0

    aget-object v3, v9, v1

    .line 1772
    .local v3, accountId:Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Lcom/htc/app/FolderItemInfo;->getFileName()Ljava/lang/String;

    move-result-object v12

    .line 1773
    .local v12, fName:Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Lcom/htc/app/FolderItemInfo;->getFileSize()J

    move-result-wide v7

    .line 1776
    .local v7, size:J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$5;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    iget-object v1, v1, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;
    invoke-static {v1}, Lcom/htc/app/FilePickerCore;->access$300(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerUtil;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$5;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->this$0:Lcom/htc/app/FilePickerCore;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v1, v12, v7, v8, v0}, Lcom/htc/app/FilePickerUtil;->setProgressDialogMessage(Ljava/lang/String;JLandroid/app/Activity;)V

    .line 1778
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$5;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    iget-object v1, v1, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;
    invoke-static {v1}, Lcom/htc/app/FilePickerCore;->access$300(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerUtil;

    move-result-object v1

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v1, v0}, Lcom/htc/app/FilePickerUtil;->setProgressDialogProgressValue(I)V

    .line 1779
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$5;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    iget-object v1, v1, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->this$0:Lcom/htc/app/FilePickerCore;

    invoke-virtual {v1}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v17, 0x6

    move/from16 v0, v17

    invoke-virtual {v1, v0}, Landroid/app/Activity;->removeDialog(I)V

    .line 1780
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$5;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    iget-object v1, v1, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->this$0:Lcom/htc/app/FilePickerCore;

    invoke-virtual {v1}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v17, 0x6

    move/from16 v0, v17

    invoke-virtual {v1, v0}, Landroid/app/Activity;->showDialog(I)V

    .line 1781
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$5;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    iget-object v1, v1, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mFilePickerCloudHelper:Lcom/htc/app/FilePickerCloudHelper;
    invoke-static {v1}, Lcom/htc/app/FilePickerCore;->access$100(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerCloudHelper;

    move-result-object v1

    invoke-virtual/range {v1 .. v8}, Lcom/htc/app/FilePickerCloudHelper;->requestDownloadFile(ILjava/lang/String;JLjava/lang/String;J)V

    .line 1797
    .end local v2           #dataSourceType:I
    .end local v3           #accountId:Ljava/lang/String;
    .end local v6           #cloudPath:Ljava/lang/String;
    .end local v7           #size:J
    .end local v9           #accountIds:[Ljava/lang/String;
    .end local v12           #fName:Ljava/lang/String;
    :cond_3
    :goto_1
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1786
    .restart local v6       #cloudPath:Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$5;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    iget-object v1, v1, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;
    invoke-static {v1}, Lcom/htc/app/FilePickerCore;->access$300(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/app/FilePickerUtil;->getActHandler()Landroid/os/Handler;

    move-result-object v10

    .line 1787
    .local v10, actFailHandler:Landroid/os/Handler;
    if-eqz v10, :cond_3

    .line 1788
    const/16 v1, 0xe

    invoke-virtual {v10, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 1793
    .end local v10           #actFailHandler:Landroid/os/Handler;
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$5;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    iget-object v1, v1, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/app/FilePickerCore;->access$2300(Lcom/htc/app/FilePickerCore;)Ljava/lang/String;

    move-result-object v1

    const-string v17, "Network connect fail."

    move-object/from16 v0, v17

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1794
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$5;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    iget-object v1, v1, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->this$0:Lcom/htc/app/FilePickerCore;

    invoke-virtual {v1}, Lcom/htc/app/FilePickerCore;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v17, 0xa

    move/from16 v0, v17

    invoke-virtual {v1, v0}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_1

    .line 1801
    .end local v4           #cloudId:J
    .end local v6           #cloudPath:Ljava/lang/String;
    .end local v14           #isSync:Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$5;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    iget-object v1, v1, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mSelectionType:I
    invoke-static {v1}, Lcom/htc/app/FilePickerCore;->access$2100(Lcom/htc/app/FilePickerCore;)I

    move-result v1

    if-nez v1, :cond_8

    .line 1802
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$5;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    iget-object v1, v1, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->this$0:Lcom/htc/app/FilePickerCore;

    iget-object v1, v1, Lcom/htc/app/FilePickerCore;->mSelectedFolderItemInfoLists:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1803
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$5;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    iget-object v1, v1, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->this$0:Lcom/htc/app/FilePickerCore;

    iget-object v1, v1, Lcom/htc/app/FilePickerCore;->mSelectedFolderItemInfoLists:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1804
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$5;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    iget-object v1, v1, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->this$0:Lcom/htc/app/FilePickerCore;

    const/16 v17, 0xb

    move/from16 v0, v17

    #calls: Lcom/htc/app/FilePickerCore;->NotifyToDoTask(I)V
    invoke-static {v1, v0}, Lcom/htc/app/FilePickerCore;->access$700(Lcom/htc/app/FilePickerCore;I)V

    .line 1810
    :cond_7
    :goto_2
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1805
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/app/FilePickerCore$MoreExpanedObject$5;->this$1:Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    iget-object v1, v1, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mSelectionType:I
    invoke-static {v1}, Lcom/htc/app/FilePickerCore;->access$2100(Lcom/htc/app/FilePickerCore;)I

    move-result v1

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v1, v0, :cond_7

    .line 1806
    const v1, 0x20200b3

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/htc/widget/HtcCheckBox;

    .line 1807
    .local v11, checkBox:Lcom/htc/widget/HtcCheckBox;
    invoke-virtual {v11}, Lcom/htc/widget/HtcCheckBox;->performClick()Z

    goto :goto_2
.end method
