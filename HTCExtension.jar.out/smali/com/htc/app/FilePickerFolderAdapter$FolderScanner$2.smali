.class Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$2;
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
    .line 1305
    iput-object p1, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$2;->this$1:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/16 v7, 0xa7

    .line 1307
    const/4 v1, 0x0

    .line 1308
    .local v1, v:Landroid/view/View;
    const/4 v0, 0x0

    .line 1309
    .local v0, isPerformItemClick:Z
    iget-object v2, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$2;->this$1:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->MoreListView:Lcom/htc/widget/MoreExpandableHtcListView;
    invoke-static {v2}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->access$2900(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)Lcom/htc/widget/MoreExpandableHtcListView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1310
    iget-object v2, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$2;->this$1:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->MoreListView:Lcom/htc/widget/MoreExpandableHtcListView;
    invoke-static {v2}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->access$2900(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)Lcom/htc/widget/MoreExpandableHtcListView;

    move-result-object v3

    monitor-enter v3

    .line 1311
    :try_start_0
    iget-object v2, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$2;->this$1:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->MoreListView:Lcom/htc/widget/MoreExpandableHtcListView;
    invoke-static {v2}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->access$2900(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)Lcom/htc/widget/MoreExpandableHtcListView;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/htc/widget/MoreExpandableHtcListView;->setSelection(I)V

    .line 1312
    iget-object v2, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$2;->this$1:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->MoreListView:Lcom/htc/widget/MoreExpandableHtcListView;
    invoke-static {v2}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->access$2900(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)Lcom/htc/widget/MoreExpandableHtcListView;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/htc/widget/MoreExpandableHtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1313
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1314
    if-eqz v1, :cond_0

    .line 1315
    iget-object v2, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$2;->this$1:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->MoreListView:Lcom/htc/widget/MoreExpandableHtcListView;
    invoke-static {v2}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->access$2900(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)Lcom/htc/widget/MoreExpandableHtcListView;

    move-result-object v3

    monitor-enter v3

    .line 1316
    :try_start_1
    iget-object v2, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$2;->this$1:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->MoreListView:Lcom/htc/widget/MoreExpandableHtcListView;
    invoke-static {v2}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->access$2900(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)Lcom/htc/widget/MoreExpandableHtcListView;

    move-result-object v2

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    invoke-virtual {v2, v1, v4, v5, v6}, Lcom/htc/widget/MoreExpandableHtcListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 1317
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1318
    const/4 v0, 0x1

    .line 1321
    :cond_0
    if-eqz v0, :cond_1

    .line 1322
    iget-object v2, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$2;->this$1:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->access$2500(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$2;->this$1:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->expandRootItemRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->access$2400(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1323
    iget-object v2, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$2;->this$1:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->access$2500(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 1327
    :goto_0
    return-void

    .line 1313
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 1317
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 1325
    :cond_1
    iget-object v2, p0, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner$2;->this$1:Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;

    #getter for: Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;->access$2500(Lcom/htc/app/FilePickerFolderAdapter$FolderScanner;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
