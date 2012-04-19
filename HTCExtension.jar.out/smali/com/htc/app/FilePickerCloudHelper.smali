.class Lcom/htc/app/FilePickerCloudHelper;
.super Ljava/lang/Object;
.source "FilePickerCloudHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/app/FilePickerCloudHelper$DownloadOnProgressListener;,
        Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;,
        Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;
    }
.end annotation


# static fields
.field private static final CloudFileListTimeExpirationDuring:J = 0x668a0L

.field private static final DEBUG:Z = false

.field static final IsSupportMultipleAccountInFilePicker:Z = false

.field private static final IsSupportOffLineFileList:Z = false

.field private static final TAG:Ljava/lang/String; = "FilePickerCloudHelper"


# instance fields
.field private final DOWNLOAD_FAIL_ERROR:I

.field private final MORE_EXPAND_FAIL_ERROR:I

.field private initThread:Ljava/lang/Thread;

.field private mCloudHelperInitialized:Z

.field private mCloudRootPath:Ljava/lang/String;

.field private mCloudServiceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mCloudServiceListUpdateToken:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

.field private mIsCloudHelperEnabled:Z

.field private mServiceNames:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLcom/htc/app/FilePickerUtil;)V
    .locals 2
    .parameter "context"
    .parameter "isCloudFunctionEnabled"
    .parameter "filePickerUtil"

    .prologue
    const/4 v1, 0x0

    .line 1203
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/app/FilePickerCloudHelper;->mCloudServiceListUpdateToken:Ljava/lang/Object;

    .line 40
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/htc/app/FilePickerCloudHelper;->mCloudServiceList:Ljava/util/List;

    .line 41
    iput v1, p0, Lcom/htc/app/FilePickerCloudHelper;->DOWNLOAD_FAIL_ERROR:I

    .line 42
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/app/FilePickerCloudHelper;->MORE_EXPAND_FAIL_ERROR:I

    .line 1088
    iput-boolean v1, p0, Lcom/htc/app/FilePickerCloudHelper;->mIsCloudHelperEnabled:Z

    .line 1108
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/app/FilePickerCloudHelper;->mCloudRootPath:Ljava/lang/String;

    .line 1217
    iput-boolean v1, p0, Lcom/htc/app/FilePickerCloudHelper;->mCloudHelperInitialized:Z

    .line 1292
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/app/FilePickerCloudHelper;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    .line 1204
    iput-object p1, p0, Lcom/htc/app/FilePickerCloudHelper;->mContext:Landroid/content/Context;

    .line 1205
    iput-object p3, p0, Lcom/htc/app/FilePickerCloudHelper;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    .line 1207
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCloudHelper;->listServices()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/app/FilePickerCloudHelper;->mServiceNames:[Ljava/lang/String;

    .line 1208
    iget-object v0, p0, Lcom/htc/app/FilePickerCloudHelper;->mServiceNames:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/app/FilePickerCloudHelper;->mServiceNames:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_1

    .line 1209
    :cond_0
    invoke-virtual {p0, v1}, Lcom/htc/app/FilePickerCloudHelper;->setCloudHelperEnabled(Z)V

    .line 1215
    :goto_0
    return-void

    .line 1211
    :cond_1
    invoke-virtual {p0, p2}, Lcom/htc/app/FilePickerCloudHelper;->setCloudHelperEnabled(Z)V

    .line 1212
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCloudHelper;->init()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/htc/app/FilePickerCloudHelper;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/htc/app/FilePickerCloudHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/app/FilePickerCloudHelper;Lcom/htc/sdk/service/cloudstorage/HtcCloudException;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/htc/app/FilePickerCloudHelper;->errorHandle(Lcom/htc/sdk/service/cloudstorage/HtcCloudException;I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/htc/app/FilePickerCloudHelper;I)Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerCloudHelper;->getCloudServiceWrapper(I)Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/app/FilePickerCloudHelper;ILjava/lang/String;Ljava/lang/String;)Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/app/FilePickerCloudHelper;->newCloudStorageWrapperInstance(ILjava/lang/String;Ljava/lang/String;)Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/app/FilePickerCloudHelper;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/htc/app/FilePickerCloudHelper;->mCloudServiceListUpdateToken:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/app/FilePickerCloudHelper;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/htc/app/FilePickerCloudHelper;->mCloudServiceList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/app/FilePickerCloudHelper;)Lcom/htc/app/FilePickerUtil;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/htc/app/FilePickerCloudHelper;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/app/FilePickerCloudHelper;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/htc/app/FilePickerCloudHelper;->mCloudRootPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/app/FilePickerCloudHelper;ILcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;)Lcom/htc/app/ItemInfo;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/htc/app/FilePickerCloudHelper;->changeToItemInfo(ILcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;)Lcom/htc/app/ItemInfo;

    move-result-object v0

    return-object v0
.end method

.method private changeToFolderItemInfo(ILcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;)Lcom/htc/app/FolderItemInfo;
    .locals 17
    .parameter "dataSourceType"
    .parameter "cloudStorageFileItem"

    .prologue
    .line 957
    const/4 v12, 0x0

    .line 958
    .local v12, folderItemInfo:Lcom/htc/app/FolderItemInfo;
    if-eqz p2, :cond_0

    .line 959
    invoke-virtual/range {p2 .. p2}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;->getId()I

    move-result v7

    int-to-long v1, v7

    .line 960
    .local v1, cloudId:J
    invoke-virtual/range {p2 .. p2}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;->getFileName()Ljava/lang/String;

    move-result-object v3

    .line 961
    .local v3, fileName:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;->getCloudPath()Ljava/lang/String;

    move-result-object v4

    .line 963
    .local v4, cloudPath:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;->getCloudLastModified()J

    move-result-wide v5

    .line 964
    .local v5, cloudLastModified:J
    invoke-virtual/range {p2 .. p2}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;->getLocalLastModified()J

    move-result-wide v13

    .line 965
    .local v13, localLastModified:J
    invoke-virtual/range {p2 .. p2}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;->isDir()Z

    move-result v8

    .local v8, isFolder:Z
    move/from16 v7, p1

    .line 967
    invoke-static/range {v1 .. v8}, Lcom/htc/app/FolderItemInfo;->getCloudInstance(JLjava/lang/String;Ljava/lang/String;JIZ)Lcom/htc/app/FolderItemInfo;

    move-result-object v12

    .line 970
    invoke-virtual/range {p2 .. p2}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;->size()I

    move-result v7

    int-to-long v10, v7

    .line 971
    .local v10, fileSize:J
    move/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/htc/app/FolderItemInfo;->setItemDataSourceType(I)V

    .line 972
    invoke-virtual {v12, v10, v11}, Lcom/htc/app/FolderItemInfo;->setFileSize(J)V

    .line 974
    invoke-virtual/range {p2 .. p2}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;->getLocalPath()Ljava/lang/String;

    move-result-object v15

    .line 975
    .local v15, localPath:Ljava/lang/String;
    invoke-virtual {v12, v15}, Lcom/htc/app/FolderItemInfo;->setLocalPath(Ljava/lang/String;)V

    .line 976
    invoke-virtual/range {p2 .. p2}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;->getSyncState()Z

    move-result v16

    .line 977
    .local v16, syncState:Z
    invoke-virtual/range {p2 .. p2}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;->account()Ljava/lang/String;

    move-result-object v9

    .line 978
    .local v9, accountId:Ljava/lang/String;
    invoke-virtual {v12, v9}, Lcom/htc/app/FolderItemInfo;->setAccountId(Ljava/lang/String;)V

    .line 983
    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/htc/app/FolderItemInfo;->setSyncState(Z)V

    .line 985
    invoke-virtual {v12, v5, v6}, Lcom/htc/app/FolderItemInfo;->setCouldLastModified(J)V

    .line 986
    invoke-virtual {v12, v13, v14}, Lcom/htc/app/FolderItemInfo;->setLocalLastModified(J)V

    .line 988
    .end local v1           #cloudId:J
    .end local v3           #fileName:Ljava/lang/String;
    .end local v4           #cloudPath:Ljava/lang/String;
    .end local v5           #cloudLastModified:J
    .end local v8           #isFolder:Z
    .end local v9           #accountId:Ljava/lang/String;
    .end local v10           #fileSize:J
    .end local v13           #localLastModified:J
    .end local v15           #localPath:Ljava/lang/String;
    .end local v16           #syncState:Z
    :cond_0
    return-object v12
.end method

.method private changeToItemInfo(ILcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;)Lcom/htc/app/ItemInfo;
    .locals 16
    .parameter "dataSourceType"
    .parameter "cloudStorageFileItem"

    .prologue
    .line 993
    const/4 v11, 0x0

    .line 994
    .local v11, itemInfo:Lcom/htc/app/ItemInfo;
    if-eqz p2, :cond_0

    .line 995
    invoke-virtual/range {p2 .. p2}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;->getId()I

    move-result v6

    int-to-long v0, v6

    .line 996
    .local v0, cloudId:J
    invoke-virtual/range {p2 .. p2}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;->getCloudPath()Ljava/lang/String;

    move-result-object v3

    .line 997
    .local v3, cloudPath:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;->getFileName()Ljava/lang/String;

    move-result-object v2

    .line 998
    .local v2, fileName:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;->getCloudLastModified()J

    move-result-wide v4

    .line 999
    .local v4, cloudLastModified:J
    invoke-virtual/range {p2 .. p2}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;->getLocalLastModified()J

    move-result-wide v12

    .line 1000
    .local v12, localLastModified:J
    invoke-virtual/range {p2 .. p2}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;->isDir()Z

    move-result v7

    .local v7, isFolder:Z
    move/from16 v6, p1

    .line 1002
    invoke-static/range {v0 .. v7}, Lcom/htc/app/ItemInfo;->getCloudInstance(JLjava/lang/String;Ljava/lang/String;JIZ)Lcom/htc/app/ItemInfo;

    move-result-object v11

    .line 1005
    invoke-virtual/range {p2 .. p2}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;->size()I

    move-result v6

    int-to-long v9, v6

    .line 1006
    .local v9, fileSize:J
    invoke-virtual {v11, v9, v10}, Lcom/htc/app/ItemInfo;->setFileSize(J)V

    .line 1008
    invoke-virtual/range {p2 .. p2}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;->getLocalPath()Ljava/lang/String;

    move-result-object v14

    .line 1009
    .local v14, localPath:Ljava/lang/String;
    invoke-virtual {v11, v14}, Lcom/htc/app/ItemInfo;->setLocalPath(Ljava/lang/String;)V

    .line 1011
    invoke-virtual/range {p2 .. p2}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;->getSyncState()Z

    move-result v15

    .line 1012
    .local v15, syncState:Z
    invoke-virtual/range {p2 .. p2}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;->account()Ljava/lang/String;

    move-result-object v8

    .line 1013
    .local v8, accountId:Ljava/lang/String;
    invoke-virtual {v11, v8}, Lcom/htc/app/ItemInfo;->setAccountId(Ljava/lang/String;)V

    .line 1017
    invoke-virtual {v11, v15}, Lcom/htc/app/ItemInfo;->setSyncState(Z)V

    .line 1019
    invoke-virtual {v11, v4, v5}, Lcom/htc/app/ItemInfo;->setCouldLastModified(J)V

    .line 1020
    invoke-virtual {v11, v12, v13}, Lcom/htc/app/ItemInfo;->setLocalLastModified(J)V

    .line 1022
    .end local v0           #cloudId:J
    .end local v2           #fileName:Ljava/lang/String;
    .end local v3           #cloudPath:Ljava/lang/String;
    .end local v4           #cloudLastModified:J
    .end local v7           #isFolder:Z
    .end local v8           #accountId:Ljava/lang/String;
    .end local v9           #fileSize:J
    .end local v12           #localLastModified:J
    .end local v14           #localPath:Ljava/lang/String;
    .end local v15           #syncState:Z
    :cond_0
    return-object v11
.end method

.method private checkToRemovePrefixFolderString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "cloudDataSourceType"
    .parameter "accountId"
    .parameter "path"

    .prologue
    .line 1373
    invoke-direct {p0, p1, p2}, Lcom/htc/app/FilePickerCloudHelper;->getCloudStorageWrapper(ILjava/lang/String;)Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;

    move-result-object v0

    .line 1375
    .local v0, cloudStorageWrapper:Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    if-eqz v0, :cond_0

    .line 1376
    invoke-virtual {v0, p3}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->checkToRemovePrefixFolderString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1378
    :cond_0
    return-object p3
.end method

.method private checkToRemovePrefixLocalTempFolderString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "path"

    .prologue
    .line 1563
    iget-object v2, p0, Lcom/htc/app/FilePickerCloudHelper;->mCloudRootPath:Ljava/lang/String;

    .line 1564
    .local v2, prefixString:Ljava/lang/String;
    if-eqz p1, :cond_0

    const-string v3, ""

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1565
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1566
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1567
    .local v0, indexOf:I
    if-ltz v0, :cond_0

    .line 1568
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1569
    .local v1, len:I
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1574
    .end local v0           #indexOf:I
    .end local v1           #len:I
    :cond_0
    return-object p1
.end method

.method private errorHandle(Lcom/htc/sdk/service/cloudstorage/HtcCloudException;I)V
    .locals 7
    .parameter "e"
    .parameter "errorType"

    .prologue
    const/4 v6, -0x8

    const/16 v5, -0x9

    const/16 v4, -0xa

    const/16 v2, -0xb

    const/16 v3, 0xd

    .line 1921
    invoke-virtual {p1}, Lcom/htc/sdk/service/cloudstorage/HtcCloudException;->getErrorCode()Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;

    move-result-object v0

    .line 1923
    .local v0, c:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;
    if-nez p2, :cond_8

    .line 1924
    sget-object v1, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;->UnLink:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;

    invoke-virtual {v0, v1}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1925
    iget-object v1, p0, Lcom/htc/app/FilePickerCloudHelper;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/htc/app/FilePickerUtil;->setCloudExceptionType(I)V

    .line 1939
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/htc/app/FilePickerCloudHelper;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/htc/app/FilePickerUtil;->notifyToDoTaskEvent(I)V

    .line 1966
    :cond_1
    :goto_1
    return-void

    .line 1926
    :cond_2
    sget-object v1, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;->RequestFailed:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;

    invoke-virtual {v0, v1}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1927
    iget-object v1, p0, Lcom/htc/app/FilePickerCloudHelper;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    const/4 v2, -0x5

    invoke-virtual {v1, v2}, Lcom/htc/app/FilePickerUtil;->setCloudExceptionType(I)V

    goto :goto_0

    .line 1928
    :cond_3
    sget-object v1, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;->FileNotFound:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;

    invoke-virtual {v0, v1}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1929
    iget-object v1, p0, Lcom/htc/app/FilePickerCloudHelper;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    const/4 v2, -0x7

    invoke-virtual {v1, v2}, Lcom/htc/app/FilePickerUtil;->setCloudExceptionType(I)V

    goto :goto_0

    .line 1930
    :cond_4
    sget-object v1, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;->DiskFull:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;

    invoke-virtual {v0, v1}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1931
    iget-object v1, p0, Lcom/htc/app/FilePickerCloudHelper;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v1, v6}, Lcom/htc/app/FilePickerUtil;->setCloudExceptionType(I)V

    goto :goto_0

    .line 1932
    :cond_5
    sget-object v1, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;->MediaUnMounted:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;

    invoke-virtual {v0, v1}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1933
    iget-object v1, p0, Lcom/htc/app/FilePickerCloudHelper;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v1, v5}, Lcom/htc/app/FilePickerUtil;->setCloudExceptionType(I)V

    goto :goto_0

    .line 1934
    :cond_6
    sget-object v1, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;->OutOfMemory:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;

    invoke-virtual {v0, v1}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1935
    iget-object v1, p0, Lcom/htc/app/FilePickerCloudHelper;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v1, v4}, Lcom/htc/app/FilePickerUtil;->setCloudExceptionType(I)V

    goto :goto_0

    .line 1936
    :cond_7
    sget-object v1, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;->NoNetwork:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;

    invoke-virtual {v0, v1}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1937
    iget-object v1, p0, Lcom/htc/app/FilePickerCloudHelper;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v1, v2}, Lcom/htc/app/FilePickerUtil;->setCloudExceptionType(I)V

    goto :goto_0

    .line 1940
    :cond_8
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 1941
    sget-object v1, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;->UnLink:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;

    invoke-virtual {v0, v1}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1942
    iget-object v1, p0, Lcom/htc/app/FilePickerCloudHelper;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/htc/app/FilePickerUtil;->setCloudExceptionType(I)V

    .line 1943
    iget-object v1, p0, Lcom/htc/app/FilePickerCloudHelper;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v1, v3}, Lcom/htc/app/FilePickerUtil;->notifyToDoTaskEvent(I)V

    goto :goto_1

    .line 1944
    :cond_9
    sget-object v1, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;->RequestFailed:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;

    invoke-virtual {v0, v1}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1945
    iget-object v1, p0, Lcom/htc/app/FilePickerCloudHelper;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    const/4 v2, -0x5

    invoke-virtual {v1, v2}, Lcom/htc/app/FilePickerUtil;->setCloudExceptionType(I)V

    .line 1946
    iget-object v1, p0, Lcom/htc/app/FilePickerCloudHelper;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v1, v3}, Lcom/htc/app/FilePickerUtil;->notifyToDoTaskEvent(I)V

    goto/16 :goto_1

    .line 1947
    :cond_a
    sget-object v1, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;->FileNotFound:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;

    invoke-virtual {v0, v1}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1948
    iget-object v1, p0, Lcom/htc/app/FilePickerCloudHelper;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    const/4 v2, -0x7

    invoke-virtual {v1, v2}, Lcom/htc/app/FilePickerUtil;->setCloudExceptionType(I)V

    .line 1949
    iget-object v1, p0, Lcom/htc/app/FilePickerCloudHelper;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v1, v3}, Lcom/htc/app/FilePickerUtil;->notifyToDoTaskEvent(I)V

    goto/16 :goto_1

    .line 1950
    :cond_b
    sget-object v1, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;->DiskFull:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;

    invoke-virtual {v0, v1}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1951
    iget-object v1, p0, Lcom/htc/app/FilePickerCloudHelper;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v1, v6}, Lcom/htc/app/FilePickerUtil;->setCloudExceptionType(I)V

    .line 1952
    iget-object v1, p0, Lcom/htc/app/FilePickerCloudHelper;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v1, v3}, Lcom/htc/app/FilePickerUtil;->notifyToDoTaskEvent(I)V

    goto/16 :goto_1

    .line 1953
    :cond_c
    sget-object v1, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;->MediaUnMounted:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;

    invoke-virtual {v0, v1}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1954
    iget-object v1, p0, Lcom/htc/app/FilePickerCloudHelper;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v1, v5}, Lcom/htc/app/FilePickerUtil;->setCloudExceptionType(I)V

    .line 1955
    iget-object v1, p0, Lcom/htc/app/FilePickerCloudHelper;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v1, v3}, Lcom/htc/app/FilePickerUtil;->notifyToDoTaskEvent(I)V

    goto/16 :goto_1

    .line 1956
    :cond_d
    sget-object v1, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;->OutOfMemory:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;

    invoke-virtual {v0, v1}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1957
    iget-object v1, p0, Lcom/htc/app/FilePickerCloudHelper;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v1, v4}, Lcom/htc/app/FilePickerUtil;->setCloudExceptionType(I)V

    .line 1958
    iget-object v1, p0, Lcom/htc/app/FilePickerCloudHelper;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v1, v3}, Lcom/htc/app/FilePickerUtil;->notifyToDoTaskEvent(I)V

    goto/16 :goto_1

    .line 1959
    :cond_e
    sget-object v1, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;->NoNetwork:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;

    invoke-virtual {v0, v1}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1960
    iget-object v1, p0, Lcom/htc/app/FilePickerCloudHelper;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v1, v2}, Lcom/htc/app/FilePickerUtil;->setCloudExceptionType(I)V

    .line 1961
    iget-object v1, p0, Lcom/htc/app/FilePickerCloudHelper;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v1, v3}, Lcom/htc/app/FilePickerUtil;->notifyToDoTaskEvent(I)V

    goto/16 :goto_1

    .line 1963
    :cond_f
    iget-object v1, p0, Lcom/htc/app/FilePickerCloudHelper;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/htc/app/FilePickerUtil;->notifyToDoTaskEvent(I)V

    goto/16 :goto_1
.end method

.method private getCloudServiceWrapper(I)Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;
    .locals 4
    .parameter "cloudDataSourceType"

    .prologue
    .line 1062
    const/4 v2, 0x0

    .line 1063
    .local v2, result:Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;
    iget-object v3, p0, Lcom/htc/app/FilePickerCloudHelper;->mCloudServiceList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;

    .line 1064
    .local v0, cloudServiceWapper:Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;
    invoke-virtual {v0}, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->getServiceType()I

    move-result v3

    if-ne p1, v3, :cond_0

    .line 1065
    move-object v2, v0

    goto :goto_0

    .line 1068
    .end local v0           #cloudServiceWapper:Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;
    :cond_1
    return-object v2
.end method

.method private getCloudStorageWrapper(ILjava/lang/String;)Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    .locals 2
    .parameter "cloudDataSourceType"
    .parameter "accountId"

    .prologue
    .line 1072
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerCloudHelper;->getCloudServiceWrapper(I)Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;

    move-result-object v0

    .line 1073
    .local v0, cloudServiceWapper:Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;
    const/4 v1, 0x0

    .line 1074
    .local v1, result:Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    if-eqz v0, :cond_0

    .line 1075
    invoke-virtual {v0, p2}, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->getCloudStorageWrapper(Ljava/lang/String;)Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;

    move-result-object v1

    .line 1077
    :cond_0
    return-object v1
.end method

.method private getFolderItemInfoFromCloudPath(ILjava/lang/String;Ljava/lang/String;)Lcom/htc/app/FolderItemInfo;
    .locals 2
    .parameter "cloudDataSourceType"
    .parameter "accountId"
    .parameter "cloudPath"

    .prologue
    .line 1611
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/app/FilePickerCloudHelper;->getCloudStorageFileItem(ILjava/lang/String;Ljava/lang/String;)Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;

    move-result-object v0

    .line 1613
    .local v0, cloudStorageFileItem:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;
    const/4 v1, 0x0

    .line 1615
    .local v1, resultItem:Lcom/htc/app/FolderItemInfo;
    if-eqz v0, :cond_0

    .line 1616
    invoke-direct {p0, p1, v0}, Lcom/htc/app/FilePickerCloudHelper;->changeToFolderItemInfo(ILcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;)Lcom/htc/app/FolderItemInfo;

    move-result-object v1

    .line 1618
    :cond_0
    return-object v1
.end method

.method private getItemInfoFromCloudPath(ILjava/lang/String;Ljava/lang/String;)Lcom/htc/app/ItemInfo;
    .locals 2
    .parameter "cloudDataSourceType"
    .parameter "accountId"
    .parameter "cloudPath"

    .prologue
    .line 1600
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/app/FilePickerCloudHelper;->getCloudStorageFileItem(ILjava/lang/String;Ljava/lang/String;)Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;

    move-result-object v0

    .line 1602
    .local v0, cloudStorageFileItem:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;
    const/4 v1, 0x0

    .line 1603
    .local v1, resultItem:Lcom/htc/app/ItemInfo;
    if-eqz v0, :cond_0

    .line 1604
    invoke-direct {p0, p1, v0}, Lcom/htc/app/FilePickerCloudHelper;->changeToItemInfo(ILcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;)Lcom/htc/app/ItemInfo;

    move-result-object v1

    .line 1606
    :cond_0
    return-object v1
.end method

.method static getServiceTypeFromString(Ljava/lang/String;)I
    .locals 3
    .parameter "serviceName"

    .prologue
    .line 1261
    const/4 v0, 0x0

    .line 1262
    .local v0, result:I
    const-string v1, "dropbox"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1263
    const/4 v0, 0x0

    .line 1270
    :goto_0
    return v0

    .line 1264
    :cond_0
    const-string v1, "skydrive"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1265
    const/4 v0, 0x1

    goto :goto_0

    .line 1267
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "The serviceName of HtcCloudService not match. Please check the method listService() from HtcCloudService."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static isCloudFile(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .parameter "context"
    .parameter "localPath"

    .prologue
    .line 1506
    const/4 v0, 0x0

    .line 1507
    .local v0, result:Z
    invoke-static {p0, p1}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->isCloudFile(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 1508
    return v0
.end method

.method private newCloudStorageWrapperInstance(ILjava/lang/String;Ljava/lang/String;)Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    .locals 5
    .parameter "cloudDataSourceType"
    .parameter "accountId"
    .parameter "accountFolderName"

    .prologue
    .line 1275
    const/4 v2, 0x0

    .line 1276
    .local v2, cloudStorageWrapper:Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerCloudHelper;->getCloudServiceWrapper(I)Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;

    move-result-object v0

    .line 1277
    .local v0, cloudServiceWrapper:Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;
    if-eqz v0, :cond_0

    .line 1278
    invoke-virtual {v0}, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->getServiceName()Ljava/lang/String;

    move-result-object v3

    .line 1279
    .local v3, serviceName:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/app/FilePickerCloudHelper;->mContext:Landroid/content/Context;

    invoke-static {v4, v3, p2}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->getInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage;

    move-result-object v1

    .line 1281
    .local v1, cloudStorage:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage;
    if-eqz v1, :cond_0

    .line 1282
    new-instance v2, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;

    .end local v2           #cloudStorageWrapper:Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    invoke-direct {v2, p0, p1, p2, v1}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;-><init>(Lcom/htc/app/FilePickerCloudHelper;ILjava/lang/String;Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage;)V

    .line 1284
    .restart local v2       #cloudStorageWrapper:Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    invoke-virtual {v2, p3}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->setAccountFolderName(Ljava/lang/String;)V

    .line 1285
    invoke-virtual {v2, v3}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->setServiceName(Ljava/lang/String;)V

    .line 1289
    .end local v1           #cloudStorage:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorage;
    .end local v3           #serviceName:Ljava/lang/String;
    :cond_0
    return-object v2
.end method


# virtual methods
.method public close()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 1641
    iget-object v7, p0, Lcom/htc/app/FilePickerCloudHelper;->mCloudServiceList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v2

    .line 1642
    .local v2, cloudServices:[Ljava/lang/Object;
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/Object;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v6, v0, v4

    .local v6, object:Ljava/lang/Object;
    move-object v1, v6

    .line 1643
    check-cast v1, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;

    .line 1645
    .local v1, cloudServiceWrapper:Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;
    invoke-virtual {v1}, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->release()V

    .line 1642
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1648
    .end local v1           #cloudServiceWrapper:Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;
    .end local v6           #object:Ljava/lang/Object;
    :cond_0
    :try_start_0
    iget-object v7, p0, Lcom/htc/app/FilePickerCloudHelper;->initThread:Ljava/lang/Thread;

    if-eqz v7, :cond_1

    .line 1649
    iget-object v7, p0, Lcom/htc/app/FilePickerCloudHelper;->initThread:Ljava/lang/Thread;

    const-wide/16 v8, 0x1388

    invoke-virtual {v7, v8, v9}, Ljava/lang/Thread;->join(J)V

    .line 1650
    iget-object v7, p0, Lcom/htc/app/FilePickerCloudHelper;->initThread:Ljava/lang/Thread;

    invoke-virtual {v7}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1651
    iget-object v7, p0, Lcom/htc/app/FilePickerCloudHelper;->initThread:Ljava/lang/Thread;

    invoke-virtual {v7}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1656
    :cond_1
    :goto_1
    iput-object v10, p0, Lcom/htc/app/FilePickerCloudHelper;->initThread:Ljava/lang/Thread;

    .line 1658
    iput-object v10, p0, Lcom/htc/app/FilePickerCloudHelper;->mContext:Landroid/content/Context;

    .line 1660
    return-void

    .line 1653
    :catch_0
    move-exception v3

    .line 1654
    .local v3, e:Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1628
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCloudHelper;->close()V

    .line 1629
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1631
    return-void
.end method

.method findItemInfoLists(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedList;
    .locals 11
    .parameter "cloudDataSourceType"
    .parameter "accountId"
    .parameter "path"
    .parameter "searchWord"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/app/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1457
    new-instance v9, Ljava/util/LinkedList;

    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    .line 1458
    .local v9, itemInfoLists:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/app/ItemInfo;>;"
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 1459
    .local v1, cloudStorageFileItemLists:Ljava/util/List;,"Ljava/util/List<Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;>;"
    const/4 v3, 0x0

    .line 1460
    .local v3, email:Ljava/lang/String;
    invoke-direct {p0, p1, v3}, Lcom/htc/app/FilePickerCloudHelper;->getCloudStorageWrapper(ILjava/lang/String;)Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;

    move-result-object v2

    .line 1461
    .local v2, cloudStorageWrapper:Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    if-eqz v2, :cond_0

    .line 1462
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/app/FilePickerCloudHelper;->checkToRemovePrefixFolderString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1463
    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 1464
    .local v7, isRoot:Z
    if-eqz v7, :cond_3

    .line 1465
    iget-object v10, p0, Lcom/htc/app/FilePickerCloudHelper;->mCloudRootPath:Ljava/lang/String;

    #calls: Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->findFiles(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    invoke-static {v2, v10, p4}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->access$1700(Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 1472
    .end local v7           #isRoot:Z
    :cond_0
    :goto_0
    if-eqz v1, :cond_4

    .line 1473
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_4

    .line 1474
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;

    .line 1479
    .local v0, cloudStorageFileItem:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;
    invoke-virtual {v0}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;->getFileName()Ljava/lang/String;

    move-result-object v4

    .line 1480
    .local v4, filename:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;->isDir()Z

    move-result v6

    .line 1481
    .local v6, isFolder:Z
    if-nez v6, :cond_2

    iget-object v10, p0, Lcom/htc/app/FilePickerCloudHelper;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v10, v4}, Lcom/htc/app/FilePickerUtil;->containExtension(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1482
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/htc/app/FilePickerCloudHelper;->changeToItemInfo(ILcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;)Lcom/htc/app/ItemInfo;

    move-result-object v8

    .line 1483
    .local v8, item:Lcom/htc/app/ItemInfo;
    invoke-virtual {v9, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1468
    .end local v0           #cloudStorageFileItem:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;
    .end local v4           #filename:Ljava/lang/String;
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #isFolder:Z
    .end local v8           #item:Lcom/htc/app/ItemInfo;
    .restart local v7       #isRoot:Z
    :cond_3
    #calls: Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->findFiles(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    invoke-static {v2, p3, p4}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->access$1700(Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 1488
    .end local v7           #isRoot:Z
    :cond_4
    return-object v9
.end method

.method getAccountIds(I)[Ljava/lang/String;
    .locals 2
    .parameter "cloudDataSourceType"

    .prologue
    .line 1544
    const/4 v1, 0x0

    .line 1545
    .local v1, results:[Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerCloudHelper;->getCloudServiceWrapper(I)Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;

    move-result-object v0

    .line 1546
    .local v0, cloudServiceWrapper:Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;
    if-eqz v0, :cond_0

    .line 1547
    invoke-virtual {v0}, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->getAccountIds()[Ljava/lang/String;

    move-result-object v1

    .line 1549
    :cond_0
    return-object v1
.end method

.method getCloudDefaultDateSourceType()I
    .locals 8

    .prologue
    .line 1179
    const/4 v1, -0x1

    .line 1180
    .local v1, dataSourceType:I
    const/4 v2, 0x0

    .line 1181
    .local v2, hasCloudDataSourceEnabled:Z
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCloudHelper;->listServices()[Ljava/lang/String;

    move-result-object v5

    .line 1182
    .local v5, services:[Ljava/lang/String;
    if-eqz v5, :cond_0

    array-length v6, v5

    if-lez v6, :cond_0

    .line 1183
    array-length v0, v5

    .line 1184
    .local v0, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 1185
    aget-object v4, v5, v3

    .line 1186
    .local v4, serviceName:Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 1187
    invoke-static {v4}, Lcom/htc/app/FilePickerCloudHelper;->getServiceTypeFromString(Ljava/lang/String;)I

    move-result v1

    .line 1188
    invoke-virtual {p0, v1}, Lcom/htc/app/FilePickerCloudHelper;->isCloudServiceEnabled(I)Z

    move-result v2

    .line 1189
    if-eqz v2, :cond_1

    .line 1195
    .end local v0           #count:I
    .end local v3           #i:I
    .end local v4           #serviceName:Ljava/lang/String;
    :cond_0
    if-nez v2, :cond_2

    .line 1196
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "No found any HtcCloudService Enabled!!!"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1184
    .restart local v0       #count:I
    .restart local v3       #i:I
    .restart local v4       #serviceName:Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1197
    .end local v0           #count:I
    .end local v3           #i:I
    .end local v4           #serviceName:Ljava/lang/String;
    :cond_2
    return v1
.end method

.method getCloudFileListTime(ILjava/lang/String;Ljava/lang/String;)J
    .locals 3
    .parameter "cloudDataSourceType"
    .parameter "accountId"
    .parameter "cloudPath"

    .prologue
    .line 1130
    const-wide/16 v1, -0x1

    .line 1131
    .local v1, result:J
    invoke-direct {p0, p1, p2}, Lcom/htc/app/FilePickerCloudHelper;->getCloudStorageWrapper(ILjava/lang/String;)Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;

    move-result-object v0

    .line 1133
    .local v0, cloudStorageWrapper:Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    if-eqz v0, :cond_0

    .line 1134
    #calls: Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->loadCloudFileListTimePreferences(Ljava/lang/String;)J
    invoke-static {v0, p3}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->access$1500(Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;Ljava/lang/String;)J

    move-result-wide v1

    .line 1136
    :cond_0
    return-wide v1
.end method

.method public getCloudServiceRootFolderItemTextPath(I)Ljava/lang/String;
    .locals 2
    .parameter "cloudDataSourceType"

    .prologue
    .line 1304
    iget-object v1, p0, Lcom/htc/app/FilePickerCloudHelper;->mCloudRootPath:Ljava/lang/String;

    .line 1305
    .local v1, rootItemTextPath:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerCloudHelper;->getCloudServiceWrapper(I)Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;

    move-result-object v0

    .line 1306
    .local v0, cloudServiceWrapper:Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;
    if-eqz v0, :cond_0

    .line 1307
    invoke-virtual {v0}, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->getCloudServiceRootFolderItemTextPath()Ljava/lang/String;

    move-result-object v1

    .line 1309
    :cond_0
    return-object v1
.end method

.method getCloudServiceTextName(I)Ljava/lang/String;
    .locals 2
    .parameter "cloudDataSourceType"

    .prologue
    .line 1162
    const-string v1, ""

    .line 1163
    .local v1, result:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerCloudHelper;->getCloudServiceWrapper(I)Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;

    move-result-object v0

    .line 1164
    .local v0, cloudServiceWrapper:Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;
    if-eqz v0, :cond_0

    .line 1165
    invoke-virtual {v0}, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->getServiceTextName()Ljava/lang/String;

    move-result-object v1

    .line 1167
    :cond_0
    return-object v1
.end method

.method getCloudServiceTotalCount()I
    .locals 2

    .prologue
    .line 1913
    const/4 v0, 0x0

    .line 1914
    .local v0, total:I
    iget-object v1, p0, Lcom/htc/app/FilePickerCloudHelper;->mCloudServiceList:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 1915
    iget-object v1, p0, Lcom/htc/app/FilePickerCloudHelper;->mCloudServiceList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 1917
    :cond_0
    return v0
.end method

.method getCloudShareLink(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "cloudDataSourceType"
    .parameter "cloudPath"
    .parameter "accountId"

    .prologue
    .line 1553
    move-object v1, p2

    .line 1554
    .local v1, result:Ljava/lang/String;
    invoke-direct {p0, p1, p3}, Lcom/htc/app/FilePickerCloudHelper;->getCloudStorageWrapper(ILjava/lang/String;)Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;

    move-result-object v0

    .line 1556
    .local v0, cloudStorageWrapper:Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    if-eqz v0, :cond_0

    .line 1557
    invoke-virtual {v0, p2}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->getCloudShareLink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1559
    :cond_0
    return-object v1
.end method

.method getCloudStorageFileItem(ILjava/lang/String;Ljava/lang/String;)Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;
    .locals 2
    .parameter "cloudDataSourceType"
    .parameter "accountId"
    .parameter "cloudFolderPath"

    .prologue
    .line 1589
    const/4 v1, 0x0

    .line 1590
    .local v1, resultItem:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;
    invoke-direct {p0, p1, p2}, Lcom/htc/app/FilePickerCloudHelper;->getCloudStorageWrapper(ILjava/lang/String;)Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;

    move-result-object v0

    .line 1592
    .local v0, cloudStorageWrapper:Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    if-eqz v0, :cond_0

    .line 1593
    invoke-virtual {v0, p3}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->getCloudStorageFileItem(Ljava/lang/String;)Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;

    move-result-object v1

    .line 1595
    :cond_0
    return-object v1
.end method

.method getCloudStorageTotalCount()I
    .locals 5

    .prologue
    .line 1111
    const/4 v3, 0x0

    .line 1112
    .local v3, total:I
    iget-object v4, p0, Lcom/htc/app/FilePickerCloudHelper;->mCloudServiceList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;

    .line 1113
    .local v0, cloudServiceWapper:Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;
    invoke-virtual {v0}, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->getCloudStorageCount()I

    move-result v1

    .line 1114
    .local v1, count:I
    add-int/2addr v3, v1

    .line 1115
    goto :goto_0

    .line 1116
    .end local v0           #cloudServiceWapper:Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;
    .end local v1           #count:I
    :cond_0
    return v3
.end method

.method public getFilePickerUtil()Lcom/htc/app/FilePickerUtil;
    .locals 1

    .prologue
    .line 1300
    iget-object v0, p0, Lcom/htc/app/FilePickerCloudHelper;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    return-object v0
.end method

.method getFolderItemInfo(ILjava/lang/String;Ljava/lang/String;)Lcom/htc/app/FolderItemInfo;
    .locals 2
    .parameter "cloudDataSourceType"
    .parameter "accountId"
    .parameter "path"

    .prologue
    .line 1583
    invoke-direct {p0, p3}, Lcom/htc/app/FilePickerCloudHelper;->checkToRemovePrefixLocalTempFolderString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1584
    .local v0, cloudPath:Ljava/lang/String;
    invoke-direct {p0, p1, p2, v0}, Lcom/htc/app/FilePickerCloudHelper;->getFolderItemInfoFromCloudPath(ILjava/lang/String;Ljava/lang/String;)Lcom/htc/app/FolderItemInfo;

    move-result-object v1

    return-object v1
.end method

.method getItemInfo(ILjava/lang/String;Ljava/lang/String;)Lcom/htc/app/ItemInfo;
    .locals 2
    .parameter "cloudDataSourceType"
    .parameter "accountId"
    .parameter "path"

    .prologue
    .line 1578
    invoke-direct {p0, p3}, Lcom/htc/app/FilePickerCloudHelper;->checkToRemovePrefixLocalTempFolderString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1579
    .local v0, cloudPath:Ljava/lang/String;
    invoke-direct {p0, p1, p2, v0}, Lcom/htc/app/FilePickerCloudHelper;->getItemInfoFromCloudPath(ILjava/lang/String;Ljava/lang/String;)Lcom/htc/app/ItemInfo;

    move-result-object v1

    return-object v1
.end method

.method public getItemInfoFolderInstance(ILjava/lang/String;)Lcom/htc/app/ItemInfo;
    .locals 3
    .parameter "cloudDataSourceType"
    .parameter "path"

    .prologue
    .line 1362
    const/4 v0, 0x0

    .line 1363
    .local v0, cloudItemInfo:Lcom/htc/app/ItemInfo;
    const/4 v2, 0x0

    .line 1364
    .local v2, email:Ljava/lang/String;
    invoke-direct {p0, p1, v2}, Lcom/htc/app/FilePickerCloudHelper;->getCloudStorageWrapper(ILjava/lang/String;)Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;

    move-result-object v1

    .line 1365
    .local v1, cloudStorageWrapper:Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    if-eqz v1, :cond_0

    .line 1366
    invoke-virtual {v1, p2}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->getItemInfoFolderInstance(Ljava/lang/String;)Lcom/htc/app/ItemInfo;

    move-result-object v0

    .line 1368
    :cond_0
    return-object v0
.end method

.method public getRootFolderItemInstances()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/app/FolderItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1339
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 1340
    .local v5, folderItemInfoLists:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/FolderItemInfo;>;"
    iget-object v9, p0, Lcom/htc/app/FilePickerCloudHelper;->mCloudServiceList:Ljava/util/List;

    if-eqz v9, :cond_1

    .line 1341
    iget-object v9, p0, Lcom/htc/app/FilePickerCloudHelper;->mCloudServiceList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;

    .line 1342
    .local v2, cloudServiceWrapper:Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;
    if-eqz v2, :cond_0

    .line 1343
    invoke-virtual {v2}, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->listCloudStorageWrapper()[Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;

    move-result-object v4

    .line 1346
    .local v4, cloudStorageWrappers:[Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    if-eqz v4, :cond_0

    .line 1347
    move-object v0, v4

    .local v0, arr$:[Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    array-length v8, v0

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_0
    if-ge v7, v8, :cond_0

    aget-object v3, v0, v7

    .line 1348
    .local v3, cloudStorageWrapper:Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    invoke-virtual {v3}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->getStorageFolderItemInstance()Lcom/htc/app/FolderItemInfo;

    move-result-object v1

    .line 1350
    .local v1, cloudFolderItemInfo:Lcom/htc/app/FolderItemInfo;
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1347
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1358
    .end local v0           #arr$:[Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    .end local v1           #cloudFolderItemInfo:Lcom/htc/app/FolderItemInfo;
    .end local v2           #cloudServiceWrapper:Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;
    .end local v3           #cloudStorageWrapper:Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    .end local v4           #cloudStorageWrappers:[Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    .end local v7           #i$:I
    .end local v8           #len$:I
    :cond_1
    return-object v5
.end method

.method public getRootFolderItemInstances(I)Ljava/util/List;
    .locals 8
    .parameter "cloudDataSourceType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/htc/app/FolderItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1313
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 1314
    .local v5, folderItemInfoLists:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/FolderItemInfo;>;"
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerCloudHelper;->getCloudServiceWrapper(I)Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;

    move-result-object v2

    .line 1315
    .local v2, cloudServiceWrapper:Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;
    if-eqz v2, :cond_1

    .line 1316
    invoke-virtual {v2}, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->listCloudStorageWrapper()[Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;

    move-result-object v4

    .line 1319
    .local v4, cloudStorageWrappers:[Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    if-eqz v4, :cond_1

    .line 1320
    move-object v0, v4

    .local v0, arr$:[Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    array-length v7, v0

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_0
    if-ge v6, v7, :cond_1

    aget-object v3, v0, v6

    .line 1321
    .local v3, cloudStorageWrapper:Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    if-nez v3, :cond_0

    .line 1320
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1323
    :cond_0
    invoke-virtual {v3}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->getStorageFolderItemInstance()Lcom/htc/app/FolderItemInfo;

    move-result-object v1

    .line 1325
    .local v1, cloudFolderItemInfo:Lcom/htc/app/FolderItemInfo;
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1330
    .end local v0           #arr$:[Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    .end local v1           #cloudFolderItemInfo:Lcom/htc/app/FolderItemInfo;
    .end local v3           #cloudStorageWrapper:Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    .end local v4           #cloudStorageWrappers:[Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    .end local v6           #i$:I
    .end local v7           #len$:I
    :cond_1
    return-object v5
.end method

.method hasAnyAccountSignIn(I)Z
    .locals 2
    .parameter "cloudDataSourceType"

    .prologue
    .line 1535
    const/4 v1, 0x0

    .line 1536
    .local v1, result:Z
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerCloudHelper;->getCloudServiceWrapper(I)Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;

    move-result-object v0

    .line 1537
    .local v0, cloudServiceWrapper:Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;
    if-eqz v0, :cond_0

    .line 1538
    invoke-virtual {v0}, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->hasAnySignIn()Z

    move-result v1

    .line 1540
    :cond_0
    return v1
.end method

.method hasAnySignIn()Z
    .locals 8

    .prologue
    .line 1523
    const/4 v6, 0x0

    .line 1524
    .local v6, result:Z
    iget-object v7, p0, Lcom/htc/app/FilePickerCloudHelper;->mCloudServiceList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v2

    .line 1525
    .local v2, cloudServices:[Ljava/lang/Object;
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/Object;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v5, v0, v3

    .local v5, object:Ljava/lang/Object;
    move-object v1, v5

    .line 1526
    check-cast v1, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;

    .line 1527
    .local v1, cloudServiceWrapper:Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;
    invoke-virtual {v1}, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->hasAnySignIn()Z

    move-result v6

    .line 1528
    if-eqz v6, :cond_1

    .line 1531
    .end local v1           #cloudServiceWrapper:Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;
    .end local v5           #object:Ljava/lang/Object;
    :cond_0
    return v6

    .line 1525
    .restart local v1       #cloudServiceWrapper:Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;
    .restart local v5       #object:Ljava/lang/Object;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method init()V
    .locals 14

    .prologue
    .line 1224
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/htc/app/FilePickerCloudHelper;->mCloudHelperInitialized:Z

    .line 1225
    invoke-virtual {p0}, Lcom/htc/app/FilePickerCloudHelper;->listServices()[Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/htc/app/FilePickerCloudHelper;->mServiceNames:[Ljava/lang/String;

    .line 1226
    iget-object v11, p0, Lcom/htc/app/FilePickerCloudHelper;->mServiceNames:[Ljava/lang/String;

    if-eqz v11, :cond_4

    iget-object v11, p0, Lcom/htc/app/FilePickerCloudHelper;->mServiceNames:[Ljava/lang/String;

    array-length v11, v11

    if-ltz v11, :cond_4

    .line 1227
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1228
    .local v8, serviceTypes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1229
    .local v9, serviceWrappers:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;>;"
    iget-object v0, p0, Lcom/htc/app/FilePickerCloudHelper;->mServiceNames:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v6, :cond_2

    aget-object v7, v0, v4

    .line 1230
    .local v7, serviceName:Ljava/lang/String;
    iget-object v11, p0, Lcom/htc/app/FilePickerCloudHelper;->mContext:Landroid/content/Context;

    invoke-static {v11, v7}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->isServiceEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    .line 1232
    .local v5, isServiceEnabled:Z
    if-eqz v5, :cond_0

    .line 1233
    iget-object v11, p0, Lcom/htc/app/FilePickerCloudHelper;->mContext:Landroid/content/Context;

    invoke-static {v11, v7}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->getServiceInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/htc/sdk/service/cloudstorage/HtcCloudService;

    move-result-object v2

    .line 1236
    .local v2, cloudService:Lcom/htc/sdk/service/cloudstorage/HtcCloudService;
    if-nez v2, :cond_1

    .line 1237
    const-string v11, "FilePickerCloudHelper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Not found the cloud service of "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    .end local v2           #cloudService:Lcom/htc/sdk/service/cloudstorage/HtcCloudService;
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1241
    .restart local v2       #cloudService:Lcom/htc/sdk/service/cloudstorage/HtcCloudService;
    :cond_1
    invoke-static {v7}, Lcom/htc/app/FilePickerCloudHelper;->getServiceTypeFromString(Ljava/lang/String;)I

    move-result v1

    .line 1242
    .local v1, cloudDataSourceType:I
    new-instance v3, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;

    invoke-direct {v3, p0, v1, v7, v2}, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;-><init>(Lcom/htc/app/FilePickerCloudHelper;ILjava/lang/String;Lcom/htc/sdk/service/cloudstorage/HtcCloudService;)V

    .line 1245
    .local v3, cloudServiceWapper:Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;
    invoke-virtual {v2}, Lcom/htc/sdk/service/cloudstorage/HtcCloudService;->isSupportedMultipleAccount()Z

    move-result v10

    .line 1246
    .local v10, supported:Z
    invoke-virtual {v3, v10}, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->setMultiAccountSupported(Z)V

    .line 1247
    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1248
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1251
    .end local v1           #cloudDataSourceType:I
    .end local v2           #cloudService:Lcom/htc/sdk/service/cloudstorage/HtcCloudService;
    .end local v3           #cloudServiceWapper:Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;
    .end local v5           #isServiceEnabled:Z
    .end local v7           #serviceName:Ljava/lang/String;
    .end local v10           #supported:Z
    :cond_2
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1252
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/htc/app/FilePickerCloudHelper;->setCloudHelperEnabled(Z)V

    .line 1254
    :cond_3
    iget-object v12, p0, Lcom/htc/app/FilePickerCloudHelper;->mCloudServiceListUpdateToken:Ljava/lang/Object;

    monitor-enter v12

    .line 1255
    :try_start_0
    iput-object v9, p0, Lcom/htc/app/FilePickerCloudHelper;->mCloudServiceList:Ljava/util/List;

    .line 1256
    monitor-exit v12

    .line 1258
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v6           #len$:I
    .end local v8           #serviceTypes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v9           #serviceWrappers:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;>;"
    :cond_4
    return-void

    .line 1256
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v4       #i$:I
    .restart local v6       #len$:I
    .restart local v8       #serviceTypes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v9       #serviceWrappers:Ljava/util/List;,"Ljava/util/List<Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;>;"
    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v11
.end method

.method public isCloudHelperEnabled()Z
    .locals 1

    .prologue
    .line 1096
    iget-boolean v0, p0, Lcom/htc/app/FilePickerCloudHelper;->mIsCloudHelperEnabled:Z

    return v0
.end method

.method isCloudHelperInitialized()Z
    .locals 1

    .prologue
    .line 1220
    iget-boolean v0, p0, Lcom/htc/app/FilePickerCloudHelper;->mCloudHelperInitialized:Z

    return v0
.end method

.method isCloudPath(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "cloudDataSourceType"
    .parameter "accountId"
    .parameter "path"

    .prologue
    .line 1120
    const/4 v1, 0x0

    .line 1121
    .local v1, isCloudPath:Z
    invoke-direct {p0, p1, p2}, Lcom/htc/app/FilePickerCloudHelper;->getCloudStorageWrapper(ILjava/lang/String;)Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;

    move-result-object v0

    .line 1123
    .local v0, cloudStorageWrapper:Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    if-eqz v0, :cond_0

    .line 1124
    invoke-virtual {v0, p3}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->isCloudPath(Ljava/lang/String;)Z

    move-result v1

    .line 1126
    :cond_0
    return v1
.end method

.method public isCloudServiceEnabled(I)Z
    .locals 2
    .parameter "cloudDataSourceType"

    .prologue
    .line 1142
    const/4 v1, 0x0

    .line 1143
    .local v1, result:Z
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerCloudHelper;->getCloudServiceWrapper(I)Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;

    move-result-object v0

    .line 1144
    .local v0, cloudServiceWrapper:Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;
    if-eqz v0, :cond_0

    .line 1145
    invoke-virtual {v0}, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->isEnabled()Z

    move-result v1

    .line 1147
    :cond_0
    return v1
.end method

.method isRefresh(ILjava/lang/String;)Z
    .locals 3
    .parameter "cloudDataSourceType"
    .parameter "accountId"

    .prologue
    .line 1026
    const/4 v2, 0x1

    .line 1027
    .local v2, result:Z
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerCloudHelper;->getCloudServiceWrapper(I)Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;

    move-result-object v0

    .line 1028
    .local v0, cloudServiceWrapper:Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;
    invoke-virtual {v0, p2}, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->getCloudStorageWrapper(Ljava/lang/String;)Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;

    move-result-object v1

    .line 1030
    .local v1, cloudStorageWrapper:Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    if-eqz v1, :cond_0

    .line 1031
    invoke-virtual {v1}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->isRefresh()Z

    move-result v2

    .line 1033
    :cond_0
    return v2
.end method

.method isSignIn(ILjava/lang/String;)Z
    .locals 3
    .parameter "cloudDataSourceType"
    .parameter "accountId"

    .prologue
    .line 1492
    const/4 v2, 0x0

    .line 1493
    .local v2, result:Z
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerCloudHelper;->getCloudServiceWrapper(I)Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;

    move-result-object v0

    .line 1495
    .local v0, cloudServiceWrapper:Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;
    if-eqz v0, :cond_0

    .line 1496
    invoke-virtual {v0, p2}, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->getCloudStorageWrapper(Ljava/lang/String;)Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;

    move-result-object v1

    .line 1498
    .local v1, cloudStorageWrapper:Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    if-eqz v1, :cond_0

    .line 1499
    invoke-virtual {v0, p2}, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->isSignIn(Ljava/lang/String;)Z

    move-result v2

    .line 1502
    .end local v1           #cloudStorageWrapper:Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    :cond_0
    return v2
.end method

.method isSupportMultiAccouont(I)Z
    .locals 1
    .parameter "cloudDataSourceType"

    .prologue
    .line 1151
    const/4 v0, 0x0

    .line 1158
    .local v0, result:Z
    return v0
.end method

.method public listFolderItemInfoLists(ILjava/lang/String;Ljava/lang/String;)Ljava/util/LinkedList;
    .locals 10
    .parameter "cloudDataSourceType"
    .parameter "accountId"
    .parameter "path"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/app/FolderItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1383
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 1384
    .local v4, folderItemInfoLists:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/app/FolderItemInfo;>;"
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 1386
    .local v1, cloudStorageFileItemLists:Ljava/util/List;,"Ljava/util/List<Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;>;"
    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 1387
    .local v7, isRoot:Z
    invoke-virtual {p0, p1, p2}, Lcom/htc/app/FilePickerCloudHelper;->isSignIn(ILjava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1388
    invoke-direct {p0, p1, p2}, Lcom/htc/app/FilePickerCloudHelper;->getCloudStorageWrapper(ILjava/lang/String;)Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;

    move-result-object v2

    .line 1390
    .local v2, cloudStorageWrapper:Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/app/FilePickerCloudHelper;->checkToRemovePrefixFolderString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1391
    if-eqz v2, :cond_0

    .line 1392
    if-eqz v7, :cond_3

    .line 1393
    iget-object v9, p0, Lcom/htc/app/FilePickerCloudHelper;->mCloudRootPath:Ljava/lang/String;

    #calls: Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->listFiles(Ljava/lang/String;)Ljava/util/List;
    invoke-static {v2, v9}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->access$1600(Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 1400
    .end local v2           #cloudStorageWrapper:Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    :cond_0
    :goto_0
    if-eqz v1, :cond_4

    .line 1401
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_4

    .line 1402
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;

    .line 1407
    .local v0, cloudStorageFileItem:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;
    invoke-virtual {v0}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;->getFileName()Ljava/lang/String;

    move-result-object v3

    .line 1408
    .local v3, filename:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;->isDir()Z

    move-result v6

    .line 1409
    .local v6, isFolder:Z
    if-nez v6, :cond_2

    iget-object v9, p0, Lcom/htc/app/FilePickerCloudHelper;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v9, v3}, Lcom/htc/app/FilePickerUtil;->containExtension(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1410
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/htc/app/FilePickerCloudHelper;->changeToFolderItemInfo(ILcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;)Lcom/htc/app/FolderItemInfo;

    move-result-object v8

    .line 1412
    .local v8, item:Lcom/htc/app/FolderItemInfo;
    invoke-virtual {v4, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1395
    .end local v0           #cloudStorageFileItem:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;
    .end local v3           #filename:Ljava/lang/String;
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #isFolder:Z
    .end local v8           #item:Lcom/htc/app/FolderItemInfo;
    .restart local v2       #cloudStorageWrapper:Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/app/FilePickerCloudHelper;->checkToRemovePrefixFolderString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1396
    #calls: Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->listFiles(Ljava/lang/String;)Ljava/util/List;
    invoke-static {v2, p3}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->access$1600(Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 1418
    .end local v2           #cloudStorageWrapper:Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    :cond_4
    return-object v4
.end method

.method listItemInfoLists(ILjava/lang/String;Ljava/lang/String;)Ljava/util/LinkedList;
    .locals 11
    .parameter "cloudDataSourceType"
    .parameter "accountId"
    .parameter "path"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/app/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1422
    new-instance v9, Ljava/util/LinkedList;

    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    .line 1423
    .local v9, itemInfoLists:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/app/ItemInfo;>;"
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 1424
    .local v1, cloudStorageFileItemLists:Ljava/util/List;,"Ljava/util/List<Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;>;"
    const/4 v3, 0x0

    .line 1425
    .local v3, email:Ljava/lang/String;
    invoke-direct {p0, p1, v3}, Lcom/htc/app/FilePickerCloudHelper;->getCloudStorageWrapper(ILjava/lang/String;)Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;

    move-result-object v2

    .line 1426
    .local v2, cloudStorageWrapper:Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    if-eqz v2, :cond_0

    .line 1427
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/app/FilePickerCloudHelper;->checkToRemovePrefixFolderString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1428
    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 1429
    .local v7, isRoot:Z
    if-eqz v7, :cond_3

    .line 1430
    iget-object v10, p0, Lcom/htc/app/FilePickerCloudHelper;->mCloudRootPath:Ljava/lang/String;

    #calls: Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->listFiles(Ljava/lang/String;)Ljava/util/List;
    invoke-static {v2, v10}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->access$1600(Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 1436
    .end local v7           #isRoot:Z
    :cond_0
    :goto_0
    if-eqz v1, :cond_4

    .line 1437
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_4

    .line 1438
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;

    .line 1443
    .local v0, cloudStorageFileItem:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;
    invoke-virtual {v0}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;->getFileName()Ljava/lang/String;

    move-result-object v4

    .line 1444
    .local v4, filename:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;->isDir()Z

    move-result v6

    .line 1445
    .local v6, isFolder:Z
    if-nez v6, :cond_2

    iget-object v10, p0, Lcom/htc/app/FilePickerCloudHelper;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;

    invoke-virtual {v10, v4}, Lcom/htc/app/FilePickerUtil;->containExtension(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1446
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/htc/app/FilePickerCloudHelper;->changeToItemInfo(ILcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;)Lcom/htc/app/ItemInfo;

    move-result-object v8

    .line 1447
    .local v8, item:Lcom/htc/app/ItemInfo;
    invoke-virtual {v9, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1432
    .end local v0           #cloudStorageFileItem:Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;
    .end local v4           #filename:Ljava/lang/String;
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #isFolder:Z
    .end local v8           #item:Lcom/htc/app/ItemInfo;
    .restart local v7       #isRoot:Z
    :cond_3
    #calls: Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->listFiles(Ljava/lang/String;)Ljava/util/List;
    invoke-static {v2, p3}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->access$1600(Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 1452
    .end local v7           #isRoot:Z
    :cond_4
    return-object v9
.end method

.method listServices()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 1171
    iget-object v1, p0, Lcom/htc/app/FilePickerCloudHelper;->mServiceNames:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1172
    iget-object v0, p0, Lcom/htc/app/FilePickerCloudHelper;->mServiceNames:[Ljava/lang/String;

    .line 1175
    :goto_0
    return-object v0

    .line 1173
    :cond_0
    const/4 v1, 0x0

    new-array v0, v1, [Ljava/lang/String;

    .line 1174
    .local v0, result:[Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/app/FilePickerCloudHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFactory;->listServices(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 1175
    goto :goto_0
.end method

.method public requestDownloadFile(ILjava/lang/String;JLjava/lang/String;J)V
    .locals 7
    .parameter "dataSourceType"
    .parameter "accountId"
    .parameter "cloudId"
    .parameter "cloudPath"
    .parameter "fileSize"

    .prologue
    .line 1669
    invoke-virtual {p0, p1, p2}, Lcom/htc/app/FilePickerCloudHelper;->isSignIn(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1670
    invoke-direct {p0, p1, p2}, Lcom/htc/app/FilePickerCloudHelper;->getCloudStorageWrapper(ILjava/lang/String;)Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;

    move-result-object v0

    .line 1672
    .local v0, cloudStorageWrapper:Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    if-eqz v0, :cond_0

    move v1, p1

    move-wide v2, p3

    move-object v4, p5

    move-wide v5, p6

    .line 1673
    invoke-virtual/range {v0 .. v6}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->requestDownloadFile(IJLjava/lang/String;J)V

    .line 1677
    .end local v0           #cloudStorageWrapper:Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    :cond_0
    return-void
.end method

.method public setCloudHelperEnabled(Z)V
    .locals 0
    .parameter "isCloudHelperEnabled"

    .prologue
    .line 1105
    iput-boolean p1, p0, Lcom/htc/app/FilePickerCloudHelper;->mIsCloudHelperEnabled:Z

    .line 1106
    return-void
.end method

.method setServiceRefresh(IZ)V
    .locals 6
    .parameter "cloudDataSourceType"
    .parameter "refresh"

    .prologue
    .line 1046
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerCloudHelper;->getCloudServiceWrapper(I)Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;

    move-result-object v1

    .line 1047
    .local v1, cloudServiceWrapper:Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;
    if-eqz v1, :cond_1

    .line 1048
    invoke-virtual {v1}, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->listCloudStorageWrapper()[Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;

    move-result-object v3

    .line 1050
    .local v3, cloudStorageWrappers:[Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    if-eqz v3, :cond_1

    .line 1051
    move-object v0, v3

    .local v0, arr$:[Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v2, v0, v4

    .line 1052
    .local v2, cloudStorageWrapper:Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    if-nez v2, :cond_0

    .line 1051
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1054
    :cond_0
    invoke-virtual {v2, p2}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->setRefresh(Z)V

    goto :goto_1

    .line 1059
    .end local v0           #arr$:[Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    .end local v2           #cloudStorageWrapper:Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    .end local v3           #cloudStorageWrappers:[Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_1
    return-void
.end method

.method setStorageRefresh(ILjava/lang/String;Z)V
    .locals 2
    .parameter "cloudDataSourceType"
    .parameter "accountId"
    .parameter "refresh"

    .prologue
    .line 1037
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerCloudHelper;->getCloudServiceWrapper(I)Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;

    move-result-object v0

    .line 1038
    .local v0, cloudServiceWrapper:Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;
    invoke-virtual {v0, p2}, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->getCloudStorageWrapper(Ljava/lang/String;)Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;

    move-result-object v1

    .line 1040
    .local v1, cloudStorageWrapper:Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;
    if-eqz v1, :cond_0

    .line 1041
    invoke-virtual {v1, p3}, Lcom/htc/app/FilePickerCloudHelper$CloudStorageWrapper;->setRefresh(Z)V

    .line 1043
    :cond_0
    return-void
.end method

.method signIn(I)V
    .locals 3
    .parameter "cloudDataSourceType"

    .prologue
    .line 1512
    invoke-direct {p0, p1}, Lcom/htc/app/FilePickerCloudHelper;->getCloudServiceWrapper(I)Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;

    move-result-object v0

    .line 1513
    .local v0, cloudServiceWrapper:Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;
    if-eqz v0, :cond_1

    .line 1514
    invoke-virtual {p0, p1}, Lcom/htc/app/FilePickerCloudHelper;->hasAnyAccountSignIn(I)Z

    move-result v1

    .line 1515
    .local v1, hasAnyAccountSignIn:Z
    invoke-virtual {v0}, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->isSupportMultiAccount()Z

    move-result v2

    .line 1516
    .local v2, isSupportMultiAccount:Z
    if-eqz v1, :cond_0

    if-eqz v2, :cond_1

    .line 1517
    :cond_0
    invoke-virtual {v0}, Lcom/htc/app/FilePickerCloudHelper$CloudServiceWrapper;->sign()V

    .line 1520
    .end local v1           #hasAnyAccountSignIn:Z
    .end local v2           #isSupportMultiAccount:Z
    :cond_1
    return-void
.end method
