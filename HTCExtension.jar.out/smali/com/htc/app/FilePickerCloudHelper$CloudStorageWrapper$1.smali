.class Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper$1;
.super Ljava/lang/Object;
.source "FilePickerCloudHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->requestDownloadFile(IJLjava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;

.field final synthetic val$cloudFilePath:Ljava/lang/String;

.field final synthetic val$cloudId:J

.field final synthetic val$dataSourceType:I

.field final synthetic val$fileSize:J


# direct methods
.method constructor <init>(Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;JLjava/lang/String;IJ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 874
    iput-object p1, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper$1;->this$1:Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;

    iput-wide p2, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper$1;->val$cloudId:J

    iput-object p4, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper$1;->val$cloudFilePath:Ljava/lang/String;

    iput p5, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper$1;->val$dataSourceType:I

    iput-wide p6, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper$1;->val$fileSize:J

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 877
    const/4 v0, 0x0

    .line 880
    .local v0, downloadOnProgressListener:Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;
    new-instance v0, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;

    .end local v0           #downloadOnProgressListener:Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;
    iget-object v1, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper$1;->this$1:Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;

    iget-object v1, v1, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->this$0:Lcom/htc/app/FilePickerCloudHelper;

    iget-wide v2, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper$1;->val$cloudId:J

    iget-object v4, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper$1;->this$1:Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;

    #getter for: Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->mAccountId:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->access$1000(Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper$1;->val$cloudFilePath:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;-><init>(Lcom/htc/app/FilePickerCloudHelper;JLjava/lang/String;Ljava/lang/String;)V

    .line 882
    .restart local v0       #downloadOnProgressListener:Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;
    iget v1, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper$1;->val$dataSourceType:I

    invoke-virtual {v0, v1}, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;->setDataSourceType(I)V

    .line 885
    iget-object v1, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper$1;->this$1:Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;

    iget-object v1, v1, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->this$0:Lcom/htc/app/FilePickerCloudHelper;

    #getter for: Lcom/htc/app/FilePickerCloudHelper;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;
    invoke-static {v1}, Lcom/htc/app/FilePickerCloudHelper;->access$700(Lcom/htc/app/FilePickerCloudHelper;)Lcom/htc/app/FilePickerUtil;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/htc/app/FilePickerUtil;->setSelectedDownloadedPath(Ljava/lang/String;)V

    .line 886
    iget-object v1, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper$1;->this$1:Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;

    iget-object v1, v1, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->this$0:Lcom/htc/app/FilePickerCloudHelper;

    #getter for: Lcom/htc/app/FilePickerCloudHelper;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;
    invoke-static {v1}, Lcom/htc/app/FilePickerCloudHelper;->access$700(Lcom/htc/app/FilePickerCloudHelper;)Lcom/htc/app/FilePickerUtil;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper$1;->val$cloudId:J

    invoke-virtual {v1, v2, v3, v9}, Lcom/htc/app/FilePickerUtil;->setDownloadProgerss(JI)V

    .line 887
    iget-object v1, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper$1;->this$1:Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;

    iget-object v1, v1, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->this$0:Lcom/htc/app/FilePickerCloudHelper;

    #getter for: Lcom/htc/app/FilePickerCloudHelper;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;
    invoke-static {v1}, Lcom/htc/app/FilePickerCloudHelper;->access$700(Lcom/htc/app/FilePickerCloudHelper;)Lcom/htc/app/FilePickerUtil;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/app/FilePickerUtil;->setDownloadOnProgressListener(Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;)V

    .line 888
    iget-object v1, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper$1;->this$1:Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;

    iget-object v1, v1, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->this$0:Lcom/htc/app/FilePickerCloudHelper;

    #getter for: Lcom/htc/app/FilePickerCloudHelper;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;
    invoke-static {v1}, Lcom/htc/app/FilePickerCloudHelper;->access$700(Lcom/htc/app/FilePickerCloudHelper;)Lcom/htc/app/FilePickerUtil;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper$1;->val$fileSize:J

    invoke-virtual {v1, v2, v3, v9}, Lcom/htc/app/FilePickerUtil;->setProgressDialogMessage(JI)V

    .line 889
    iget-wide v1, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper$1;->val$fileSize:J

    invoke-virtual {v0, v1, v2}, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;->setFileSize(J)V

    .line 900
    iget-object v1, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper$1;->this$1:Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;

    iget-object v2, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper$1;->val$cloudFilePath:Ljava/lang/String;

    #calls: Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->clearCloudFileListTimePreferences(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->access$1100(Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;Ljava/lang/String;)V

    .line 902
    iget-object v1, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper$1;->this$1:Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;

    invoke-virtual {v1}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->isStorageInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 903
    iget-object v1, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper$1;->this$1:Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;

    invoke-virtual {v1}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->init()V

    .line 904
    :cond_0
    const/4 v7, 0x0

    .line 907
    .local v7, download:Lcom/htc/sdk/service/cloudstorage/HtcDownload;
    :try_start_0
    iget-object v1, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper$1;->this$1:Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;

    #getter for: Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->mCloudStorage:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage;
    invoke-static {v1}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->access$1200(Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;)Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 908
    iget-object v1, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper$1;->this$1:Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;

    #getter for: Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->mCloudStorage:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage;
    invoke-static {v1}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->access$1200(Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;)Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper$1;->val$cloudFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage;->getCloudFile(Ljava/lang/String;Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage$onProgressListener;)Lcom/htc/sdk/service/cloudstorage/HtcDownload;
    :try_end_0
    .catch Lcom/htc/sdk/service/cloudstorage/HtcCloudException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 926
    :cond_1
    :goto_0
    invoke-virtual {v0, v7}, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;->setDownload(Lcom/htc/sdk/service/cloudstorage/HtcDownload;)V

    .line 928
    return-void

    .line 911
    :catch_0
    move-exception v8

    .line 912
    .local v8, e:Lcom/htc/sdk/service/cloudstorage/HtcCloudException;
    iget-object v1, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper$1;->this$1:Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;

    iget-object v1, v1, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->this$0:Lcom/htc/app/FilePickerCloudHelper;

    #getter for: Lcom/htc/app/FilePickerCloudHelper;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;
    invoke-static {v1}, Lcom/htc/app/FilePickerCloudHelper;->access$700(Lcom/htc/app/FilePickerCloudHelper;)Lcom/htc/app/FilePickerUtil;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper$1;->val$cloudId:J

    invoke-virtual {v1, v2, v3}, Lcom/htc/app/FilePickerUtil;->removeDownloadCloudId(J)V

    .line 913
    iget-object v1, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper$1;->this$1:Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;

    iget-object v1, v1, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->this$0:Lcom/htc/app/FilePickerCloudHelper;

    #getter for: Lcom/htc/app/FilePickerCloudHelper;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;
    invoke-static {v1}, Lcom/htc/app/FilePickerCloudHelper;->access$700(Lcom/htc/app/FilePickerCloudHelper;)Lcom/htc/app/FilePickerUtil;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/htc/app/FilePickerUtil;->setDownloadOnProgressListener(Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;)V

    .line 914
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;->cancelToDownload(Z)V

    .line 915
    iget-object v1, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper$1;->this$1:Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;

    #getter for: Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->access$1300(Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ServiceName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper$1;->this$1:Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;

    invoke-virtual {v3}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->getServiceTextName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    iget-object v1, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper$1;->this$1:Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;

    iget-object v1, v1, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->this$0:Lcom/htc/app/FilePickerCloudHelper;

    #calls: Lcom/htc/app/FilePickerCloudHelper;->errorHandle(Lcom/htc/sdk/service/cloudstorage/HtcCloudException;I)V
    invoke-static {v1, v8, v9}, Lcom/htc/app/FilePickerCloudHelper;->access$100(Lcom/htc/app/FilePickerCloudHelper;Lcom/htc/sdk/service/cloudstorage/HtcCloudException;I)V

    .line 922
    iget-object v1, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper$1;->this$1:Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;

    #getter for: Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->access$1300(Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "e.getErrorCode():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Lcom/htc/sdk/service/cloudstorage/HtcCloudException;->getErrorCode()Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    invoke-virtual {v8}, Lcom/htc/sdk/service/cloudstorage/HtcCloudException;->getErrorCode()Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;

    move-result-object v6

    .line 924
    .local v6, c:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;
    iget-object v1, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper$1;->this$1:Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;

    #getter for: Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->access$1300(Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "e.getMessage():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Lcom/htc/sdk/service/cloudstorage/HtcCloudException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
