.class Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
.super Ljava/lang/Object;
.source "FilePickerCloudHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/app/FilePickerCloudHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CloudStorageWrapper"
.end annotation


# instance fields
.field private CLOUD_FILE_PICKER_TIME_PREFERENCE:Ljava/lang/String;

.field private TAG:Ljava/lang/String;

.field private currentRunable:Ljava/lang/Runnable;

.field private mAccountFolderName:Ljava/lang/String;

.field private mAccountId:Ljava/lang/String;

.field private mCloudStorage:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage;

.field private mCloudStorageFunctionEnabled:Z

.field private mIsRefresh:Z

.field private mIsStorageInitialized:Z

.field private mServiceName:Ljava/lang/String;

.field private mServiceTextName:Ljava/lang/String;

.field private mStorageDataSourceType:I

.field final synthetic this$0:Lcom/htc/app/FilePickerCloudHelper;


# direct methods
.method public constructor <init>(Lcom/htc/app/FilePickerCloudHelper;ILjava/lang/String;Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage;)V
    .locals 3
    .parameter
    .parameter "cloudDataSourceType"
    .parameter "accountId"
    .parameter "cloudStorage"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 496
    iput-object p1, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->this$0:Lcom/htc/app/FilePickerCloudHelper;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 389
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->TAG:Ljava/lang/String;

    .line 390
    iput-object v1, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->mCloudStorage:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage;

    .line 391
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->mCloudStorageFunctionEnabled:Z

    .line 394
    iput-object v1, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->mAccountId:Ljava/lang/String;

    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->getServiceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->getAccountId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->CLOUD_FILE_PICKER_TIME_PREFERENCE:Ljava/lang/String;

    .line 506
    iput-boolean v2, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->mIsStorageInitialized:Z

    .line 819
    iput-boolean v2, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->mIsRefresh:Z

    .line 497
    iput-object p4, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->mCloudStorage:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage;

    .line 498
    iput p2, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->mStorageDataSourceType:I

    .line 499
    iput-object p3, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->mAccountId:Ljava/lang/String;

    .line 500
    return-void
.end method

.method static synthetic access$1000(Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 388
    iget-object v0, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->mAccountId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 388
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->clearCloudFileListTimePreferences(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;)Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 388
    iget-object v0, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->mCloudStorage:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 388
    iget-object v0, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;Ljava/lang/String;)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 388
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->loadCloudFileListTimePreferences(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1600(Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 388
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->listFiles(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 388
    invoke-direct {p0, p1, p2}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->findFiles(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private clearAllCloudFileListTimePreferences()V
    .locals 5

    .prologue
    .line 426
    iget-object v2, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->this$0:Lcom/htc/app/FilePickerCloudHelper;

    #getter for: Lcom/htc/app/FilePickerCloudHelper;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/app/FilePickerCloudHelper;->access$000(Lcom/htc/app/FilePickerCloudHelper;)Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_0

    .line 433
    :goto_0
    return-void

    .line 428
    :cond_0
    iget-object v2, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->this$0:Lcom/htc/app/FilePickerCloudHelper;

    #getter for: Lcom/htc/app/FilePickerCloudHelper;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/app/FilePickerCloudHelper;->access$000(Lcom/htc/app/FilePickerCloudHelper;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->CLOUD_FILE_PICKER_TIME_PREFERENCE:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 430
    .local v0, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 431
    .local v1, sharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 432
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method private clearCloudFileListTimePreferences(Ljava/lang/String;)V
    .locals 5
    .parameter "cloudPath"

    .prologue
    .line 415
    iget-object v2, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->this$0:Lcom/htc/app/FilePickerCloudHelper;

    #getter for: Lcom/htc/app/FilePickerCloudHelper;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/app/FilePickerCloudHelper;->access$000(Lcom/htc/app/FilePickerCloudHelper;)Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_0

    .line 423
    :goto_0
    return-void

    .line 417
    :cond_0
    iget-object v2, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->this$0:Lcom/htc/app/FilePickerCloudHelper;

    #getter for: Lcom/htc/app/FilePickerCloudHelper;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/app/FilePickerCloudHelper;->access$000(Lcom/htc/app/FilePickerCloudHelper;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->CLOUD_FILE_PICKER_TIME_PREFERENCE:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 419
    .local v0, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 420
    .local v1, sharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;
    const-wide/16 v2, -0x1

    invoke-interface {v1, p1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 421
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method private findFiles(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .parameter "cloudFolderPath"
    .parameter "searchWord"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 779
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 780
    .local v3, resultItems:Ljava/util/List;,"Ljava/util/List<Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;>;"
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->isNeedRefreshTodayCloudFileList(Ljava/lang/String;)Z

    move-result v2

    .line 782
    .local v2, isNeedRefresh:Z
    :try_start_0
    iget-object v4, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->mCloudStorage:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage;

    if-eqz v4, :cond_2

    .line 783
    const/4 v1, 0x0

    .line 786
    .local v1, extensionFilter:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->isStorageInitialized()Z

    move-result v4

    if-nez v4, :cond_0

    .line 787
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->init()V

    .line 788
    :cond_0
    iget-object v4, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->mCloudStorage:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage;

    invoke-virtual {v4, p1, v1, p2, v2}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage;->findFiles(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v3

    .line 790
    if-nez v2, :cond_1

    if-nez v3, :cond_1

    .line 791
    const/4 v2, 0x1

    .line 792
    iget-object v4, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->mCloudStorage:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage;

    invoke-virtual {v4, p1, v1, p2, v2}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage;->findFiles(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v3

    .line 795
    :cond_1
    if-eqz v2, :cond_2

    .line 796
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->saveCloudFileListTimePreferences(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/htc/sdk/service/cloudstorage/HtcCloudException; {:try_start_0 .. :try_end_0} :catch_0

    .line 816
    .end local v1           #extensionFilter:Ljava/lang/String;
    :cond_2
    :goto_0
    return-object v3

    .line 807
    :catch_0
    move-exception v0

    .line 808
    .local v0, e:Lcom/htc/sdk/service/cloudstorage/HtcCloudException;
    iget-object v4, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->this$0:Lcom/htc/app/FilePickerCloudHelper;

    const/4 v5, 0x1

    #calls: Lcom/htc/app/FilePickerCloudHelper;->errorHandle(Lcom/htc/sdk/service/cloudstorage/HtcCloudException;I)V
    invoke-static {v4, v0, v5}, Lcom/htc/app/FilePickerCloudHelper;->access$100(Lcom/htc/app/FilePickerCloudHelper;Lcom/htc/sdk/service/cloudstorage/HtcCloudException;I)V

    .line 809
    iget-object v4, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cloudStorage.findFiles()->ServiceName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->getServiceName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    iget-object v4, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isRefresh:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    iget-object v4, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "e.getErrorCode():"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/htc/sdk/service/cloudstorage/HtcCloudException;->getErrorCode()Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    iget-object v4, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "e.getMessage():"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/htc/sdk/service/cloudstorage/HtcCloudException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isNeedRefreshCloudFileListAtDuring(Ljava/lang/String;)Z
    .locals 10
    .parameter "cloudFolderPath"

    .prologue
    const-wide/16 v8, -0x1

    .line 462
    const/4 v5, 0x1

    .line 463
    .local v5, result:Z
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->loadCloudFileListTimePreferences(Ljava/lang/String;)J

    move-result-wide v0

    .line 464
    .local v0, cloudFolderListTime:J
    cmp-long v6, v0, v8

    if-nez v6, :cond_0

    .line 465
    const/4 v5, 0x1

    .line 483
    :goto_0
    return v5

    .line 467
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v0

    .line 468
    .local v2, during:J
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-gez v6, :cond_1

    .line 469
    mul-long/2addr v2, v8

    .line 471
    :cond_1
    const-wide/32 v6, 0x668a0

    cmp-long v6, v2, v6

    if-gtz v6, :cond_2

    .line 472
    const/4 v5, 0x0

    goto :goto_0

    .line 477
    :cond_2
    iget-object v6, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->this$0:Lcom/htc/app/FilePickerCloudHelper;

    #getter for: Lcom/htc/app/FilePickerCloudHelper;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/htc/app/FilePickerCloudHelper;->access$000(Lcom/htc/app/FilePickerCloudHelper;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/app/FilePickerUtil;->checkNetworkConnected(Landroid/content/Context;)Z

    move-result v4

    .line 478
    .local v4, isNetworkConnected:Z
    move v5, v4

    goto :goto_0
.end method

.method private isNeedRefreshTodayCloudFileList(Ljava/lang/String;)Z
    .locals 7
    .parameter "cloudFolderPath"

    .prologue
    .line 445
    iget-boolean v4, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->mIsRefresh:Z

    .line 446
    .local v4, result:Z
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->loadCloudFileListTimePreferences(Ljava/lang/String;)J

    move-result-wide v0

    .line 447
    .local v0, cloudFolderListTime:J
    const-wide/16 v5, -0x1

    cmp-long v5, v0, v5

    if-nez v5, :cond_0

    .line 448
    const/4 v4, 0x1

    .line 458
    :goto_0
    return v4

    .line 450
    :cond_0
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 451
    .local v2, date:Ljava/util/Date;
    invoke-static {v2}, Lcom/htc/app/FilePickerUtil;->isToday(Ljava/util/Date;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 452
    .local v3, isToday:Ljava/lang/Boolean;
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 453
    const/4 v4, 0x0

    goto :goto_0

    .line 455
    :cond_1
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private listFiles(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .parameter "cloudFolderPath"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 736
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 737
    .local v2, resultItems:Ljava/util/List;,"Ljava/util/List<Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;>;"
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->isNeedRefreshTodayCloudFileList(Ljava/lang/String;)Z

    move-result v1

    .line 739
    .local v1, isNeedRefresh:Z
    :try_start_0
    iget-object v3, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->mCloudStorage:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage;

    if-eqz v3, :cond_2

    .line 742
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->isStorageInitialized()Z

    move-result v3

    if-nez v3, :cond_0

    .line 743
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->init()V

    .line 744
    :cond_0
    iget-object v3, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->mCloudStorage:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage;

    invoke-virtual {v3, p1, v1}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage;->listFiles(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v2

    .line 745
    if-nez v1, :cond_1

    if-nez v2, :cond_1

    .line 746
    const/4 v1, 0x1

    .line 747
    iget-object v3, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->mCloudStorage:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage;

    invoke-virtual {v3, p1, v1}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage;->listFiles(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v2

    .line 749
    :cond_1
    if-eqz v1, :cond_2

    .line 750
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->saveCloudFileListTimePreferences(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/htc/sdk/service/cloudstorage/HtcCloudException; {:try_start_0 .. :try_end_0} :catch_0

    .line 775
    :cond_2
    :goto_0
    return-object v2

    .line 763
    :catch_0
    move-exception v0

    .line 764
    .local v0, e:Lcom/htc/sdk/service/cloudstorage/HtcCloudException;
    iget-object v3, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->this$0:Lcom/htc/app/FilePickerCloudHelper;

    const/4 v4, 0x1

    #calls: Lcom/htc/app/FilePickerCloudHelper;->errorHandle(Lcom/htc/sdk/service/cloudstorage/HtcCloudException;I)V
    invoke-static {v3, v0, v4}, Lcom/htc/app/FilePickerCloudHelper;->access$100(Lcom/htc/app/FilePickerCloudHelper;Lcom/htc/sdk/service/cloudstorage/HtcCloudException;I)V

    .line 766
    iget-object v3, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cloudStorage.listFiles()->ServiceName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->getServiceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    iget-object v3, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DataSourceType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->mStorageDataSourceType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    iget-object v3, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isRefresh:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    iget-object v3, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "e.getErrorCode():"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/htc/sdk/service/cloudstorage/HtcCloudException;->getErrorCode()Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    iget-object v3, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "e.getMessage():"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/htc/sdk/service/cloudstorage/HtcCloudException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private loadCloudFileListTimePreferences(Ljava/lang/String;)J
    .locals 6
    .parameter "cloudPath"

    .prologue
    const-wide/16 v0, -0x1

    .line 436
    iget-object v3, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->this$0:Lcom/htc/app/FilePickerCloudHelper;

    #getter for: Lcom/htc/app/FilePickerCloudHelper;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/htc/app/FilePickerCloudHelper;->access$000(Lcom/htc/app/FilePickerCloudHelper;)Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_0

    .line 441
    :goto_0
    return-wide v0

    .line 438
    :cond_0
    iget-object v3, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->this$0:Lcom/htc/app/FilePickerCloudHelper;

    #getter for: Lcom/htc/app/FilePickerCloudHelper;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/htc/app/FilePickerCloudHelper;->access$000(Lcom/htc/app/FilePickerCloudHelper;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->CLOUD_FILE_PICKER_TIME_PREFERENCE:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 440
    .local v2, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v2, p1, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 441
    .local v0, cloudFolderListTime:J
    goto :goto_0
.end method

.method private saveCloudFileListTimePreferences(Ljava/lang/String;)V
    .locals 7
    .parameter "cloudPath"

    .prologue
    .line 400
    iget-object v4, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->this$0:Lcom/htc/app/FilePickerCloudHelper;

    #getter for: Lcom/htc/app/FilePickerCloudHelper;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/app/FilePickerCloudHelper;->access$000(Lcom/htc/app/FilePickerCloudHelper;)Landroid/content/Context;

    move-result-object v4

    if-nez v4, :cond_0

    .line 412
    :goto_0
    return-void

    .line 402
    :cond_0
    iget-object v4, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->this$0:Lcom/htc/app/FilePickerCloudHelper;

    #getter for: Lcom/htc/app/FilePickerCloudHelper;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/app/FilePickerCloudHelper;->access$000(Lcom/htc/app/FilePickerCloudHelper;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->CLOUD_FILE_PICKER_TIME_PREFERENCE:Ljava/lang/String;

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 404
    .local v2, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 405
    .local v3, sharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 406
    .local v0, currentTime:Ljava/lang/Long;
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 407
    .local v1, isRoot:Z
    if-eqz v1, :cond_1

    .line 408
    invoke-direct {p0}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->clearAllCloudFileListTimePreferences()V

    .line 410
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v3, p1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 411
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method


# virtual methods
.method checkToRemovePrefixFolderString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "path"

    .prologue
    .line 627
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->getItemTextPath()Ljava/lang/String;

    move-result-object v2

    .line 628
    .local v2, prefixString:Ljava/lang/String;
    if-eqz p1, :cond_0

    const-string v3, ""

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 629
    :cond_0
    iget-object v3, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->this$0:Lcom/htc/app/FilePickerCloudHelper;

    #getter for: Lcom/htc/app/FilePickerCloudHelper;->mCloudRootPath:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/app/FilePickerCloudHelper;->access$800(Lcom/htc/app/FilePickerCloudHelper;)Ljava/lang/String;

    move-result-object p1

    .line 640
    :cond_1
    :goto_0
    return-object p1

    .line 631
    :cond_2
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 632
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 633
    .local v0, indexOf:I
    if-ltz v0, :cond_1

    .line 634
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 635
    .local v1, len:I
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public getAccountFolderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->mAccountFolderName:Ljava/lang/String;

    return-object v0
.end method

.method public getAccountId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->mAccountId:Ljava/lang/String;

    return-object v0
.end method

.method public getCloudShareLink(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "cloudPath"

    .prologue
    .line 848
    move-object v1, p1

    .line 849
    .local v1, result:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->isStorageInitialized()Z

    move-result v2

    if-nez v2, :cond_0

    .line 850
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->init()V

    .line 851
    :cond_0
    iget-object v2, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->mCloudStorage:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage;

    if-eqz v2, :cond_1

    .line 853
    :try_start_0
    iget-object v2, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->mCloudStorage:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage;

    invoke-virtual {v2, p1}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage;->publishURI(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/htc/sdk/service/cloudstorage/HtcCloudException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 865
    :cond_1
    :goto_0
    return-object v1

    .line 854
    :catch_0
    move-exception v0

    .line 856
    .local v0, e:Lcom/htc/sdk/service/cloudstorage/HtcCloudException;
    iget-object v2, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->this$0:Lcom/htc/app/FilePickerCloudHelper;

    const/4 v3, 0x1

    #calls: Lcom/htc/app/FilePickerCloudHelper;->errorHandle(Lcom/htc/sdk/service/cloudstorage/HtcCloudException;I)V
    invoke-static {v2, v0, v3}, Lcom/htc/app/FilePickerCloudHelper;->access$100(Lcom/htc/app/FilePickerCloudHelper;Lcom/htc/sdk/service/cloudstorage/HtcCloudException;I)V

    .line 858
    iget-object v2, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cloudStorage.publishURI()->ServiceName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->getServiceTextName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    iget-object v2, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "e.getErrorCode():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/htc/sdk/service/cloudstorage/HtcCloudException;->getErrorCode()Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    iget-object v2, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "e.getMessage():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/htc/sdk/service/cloudstorage/HtcCloudException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getCloudStorage()Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage;
    .locals 1

    .prologue
    .line 592
    iget-object v0, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->mCloudStorage:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage;

    return-object v0
.end method

.method public getCloudStorageFileItem(Ljava/lang/String;)Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;
    .locals 6
    .parameter "cloudFolderPath"

    .prologue
    .line 692
    const/4 v2, 0x0

    .line 693
    .local v2, resultItem:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->isNeedRefreshTodayCloudFileList(Ljava/lang/String;)Z

    move-result v1

    .line 695
    .local v1, isNeedRefresh:Z
    :try_start_0
    iget-object v3, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->mCloudStorage:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage;

    if-eqz v3, :cond_3

    .line 698
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->isStorageInitialized()Z

    move-result v3

    if-nez v3, :cond_0

    .line 699
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->init()V

    .line 700
    :cond_0
    iget-object v3, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->mCloudStorage:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage;

    invoke-virtual {v3, p1, v1}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage;->getAbsoluteFile(Ljava/lang/String;Z)Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;

    move-result-object v2

    .line 701
    if-nez v1, :cond_1

    if-nez v2, :cond_1

    .line 702
    const/4 v1, 0x1

    .line 703
    iget-object v3, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->mCloudStorage:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage;

    invoke-virtual {v3, p1, v1}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage;->getAbsoluteFile(Ljava/lang/String;Z)Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;

    move-result-object v2

    .line 705
    :cond_1
    if-eqz v1, :cond_2

    .line 706
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->saveCloudFileListTimePreferences(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/htc/sdk/service/cloudstorage/HtcCloudException; {:try_start_0 .. :try_end_0} :catch_0

    .line 708
    :cond_2
    if-nez v2, :cond_3

    .line 732
    :cond_3
    :goto_0
    return-object v2

    .line 720
    :catch_0
    move-exception v0

    .line 722
    .local v0, e:Lcom/htc/sdk/service/cloudstorage/HtcCloudException;
    iget-object v3, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->this$0:Lcom/htc/app/FilePickerCloudHelper;

    const/4 v4, 0x1

    #calls: Lcom/htc/app/FilePickerCloudHelper;->errorHandle(Lcom/htc/sdk/service/cloudstorage/HtcCloudException;I)V
    invoke-static {v3, v0, v4}, Lcom/htc/app/FilePickerCloudHelper;->access$100(Lcom/htc/app/FilePickerCloudHelper;Lcom/htc/sdk/service/cloudstorage/HtcCloudException;I)V

    .line 724
    iget-object v3, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCloudStorage.getAbsoluteFile()->ServiceName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->getServiceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    iget-object v3, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isRefresh:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    iget-object v3, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "e.getErrorCode():"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/htc/sdk/service/cloudstorage/HtcCloudException;->getErrorCode()Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    iget-object v3, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "e.getMessage():"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/htc/sdk/service/cloudstorage/HtcCloudException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getDataSourceType()I
    .locals 1

    .prologue
    .line 503
    iget v0, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->mStorageDataSourceType:I

    return v0
.end method

.method public getItemInfoFolderInstance(Ljava/lang/String;)Lcom/htc/app/ItemInfo;
    .locals 4
    .parameter "path"

    .prologue
    .line 662
    invoke-virtual {p0, p1}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->getCloudStorageFileItem(Ljava/lang/String;)Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;

    move-result-object v1

    .line 663
    .local v1, cloudStorageFileItem:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;
    iget-object v2, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->this$0:Lcom/htc/app/FilePickerCloudHelper;

    iget v3, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->mStorageDataSourceType:I

    #calls: Lcom/htc/app/FilePickerCloudHelper;->changeToItemInfo(ILcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;)Lcom/htc/app/ItemInfo;
    invoke-static {v2, v3, v1}, Lcom/htc/app/FilePickerCloudHelper;->access$900(Lcom/htc/app/FilePickerCloudHelper;ILcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;)Lcom/htc/app/ItemInfo;

    move-result-object v0

    .line 667
    .local v0, cloudItemInfo:Lcom/htc/app/ItemInfo;
    return-object v0
.end method

.method public getItemTextPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 557
    const-string v0, ""

    .line 558
    .local v0, result:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->getServiceTextName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, ""

    invoke-virtual {p0}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->getServiceTextName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 559
    iget-object v1, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->mAccountFolderName:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, ""

    iget-object v2, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->mAccountFolderName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 560
    :cond_0
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->getServiceTextName()Ljava/lang/String;

    move-result-object v0

    .line 565
    :cond_1
    :goto_0
    return-object v0

    .line 562
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->getServiceTextName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->mAccountFolderName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->mServiceName:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceTextName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 545
    iget-object v0, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->mServiceTextName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 546
    iget-object v0, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->this$0:Lcom/htc/app/FilePickerCloudHelper;

    #getter for: Lcom/htc/app/FilePickerCloudHelper;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/app/FilePickerCloudHelper;->access$000(Lcom/htc/app/FilePickerCloudHelper;)Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->mStorageDataSourceType:I

    invoke-static {v1}, Lcom/htc/app/FilePickerUtil;->getDataSourceTypeText(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->mServiceTextName:Ljava/lang/String;

    .line 548
    :cond_0
    iget-object v0, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->mServiceTextName:Ljava/lang/String;

    return-object v0
.end method

.method public getStorageFolderItemInstance()Lcom/htc/app/FolderItemInfo;
    .locals 9

    .prologue
    .line 676
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->getServiceTextName()Ljava/lang/String;

    move-result-object v2

    .line 677
    .local v2, itemName:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->mAccountId:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    iget-object v1, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->mAccountId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 678
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  ( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->mAccountId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 679
    :cond_0
    const-wide/16 v0, -0x1

    iget-object v3, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->this$0:Lcom/htc/app/FilePickerCloudHelper;

    #getter for: Lcom/htc/app/FilePickerCloudHelper;->mCloudRootPath:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/app/FilePickerCloudHelper;->access$800(Lcom/htc/app/FilePickerCloudHelper;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget v6, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->mStorageDataSourceType:I

    const/4 v7, 0x1

    invoke-static/range {v0 .. v7}, Lcom/htc/app/FolderItemInfo;->getCloudInstance(JLjava/lang/String;Ljava/lang/String;JIZ)Lcom/htc/app/FolderItemInfo;

    move-result-object v8

    .line 682
    .local v8, cloudFolderItemInfo:Lcom/htc/app/FolderItemInfo;
    return-object v8
.end method

.method init()V
    .locals 3

    .prologue
    .line 516
    iget-object v0, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->mCloudStorage:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage;

    if-eqz v0, :cond_0

    .line 517
    iget-object v0, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->this$0:Lcom/htc/app/FilePickerCloudHelper;

    #getter for: Lcom/htc/app/FilePickerCloudHelper;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/app/FilePickerCloudHelper;->access$000(Lcom/htc/app/FilePickerCloudHelper;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 518
    iget-object v0, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->mAccountId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->mCloudStorage:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage;

    iget-object v1, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->this$0:Lcom/htc/app/FilePickerCloudHelper;

    #getter for: Lcom/htc/app/FilePickerCloudHelper;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/app/FilePickerCloudHelper;->access$000(Lcom/htc/app/FilePickerCloudHelper;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->mAccountId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage;->init(Landroid/content/Context;Ljava/lang/String;)Z

    .line 527
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->mIsStorageInitialized:Z

    .line 531
    :cond_0
    return-void
.end method

.method isCloudPath(Ljava/lang/String;)Z
    .locals 3
    .parameter "path"

    .prologue
    .line 605
    const/4 v1, 0x0

    .line 606
    .local v1, isCloudPath:Z
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->getItemTextPath()Ljava/lang/String;

    move-result-object v0

    .line 607
    .local v0, folderPath:Ljava/lang/String;
    if-eqz p1, :cond_0

    const-string v2, ""

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 608
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 609
    const/4 v1, 0x1

    .line 612
    :cond_0
    return v1
.end method

.method isCloudRoot(Ljava/lang/String;)Z
    .locals 4
    .parameter "path"

    .prologue
    .line 616
    const/4 v1, 0x0

    .line 617
    .local v1, isRoot:Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->getItemTextPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->this$0:Lcom/htc/app/FilePickerCloudHelper;

    #getter for: Lcom/htc/app/FilePickerCloudHelper;->mCloudRootPath:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/app/FilePickerCloudHelper;->access$800(Lcom/htc/app/FilePickerCloudHelper;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 618
    .local v0, folderPath:Ljava/lang/String;
    if-eqz p1, :cond_0

    const-string v2, ""

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 619
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 620
    const/4 v1, 0x1

    .line 623
    :cond_0
    return v1
.end method

.method public isRefresh()Z
    .locals 1

    .prologue
    .line 827
    iget-boolean v0, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->mIsRefresh:Z

    return v0
.end method

.method isStorageInitialized()Z
    .locals 1

    .prologue
    .line 512
    iget-boolean v0, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->mIsStorageInitialized:Z

    return v0
.end method

.method release()V
    .locals 3

    .prologue
    .line 945
    iget-object v1, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->mCloudStorage:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage;

    if-eqz v1, :cond_0

    .line 946
    iget-object v1, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->this$0:Lcom/htc/app/FilePickerCloudHelper;

    iget v2, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->mStorageDataSourceType:I

    #calls: Lcom/htc/app/FilePickerCloudHelper;->getCloudServiceWrapper(I)Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;
    invoke-static {v1, v2}, Lcom/htc/app/FilePickerCloudHelper;->access$1400(Lcom/htc/app/FilePickerCloudHelper;I)Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;

    move-result-object v0

    .line 947
    .local v0, cloudServiceWrapper:Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;
    invoke-virtual {v0, p0}, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->removeCloudStorageWrapper(Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;)V

    .line 948
    iget-object v1, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->mCloudStorage:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage;

    invoke-virtual {v1}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage;->release()V

    .line 949
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->mCloudStorage:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage;

    .line 952
    .end local v0           #cloudServiceWrapper:Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;
    :cond_0
    return-void
.end method

.method public release(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 942
    return-void
.end method

.method requestDownloadFile(IJLjava/lang/String;J)V
    .locals 9
    .parameter "dataSourceType"
    .parameter "cloudId"
    .parameter "cloudFilePath"
    .parameter "fileSize"

    .prologue
    .line 872
    if-nez p4, :cond_0

    .line 933
    :goto_0
    return-void

    .line 874
    :cond_0
    new-instance v0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper$1;

    move-object v1, p0

    move-wide v2, p2

    move-object v4, p4

    move v5, p1

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper$1;-><init>(Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;JLjava/lang/String;IJ)V

    iput-object v0, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->currentRunable:Ljava/lang/Runnable;

    .line 930
    new-instance v8, Ljava/lang/Thread;

    iget-object v0, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->currentRunable:Ljava/lang/Runnable;

    invoke-direct {v8, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 931
    .local v8, getFileThread:Ljava/lang/Thread;
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 932
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public setAccountFolderName(Ljava/lang/String;)V
    .locals 0
    .parameter "accountFolderName"

    .prologue
    .line 583
    iput-object p1, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->mAccountFolderName:Ljava/lang/String;

    .line 584
    return-void
.end method

.method public setCloudStorage(Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage;)V
    .locals 0
    .parameter "cloudStorage"

    .prologue
    .line 601
    iput-object p1, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->mCloudStorage:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage;

    .line 602
    return-void
.end method

.method public setRefresh(Z)V
    .locals 0
    .parameter "isRefresh"

    .prologue
    .line 836
    iput-boolean p1, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->mIsRefresh:Z

    .line 837
    if-eqz p1, :cond_0

    .line 838
    invoke-direct {p0}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->clearAllCloudFileListTimePreferences()V

    .line 840
    :cond_0
    return-void
.end method

.method setServiceName(Ljava/lang/String;)V
    .locals 2
    .parameter "serviceName"

    .prologue
    .line 540
    iput-object p1, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->mServiceName:Ljava/lang/String;

    .line 541
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->getServiceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->getAccountId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->CLOUD_FILE_PICKER_TIME_PREFERENCE:Ljava/lang/String;

    .line 542
    return-void
.end method
