.class Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$3;
.super Ljava/lang/Object;
.source "FilePickerFolderAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;


# direct methods
.method constructor <init>(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)V
    .locals 0
    .parameter

    .prologue
    .line 1329
    iput-object p1, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$3;->this$1:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1331
    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$3;->this$1:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->resultItemList:Ljava/util/LinkedList;
    invoke-static {v1}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->access$3200(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)Ljava/util/LinkedList;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$3;->this$1:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->resultItemList:Ljava/util/LinkedList;
    invoke-static {v1}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->access$3200(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 1332
    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$3;->this$1:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    iget-object v1, v1, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    new-instance v2, Ljava/util/LinkedList;

    iget-object v3, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$3;->this$1:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->resultItemList:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->access$3200(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    #setter for: Lcom/htc/app/FilePickerFolderAdapter;->mCurrentChildrenList:Ljava/util/LinkedList;
    invoke-static {v1, v2}, Lcom/htc/app/FilePickerFolderAdapter;->access$1402(Lcom/htc/app/FilePickerFolderAdapter;Ljava/util/LinkedList;)Ljava/util/LinkedList;

    .line 1334
    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$3;->this$1:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    iget-object v1, v1, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mIsFirstLevel:Z
    invoke-static {v1}, Lcom/htc/app/FilePickerFolderAdapter;->access$1500(Lcom/htc/app/FilePickerFolderAdapter;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1335
    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$3;->this$1:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->MoreListView:Lcom/htc/widget/MoreExpandableHtcListView;
    invoke-static {v1}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->access$2900(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)Lcom/htc/widget/MoreExpandableHtcListView;

    move-result-object v2

    monitor-enter v2

    .line 1336
    :try_start_0
    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$3;->this$1:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    iget-object v1, v1, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    iget-object v3, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$3;->this$1:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->resultItemList:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->access$3200(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)Ljava/util/LinkedList;

    move-result-object v3

    #setter for: Lcom/htc/app/FilePickerFolderAdapter;->mChangeRootItemLists:Ljava/util/LinkedList;
    invoke-static {v1, v3}, Lcom/htc/app/FilePickerFolderAdapter;->access$002(Lcom/htc/app/FilePickerFolderAdapter;Ljava/util/LinkedList;)Ljava/util/LinkedList;

    .line 1337
    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$3;->this$1:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->MoreListView:Lcom/htc/widget/MoreExpandableHtcListView;
    invoke-static {v1}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->access$2900(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)Lcom/htc/widget/MoreExpandableHtcListView;

    move-result-object v1

    iget-object v3, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$3;->this$1:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->resultItemList:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->access$3200(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/htc/widget/MoreExpandableHtcListView;->changeRoot(Ljava/util/LinkedList;)V

    .line 1338
    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$3;->this$1:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->resultItemList:Ljava/util/LinkedList;
    invoke-static {v1}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->access$3200(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 1339
    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$3;->this$1:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->resultItemList:Ljava/util/LinkedList;
    invoke-static {v1}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->access$3200(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)Ljava/util/LinkedList;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/app/FolderItemInfo;

    invoke-virtual {v1}, Lcom/htc/app/FolderItemInfo;->isGroup()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1340
    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$3;->this$1:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->access$2500(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)Landroid/os/Handler;

    move-result-object v1

    const/16 v3, 0xa7

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1343
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1372
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$3;->this$1:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    iget-object v1, v1, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #calls: Lcom/htc/app/FilePickerFolderAdapter;->showRefreshAnimationOnViewHeader(Z)V
    invoke-static {v1, v5}, Lcom/htc/app/FilePickerFolderAdapter;->access$3300(Lcom/htc/app/FilePickerFolderAdapter;Z)V

    .line 1373
    invoke-static {v5}, Lcom/htc/app/FilePickerFolderAdapter;->access$1202(Z)Z

    .line 1374
    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$3;->this$1:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    invoke-virtual {v1}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->stopScan()V

    .line 1376
    return-void

    .line 1343
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1345
    :cond_2
    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$3;->this$1:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mCurrentExItem:Lcom/htc/app/FolderItemInfo;
    invoke-static {v1}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->access$3000(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)Lcom/htc/app/FolderItemInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1346
    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$3;->this$1:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->isDoAppendFlag:Z
    invoke-static {v1}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->access$2800(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1347
    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$3;->this$1:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->MoreListView:Lcom/htc/widget/MoreExpandableHtcListView;
    invoke-static {v1}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->access$2900(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)Lcom/htc/widget/MoreExpandableHtcListView;

    move-result-object v2

    monitor-enter v2

    .line 1348
    :try_start_2
    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$3;->this$1:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mCurrentExItem:Lcom/htc/app/FolderItemInfo;
    invoke-static {v1}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->access$3000(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)Lcom/htc/app/FolderItemInfo;

    move-result-object v1

    iget-object v3, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$3;->this$1:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->resultItemList:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->access$3200(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/htc/app/FolderItemInfo;->setChildren(Ljava/util/List;)V

    .line 1349
    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$3;->this$1:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    iget-object v1, v1, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mSelectionType:I
    invoke-static {v1}, Lcom/htc/app/FilePickerFolderAdapter;->access$3100(Lcom/htc/app/FilePickerFolderAdapter;)I

    move-result v1

    if-ne v1, v4, :cond_3

    .line 1350
    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$3;->this$1:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mCurrentExItem:Lcom/htc/app/FolderItemInfo;
    invoke-static {v1}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->access$3000(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)Lcom/htc/app/FolderItemInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/app/FolderItemInfo;->setChildrenChecked()V

    .line 1351
    :cond_3
    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$3;->this$1:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->MoreListView:Lcom/htc/widget/MoreExpandableHtcListView;
    invoke-static {v1}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->access$2900(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)Lcom/htc/widget/MoreExpandableHtcListView;

    move-result-object v1

    iget-object v3, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$3;->this$1:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mCurrentExItem:Lcom/htc/app/FolderItemInfo;
    invoke-static {v3}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->access$3000(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)Lcom/htc/app/FolderItemInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$3;->this$1:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->resultItemList:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->access$3200(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/htc/widget/MoreExpandableHtcListView;->changeChildren(Lcom/htc/widget/MoreExpandableItemInfo;Ljava/util/LinkedList;)V

    .line 1352
    monitor-exit v2

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 1354
    :cond_4
    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$3;->this$1:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->MoreListView:Lcom/htc/widget/MoreExpandableHtcListView;
    invoke-static {v1}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->access$2900(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)Lcom/htc/widget/MoreExpandableHtcListView;

    move-result-object v2

    monitor-enter v2

    .line 1355
    :try_start_3
    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$3;->this$1:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mCurrentExItem:Lcom/htc/app/FolderItemInfo;
    invoke-static {v1}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->access$3000(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)Lcom/htc/app/FolderItemInfo;

    move-result-object v1

    iget-object v3, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$3;->this$1:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->resultItemList:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->access$3200(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/htc/app/FolderItemInfo;->setChildren(Ljava/util/List;)V

    .line 1356
    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$3;->this$1:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    iget-object v1, v1, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mSelectionType:I
    invoke-static {v1}, Lcom/htc/app/FilePickerFolderAdapter;->access$3100(Lcom/htc/app/FilePickerFolderAdapter;)I

    move-result v1

    if-ne v1, v4, :cond_5

    .line 1357
    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$3;->this$1:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mCurrentExItem:Lcom/htc/app/FolderItemInfo;
    invoke-static {v1}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->access$3000(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)Lcom/htc/app/FolderItemInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/app/FolderItemInfo;->setChildrenChecked()V

    .line 1358
    :cond_5
    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$3;->this$1:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->MoreListView:Lcom/htc/widget/MoreExpandableHtcListView;
    invoke-static {v1}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->access$2900(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)Lcom/htc/widget/MoreExpandableHtcListView;

    move-result-object v1

    iget-object v3, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$3;->this$1:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mCurrentExItem:Lcom/htc/app/FolderItemInfo;
    invoke-static {v3}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->access$3000(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)Lcom/htc/app/FolderItemInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$3;->this$1:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->resultItemList:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->access$3200(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/htc/widget/MoreExpandableHtcListView;->appendChildren(Lcom/htc/widget/MoreExpandableItemInfo;Ljava/util/LinkedList;)V

    .line 1359
    monitor-exit v2

    goto/16 :goto_0

    :catchall_2
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v1

    .line 1366
    :cond_6
    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$3;->this$1:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    iget-object v1, v1, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mIsFirstLevel:Z
    invoke-static {v1}, Lcom/htc/app/FilePickerFolderAdapter;->access$1500(Lcom/htc/app/FilePickerFolderAdapter;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1367
    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$3;->this$1:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->MoreListView:Lcom/htc/widget/MoreExpandableHtcListView;
    invoke-static {v1}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->access$2900(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)Lcom/htc/widget/MoreExpandableHtcListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/MoreExpandableHtcListView;->getEmptyView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1368
    .local v0, emptyView:Landroid/widget/TextView;
    iget-object v1, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$3;->this$1:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    iget-object v1, v1, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mDataSourceType:I
    invoke-static {v1}, Lcom/htc/app/FilePickerFolderAdapter;->access$1000(Lcom/htc/app/FilePickerFolderAdapter;)I

    move-result v1

    iget-object v2, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$3;->this$1:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    iget-object v2, v2, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->this$0:Lcom/htc/app/FilePickerFolderAdapter;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/app/FilePickerFolderAdapter;->access$2100(Lcom/htc/app/FilePickerFolderAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/htc/app/FilePickerUtil;->setMoreExpandNoFileFoundText(Landroid/widget/TextView;ILandroid/content/Context;)V

    goto/16 :goto_0
.end method
