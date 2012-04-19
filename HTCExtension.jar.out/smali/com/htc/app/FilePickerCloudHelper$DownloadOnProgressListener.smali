.class Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;
.super Ljava/lang/Object;
.source "FilePickerCloudHelper.java"

# interfaces
.implements Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage$onProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/app/FilePickerCloudHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DownloadOnProgressListener"
.end annotation


# static fields
.field static final NOTIFY_DOWNLOAD_PROGRESS_CHENGED:I = 0x0

.field static final NOTIFY_DOWNLOAD_PROGRESS_END:I = 0x1


# instance fields
.field private KEY_ACCOUNT_ID:Ljava/lang/String;

.field private KEY_CLOUD_DATA_SOURCE_TYPE:Ljava/lang/String;

.field private KEY_CLOUD_ID:Ljava/lang/String;

.field private KEY_CLOUD_PATH_ID:Ljava/lang/String;

.field private KEY_LOCAL_PATH_ID:Ljava/lang/String;

.field private mAccountId:Ljava/lang/String;

.field private mCloudFilePath:Ljava/lang/String;

.field private mCloudId:J

.field private mDataSourceType:I

.field private mDownload:Lcom/htc/sdk/service/cloudstorage/HtcDownload;

.field private mFileName:Ljava/lang/String;

.field private mFileSize:J

.field private mHandler:Landroid/os/Handler;

.field private mIsCancelToDownload:Z

.field private mProgress:I

.field final synthetic this$0:Lcom/htc/app/FilePickerCloudHelper;


# direct methods
.method constructor <init>(Lcom/htc/app/FilePickerCloudHelper;JLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter "cloudId"
    .parameter "accountId"
    .parameter "cloudFilePath"

    .prologue
    const/4 v2, 0x0

    .line 1681
    iput-object p1, p0, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;->this$0:Lcom/htc/app/FilePickerCloudHelper;

    .line 1682
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1709
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;->mProgress:I

    .line 1710
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;->mCloudId:J

    .line 1711
    iput-object v2, p0, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;->mCloudFilePath:Ljava/lang/String;

    .line 1712
    iput-object v2, p0, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;->mAccountId:Ljava/lang/String;

    .line 1713
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;->mIsCancelToDownload:Z

    .line 1833
    const-string v0, "cloudId"

    iput-object v0, p0, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;->KEY_CLOUD_ID:Ljava/lang/String;

    .line 1834
    const-string v0, "cloudPath"

    iput-object v0, p0, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;->KEY_CLOUD_PATH_ID:Ljava/lang/String;

    .line 1835
    const-string v0, "localPath"

    iput-object v0, p0, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;->KEY_LOCAL_PATH_ID:Ljava/lang/String;

    .line 1836
    const-string v0, "accountId"

    iput-object v0, p0, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;->KEY_ACCOUNT_ID:Ljava/lang/String;

    .line 1837
    const-string v0, "cloudDataSourceType"

    iput-object v0, p0, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;->KEY_CLOUD_DATA_SOURCE_TYPE:Ljava/lang/String;

    .line 1838
    new-instance v0, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener$2;-><init>(Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;->mHandler:Landroid/os/Handler;

    .line 1683
    invoke-virtual {p0, p2, p3}, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;->setCloudId(J)V

    .line 1684
    invoke-virtual {p0, p4}, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;->setAccountId(Ljava/lang/String;)V

    .line 1685
    invoke-virtual {p0, p5}, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;->setCloudFilePath(Ljava/lang/String;)V

    .line 1686
    return-void
.end method

.method static synthetic access$1800(Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1679
    iget-object v0, p0, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private setProgressResult(I)V
    .locals 6
    .parameter "progress"

    .prologue
    .line 1811
    iget-object v4, p0, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;->mHandler:Landroid/os/Handler;

    if-nez v4, :cond_1

    .line 1829
    :cond_0
    :goto_0
    return-void

    .line 1814
    :cond_1
    iget v4, p0, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;->mProgress:I

    if-eq v4, p1, :cond_0

    .line 1815
    iput p1, p0, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;->mProgress:I

    .line 1816
    iget-object v4, p0, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 1818
    .local v3, notifyProgressChangedMsg:Landroid/os/Message;
    iput p1, v3, Landroid/os/Message;->arg1:I

    .line 1819
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1820
    .local v0, bundle:Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;->getCloudId()J

    move-result-wide v1

    .line 1821
    .local v1, cloudIdInBuddle:J
    iget-object v4, p0, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;->KEY_CLOUD_ID:Ljava/lang/String;

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1822
    iget-object v4, p0, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;->KEY_ACCOUNT_ID:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;->getAccountId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1823
    iget-object v4, p0, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;->KEY_CLOUD_PATH_ID:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;->getCloudFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1824
    iget-object v4, p0, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;->KEY_CLOUD_DATA_SOURCE_TYPE:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;->getDataSourceType()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1825
    invoke-virtual {v3, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1826
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private terminatedDownload()V
    .locals 4

    .prologue
    .line 1747
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener$1;

    invoke-direct {v2, p0}, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener$1;-><init>(Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1766
    .local v1, thread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1768
    const-wide/16 v2, 0x0

    :try_start_0
    invoke-virtual {v1, v2, v3}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1772
    :goto_0
    return-void

    .line 1769
    :catch_0
    move-exception v0

    .line 1770
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method cancelToDownload(Z)V
    .locals 2
    .parameter "cancelToDownload"

    .prologue
    .line 1737
    iput-boolean p1, p0, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;->mIsCancelToDownload:Z

    .line 1738
    iget-boolean v0, p0, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;->mIsCancelToDownload:Z

    if-eqz v0, :cond_0

    .line 1739
    iget-object v0, p0, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1740
    iget-object v0, p0, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1741
    invoke-direct {p0}, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;->terminatedDownload()V

    .line 1744
    :cond_0
    return-void
.end method

.method getAccountId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1783
    iget-object v0, p0, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;->mAccountId:Ljava/lang/String;

    return-object v0
.end method

.method getCloudFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1775
    iget-object v0, p0, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;->mCloudFilePath:Ljava/lang/String;

    return-object v0
.end method

.method getCloudId()J
    .locals 2

    .prologue
    .line 1791
    iget-wide v0, p0, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;->mCloudId:J

    return-wide v0
.end method

.method getDataSourceType()I
    .locals 1

    .prologue
    .line 1725
    iget v0, p0, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;->mDataSourceType:I

    return v0
.end method

.method getDownload()Lcom/htc/sdk/service/cloudstorage/HtcDownload;
    .locals 1

    .prologue
    .line 1717
    iget-object v0, p0, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;->mDownload:Lcom/htc/sdk/service/cloudstorage/HtcDownload;

    return-object v0
.end method

.method getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1699
    iget-object v0, p0, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method getFileSize()J
    .locals 2

    .prologue
    .line 1691
    iget-wide v0, p0, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;->mFileSize:J

    return-wide v0
.end method

.method isCancelToDownload()Z
    .locals 1

    .prologue
    .line 1733
    iget-boolean v0, p0, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;->mIsCancelToDownload:Z

    return v0
.end method

.method public onProgress(I)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 1805
    iget-boolean v0, p0, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;->mIsCancelToDownload:Z

    if-nez v0, :cond_0

    .line 1806
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;->setProgressResult(I)V

    .line 1808
    :cond_0
    return-void
.end method

.method setAccountId(Ljava/lang/String;)V
    .locals 0
    .parameter "accountId"

    .prologue
    .line 1787
    iput-object p1, p0, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;->mAccountId:Ljava/lang/String;

    .line 1788
    return-void
.end method

.method setCloudFilePath(Ljava/lang/String;)V
    .locals 0
    .parameter "cloudFilePath"

    .prologue
    .line 1779
    iput-object p1, p0, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;->mCloudFilePath:Ljava/lang/String;

    .line 1780
    return-void
.end method

.method setCloudId(J)V
    .locals 0
    .parameter "cloudId"

    .prologue
    .line 1795
    iput-wide p1, p0, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;->mCloudId:J

    .line 1796
    return-void
.end method

.method setDataSourceType(I)V
    .locals 0
    .parameter "dataSourceType"

    .prologue
    .line 1729
    iput p1, p0, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;->mDataSourceType:I

    .line 1730
    return-void
.end method

.method setDownload(Lcom/htc/sdk/service/cloudstorage/HtcDownload;)V
    .locals 0
    .parameter "download"

    .prologue
    .line 1721
    iput-object p1, p0, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;->mDownload:Lcom/htc/sdk/service/cloudstorage/HtcDownload;

    .line 1722
    return-void
.end method

.method setFileName(Ljava/lang/String;)V
    .locals 0
    .parameter "fileName"

    .prologue
    .line 1703
    iput-object p1, p0, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;->mFileName:Ljava/lang/String;

    .line 1704
    return-void
.end method

.method setFileSize(J)V
    .locals 0
    .parameter "fileSize"

    .prologue
    .line 1695
    iput-wide p1, p0, Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;->mFileSize:J

    .line 1696
    return-void
.end method
