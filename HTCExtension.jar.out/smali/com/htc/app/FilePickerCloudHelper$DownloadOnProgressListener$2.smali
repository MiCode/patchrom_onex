.class Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener$2;
.super Landroid/os/Handler;
.source "FilePickerCloudHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;


# direct methods
.method constructor <init>(Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 1838
    iput-object p1, p0, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener$2;->this$1:Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .parameter "msg"

    .prologue
    const/4 v11, 0x0

    const/4 v12, 0x1

    .line 1841
    iget v7, p1, Landroid/os/Message;->arg1:I

    .line 1842
    .local v7, progress:I
    iget-object v10, p0, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener$2;->this$1:Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;

    invoke-virtual {v10}, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;->getCloudId()J

    move-result-wide v0

    .line 1844
    .local v0, cloudId:J
    iget v10, p1, Landroid/os/Message;->what:I

    packed-switch v10, :pswitch_data_0

    .line 1908
    :cond_0
    :goto_0
    return-void

    .line 1846
    :pswitch_0
    iget-object v10, p0, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener$2;->this$1:Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;

    invoke-virtual {v10}, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;->isCancelToDownload()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1847
    iget-object v10, p0, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener$2;->this$1:Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;

    invoke-virtual {v10, v12}, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;->cancelToDownload(Z)V

    .line 1848
    iget-object v10, p0, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener$2;->this$1:Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;

    #getter for: Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;->access$1800(Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;)Landroid/os/Handler;

    move-result-object v10

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 1849
    iget-object v10, p0, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener$2;->this$1:Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;

    #getter for: Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;->access$1800(Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;)Landroid/os/Handler;

    move-result-object v10

    invoke-virtual {v10, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 1851
    :cond_1
    const-wide/16 v10, 0x0

    cmp-long v10, v0, v10

    if-eqz v10, :cond_2

    .line 1852
    iget-object v10, p0, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener$2;->this$1:Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;

    invoke-virtual {v10}, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;->getFileSize()J

    move-result-wide v8

    .line 1853
    .local v8, size:J
    iget-object v10, p0, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener$2;->this$1:Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;

    iget-object v10, v10, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;->this$0:Lcom/htc/app/FilePickerCloudHelper;

    #getter for: Lcom/htc/app/FilePickerCloudHelper;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;
    invoke-static {v10}, Lcom/htc/app/FilePickerCloudHelper;->access$700(Lcom/htc/app/FilePickerCloudHelper;)Lcom/htc/app/FilePickerUtil;

    move-result-object v10

    invoke-virtual {v10, v8, v9, v7}, Lcom/htc/app/FilePickerUtil;->setProgressDialogMessage(JI)V

    .line 1857
    .end local v8           #size:J
    :cond_2
    const/16 v10, 0x64

    if-ne v7, v10, :cond_0

    .line 1858
    iget-object v10, p0, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener$2;->this$1:Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;

    #getter for: Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;->access$1800(Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;)Landroid/os/Handler;

    move-result-object v10

    invoke-virtual {v10, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 1861
    .local v6, notifyChangedEndMsg:Landroid/os/Message;
    iget-object v10, p0, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener$2;->this$1:Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;

    #getter for: Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;->access$1800(Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;)Landroid/os/Handler;

    move-result-object v10

    const-wide/16 v11, 0x190

    invoke-virtual {v10, v6, v11, v12}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1865
    .end local v6           #notifyChangedEndMsg:Landroid/os/Message;
    :pswitch_1
    iget-object v10, p0, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener$2;->this$1:Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;

    #getter for: Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;->access$1800(Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;)Landroid/os/Handler;

    move-result-object v10

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 1866
    iget-object v10, p0, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener$2;->this$1:Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;

    #getter for: Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;->access$1800(Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;)Landroid/os/Handler;

    move-result-object v10

    invoke-virtual {v10, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 1868
    iget-object v10, p0, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener$2;->this$1:Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;

    invoke-virtual {v10}, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;->isCancelToDownload()Z

    move-result v10

    if-nez v10, :cond_0

    .line 1872
    const/4 v4, 0x0

    .line 1873
    .local v4, isExists:Z
    const/4 v5, 0x0

    .line 1874
    .local v5, localPath:Ljava/lang/String;
    iget-object v10, p0, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener$2;->this$1:Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;

    invoke-virtual {v10}, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;->getDownload()Lcom/htc/sdk/service/cloudstorage/HtcDownload;

    move-result-object v2

    .line 1876
    .local v2, download:Lcom/htc/sdk/service/cloudstorage/HtcDownload;
    if-eqz v2, :cond_3

    .line 1877
    invoke-virtual {v2}, Lcom/htc/sdk/service/cloudstorage/HtcDownload;->getLocalPath()Ljava/lang/String;

    move-result-object v5

    .line 1878
    if-eqz v5, :cond_3

    .line 1879
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1880
    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1881
    iget-object v10, p0, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener$2;->this$1:Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;

    iget-object v10, v10, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;->this$0:Lcom/htc/app/FilePickerCloudHelper;

    #getter for: Lcom/htc/app/FilePickerCloudHelper;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;
    invoke-static {v10}, Lcom/htc/app/FilePickerCloudHelper;->access$700(Lcom/htc/app/FilePickerCloudHelper;)Lcom/htc/app/FilePickerUtil;

    move-result-object v10

    invoke-virtual {v10, v5}, Lcom/htc/app/FilePickerUtil;->setSelectedDownloadedPath(Ljava/lang/String;)V

    .line 1882
    const/4 v4, 0x1

    .line 1887
    .end local v3           #file:Ljava/io/File;
    :cond_3
    if-nez v4, :cond_4

    .line 1888
    const-string v10, "FilePickerCloudHelper"

    const-string v11, "File does not exist!!!"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1891
    iget-object v10, p0, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener$2;->this$1:Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;

    iget-object v10, v10, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;->this$0:Lcom/htc/app/FilePickerCloudHelper;

    #getter for: Lcom/htc/app/FilePickerCloudHelper;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;
    invoke-static {v10}, Lcom/htc/app/FilePickerCloudHelper;->access$700(Lcom/htc/app/FilePickerCloudHelper;)Lcom/htc/app/FilePickerUtil;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener$2;->this$1:Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;

    iget-object v11, v11, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;->this$0:Lcom/htc/app/FilePickerCloudHelper;

    #getter for: Lcom/htc/app/FilePickerCloudHelper;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;
    invoke-static {v11}, Lcom/htc/app/FilePickerCloudHelper;->access$700(Lcom/htc/app/FilePickerCloudHelper;)Lcom/htc/app/FilePickerUtil;

    const/4 v11, -0x7

    invoke-virtual {v10, v11}, Lcom/htc/app/FilePickerUtil;->setCloudExceptionType(I)V

    .line 1893
    iget-object v10, p0, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener$2;->this$1:Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;

    iget-object v10, v10, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;->this$0:Lcom/htc/app/FilePickerCloudHelper;

    #getter for: Lcom/htc/app/FilePickerCloudHelper;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;
    invoke-static {v10}, Lcom/htc/app/FilePickerCloudHelper;->access$700(Lcom/htc/app/FilePickerCloudHelper;)Lcom/htc/app/FilePickerUtil;

    move-result-object v10

    const/16 v11, 0x9

    invoke-virtual {v10, v11}, Lcom/htc/app/FilePickerUtil;->notifyToDoTaskEvent(I)V

    .line 1894
    iget-object v10, p0, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener$2;->this$1:Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;

    iget-object v10, v10, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;->this$0:Lcom/htc/app/FilePickerCloudHelper;

    #getter for: Lcom/htc/app/FilePickerCloudHelper;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;
    invoke-static {v10}, Lcom/htc/app/FilePickerCloudHelper;->access$700(Lcom/htc/app/FilePickerCloudHelper;)Lcom/htc/app/FilePickerUtil;

    move-result-object v10

    invoke-virtual {v10, v0, v1}, Lcom/htc/app/FilePickerUtil;->removeDownloadCloudId(J)V

    goto/16 :goto_0

    .line 1899
    :cond_4
    iget-object v10, p0, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener$2;->this$1:Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;

    iget-object v10, v10, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;->this$0:Lcom/htc/app/FilePickerCloudHelper;

    #getter for: Lcom/htc/app/FilePickerCloudHelper;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;
    invoke-static {v10}, Lcom/htc/app/FilePickerCloudHelper;->access$700(Lcom/htc/app/FilePickerCloudHelper;)Lcom/htc/app/FilePickerUtil;

    move-result-object v10

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Lcom/htc/app/FilePickerUtil;->notifyToDoTaskEvent(I)V

    .line 1901
    iget-object v10, p0, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener$2;->this$1:Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;

    iget-object v10, v10, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;->this$0:Lcom/htc/app/FilePickerCloudHelper;

    #getter for: Lcom/htc/app/FilePickerCloudHelper;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;
    invoke-static {v10}, Lcom/htc/app/FilePickerCloudHelper;->access$700(Lcom/htc/app/FilePickerCloudHelper;)Lcom/htc/app/FilePickerUtil;

    move-result-object v10

    invoke-virtual {v10, v0, v1}, Lcom/htc/app/FilePickerUtil;->removeDownloadCloudId(J)V

    goto/16 :goto_0

    .line 1844
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
