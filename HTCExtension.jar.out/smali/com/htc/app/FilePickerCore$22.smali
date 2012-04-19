.class Lcom/htc/app/FilePickerCore$22;
.super Ljava/lang/Object;
.source "FilePickerCore.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/app/FilePickerCore;->createSortDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/app/FilePickerCore;


# direct methods
.method constructor <init>(Lcom/htc/app/FilePickerCore;)V
    .locals 0
    .parameter

    .prologue
    .line 3473
    iput-object p1, p0, Lcom/htc/app/FilePickerCore$22;->this$0:Lcom/htc/app/FilePickerCore;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 3476
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 3480
    const/4 v3, 0x0

    .line 3481
    .local v3, fileCount_listView:I
    iget-object v5, p0, Lcom/htc/app/FilePickerCore$22;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mTypeAdapter:Lcom/htc/app/FilePickerListAdapter;
    invoke-static {v5}, Lcom/htc/app/FilePickerCore;->access$4100(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerListAdapter;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 3482
    iget-object v5, p0, Lcom/htc/app/FilePickerCore$22;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mTypeAdapter:Lcom/htc/app/FilePickerListAdapter;
    invoke-static {v5}, Lcom/htc/app/FilePickerCore;->access$4100(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerListAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/app/FilePickerListAdapter;->getFileCount()I

    move-result v3

    .line 3485
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 3504
    :goto_0
    iget-object v5, p0, Lcom/htc/app/FilePickerCore$22;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mIsTypeStopScan:Z
    invoke-static {v5}, Lcom/htc/app/FilePickerCore;->access$4800(Lcom/htc/app/FilePickerCore;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3505
    iget-object v5, p0, Lcom/htc/app/FilePickerCore$22;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mFileSorter:Lcom/htc/app/FileSorter;
    invoke-static {v5}, Lcom/htc/app/FilePickerCore;->access$4900(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FileSorter;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/app/FilePickerCore$22;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mSortType:I
    invoke-static {v6}, Lcom/htc/app/FilePickerCore;->access$5000(Lcom/htc/app/FilePickerCore;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/htc/app/FileSorter;->setSortBy(I)V

    .line 3506
    iget-object v5, p0, Lcom/htc/app/FilePickerCore$22;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mFileSorter:Lcom/htc/app/FileSorter;
    invoke-static {v5}, Lcom/htc/app/FilePickerCore;->access$4900(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FileSorter;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/app/FilePickerCore$22;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mSortOrder:I
    invoke-static {v6}, Lcom/htc/app/FilePickerCore;->access$5100(Lcom/htc/app/FilePickerCore;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/htc/app/FileSorter;->setSortOrder(I)V

    .line 3507
    if-lez v3, :cond_1

    .line 3508
    iget-object v5, p0, Lcom/htc/app/FilePickerCore$22;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mTypeAdapter:Lcom/htc/app/FilePickerListAdapter;
    invoke-static {v5}, Lcom/htc/app/FilePickerCore;->access$4100(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerListAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/app/FilePickerListAdapter;->sort()V

    .line 3509
    :cond_1
    iget-object v5, p0, Lcom/htc/app/FilePickerCore$22;->this$0:Lcom/htc/app/FilePickerCore;

    const-string v6, "GarbageMessage_LongVacation"

    #calls: Lcom/htc/app/FilePickerCore;->notifyTextChanged(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/htc/app/FilePickerCore;->access$5200(Lcom/htc/app/FilePickerCore;Ljava/lang/String;)V

    .line 3511
    const-string v5, "Tab_Type"

    iget-object v6, p0, Lcom/htc/app/FilePickerCore$22;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mCurrentTab:Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/app/FilePickerCore;->access$2900(Lcom/htc/app/FilePickerCore;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3512
    iget-object v5, p0, Lcom/htc/app/FilePickerCore$22;->this$0:Lcom/htc/app/FilePickerCore;

    #calls: Lcom/htc/app/FilePickerCore;->notifyTextChanged()V
    invoke-static {v5}, Lcom/htc/app/FilePickerCore;->access$5300(Lcom/htc/app/FilePickerCore;)V

    .line 3514
    :cond_2
    const/4 v4, 0x0

    .line 3515
    .local v4, moreExpanedObject:Lcom/htc/app/FilePickerCore$MoreExpanedObject;
    iget-object v5, p0, Lcom/htc/app/FilePickerCore$22;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;
    invoke-static {v5}, Lcom/htc/app/FilePickerCore;->access$300(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerUtil;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/app/FilePickerUtil;->getDataSourceType()I

    move-result v2

    .line 3516
    .local v2, dataSourceType:I
    iget-object v5, p0, Lcom/htc/app/FilePickerCore$22;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mFilePickerCloudHelper:Lcom/htc/app/FilePickerCloudHelper;
    invoke-static {v5}, Lcom/htc/app/FilePickerCore;->access$100(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerCloudHelper;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/htc/app/FilePickerCloudHelper;->getAccountIds(I)[Ljava/lang/String;

    move-result-object v0

    .line 3518
    .local v0, accounts:[Ljava/lang/String;
    if-eqz v0, :cond_5

    array-length v5, v0

    if-lez v5, :cond_5

    .line 3519
    iget-object v5, p0, Lcom/htc/app/FilePickerCore$22;->this$0:Lcom/htc/app/FilePickerCore;

    aget-object v6, v0, v7

    #calls: Lcom/htc/app/FilePickerCore;->findMoreExpanedObjectInstance(ILjava/lang/String;)Lcom/htc/app/FilePickerCore$MoreExpanedObject;
    invoke-static {v5, v2, v6}, Lcom/htc/app/FilePickerCore;->access$5400(Lcom/htc/app/FilePickerCore;ILjava/lang/String;)Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    move-result-object v4

    .line 3526
    :goto_1
    if-eqz v4, :cond_3

    .line 3527
    invoke-virtual {v4}, Lcom/htc/app/FilePickerCore$MoreExpanedObject;->getFolderAdapter()Lcom/htc/app/FilePickerFolderAdapter;

    move-result-object v1

    .line 3529
    .local v1, adapter:Lcom/htc/app/FilePickerFolderAdapter;
    if-eqz v1, :cond_3

    .line 3530
    iget-object v5, p0, Lcom/htc/app/FilePickerCore$22;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mSortOrder:I
    invoke-static {v5}, Lcom/htc/app/FilePickerCore;->access$5100(Lcom/htc/app/FilePickerCore;)I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/htc/app/FilePickerFolderAdapter;->setSortOrder(I)V

    .line 3531
    iget-object v5, p0, Lcom/htc/app/FilePickerCore$22;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mSortType:I
    invoke-static {v5}, Lcom/htc/app/FilePickerCore;->access$5000(Lcom/htc/app/FilePickerCore;)I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/htc/app/FilePickerFolderAdapter;->setSortBy(I)V

    .line 3532
    invoke-virtual {v1}, Lcom/htc/app/FilePickerFolderAdapter;->sort()V

    .line 3535
    .end local v1           #adapter:Lcom/htc/app/FilePickerFolderAdapter;
    :cond_3
    iget-object v5, p0, Lcom/htc/app/FilePickerCore$22;->this$0:Lcom/htc/app/FilePickerCore;

    iget-object v6, p0, Lcom/htc/app/FilePickerCore$22;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mFavoritesAdapter:Lcom/htc/app/FilePickerListAdapter;
    invoke-static {v6}, Lcom/htc/app/FilePickerCore;->access$4200(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerListAdapter;

    move-result-object v6

    #calls: Lcom/htc/app/FilePickerCore;->sort(Lcom/htc/app/FilePickerListAdapter;)V
    invoke-static {v5, v6}, Lcom/htc/app/FilePickerCore;->access$5500(Lcom/htc/app/FilePickerCore;Lcom/htc/app/FilePickerListAdapter;)V

    .line 3536
    iget-object v5, p0, Lcom/htc/app/FilePickerCore$22;->this$0:Lcom/htc/app/FilePickerCore;

    iget-object v6, p0, Lcom/htc/app/FilePickerCore$22;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mRecentAdapter:Lcom/htc/app/FilePickerListAdapter;
    invoke-static {v6}, Lcom/htc/app/FilePickerCore;->access$4300(Lcom/htc/app/FilePickerCore;)Lcom/htc/app/FilePickerListAdapter;

    move-result-object v6

    #calls: Lcom/htc/app/FilePickerCore;->sort(Lcom/htc/app/FilePickerListAdapter;)V
    invoke-static {v5, v6}, Lcom/htc/app/FilePickerCore;->access$5500(Lcom/htc/app/FilePickerCore;Lcom/htc/app/FilePickerListAdapter;)V

    .line 3537
    iget-object v5, p0, Lcom/htc/app/FilePickerCore$22;->this$0:Lcom/htc/app/FilePickerCore;

    iget-object v6, p0, Lcom/htc/app/FilePickerCore$22;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mSortType:I
    invoke-static {v6}, Lcom/htc/app/FilePickerCore;->access$5000(Lcom/htc/app/FilePickerCore;)I

    move-result v6

    iget-object v7, p0, Lcom/htc/app/FilePickerCore$22;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mSortOrder:I
    invoke-static {v7}, Lcom/htc/app/FilePickerCore;->access$5100(Lcom/htc/app/FilePickerCore;)I

    move-result v7

    #calls: Lcom/htc/app/FilePickerCore;->saveSortPreferences(II)V
    invoke-static {v5, v6, v7}, Lcom/htc/app/FilePickerCore;->access$5600(Lcom/htc/app/FilePickerCore;II)V

    .line 3539
    iget-object v5, p0, Lcom/htc/app/FilePickerCore$22;->this$0:Lcom/htc/app/FilePickerCore;

    #setter for: Lcom/htc/app/FilePickerCore;->mSortSelectedItem:I
    invoke-static {v5, p2}, Lcom/htc/app/FilePickerCore;->access$5702(Lcom/htc/app/FilePickerCore;I)I

    .line 3541
    iget-object v5, p0, Lcom/htc/app/FilePickerCore$22;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mCurrentTab:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/app/FilePickerCore;->access$2900(Lcom/htc/app/FilePickerCore;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 3542
    iget-object v5, p0, Lcom/htc/app/FilePickerCore$22;->this$0:Lcom/htc/app/FilePickerCore;

    iget-object v6, p0, Lcom/htc/app/FilePickerCore$22;->this$0:Lcom/htc/app/FilePickerCore;

    #getter for: Lcom/htc/app/FilePickerCore;->mCurrentTab:Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/app/FilePickerCore;->access$2900(Lcom/htc/app/FilePickerCore;)Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/htc/app/FilePickerCore;->showViewByTab(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/htc/app/FilePickerCore;->access$1400(Lcom/htc/app/FilePickerCore;Ljava/lang/String;)V

    .line 3543
    :cond_4
    return-void

    .line 3487
    .end local v0           #accounts:[Ljava/lang/String;
    .end local v2           #dataSourceType:I
    .end local v4           #moreExpanedObject:Lcom/htc/app/FilePickerCore$MoreExpanedObject;
    :pswitch_0
    iget-object v5, p0, Lcom/htc/app/FilePickerCore$22;->this$0:Lcom/htc/app/FilePickerCore;

    #setter for: Lcom/htc/app/FilePickerCore;->mSortType:I
    invoke-static {v5, v7}, Lcom/htc/app/FilePickerCore;->access$5002(Lcom/htc/app/FilePickerCore;I)I

    .line 3488
    iget-object v5, p0, Lcom/htc/app/FilePickerCore$22;->this$0:Lcom/htc/app/FilePickerCore;

    #setter for: Lcom/htc/app/FilePickerCore;->mSortOrder:I
    invoke-static {v5, v7}, Lcom/htc/app/FilePickerCore;->access$5102(Lcom/htc/app/FilePickerCore;I)I

    goto/16 :goto_0

    .line 3492
    :pswitch_1
    iget-object v5, p0, Lcom/htc/app/FilePickerCore$22;->this$0:Lcom/htc/app/FilePickerCore;

    #setter for: Lcom/htc/app/FilePickerCore;->mSortType:I
    invoke-static {v5, v7}, Lcom/htc/app/FilePickerCore;->access$5002(Lcom/htc/app/FilePickerCore;I)I

    .line 3493
    iget-object v5, p0, Lcom/htc/app/FilePickerCore$22;->this$0:Lcom/htc/app/FilePickerCore;

    #setter for: Lcom/htc/app/FilePickerCore;->mSortOrder:I
    invoke-static {v5, v6}, Lcom/htc/app/FilePickerCore;->access$5102(Lcom/htc/app/FilePickerCore;I)I

    goto/16 :goto_0

    .line 3496
    :pswitch_2
    iget-object v5, p0, Lcom/htc/app/FilePickerCore$22;->this$0:Lcom/htc/app/FilePickerCore;

    #setter for: Lcom/htc/app/FilePickerCore;->mSortType:I
    invoke-static {v5, v6}, Lcom/htc/app/FilePickerCore;->access$5002(Lcom/htc/app/FilePickerCore;I)I

    .line 3497
    iget-object v5, p0, Lcom/htc/app/FilePickerCore$22;->this$0:Lcom/htc/app/FilePickerCore;

    #setter for: Lcom/htc/app/FilePickerCore;->mSortOrder:I
    invoke-static {v5, v7}, Lcom/htc/app/FilePickerCore;->access$5102(Lcom/htc/app/FilePickerCore;I)I

    goto/16 :goto_0

    .line 3500
    :pswitch_3
    iget-object v5, p0, Lcom/htc/app/FilePickerCore$22;->this$0:Lcom/htc/app/FilePickerCore;

    #setter for: Lcom/htc/app/FilePickerCore;->mSortType:I
    invoke-static {v5, v6}, Lcom/htc/app/FilePickerCore;->access$5002(Lcom/htc/app/FilePickerCore;I)I

    .line 3501
    iget-object v5, p0, Lcom/htc/app/FilePickerCore$22;->this$0:Lcom/htc/app/FilePickerCore;

    #setter for: Lcom/htc/app/FilePickerCore;->mSortOrder:I
    invoke-static {v5, v6}, Lcom/htc/app/FilePickerCore;->access$5102(Lcom/htc/app/FilePickerCore;I)I

    goto/16 :goto_0

    .line 3522
    .restart local v0       #accounts:[Ljava/lang/String;
    .restart local v2       #dataSourceType:I
    .restart local v4       #moreExpanedObject:Lcom/htc/app/FilePickerCore$MoreExpanedObject;
    :cond_5
    iget-object v5, p0, Lcom/htc/app/FilePickerCore$22;->this$0:Lcom/htc/app/FilePickerCore;

    const/4 v6, 0x0

    #calls: Lcom/htc/app/FilePickerCore;->findMoreExpanedObjectInstance(ILjava/lang/String;)Lcom/htc/app/FilePickerCore$MoreExpanedObject;
    invoke-static {v5, v2, v6}, Lcom/htc/app/FilePickerCore;->access$5400(Lcom/htc/app/FilePickerCore;ILjava/lang/String;)Lcom/htc/app/FilePickerCore$MoreExpanedObject;

    move-result-object v4

    goto/16 :goto_1

    .line 3485
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
